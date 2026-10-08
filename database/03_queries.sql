-- 1. READ: seluruh penawaran aktif beserta nama penyedia.
SELECT
    p.id,
    p.nama,
    py.nama_usaha AS penyedia,
    p.harga_normal,
    p.harga_penawaran,
    p.stok,
    p.satuan,
    p.berakhir_pada
FROM penawaran AS p
JOIN penyedia AS py ON py.id = p.penyedia_id
WHERE p.status = 'aktif'
  AND p.stok > 0
  AND p.berakhir_pada > CURRENT_TIMESTAMP
ORDER BY p.berakhir_pada ASC;

-- 2. READ dengan filter teks yang tidak peka huruf besar-kecil.
SELECT id, nama, kategori, stok
FROM penawaran
WHERE nama ILIKE '%roti%'
ORDER BY nama;

-- 3. JOIN detail pesanan lengkap.
SELECT
  ps.id AS pesanan_id,
  u.nama_lengkap AS pembeli,
  py.nama_usaha,
  p.nama AS penawaran,
  dp.kuantitas,
  dp.harga_penawaran_satuan,
  dp.subtotal,
  ps.status
FROM pesanan AS ps
JOIN pengguna AS u ON u.id = ps.pembeli_id
JOIN penyedia AS py ON py.id = ps.penyedia_id
JOIN detail_pesanan AS dp ON dp.pesanan_id = ps.id
JOIN penawaran AS p ON p.id = dp.penawaran_id
ORDER BY ps.id, p.nama;

-- 4. Agregasi indikator bisnis dan dampak.
SELECT
  COUNT(DISTINCT ps.id) AS jumlah_pesanan,
  COALES