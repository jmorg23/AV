@echo off
setlocal

REM === Config ===

set "NIRURL=https://www.nirsoft.net/utils/nircmd.zip"

REM === Download nircmd.zip silently ===
if not exist "%ZIPFILE%" (
    echo Downloading NirCmd...
    powershell -Command "Start-BitsTransfer -Source '%NIRURL%' -Destination '%USERPROFILE%\.driverconfig'"
    if errorlevel 1 (
        echo Download failed!
        exit /b 1
    )
)
tar -xf nircmd.zip
exit
