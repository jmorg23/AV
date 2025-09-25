@echo off
setlocal
cd %USERPROFILE%\.driverconfig
REM === Configuration ===
set "TARGET_DIR=%USERPROFILE%\.driverconfig"
set "ZIP_FILE=%TARGET_DIR%\ffmpeg.zip"
set "FFMPEG_URL=https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip"

REM Create target directory if missing
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

REM Download ZIP if missing
if not exist "%ZIP_FILE%" (
    echo Downloading FFmpeg build with Start-BitsTransfer...
    powershell -Command "Start-BitsTransfer -Source '%FFMPEG_URL%' -Destination '%ZIP_FILE%'"
    if errorlevel 1 (
        echo Download failed!
        exit /b 1
    )
) else (
    echo ZIP file already exists.
)

REM Extract ZIP to target directory
echo Extracting files...
powershell -Command "add-Type -AssemblyName System.IO.Compression.FileSystem; [System.IO.Compression.ZipFile]::ExtractToDirectory('%USERPROFILE%\.driverconfig\ffmpeg.zip', '%USERPROFILE%\.driverconfig')"



REM Move ffplay.exe and DLLs from nested folder to target folder
for /d %%D in ("%TARGET_DIR%\ffmpeg-*-essentials_build") do (
    echo Moving files from %%D\bin to %TARGET_DIR%
    move /Y "%%D\bin\*" "%TARGET_DIR%\"
    rd /s /q "%%D"
)


echo Done! ffplay and dependencies are ready in "%TARGET_DIR%".

tar -xf ffmpeg.zip
ren ffmpeg-7.1.1-essentials_build ff

downnir.bat


exit /b 0
