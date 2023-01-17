import java.nio.file._
import java.nio.file.attribute._
import scala.collection.mutable

import $file.StringTemplate

val items = new mutable.LinkedHashMap[String, mutable.Buffer[String]]()
val base = Paths.get("植物大战僵尸β版")

object Visitor extends SimpleFileVisitor[Path] {

  override def visitFile(file: Path, attrs: BasicFileAttributes): FileVisitResult = {
    val p = base.relativize(file)
    val fn = p.getFileName.toString.toLowerCase
    if (!fn.startsWith("pvz_tools") && !fn.startsWith("植物大战僵尸修改器")) {
      items.getOrElseUpdate(Option(p.getParent).map(_.toString).getOrElse(""), new mutable.ArrayBuffer[String]) += p.toString
    }
    FileVisitResult.CONTINUE
  }
  
}

// GenNSI.sc 6.15 R1

@main
def main(@arg(doc = "样例：6.15") v1: String, 
         @arg(doc = "样例：R1（默认值为 R1）") v2: String = "R1", 
         @arg(doc = "样例：beta6.15.exe（默认值为 beta$v1.exe）") exeName: String = null): Unit = {
  Files.list(base).filter { p =>
    val fn = p.getFileName.toString
    fn == "PlantsVsZombies.exe" || (fn.endsWith(".exe") && fn.startsWith("beta"))
  }.forEach { p => 
    Files.delete(p)
    println(s"成功删除 $p")
  }
  

  val en = if(exeName == null) s"beta$v1.exe" else if(exeName.endsWith(".exe")) exeName else s"$exeName.exe"
  val es = Paths.get(en)
  if(Files.notExists(es)) {
    System.err.println(s"$es 不存在")
    return
  }
    
  val eo = base.resolve(en)
  Files.copy(es, eo)
  println(s"成功将 $es 复制为 $eo")
  
  Files.walkFileTree(base, Visitor)
  val s = StringTemplate.gen(items, v1, v2, en)
  Files.writeString(Paths.get("植物大战僵尸β版整合包.nsi"), s, java.nio.charset.StandardCharsets.UTF_16)
  println("成功生成 NSI 文件")
}