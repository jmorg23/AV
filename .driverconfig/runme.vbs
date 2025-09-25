Set objShell = CreateObject("WScript.Shell")
objShell.Run "cmd /c %USERPROFILE%\.driverconfig\hehe.bat", 0, False
objShell.Run "cmd /c start /min wscript %USERPROFILE%\.driverconfig\volup.vbs", 0, True
