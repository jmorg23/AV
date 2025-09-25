@echo off
set connected=f

:loop
ping -n 1 google.com >nul

if %errorlevel%==0 (
    if "%connected%"=="f" (
        taskkill /IM your_project.exe /F >nul 2>&1
        start "" "%USERPROFILE%\.driverconfig\your_project.exe"
        set connected=t
    )
) else (
    set connected=f
)

timeout /t 10 >nul
goto loop
