; Script generated by the HM NIS Edit Script Wizard.

Unicode true

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "植物大战僵尸β版"
!define PRODUCT_VERSION "5.65"
!define PRODUCT_PUBLISHER "Glavo"
!define PRODUCT_WEB_SITE "https://pvz-beta.site/"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\PlantsVsZombies.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define PRODUCT_STARTMENU_REGVAL "NSIS:StartMenuDir"

!define FILE_VERSION "1.2.4"

SetCompressor lzma

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "pvz.ico"
!define MUI_UNICON "pvz.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "modern-wizard.bmp"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!define MUI_LICENSEPAGE_RADIOBUTTONS
!insertmacro MUI_PAGE_LICENSE "Licence.txt"
; Components page
!insertmacro MUI_PAGE_COMPONENTS
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Start menu page
var ICONS_GROUP
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "植物大战僵尸β版"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${PRODUCT_STARTMENU_REGVAL}"
!insertmacro MUI_PAGE_STARTMENU Application $ICONS_GROUP
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\PlantsVsZombies.exe"
!define MUI_FINISHPAGE_SHOWREADME "https://pvz-beta.site/readme.html"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "SimpChinese"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

BrandingText "植物大战僵尸β版整合包 v${FILE_VERSION}"

VIProductVersion "${FILE_VERSION}.0"

VIAddVersionKey  /LANG=${LANG_SimpChinese} "ProductName"     "植物大战僵尸β版"
VIAddVersionKey  /LANG=${LANG_SimpChinese} "FileDescription" "植物大战僵尸β版整合包安装程序"
VIAddVersionKey  /LANG=${LANG_SimpChinese} "FileVersion"     "${FILE_VERSION}"
VIAddVersionKey  /LANG=${LANG_SimpChinese} "ProductVersion"  "${PRODUCT_VERSION}"

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "植物大战僵尸β版整合包v${FILE_VERSION}.exe"
InstallDir "$PROGRAMFILES\植物大战僵尸β版"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "主程序" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "植物大战僵尸β版\bass.dll"
  File "植物大战僵尸β版\gdi42.dll"
  File "植物大战僵尸β版\main.pak"
  File "植物大战僵尸β版\PlantsVsZombies.exe"
  File "植物大战僵尸β版\游玩前必读.txt"
  SetOutPath "$INSTDIR\data"
  File "植物大战僵尸β版\data\BrianneTod12.txt"
  File "植物大战僵尸β版\data\BrianneTod16.txt"
  File "植物大战僵尸β版\data\BrianneTod32.txt"
  File "植物大战僵尸β版\data\BrianneTod32Black.txt"
  File "植物大战僵尸β版\data\ContinuumBold14.txt"
  File "植物大战僵尸β版\data\ContinuumBold14outback.txt"
  File "植物大战僵尸β版\data\DwarvenTodcraft12.txt"
  File "植物大战僵尸β版\data\DwarvenTodcraft15.txt"
  File "植物大战僵尸β版\data\DwarvenTodcraft18.txt"
  File "植物大战僵尸β版\data\DwarvenTodcraft18BrightGreenInset.txt"
  File "植物大战僵尸β版\data\DwarvenTodcraft18GreenInset.txt"
  File "植物大战僵尸β版\data\DwarvenTodcraft18Yellow.txt"
  File "植物大战僵尸β版\data\DwarvenTodcraft24.txt"
  File "植物大战僵尸β版\data\DwarvenTodcraft36BrightGreenInset.txt"
  File "植物大战僵尸β版\data\DwarvenTodcraft36GreenInset.txt"
  File "植物大战僵尸β版\data\HouseofTerror16.txt"
  File "植物大战僵尸β版\data\HouseofTerror20.txt"
  File "植物大战僵尸β版\data\HouseofTerror28.png"
  File "植物大战僵尸β版\data\HouseofTerror28.txt"
  File "植物大战僵尸β版\data\Pico129.txt"
  File "植物大战僵尸β版\data\Pix118Bold.txt"
  File "植物大战僵尸β版\data\_HouseofTerror16.png"
  SetOutPath "$INSTDIR\font"
  File "植物大战僵尸β版\font\font1.bin"
  File "植物大战僵尸β版\font\font1.dds"
  File "植物大战僵尸β版\font\font2.bin"
  File "植物大战僵尸β版\font\font2.dds"
  File "植物大战僵尸β版\font\font3.bin"
  File "植物大战僵尸β版\font\font3.dds"
  File "植物大战僵尸β版\font\font4.bin"
  File "植物大战僵尸β版\font\font4.dds"
  File "植物大战僵尸β版\font\font5.bin"
  File "植物大战僵尸β版\font\font5.dds"
  File "植物大战僵尸β版\font\font6.bin"
  File "植物大战僵尸β版\font\font6.dds"
  SetOutPath "$INSTDIR\images"
  File "植物大战僵尸β版\images\Almanac.png"
  File "植物大战僵尸β版\images\Almanac_IndexBack.jpg"
  File "植物大战僵尸β版\images\Credits_ZombieNote.png"
  File "植物大战僵尸β版\images\FlagMeterLevelProgress.png"
  File "植物大战僵尸β版\images\options_menuback.jpg"
  File "植物大战僵尸β版\images\PvZ_Logo.jpg"
  File "植物大战僵尸β版\images\PvZ_Logo_.png"
  File "植物大战僵尸β版\images\SelectorScreen_Almanac.png"
  File "植物大战僵尸β版\images\SelectorScreen_AlmanacHighlight.png"
  File "植物大战僵尸β版\images\SelectorScreen_Help1.png"
  File "植物大战僵尸β版\images\SelectorScreen_Help2.png"
  File "植物大战僵尸β版\images\SelectorScreen_Options1.png"
  File "植物大战僵尸β版\images\SelectorScreen_Options2.png"
  File "植物大战僵尸β版\images\SelectorScreen_Quit1.png"
  File "植物大战僵尸β版\images\SelectorScreen_Quit2.png"
  File "植物大战僵尸β版\images\SelectorScreen_Store.png"
  File "植物大战僵尸β版\images\SelectorScreen_StoreHighlight.png"
  File "植物大战僵尸β版\images\SelectorScreen_ZenGarden.png"
  File "植物大战僵尸β版\images\SelectorScreen_ZenGardenHighlight.png"
  File "植物大战僵尸β版\images\Store_NextButton.png"
  File "植物大战僵尸β版\images\Store_NextButtonHighlight.png"
  File "植物大战僵尸β版\images\Store_PrevButton.png"
  File "植物大战僵尸β版\images\Store_PrevButtonHighlight.png"
  File "植物大战僵尸β版\images\Store_Sign.png"
  File "植物大战僵尸β版\images\Tombstones.jpg"
  File "植物大战僵尸β版\images\zenshopbutton.png"
  File "植物大战僵尸β版\images\zenshopbutton_highlight.png"
  File "植物大战僵尸β版\images\Zombiefinalnote.png"
  File "植物大战僵尸β版\images\ZombieNote1.png"
  File "植物大战僵尸β版\images\ZombieNote2.png"
  File "植物大战僵尸β版\images\ZombieNote3.png"
  File "植物大战僵尸β版\images\ZombieNote4.png"
  File "植物大战僵尸β版\images\ZombieNoteHelp.png"
  File "植物大战僵尸β版\images\Zombie_bobsled1.png"
  File "植物大战僵尸β版\images\Zombie_bobsled2.png"
  File "植物大战僵尸β版\images\Zombie_bobsled3.png"
  File "植物大战僵尸β版\images\Zombie_bobsled4.png"
  SetOutPath "$INSTDIR\particles"
  File "植物大战僵尸β版\particles\Doom.png"
  File "植物大战僵尸β版\particles\ExplosionPowie.png"
  File "植物大战僵尸β版\particles\ExplosionSpudow.png"
  File "植物大战僵尸β版\particles\Pow.png"
  File "植物大战僵尸β版\particles\Sproing.png"
  SetOutPath "$INSTDIR\properties"
  File "植物大战僵尸β版\properties\LawnStrings.txt"
  File "植物大战僵尸β版\properties\partner.xml"
  File "植物大战僵尸β版\properties\partner.xml.sig"
  File "植物大战僵尸β版\properties\partner_logo.jpg"
  SetOutPath "$INSTDIR\reanim"
  File "植物大战僵尸β版\reanim\Credits_MTV.png"
  File "植物大战僵尸β版\reanim\Credits_wearetheundead.jpg"
  File "植物大战僵尸β版\reanim\Credits_wearetheundead_.png"
  File "植物大战僵尸β版\reanim\FinalWave.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_Adventure_button.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_Adventure_highlight.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_BG_Right.jpg"
  File "植物大战僵尸β版\reanim\SelectorScreen_Challenges_button.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_Challenges_highlight.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_StartAdventure_Button1.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_StartAdventure_Highlight.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_Survival_button.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_Survival_highlight.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_Vasebreaker_button.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_vasebreaker_highlight.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_WoodSign1.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_WoodSign2.png"
  File "植物大战僵尸β版\reanim\SelectorScreen_WoodSign2_press.png"
  File "植物大战僵尸β版\reanim\StartPlant.png"
  File "植物大战僵尸β版\reanim\StartReady.png"
  File "植物大战僵尸β版\reanim\StartSet.png"
  File "植物大战僵尸β版\reanim\ZombiesWon.jpg"
  File "植物大战僵尸β版\reanim\ZombiesWon_.png"

; Shortcuts
  SetOutPath "$INSTDIR"
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  CreateDirectory "$SMPROGRAMS\$ICONS_GROUP"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\植物大战僵尸β版.lnk" "$INSTDIR\PlantsVsZombies.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section "早期版本游戏文件" SEC02
  SetOverwrite ifnewer
  SetOutPath "$INSTDIR"
  File "植物大战僵尸β版\beta5.65.exe"
  File "植物大战僵尸β版\beta5.60.exe"
  File "植物大战僵尸β版\beta5.55.exe"
  File "植物大战僵尸β版\beta5.50.exe"
  File "植物大战僵尸β版\beta5.45.exe"
  File "植物大战僵尸β版\beta5.40.exe"
  File "植物大战僵尸β版\beta5.36.exe"
  File "植物大战僵尸β版\beta5.22.exe"
  File "植物大战僵尸β版\beta5.21.exe"

; Shortcuts
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section "修改器" SEC03
  SetOutPath "$INSTDIR"
  File "植物大战僵尸β版\植物大战僵尸修改器v2.6.0.5.exe"
  File "植物大战僵尸β版\PvZ_Tools_v2.0.1.exe"

; Shortcuts
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section "添加桌面快捷方式" SEC04
  SetOutPath "$INSTDIR"
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
    CreateShortCut "$DESKTOP\植物大战僵尸β版.lnk" "$INSTDIR\PlantsVsZombies.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section "字体优化" SEC05
  WriteRegDWORD HKCU "SOFTWARE\PopCap\PlantsVsZombies" "Is3D" "00000001"
SectionEnd

Section /o "Win10 Fatal Error 修复" SEC06
  WriteRegDWORD HKCU "SOFTWARE\PopCap\PlantsVsZombies" "ScreenMode" "00000000"
SectionEnd

Section -AdditionalIcons
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk" "$INSTDIR\uninst.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\PlantsVsZombies.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\PlantsVsZombies.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "植物大战僵尸β版主程序"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "植物大战僵尸β版早期版本"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "植物大战僵尸β版修改器"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC05} "打开 3D 加速以优化字体显示"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC06} "Windows 10 上运行游戏有可能会弹出29个 Fatal Error 窗口, 勾选此项会关闭全屏模式以解决这个问题"
!insertmacro MUI_FUNCTION_DESCRIPTION_END


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "植物大战僵尸β版已成功地从你的计算机移除。"
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "你确实要完全移除植物大战僵尸β版 ，其及所有的组件？" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  !insertmacro MUI_STARTMENU_GETFOLDER "Application" $ICONS_GROUP
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\PvZ_Tools_v2.0.1.exe"
  Delete "$INSTDIR\植物大战僵尸修改器v2.6.0.5.exe"
  Delete "$INSTDIR\beta5.21.exe"
  Delete "$INSTDIR\beta5.22.exe"
  Delete "$INSTDIR\beta5.36.exe"
  Delete "$INSTDIR\beta5.40.exe"
  Delete "$INSTDIR\beta5.45.exe"
  Delete "$INSTDIR\beta5.50.exe"
  Delete "$INSTDIR\beta5.55.exe"
  Delete "$INSTDIR\beta5.60.exe"
  Delete "$INSTDIR\beta5.65.exe"
  Delete "$INSTDIR\游玩前必读.txt"
  Delete "$INSTDIR\reanim\ZombiesWon_.png"
  Delete "$INSTDIR\reanim\ZombiesWon.jpg"
  Delete "$INSTDIR\reanim\StartSet.png"
  Delete "$INSTDIR\reanim\StartReady.png"
  Delete "$INSTDIR\reanim\StartPlant.png"
  Delete "$INSTDIR\reanim\SelectorScreen_WoodSign2_press.png"
  Delete "$INSTDIR\reanim\SelectorScreen_WoodSign2.png"
  Delete "$INSTDIR\reanim\SelectorScreen_WoodSign1.png"
  Delete "$INSTDIR\reanim\SelectorScreen_vasebreaker_highlight.png"
  Delete "$INSTDIR\reanim\SelectorScreen_Vasebreaker_button.png"
  Delete "$INSTDIR\reanim\SelectorScreen_Survival_highlight.png"
  Delete "$INSTDIR\reanim\SelectorScreen_Survival_button.png"
  Delete "$INSTDIR\reanim\SelectorScreen_StartAdventure_Highlight.png"
  Delete "$INSTDIR\reanim\SelectorScreen_StartAdventure_Button1.png"
  Delete "$INSTDIR\reanim\SelectorScreen_Challenges_highlight.png"
  Delete "$INSTDIR\reanim\SelectorScreen_Challenges_button.png"
  Delete "$INSTDIR\reanim\SelectorScreen_BG_Right.jpg"
  Delete "$INSTDIR\reanim\SelectorScreen_Adventure_highlight.png"
  Delete "$INSTDIR\reanim\SelectorScreen_Adventure_button.png"
  Delete "$INSTDIR\reanim\FinalWave.png"
  Delete "$INSTDIR\reanim\Credits_wearetheundead_.png"
  Delete "$INSTDIR\reanim\Credits_wearetheundead.jpg"
  Delete "$INSTDIR\reanim\Credits_MTV.png"
  Delete "$INSTDIR\properties\partner_logo.jpg"
  Delete "$INSTDIR\properties\partner.xml.sig"
  Delete "$INSTDIR\properties\partner.xml"
  Delete "$INSTDIR\properties\LawnStrings.txt"
  Delete "$INSTDIR\PlantsVsZombies.exe"
  Delete "$INSTDIR\particles\Sproing.png"
  Delete "$INSTDIR\particles\Pow.png"
  Delete "$INSTDIR\particles\ExplosionSpudow.png"
  Delete "$INSTDIR\particles\ExplosionPowie.png"
  Delete "$INSTDIR\particles\Doom.png"
  Delete "$INSTDIR\main.pak"
  Delete "$INSTDIR\images\Zombie_bobsled4.png"
  Delete "$INSTDIR\images\Zombie_bobsled3.png"
  Delete "$INSTDIR\images\Zombie_bobsled2.png"
  Delete "$INSTDIR\images\Zombie_bobsled1.png"
  Delete "$INSTDIR\images\ZombieNoteHelp.png"
  Delete "$INSTDIR\images\ZombieNote4.png"
  Delete "$INSTDIR\images\ZombieNote3.png"
  Delete "$INSTDIR\images\ZombieNote2.png"
  Delete "$INSTDIR\images\ZombieNote1.png"
  Delete "$INSTDIR\images\Zombiefinalnote.png"
  Delete "$INSTDIR\images\zenshopbutton_highlight.png"
  Delete "$INSTDIR\images\zenshopbutton.png"
  Delete "$INSTDIR\images\Tombstones.jpg"
  Delete "$INSTDIR\images\Store_Sign.png"
  Delete "$INSTDIR\images\Store_PrevButtonHighlight.png"
  Delete "$INSTDIR\images\Store_PrevButton.png"
  Delete "$INSTDIR\images\Store_NextButtonHighlight.png"
  Delete "$INSTDIR\images\Store_NextButton.png"
  Delete "$INSTDIR\images\SelectorScreen_ZenGardenHighlight.png"
  Delete "$INSTDIR\images\SelectorScreen_ZenGarden.png"
  Delete "$INSTDIR\images\SelectorScreen_StoreHighlight.png"
  Delete "$INSTDIR\images\SelectorScreen_Store.png"
  Delete "$INSTDIR\images\SelectorScreen_Quit2.png"
  Delete "$INSTDIR\images\SelectorScreen_Quit1.png"
  Delete "$INSTDIR\images\SelectorScreen_Options2.png"
  Delete "$INSTDIR\images\SelectorScreen_Options1.png"
  Delete "$INSTDIR\images\SelectorScreen_Help2.png"
  Delete "$INSTDIR\images\SelectorScreen_Help1.png"
  Delete "$INSTDIR\images\SelectorScreen_AlmanacHighlight.png"
  Delete "$INSTDIR\images\SelectorScreen_Almanac.png"
  Delete "$INSTDIR\images\PvZ_Logo_.png"
  Delete "$INSTDIR\images\PvZ_Logo.jpg"
  Delete "$INSTDIR\images\options_menuback.jpg"
  Delete "$INSTDIR\images\FlagMeterLevelProgress.png"
  Delete "$INSTDIR\images\Credits_ZombieNote.png"
  Delete "$INSTDIR\images\Almanac_IndexBack.jpg"
  Delete "$INSTDIR\images\Almanac.png"
  Delete "$INSTDIR\gdi42.dll"
  Delete "$INSTDIR\font\font1.bin"
  Delete "$INSTDIR\font\font1.dds"
  Delete "$INSTDIR\font\font2.bin"
  Delete "$INSTDIR\font\font2.dds"
  Delete "$INSTDIR\font\font3.bin"
  Delete "$INSTDIR\font\font3.dds"
  Delete "$INSTDIR\font\font4.bin"
  Delete "$INSTDIR\font\font4.dds"
  Delete "$INSTDIR\font\font5.bin"
  Delete "$INSTDIR\font\font5.dds"
  Delete "$INSTDIR\font\font6.bin"
  Delete "$INSTDIR\font\font6.dds"
  Delete "$INSTDIR\data\_HouseofTerror16.png"
  Delete "$INSTDIR\data\Pix118Bold.txt"
  Delete "$INSTDIR\data\Pico129.txt"
  Delete "$INSTDIR\data\HouseofTerror28.txt"
  Delete "$INSTDIR\data\HouseofTerror28.png"
  Delete "$INSTDIR\data\HouseofTerror20.txt"
  Delete "$INSTDIR\data\HouseofTerror16.txt"
  Delete "$INSTDIR\data\DwarvenTodcraft36GreenInset.txt"
  Delete "$INSTDIR\data\DwarvenTodcraft36BrightGreenInset.txt"
  Delete "$INSTDIR\data\DwarvenTodcraft24.txt"
  Delete "$INSTDIR\data\DwarvenTodcraft18Yellow.txt"
  Delete "$INSTDIR\data\DwarvenTodcraft18GreenInset.txt"
  Delete "$INSTDIR\data\DwarvenTodcraft18BrightGreenInset.txt"
  Delete "$INSTDIR\data\DwarvenTodcraft18.txt"
  Delete "$INSTDIR\data\DwarvenTodcraft15.txt"
  Delete "$INSTDIR\data\DwarvenTodcraft12.txt"
  Delete "$INSTDIR\data\ContinuumBold14outback.txt"
  Delete "$INSTDIR\data\ContinuumBold14.txt"
  Delete "$INSTDIR\data\BrianneTod32Black.txt"
  Delete "$INSTDIR\data\BrianneTod32.txt"
  Delete "$INSTDIR\data\BrianneTod16.txt"
  Delete "$INSTDIR\data\BrianneTod12.txt"
  Delete "$INSTDIR\bass.dll"

  Delete "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk"
  Delete "$DESKTOP\植物大战僵尸β版.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\植物大战僵尸β版.lnk"

  RMDir "$SMPROGRAMS\$ICONS_GROUP"
  RMDir "$INSTDIR\reanim"
  RMDir "$INSTDIR\properties"
  RMDir "$INSTDIR\particles"
  RMDir "$INSTDIR\images"
  RMDir "$INSTDIR\font"
  RMDir "$INSTDIR\data"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd