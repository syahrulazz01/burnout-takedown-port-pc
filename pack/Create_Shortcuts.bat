@echo off
setlocal
cd /d "%~dp0"

if not exist "Takedawn.exe" (
    echo [ERROR] Takedawn.exe not found in this folder!
    echo Please run this script inside your Takedawn v0.3.1 folder.
    pause
    exit /b 1
)

powershell -NoProfile -Command "$d = (Get-Location).Path; $e = Join-Path $d 'Takedawn.exe'; $w = New-Object -ComObject WScript.Shell; $items = @(@('Play BURNOUT 3 (No-Vulkan Celeron).lnk','1_Play_NoVulkan_Celeron.bat'), @('Play BURNOUT 3 (Vulkan Ultra-Low).lnk','2_Play_Vulkan_UltraLow.bat'), @('Play BURNOUT 3 (Cheat Unlock All - No-Vulkan).lnk','3_Play_Cheat_UnlockAll_NoVulkan.bat'), @('Play BURNOUT 3 (Cheat Unlock All - Vulkan Low).lnk','4_Play_Cheat_UnlockAll_Vulkan.bat')); foreach ($i in $items) { $s = $w.CreateShortcut((Join-Path $d $i[0])); $s.TargetPath = Join-Path $d $i[1]; $s.WorkingDirectory = $d; $s.WindowStyle = 7; $s.IconLocation = $e + ',0'; $s.Save() }"

echo Done! 4 Burnout 3 shortcuts have been created in this folder.
pause
