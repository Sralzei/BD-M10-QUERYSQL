SELECT * FROM kendaraan;

-- Menampilkan jadwal berdasarkan rute
SELECT k.jenis_kendaraan, r.nama_rute, j.waktu_berangkat, j.waktu_tiba
FROM jadwal j
JOIN kendaraan k ON j.id_kendaraan = k.id_kendaraan
JOIN rute r ON j.id_rute = r.id_rute;

-- Menampilkan laporan lalu lintas berdasarkan waktu
SELECT r.nama_rute, l.kepadatan, l.waktu_terjadi
FROM lalu_lintas l
JOIN rute r ON l.id_rute = r.id_rute;

-- Menampilkan data sensor lingkungan berdasarkan lokasi
SELECT * FROM sensor_lingkungan WHERE lokasi = 'Area 1';

-- Menampilkan nilai rata-rata suhu
SELECT AVG(nilai) AS rata_rata_suhu
FROM sensor_lingkungan
WHERE jenis_sensor = 'Suhu';

-- Menampilkan laporan sensor berdasarkan waktu
SELECT * FROM sensor_lingkungan WHERE waktu_terjadi BETWEEN '2024-11-14 07:00:00' AND '2024-11-14 08:00:00';

-- Menampilkan jenis sampah yang ada
SELECT * FROM sampah;

-- Menampilkan data pengumpulan sampah berdasarkan TPA
SELECT s.jenis_sampah, t.nama_tpa, p.waktu_pengumpulan
FROM pengumpulan_sampah p
JOIN sampah s ON p.id_sampah = s.id_sampah
JOIN tpa t ON p.id_tpa = t.id_tpa;

-- Menampilkan laporan pengumpulan sampah dalam waktu tertentu
SELECT * FROM pengumpulan_sampah WHERE waktu_pengumpulan BETWEEN '2024-11-14 08:00:00' AND '2024-11-14 09:00:00';
