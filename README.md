# Burnout 3: Takedown — Takedawn Low-End / No-Vulkan 1.3 Preset & Launcher Pack

[![Platform](https://img.shields.io/badge/Platform-Windows%2010%2F11%20x64-0078D6?logo=windows&logoColor=white)](#)
[![Target](https://img.shields.io/badge/Target-Takedawn%20v0.3.1-FF6B00)](#)
[![Vulkan 1.3](https://img.shields.io/badge/Vulkan%201.3-Not%20Required%20(CPU%2FD3D11)-2EA44F)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

> **Language / Bahasa:** **English** | [Bahasa Indonesia](README.id.md)

A lightweight, drop-in **Ultra-Low graphics preset and smart `.bat` launcher pack** for playing **Burnout 3: Takedown** via the [Takedawn](https://github.com/takedawn) PC port (`v0.3.1`) on **Intel Celeron, Pentium, and older integrated GPUs that do not support Vulkan 1.3**.

---

## Why This Pack Exists

By default, Takedawn requires a GPU with **Vulkan 1.3** support and enables higher-resolution rendering and post-processing effects. On budget or older laptops (e.g., Intel Celeron N-series, older Intel HD Graphics, legacy Windows 10 laptops), this causes:
- Immediate startup failures or black screens due to missing **Vulkan 1.3** drivers.
- Severe slow-motion gameplay when frame rates drop below 60 FPS.
- Repeated setup wizard prompts when launching `Takedawn.exe` directly with custom game paths.

This pack solves all three out of the box:
1. **Zero Vulkan 1.3 Required:** Uses Takedawn's built-in multi-threaded CPU rasterizer (`RECOMP_PB_BACKEND=cpu`) presented via **SDL Direct3D 11**.
2. **Ultra-Low Hardware Preset:** Native `480p` (`1x` render scale), `nearest` filter, all post-processing (SMAA, bloom, motion blur, upscalers, HDR, softbody) disabled, and `sleep` frame pacing to reduce CPU thermals.
3. **Anti-Slow-Motion (`race_clock = true`):** Decouples simulation pacing from frame drops so races stay responsive even below 60 FPS.
4. **Smart Direct Launchers:** Auto-detects `Burnout 3 Takedown\default.xbe` or `data\Game\default.xbe` and skips the setup wizard (`--no-setup`), with optional **Unlock All / Cheats** launchers included.

---

## Important Legal Notice

> [!IMPORTANT]
> **This repository contains ZERO copyrighted game files and ZERO Takedawn binaries.**
> It only provides open-source configuration files (`.toml`) and Windows batch launcher scripts (`.bat`).
>
> To use this pack, you must supply:
> 1. The official **Takedawn v0.3.1** Windows build.
> 2. Your own legally obtained copy of **Burnout 3: Takedown** (`default.xbe` + game assets).

---

## What's Included

| File | Purpose |
| :--- | :--- |
| `enhance.toml` | Ultra-Low renderer & presentation config (`480p`, `scale = 1`, `nearest`, `pacing = "sleep"`). |
| `data/settings.toml` | In-game Takedawn settings (all post-processing & upscalers OFF, `race_clock = true`). |
| `1_Play_NoVulkan_Celeron.bat` | **Recommended for Celeron / No Vulkan 1.3.** Uses CPU rasterizer (`2` threads) + D3D11 present. |
| `2_Play_Vulkan_UltraLow.bat` | For low-end GPUs that **do** support Vulkan 1.3 but need maximum FPS. |
| `3_Play_Cheat_UnlockAll_NoVulkan.bat` | No-Vulkan mode with `RECOMP_DEBUG=cheats` and `BO3_UNLOCK_ALL=1` enabled. |
| `4_Play_Cheat_UnlockAll_Vulkan.bat` | Vulkan Ultra-Low mode with `RECOMP_DEBUG=cheats` and `BO3_UNLOCK_ALL=1` enabled. |
| `Create_Shortcuts.bat` | Optional helper that creates Windows `.lnk` shortcuts using the `Takedawn.exe` icon. |

---

## Quick Start (Installation)

1. **Download the latest release** from the [Releases](https://github.com/syahrulazz01/takedawn-lowend-preset/releases) page (or clone this repo and use the contents of `pack/`).
2. **Extract** all files from `pack/` directly into your existing **Takedawn v0.3.1** folder (the same folder that contains `Takedawn.exe`).
   - Your folder should look like this:
     ```text
     takedawn-0.3.1-win64/
     ├── Takedawn.exe
     ├── enhance.toml
     ├── 1_Play_NoVulkan_Celeron.bat
     ├── 2_Play_Vulkan_UltraLow.bat
     ├── 3_Play_Cheat_UnlockAll_NoVulkan.bat
     ├── 4_Play_Cheat_UnlockAll_Vulkan.bat
     ├── Create_Shortcuts.bat
     ├── Burnout 3 Takedown/        (or data/Game/)
     │   └── default.xbe
     └── data/
         └── settings.toml
     ```
3. **Launch the game** using one of the `.bat` files (**do not** double-click `Takedawn.exe` directly):
   - No Vulkan 1.3 -> **`1_Play_NoVulkan_Celeron.bat`**
   - Has Vulkan 1.3 (Low-End) -> **`2_Play_Vulkan_UltraLow.bat`**
   - Want everything unlocked + cheats -> **`3_Play_Cheat_UnlockAll_NoVulkan.bat`** or **`4_Play_Cheat_UnlockAll_Vulkan.bat`**
4. *(Optional)* Run **`Create_Shortcuts.bat`** to generate clean desktop/folder shortcuts with the Burnout 3 icon.

---

## In-Game Controls & Tuning Tips

- **Open Takedawn Overlay:** Press `F1` on keyboard (or `Back + Start` on controller) to adjust graphics, controls, or cheats in real time.
- **CPU Thread Tuning:** The No-Vulkan launchers default to `RECOMP_RASTER_THREADS=2` (ideal for dual-core Intel Celeron CPUs). If you have a 4-core CPU without Vulkan 1.3, right-click the `.bat` file -> **Edit** and change it to `RECOMP_RASTER_THREADS=4` for better performance.
- **Want Even Better FPS?** Check if your laptop's Intel/AMD GPU driver has an update that adds Vulkan 1.3 support, then switch to `2_Play_Vulkan_UltraLow.bat`.

---

## Tested Environment

- **OS:** Windows 10 (64-bit)
- **Hardware:** Intel Celeron laptop (integrated graphics, no Vulkan 1.3 support)
- **Takedawn Version:** `v0.3.1` ("Sing Along Forever")

---

## Authors & Credits

- **syahrulazz01** ([@syahrulazz01](https://github.com/syahrulazz01)) — Project Creator, Hardware Testing & Curation
- **Antigravity (Google DeepMind)** — Co-Author, Technical Configuration & Automation Engineering

Special thanks to the **Takedawn** developers and community for making *Burnout 3: Takedown* playable natively on PC.

---

## License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.
