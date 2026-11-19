@echo off
setlocal
cd /d "%~dp0"

echo ============================================================
echo   BURNOUT TAKEDOWN PORT PC - Graphics Preset Switcher
echo ============================================================
echo.
echo   [1] LOW-END   (Intel Celeron / No Vulkan 1.3 / 480p 1x)
echo   [2] MID-RANGE (Standard Laptop / Vulkan 1.3 / HD 2x 60fps)
echo   [3] HIGH-END  (Gaming PC / Vulkan 1.3 / 3x High Refresh)
echo.
set /p choice="Choose your PC tier (1, 2, or 3): "

if "%choice%"=="1" set "PRESET=low-end"
if "%choice%"=="2" set "PRESET=mid-range"
if "%choice%"=="3" set "PRESET=high-end"

if not defined PRESET (
    echo Invalid selection. Please run again and choose 1, 2, or 3.
    pause
    exit /b 1
)

if not exist "data" mkdir "data"
copy /y "presets\%PRESET%\enhance.toml" "enhance.toml" >nul
copy /y "presets\%PRESET%\settings.toml" "data\settings.toml" >nul

echo.
echo [OK] Applied preset: %PRESET%
echo Now launch the game using one of the Play .bat files!
echo.
pause
