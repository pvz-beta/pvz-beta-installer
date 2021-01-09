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
def main(@arg(doc = "样例：6.15") v1: String, @arg(doc = "样例：R1（默认值为 R1）") v2: String = "R1"): Unit = {
  Files.walkFileTree(base, Visitor)
  val s = StringTemplate.gen(items, v1, v2)
  Files.writeString(Paths.get("植物大战僵尸β版整合包.nsi"), s)
  println("成功生成 NSI 文件")
}