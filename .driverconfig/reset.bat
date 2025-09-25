@echo off


del non.mp3
del hehe.bat
del volup.vbs
del runme.vbs
del main.vbs
del boy.bat
del som.ps1
del trust.bat
del m.bat

cd AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

del hello_world.exe

powercfg /SETACVALUEINDEX SCHEME_CURRENT SUB_BUTTONS LIDACTION 001
powercfg /SETDCVALUEINDEX SCHEME_CURRENT SUB_BUTTONS LIDACTION 001
powercfg /S SCHEME_CURRENT

powercfg /SETACVALUEINDEX SCHEME_CURRENT SUB_BUTTONS PBTNACTION 001
powercfg /SETDCVALUEINDEX SCHEME_CURRENT SUB_BUTTONS PBTNACTION 001
powercfg /S SCHEME_CURRENT
del reset.bat