# SisaBaik

SisaBaik adalah aplikasi untuk menghubungkan makanan berlebih yang masih layak konsumsi dengan pembeli melalui penawaran harga khusus.

## Teknologi

- Node.js
- npm
- Vue 3
- Vite
- PostgreSQL untuk backend

## Persiapan

Pastikan Node.js sudah terpasang.

Masuk ke folder frontend:

```bash
cd frontend
npm install
```

## Menjalankan Frontend

```bash
npm run dev
```

## Build Frontend

```bash
npm run build
```

## Preview Build

```bash
npm run preview
```

## Aset

Frontend menggunakan aset SVG lokal yang berada di `src/assets/`.

## Data Latihan

Pada Chapter 9, data penawaran masih menggunakan fixture di memori browser. Data belum disimpan ke PostgreSQL dan browser belum memanggil API backend.

Integrasi dengan backend dilakukan pada pertemuan berikutnya.