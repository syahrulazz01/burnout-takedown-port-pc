# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2026-11-19

### Added
- Ultra-Low `enhance.toml` preset (`480p`, `scale = 1`, `nearest`, `pacing = "sleep"`).
- Ultra-Low `data/settings.toml` preset with all post-processing & upscalers disabled and `race_clock = true`.
- 4 smart `.bat` launchers with auto-detection for both `Burnout 3 Takedown\default.xbe` and `data\Game\default.xbe`:
  - `1_Play_NoVulkan_Celeron.bat` (CPU rasterizer + D3D11 present, no Vulkan 1.3 required)
  - `2_Play_Vulkan_UltraLow.bat` (Vulkan 1.3 Ultra-Low)
  - `3_Play_Cheat_UnlockAll_NoVulkan.bat` (No-Vulkan + Unlock All + Cheats)
  - `4_Play_Cheat_UnlockAll_Vulkan.bat` (Vulkan Ultra-Low + Unlock All + Cheats)
- `Create_Shortcuts.bat` helper to generate `.lnk` shortcuts with the `Takedawn.exe` icon.
- `scripts/build_release.ps1` script to package `pack/` into a ready-to-upload GitHub Release `.zip`.
- Bilingual documentation (`README.md` in English and `README.id.md` in Bahasa Indonesia).
