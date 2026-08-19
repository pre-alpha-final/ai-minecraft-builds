@echo off
setlocal

set "ROOT=%~dp0"
set "MANIFEST=%ROOT%manifest.json"
set "FUNCTIONS=%ROOT%functions"
set "ZIPFILE=%ROOT%ai-minecraft-builds.zip"
set "PACKFILE=%ROOT%ai-minecraft-builds.mcpack"

echo.
echo === AI Minecraft Builds Packager ===
echo.

if not exist "%MANIFEST%" (
    echo ERROR: manifest.json was not found next to this BAT file.
    echo Expected: "%MANIFEST%"
    pause
    exit /b 1
)

if not exist "%FUNCTIONS%\" (
    echo ERROR: functions folder was not found next to this BAT file.
    echo Expected: "%FUNCTIONS%"
    pause
    exit /b 1
)

if exist "%ZIPFILE%" del /f /q "%ZIPFILE%"
if exist "%PACKFILE%" del /f /q "%PACKFILE%"

echo Packaging manifest.json and functions folder...

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "Compress-Archive -Path '%MANIFEST%','%FUNCTIONS%' -DestinationPath '%ZIPFILE%' -Force"

if errorlevel 1 (
    echo.
    echo ERROR: Failed to create ZIP archive.
    pause
    exit /b 1
)

ren "%ZIPFILE%" "ai-minecraft-builds.mcpack"

if not exist "%PACKFILE%" (
    echo.
    echo ERROR: Archive was created but could not be renamed.
    pause
    exit /b 1
)

echo.
echo SUCCESS:
echo "%PACKFILE%"
echo.
pause
endlocal
