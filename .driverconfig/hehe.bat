@echo off
cd %USERPROFILE%\.driverconfig
:: Set lid action to "Do nothing"
powercfg /SETACVALUEINDEX SCHEME_CURRENT SUB_BUTTONS LIDACTION 0
powercfg /SETDCVALUEINDEX SCHEME_CURRENT SUB_BUTTONS LIDACTION 0

powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 0
powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 0

:: Set power button action to "Do nothing"
powercfg /SETACVALUEINDEX SCHEME_CURRENT SUB_BUTTONS POWERBUTTONACTION 0
powercfg /SETDCVALUEINDEX SCHEME_CURRENT SUB_BUTTONS POWERBUTTONACTION 0

:: Apply the changes
powercfg /SETACTIVE SCHEME_CURRENT


for /l %%i in (1, 1, 2) do (
 "nircmd" exec hide "ffplay.exe" -autoexit -nodisp -loglevel quiet "non.mp3"
)