@echo off

set fileName=Wakes.txt
set location=%USERPROFILE%\Desktop

for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set date=%%c-%%a-%%b)
for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set time=%%a:%%b)
set dateAtTime=%date% at %time%

cd /d %location%

if not exist %fileName% (
    copy /y nul %fileName% > nul
) else (
    echo. >> %fileName%
)

echo Woken on %dateAtTime% >> %fileName%
powercfg -lastwake >> %fileName%

exit /b 0