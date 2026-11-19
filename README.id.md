# Burnout Takedown PORT PC — Paket Preset All-in-One, Launcher & Tutorial Lengkap

[![Platform](https://img.shields.io/badge/Platform-Windows%2010%2F11%20x64-0078D6?logo=windows&logoColor=white)](#)
[![Target](https://img.shields.io/badge/Target-Takedawn%20v0.3.1-FF6B00)](#)
[![PC Tiers](https://img.shields.io/badge/Presets-Low--End%20%7C%20Mid--Range%20%7C%20High--End-2EA44F)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

> **Language / Bahasa:** [English](README.md) | **Bahasa Indonesia**

Paket lengkap **preset grafis, pengubah preset 1-klik, launcher `.bat` pintar, dan tutorial instalasi dari awal sampai akhir** untuk memainkan **Burnout 3: Takedown** secara native di PC lewat **Takedawn (`v0.3.1`)** — mendukung **semua kelas PC**, mulai dari **laptop Intel Celeron tanpa Vulkan 1.3** hingga **PC Gaming kelas tinggi**.

---

## 3 Pilihan Preset Grafis (Semua Kelas PC)

Ganti preset kapan saja dalam 2 detik lewat **`0_Choose_Preset.bat`**:

| Kelas PC | Target Perangkat | Renderer | Skala Resolusi | Fitur Utama |
| :--- | :--- | :--- | :--- | :--- |
| **`1` Low-End** *(Default)* | Intel Celeron / Pentium / iGPU lama (**Tanpa Vulkan 1.3**) | CPU Rasterizer + SDL D3D11 | `1x` (`480p`, `nearest`) | Semua efek berat OFF, `pacing = "sleep"`, `race_clock = true` (anti slow-motion) |
| **`2` Mid-Range** | Laptop standar / GTX / RX / iGPU baru (**Vulkan 1.3**) | Vulkan 1.3 | `2x` (HD, `linear`) | 60 FPS stabil, Softbody ON, Bloom ON, Crash & Split-Screen 60 FPS |
| **`3` High-End** | PC Gaming / RTX / monitor refresh rate tinggi (**Vulkan 1.3**) | Vulkan 1.3 | `3x` (1440p+, `linear`) | High Refresh Rate ON, Softbody ON, Bloom + Motion Blur, Crash & Split-Screen 60 FPS |

---

## Pemberitahuan Legal

> [!IMPORTANT]
> **Repositori ini TIDAK menyertakan file game Burnout 3: Takedown maupun binary Takedawn.**
> Hanya berisi file preset konfigurasi open-source (`.toml`), skrip launcher (`.bat`), dan panduan instalasi.
>
> Untuk bermain, Anda harus menyiapkan sendiri:
> 1. Build resmi **Takedawn v0.3.1** untuk Windows 64-bit.
> 2. Salinan legal game **Burnout 3: Takedown (Original Xbox)** milik Anda (`default.xbe` + aset game, atau file `.iso` Xbox).

---

## Tutorial Lengkap dari Awal Sampai Akhir

### Langkah 1 — Siapkan Takedawn (`v0.3.1`)
1. Download rilis resmi **Takedawn v0.3.1** (Windows x64) lalu ekstrak ke satu folder bersih (contoh: `D:\Games\Burnout3_PC\`).
2. Pastikan file `Takedawn.exe` ada langsung di dalam folder tersebut.

### Langkah 2 — Siapkan File Game Burnout 3: Takedown (Original Xbox)
Anda membutuhkan folder hasil ekstrak game **Burnout 3: Takedown (Original Xbox)** yang berisi `default.xbe`:
- **Opsi A (Dari file `.iso` / `.xiso`):** Ekstrak file ISO menggunakan `extract-xiso` (atau jalankan setup bawaan Takedawn 1 kali) hingga mendapatkan folder berisi `default.xbe`, `Tracks\`, `sound\`, dll.
- **Opsi B (Sudah berupa folder):** Letakkan foldernya di dalam folder Takedawn pada salah satu lokasi ini:
  - `Burnout 3 Takedown\default.xbe`, **ATAU**
  - `data\Game\default.xbe`

*(Launcher `.bat` pintar di paket ini otomatis mendeteksi kedua lokasi tersebut!)*

### Langkah 3 — Pasang Paket Preset & Launcher Ini
1. Download zip terbaru dari halaman [Releases](https://github.com/syahrulazz01/takedawn-lowend-preset/releases) (atau salin seluruh isi folder `pack/` dari repositori ini).
2. Ekstrak semua file **langsung ke dalam folder Takedawn Anda** (satu folder dengan `Takedawn.exe`).

### Langkah 4 — Pilih Preset Sesuai Spek Laptop/PC
Klik 2x **`0_Choose_Preset.bat`** lalu ketik angka sesuai spek PC kamu:
- Ketik **`1`** -> Laptop Kentang / Intel Celeron / Tanpa Vulkan 1.3
- Ketik **`2`** -> Laptop/PC Menengah (Vulkan 1.3, HD 60 FPS)
- Ketik **`3`** -> PC Gaming Kelas Tinggi (Vulkan 1.3, 3x High Refresh)

### Langkah 5 — Mulai Bermain!
**Selalu jalankan game lewat file `.bat`** (jangan klik langsung `Takedawn.exe` agar otomatis masuk game tanpa layar setup):

| File Launcher | Cocok Untuk |
| :--- | :--- |
| `1_Play_NoVulkan_Celeron.bat` | Laptop/PC **belum ada Vulkan 1.3** (Intel Celeron / iGPU lama). Memakai CPU rasterizer + D3D11. |
| `2_Play_Vulkan_UltraLow.bat` | Laptop/PC **sudah ada Vulkan 1.3** (bisa untuk Low-End, Mid-Range, maupun High-End sesuai pilihan di Langkah 4). |
| `3_Play_Cheat_UnlockAll_NoVulkan.bat` | Mode Tanpa Vulkan + `RECOMP_DEBUG=cheats` + `BO3_UNLOCK_ALL=1`. |
| `4_Play_Cheat_UnlockAll_Vulkan.bat` | Mode Vulkan + `RECOMP_DEBUG=cheats` + `BO3_UNLOCK_ALL=1`. |
| `Create_Shortcuts.bat` | *(Opsional)* Membuat 4 shortcut `.lnk` berlogo resmi `Takedawn.exe`. |

---

## Kontrol In-Game & Tips Tambahan

- **Buka Menu Overlay Takedawn:** Tekan `F1` di keyboard (atau `Back + Start` di stik) untuk mengubah resolusi, kontrol, grafis, atau cheat kapan saja di dalam game.
- **Atur Thread CPU (Mode Tanpa Vulkan):** Default-nya `RECOMP_RASTER_THREADS=2` (pas untuk Celeron 2-core). Jika CPU kamu 4-core tapi belum mendukung Vulkan 1.3, klik kanan file `.bat` -> **Edit** lalu ubah `2` menjadi `4`.
- **Maksimalkan PC Kelas Tinggi (4K / Upscaler):** Tekan `F1` di dalam game untuk menaikkan *render scale* ke `4x` atau mengaktifkan SMAA / Texture Upscaling.

---

## Penulis & Kredit

- **syahrulazz01** ([@syahrulazz01](https://github.com/syahrulazz01)) — Kreator Proyek, Pengujian Perangkat & Kurasi
- **Antigravity (Google DeepMind)** — Co-Author, Rekayasa Konfigurasi & Otomatisasi

Terima kasih kepada tim pengembang dan komunitas **Takedawn** yang telah menghadirkan port PC *Burnout 3: Takedown*.

---

## Lisensi

Proyek ini dirilis di bawah **MIT License** — lihat file [LICENSE](LICENSE) untuk detail lengkap.
