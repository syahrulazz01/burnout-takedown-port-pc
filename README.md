# Burnout Takedown PORT PC — All-in-One Preset, Launcher & Setup Guide

[![Platform](https://img.shields.io/badge/Platform-Windows%2010%2F11%20x64-0078D6?logo=windows&logoColor=white)](#)
[![Target](https://img.shields.io/badge/Target-Takedawn%20v0.3.1-FF6B00)](#)
[![PC Tiers](https://img.shields.io/badge/Presets-Low--End%20%7C%20Mid--Range%20%7C%20High--End-2EA44F)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

> **Language / Bahasa:** **English** | [Bahasa Indonesia](README.id.md)

An all-in-one **graphics preset pack, 1-click preset switcher, smart `.bat` launchers, and complete start-to-finish setup guide** for playing **Burnout 3: Takedown** natively on PC via **Takedawn (`v0.3.1`)** — tailored for **every PC class**, from **Intel Celeron laptops without Vulkan 1.3** up to **High-End Gaming PCs**.

---

## Supported PC Tiers (3 Built-In Presets)

Switch between tiers anytime in 2 seconds using **`0_Choose_Preset.bat`**:

| Tier | Target Hardware | Renderer | Internal Scale | Key Features |
| :--- | :--- | :--- | :--- | :--- |
| **`1` Low-End** *(Default)* | Intel Celeron / Pentium / legacy iGPU (**No Vulkan 1.3**) | CPU Rasterizer + SDL D3D11 | `1x` (`480p`, `nearest`) | All effects OFF, `pacing = "sleep"`, `race_clock = true` (anti slow-motion) |
| **`2` Mid-Range** | Standard laptops / GTX / RX / modern iGPU (**Vulkan 1.3**) | Vulkan 1.3 | `2x` (HD, `linear`) | Smooth 60 FPS, Softbody ON, Bloom ON, 60 FPS Crash & Split-Screen |
| **`3` High-End** | Gaming PCs / RTX / high-refresh monitors (**Vulkan 1.3**) | Vulkan 1.3 | `3x` (1440p+, `linear`) | High Refresh Rate ON, Softbody ON, Bloom + Motion Blur, 60 FPS Crash & Split-Screen |

---

## Important Legal Notice

> [!IMPORTANT]
> **This repository contains ZERO copyrighted game files and ZERO Takedawn binaries.**
> It only provides open-source configuration presets (`.toml`), Windows batch launchers (`.bat`), and setup documentation.
>
> To play, you must supply:
> 1. The official **Takedawn v0.3.1** Windows x64 build.
> 2. Your own legally obtained **Original Xbox** copy of **Burnout 3: Takedown** (`default.xbe` + game assets, or an Xbox `.iso` disc image).

---

## Complete Start-to-Finish Setup Tutorial

### Step 1 — Get Official Takedawn (`v0.3.1`)
1. Download the official **Takedawn v0.3.1** Windows x64 release and extract it to a clean folder (for example: `D:\Games\Burnout3_PC\`).
2. Make sure `Takedawn.exe` is directly inside that folder.

### Step 2 — Prepare Your Original Xbox Game Files
You need the extracted files of **Burnout 3: Takedown (Original Xbox)** containing `default.xbe`:
- **Option A (From an `.iso` / `.xiso` disc image):** Extract the ISO using `extract-xiso` (or run Takedawn's built-in setup once) so you get a folder containing `default.xbe`, `Tracks\`, `sound\`, etc.
- **Option B (Already extracted folder):** Place the folder inside your Takedawn directory at either:
  - `Burnout 3 Takedown\default.xbe`, **OR**
  - `data\Game\default.xbe`

*(Our smart `.bat` launchers automatically detect both paths!)*

### Step 3 — Install This Preset & Launcher Pack
1. Download the latest zip from the [Releases](https://github.com/syahrulazz01/takedawn-lowend-preset/releases) page (or copy everything inside the `pack/` folder of this repository).
2. Extract all files **directly into your Takedawn folder** (the same folder as `Takedawn.exe`).
3. Your final folder layout should look like this:
   ```text
   Burnout3_PC/
   ├── Takedawn.exe
   ├── 0_Choose_Preset.bat
   ├── 1_Play_NoVulkan_Celeron.bat
   ├── 2_Play_Vulkan_UltraLow.bat
   ├── 3_Play_Cheat_UnlockAll_NoVulkan.bat
   ├── 4_Play_Cheat_UnlockAll_Vulkan.bat
   ├── Create_Shortcuts.bat
   ├── enhance.toml
   ├── presets/
   │   ├── low-end/
   │   ├── mid-range/
   │   └── high-end/
   ├── Burnout 3 Takedown/        (or data/Game/)
   │   └── default.xbe
   └── data/
       └── settings.toml
   ```

### Step 4 — Choose Your Graphics Preset
Double-click **`0_Choose_Preset.bat`** and pick your PC class:
- Press **`1`** -> Low-End / Intel Celeron / No Vulkan 1.3
- Press **`2`** -> Mid-Range (Vulkan 1.3, HD 60 FPS)
- Press **`3`** -> High-End Gaming PC (Vulkan 1.3, 3x High Refresh)

### Step 5 — Launch the Game!
**Always launch via a `.bat` file** (do not double-click `Takedawn.exe` directly, so `--no-setup` and your chosen backend/cheats load automatically):

| Launcher File | Best For |
| :--- | :--- |
| `1_Play_NoVulkan_Celeron.bat` | PCs **without Vulkan 1.3** (Intel Celeron / legacy iGPU). Uses CPU rasterizer + D3D11. |
| `2_Play_Vulkan_UltraLow.bat` | PCs **with Vulkan 1.3** (Low-End, Mid-Range, or High-End — uses whichever preset you picked in Step 4). |
| `3_Play_Cheat_UnlockAll_NoVulkan.bat` | No-Vulkan mode + `RECOMP_DEBUG=cheats` + `BO3_UNLOCK_ALL=1`. |
| `4_Play_Cheat_UnlockAll_Vulkan.bat` | Vulkan mode + `RECOMP_DEBUG=cheats` + `BO3_UNLOCK_ALL=1`. |
| `Create_Shortcuts.bat` | *(Optional)* Creates Windows `.lnk` shortcuts with the official `Takedawn.exe` icon. |

---

## In-Game Controls & Tuning Tips

- **Open Takedawn Overlay:** Press `F1` on keyboard (or `Back + Start` on controller) to tweak resolution, AA, upscalers, controls, or cheats live in-game.
- **CPU Thread Tuning (No-Vulkan Mode):** `1_Play_NoVulkan_Celeron.bat` defaults to `RECOMP_RASTER_THREADS=2` (ideal for 2-core Celerons). If you have a 4-core CPU without Vulkan 1.3, right-click the `.bat` file -> **Edit** and change `2` to `4`.
- **High-End 4K Tweaks:** If you have a strong GPU (RTX / RX), press `F1` in-game to raise render scale to `4x` or enable SMAA / Texture Upscaling.

---

## Authors & Credits

- **syahrulazz01** ([@syahrulazz01](https://github.com/syahrulazz01)) — Project Creator, Hardware Testing & Curation
- **Antigravity (Google DeepMind)** — Co-Author, Technical Configuration & Automation Engineering

Special thanks to the **Takedawn** developers and community for bringing *Burnout 3: Takedown* natively to PC.

---

## License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.
