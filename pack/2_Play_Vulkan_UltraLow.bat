@echo off
setlocal
cd /d "%~dp0"

if not exist "Takedawn.exe" (
    echo [ERROR] Takedawn.exe not found in this folder!
    echo Please extract all files from this preset pack into your Takedawn v0.3.1 folder.
    pause
    exit /b 1
)

set "RECOMP_GAME_RACE_CLOCK=1"

if exist "Burnout 3 Takedown\default.xbe" (
    start "" "Takedawn.exe" --no-setup "Burnout 3 Takedown\default.xbe"
) else if exist "data\Game\default.xbe" (
    start "" "Takedawn.exe" --no-setup "data\Game\default.xbe"
) else (
    start "" "Takedawn.exe"
)
