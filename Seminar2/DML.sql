-- Menambahkan data kendaraan
INSERT INTO kendaraan (id_kendaraan, jenis_kendaraan, nomor_plat, kapasitas)
VALUES (1, 'Bus', 'B1234CD', 50),
       (2, 'Truk', 'B5678EF', 30);

-- Menambahkan data rute
INSERT INTO rute (id_rute, nama_rute, jarak_km)
VALUES (1, 'Rute A', 15.5),
       (2, 'Rute B', 20.0);

-- Menambahkan jadwal
INSERT INTO jadwal (id_jadwal, id_kendaraan, id_rute, waktu_berangkat, waktu_tiba)
VALUES (1, 1, 1, '07:00:00', '08:00:00'),
       (2, 2, 2, '09:00:00', '10:00:00');

-- Menambahkan data lalu lintas
INSERT INTO lalu_lintas (id_lalu_lintas, id_rute, kepadatan, waktu_terjadi)
VALUES (1, 1, 80, '07:30:00'),
       (2, 2, 60, '09:30:00');

-- Menambahkan data pengguna
INSERT INTO pengguna (id_pengguna, nama, email, no_telepon) VALUES 
(1, 'Hexta', 'Hexta.gaming@gmail.com', '08123456789'),
(2, 'Gehe', 'Gehe.gaming@gmail.com', '08123455549');

-- Menambahkan data sensor
INSERT INTO sensor_lingkungan (id_sensor, lokasi, jenis_sensor, nilai, waktu_terjadi)
VALUES (1, 'Jakarta', 'Suhu', 30.5, '2024-11-14 07:00:00'),
       (2, 'Bandung', 'Kelembaban', 65.0, '2024-11-14 07:05:00');
       
-- Menambahkan data sampah
INSERT INTO sampah (id_sampah, jenis_sampah, berat, status_pengolahan, waktu_ditemukan)
VALUES (1, 'Organik', 5.0, 'Belum Diproses', '2024-11-14 07:00:00'),
       (2, 'Anorganik', 2.5, 'Diproses', '2024-11-14 07:30:00');

-- Menambahkan data TPA
INSERT INTO tpa (id_tpa, nama_tpa, lokasi)
VALUES (1, 'TPA A', 'Lokasi A'),
       (2, 'TPA B', 'Lokasi B');

-- Menambahkan data pengumpulan sampah
INSERT INTO pengumpulan_sampah (id_pengumpulan, id_sampah, id_tpa, waktu_pengumpulan)
VALUES (1, 1, 1, '2024-11-14 08:00:00'),
       (2, 2, 2, '2024-11-14 08:15:00');

UPDATE rute
SET nama_rute = 'Jakarta'
WHERE id_rute = 1;

UPDATE rute
SET nama_rute = 'Bandung'
WHERE id_rute = 2;


