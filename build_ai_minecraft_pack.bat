@echo off
setlocal

set "PACKAGER=%~dp0tools\package_builds.ps1"

echo.
echo === AI Minecraft Builds Packager ===
echo.

if not exist "%PACKAGER%" (
    echo ERROR: PowerShell packager was not found.
    echo Expected: "%PACKAGER%"
    pause
    exit /b 1
)

powershell -NoProfile -ExecutionPolicy Bypass -File "%PACKAGER%"

if errorlevel 1 (
    echo.
    echo ERROR: Failed to package builds. See the error above.
    pause
    exit /b 1
)

echo.
echo SUCCESS: Full debug pack and individual build packs are ready.
echo Debug pack: "%~dp0ai-minecraft-builds.mcpack"
echo Build packs: "%~dp0packs"
echo.
pause
endlocal
