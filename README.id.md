# Burnout 3: Takedown — Preset Ultra-Low & Launcher Pack (Celeron / Tanpa Vulkan 1.3)

[![Platform](https://img.shields.io/badge/Platform-Windows%2010%2F11%20x64-0078D6?logo=windows&logoColor=white)](#)
[![Target](https://img.shields.io/badge/Target-Takedawn%20v0.3.1-FF6B00)](#)
[![Vulkan 1.3](https://img.shields.io/badge/Vulkan%201.3-Tidak%20Wajib%20(CPU%2FD3D11)-2EA44F)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

> **Language / Bahasa:** [English](README.md) | **Bahasa Indonesia**

Paket konfigurasi **Ultra-Low** dan **launcher `.bat` pintar** siap pakai untuk menjalankan **Burnout 3: Takedown** lewat port PC **Takedawn v0.3.1** di laptop **Intel Celeron, Pentium, atau iGPU lama yang belum mendukung Vulkan 1.3**.

---

## Masalah yang Diselesaikan

Secara bawaan, Takedawn membutuhkan GPU dengan dukungan **Vulkan 1.3** serta mengaktifkan beberapa efek grafis modern. Di laptop spesifikasi rendah (seperti Intel Celeron / Windows 10 lama), hal ini sering menyebabkan:
- Game gagal terbuka atau *black screen* karena tidak ada driver **Vulkan 1.3**.
- Gameplay terasa *slow-motion* parah saat FPS turun di bawah 60.
- Muncul layar setup/install berulang kali saat mengklik `Takedawn.exe` secara langsung.

Paket ini langsung mengatasi semuanya:
1. **Tanpa Vulkan 1.3:** Menggunakan CPU rasterizer bawaan Takedawn (`RECOMP_PB_BACKEND=cpu`) yang ditampilkan lewat **SDL Direct3D 11**.
2. **Settingan Grafis Paling Ringan:** Resolusi native `480p` (`scale = 1x`), filter `nearest`, seluruh efek berat (SMAA, bloom, motion blur, upscaler, HDR, softbody) dimatikan, dan frame pacing `sleep` agar CPU tetap dingin.
3. **Anti Slow-Motion (`race_clock = true`):** Menjaga kecepatan balapan tetap normal walau FPS turun di bawah 60.
4. **Launcher Otomatis:** Mendeteksi otomatis folder `Burnout 3 Takedown\default.xbe` atau `data\Game\default.xbe` lalu langsung masuk game (`--no-setup`), lengkap dengan opsi **Cheat Unlock All**.

---

## Pemberitahuan Legal

> [!IMPORTANT]
> **Repositori ini TIDAK menyertakan file game Burnout 3: Takedown maupun binary Takedawn.**
> Hanya berisi file konfigurasi open-source (`.toml`) dan skrip launcher (`.bat`).
>
> Untuk menggunakannya, Anda harus menyediakan sendiri:
> 1. Build resmi **Takedawn v0.3.1** untuk Windows.
> 2. Salinan legal game **Burnout 3: Takedown** (`default.xbe` beserta aset game).

---

## Isi Paket

| File | Fungsi |
| :--- | :--- |
| `enhance.toml` | Konfigurasi renderer & tampilan Ultra-Low (`480p`, `scale = 1`, `nearest`, `pacing = "sleep"`). |
| `data/settings.toml` | Pengaturan in-game Takedawn (semua efek & upscaler OFF, `race_clock = true`). |
| `1_Play_NoVulkan_Celeron.bat` | **Rekomendasi untuk Celeron / Tanpa Vulkan 1.3.** Menggunakan CPU rasterizer (`2` thread) + D3D11. |
| `2_Play_Vulkan_UltraLow.bat` | Untuk laptop kentang yang **sudah** punya Vulkan 1.3 tapi butuh FPS maksimal. |
| `3_Play_Cheat_UnlockAll_NoVulkan.bat` | Mode Tanpa Vulkan + `RECOMP_DEBUG=cheats` + `BO3_UNLOCK_ALL=1`. |
| `4_Play_Cheat_UnlockAll_Vulkan.bat` | Mode Vulkan Ultra-Low + `RECOMP_DEBUG=cheats` + `BO3_UNLOCK_ALL=1`. |
| `Create_Shortcuts.bat` | Opsional — membuat shortcut Windows (`.lnk`) berlogo `Takedawn.exe`. |

---

## Cara Pakai

1. **Download rilis terbaru** dari halaman [Releases](https://github.com/syahrulazz01/takedawn-lowend-preset/releases) (atau ambil isi folder `pack/`).
2. **Ekstrak** semua isi `pack/` langsung ke dalam folder **Takedawn v0.3.1** Anda (folder yang sama dengan `Takedawn.exe`).
3. **Jalankan game** lewat file `.bat` (**jangan** klik langsung `Takedawn.exe`):
   - Belum ada Vulkan 1.3 -> klik 2x **`1_Play_NoVulkan_Celeron.bat`**
   - Sudah ada Vulkan 1.3 -> klik 2x **`2_Play_Vulkan_UltraLow.bat`**
   - Mode Cheat Unlock All -> klik 2x **`3_Play_Cheat_UnlockAll_NoVulkan.bat`** atau **`4_Play_Cheat_UnlockAll_Vulkan.bat`**
4. *(Opsional)* Klik 2x **`Create_Shortcuts.bat`** untuk membuat shortcut berlogo Burnout 3.

---

## Tips Tambahan

- **Menu Overlay In-Game:** Tekan `F1` di keyboard (atau `Back + Start` di stik) untuk membuka menu grafis, kontrol, dan cheat kapan saja.
- **Atur Jumlah Thread CPU:** Secara default disetel `RECOMP_RASTER_THREADS=2` (cocok untuk Celeron 2-core). Jika CPU Anda 4-core namun tanpa Vulkan 1.3, klik kanan file `.bat` -> **Edit** lalu ubah menjadi `4`.

---

## Penulis & Kredit

- **syahrulazz01** ([@syahrulazz01](https://github.com/syahrulazz01)) — Kreator Proyek, Pengujian Perangkat & Kurasi
- **Antigravity (Google DeepMind)** — Co-Author, Rekayasa Konfigurasi & Otomatisasi

Terima kasih kepada tim pengembang dan komunitas **Takedawn** yang telah menghadirkan port PC *Burnout 3: Takedown*.

---

## Lisensi

Proyek ini dirilis di bawah **MIT License** — lihat file [LICENSE](LICENSE) untuk detail lengkap.
