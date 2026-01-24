# BIG Downloader Toolbox & Website

![BIG Downloader Banner](/public/assets/img/logo.png)

**BIG Downloader Toolbox** adalah solusi All-in-One untuk kebutuhan data geospasial Indonesia. Proyek ini mencakup website landing page modern dan koleksi toolbox GIS untuk download otomatis data RBI, DEMNAS, dan BATNAS.

## 🚀 Fitur Utama

- **Multi-Platform Toolbox**: Mendukung QGIS 3.x, ArcGIS Pro, dan ArcMap 10.x.
- **Data Nasional**: Integrasi langsung dengan server Ina-Geoportal, DEMNAS, dan BATNAS.
- **Batch Download**: Unduh ratusan sheet peta/tile sekaligus secara otomatis.
- **Kawasan Hutan (Coming Soon)**: Fitur tambahan dalam pengembangan.

## 🛠️ Teknologi Website

Website ini dibangun menggunakan teknologi modern:
- **[Astro](https://astro.build/)**: Framework web yang super cepat dan ringan.
- **[Tailwind CSS](https://tailwindcss.com/)**: Utility-first CSS framework untuk styling.
- **Glassmorphism**: Desain antarmuka modern yang estetik.

## 📦 Struktur Project

```text
/
├── public/
│   ├── assets/       # Gambar, logo, dan file zip download
│   └── favicon.ico
├── src/
│   ├── layouts/      # Layout utama (Navbar/Footer)
│   ├── pages/        # Halaman website (.astro)
│   └── styles/       # Global CSS
├── astro.config.mjs  # Konfigurasi Astro
└── package.json      # Dependensi project
```

## 💻 Cara Menjalankan Project (Local Development)

Pastikan Anda sudah menginstal [Node.js](https://nodejs.org/) di komputer Anda.

1.  **Clone Repository**
    ```bash
    git clone https://github.com/ahzastudio/bigtools-web.git
    cd bigtools-web
    ```

2.  **Install Dependensi**
    ```bash
    npm install
    ```

3.  **Jalankan Server Lokal**
    ```bash
    npm run dev
    ```

4.  **Buka di Browser**
    Akses `http://localhost:4321` di browser Anda.

## 📝 Panduan Penggunaan

Website ini menyediakan dokumentasi lengkap untuk penggunaan toolbox:
- [Panduan Token API](/src/pages/token_guide.astro)
- [Panduan RBI](/src/pages/guide_rbi.astro)
- [Panduan DEMNAS](/src/pages/guide_demnas.astro)
- [Panduan BATNAS](/src/pages/guide_batnas.astro)

## 📄 Lisensi

Proyek ini dikembangkan oleh **Ahza Studio**.
Gratis untuk penggunaan personal dan edukasi.

---
*Developed with ❤️ by Ardi Abu Ridho*
