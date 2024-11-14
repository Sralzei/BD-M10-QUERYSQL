CREATE database traffic;

use traffic;
-- Tabel Kendaraan
CREATE TABLE kendaraan (
    id_kendaraan INT PRIMARY KEY,
    jenis_kendaraan VARCHAR(50),
    nomor_plat VARCHAR(20),
    kapasitas INT
);

-- Tabel Rute
CREATE TABLE rute (
    id_rute INT PRIMARY KEY,
    nama_rute VARCHAR(100),
    jarak_km DECIMAL(5, 2)
);

-- Tabel Jadwal
CREATE TABLE jadwal (
    id_jadwal INT PRIMARY KEY,
    id_kendaraan INT,
    id_rute INT,
    waktu_berangkat TIME,
    waktu_tiba TIME,
    FOREIGN KEY (id_kendaraan) REFERENCES kendaraan(id_kendaraan),
    FOREIGN KEY (id_rute) REFERENCES rute(id_rute)
);

-- Tabel Lalu Lintas
CREATE TABLE lalu_lintas (
    id_lalu_lintas INT PRIMARY KEY,
    id_rute INT,
    kepadatan INT,
    waktu_terjadi TIME,
    FOREIGN KEY (id_rute) REFERENCES rute(id_rute)
);

-- Tabel Pengguna
CREATE TABLE pengguna (
    id_pengguna INT PRIMARY KEY,
    nama VARCHAR(100),
    email VARCHAR(100),
    no_telepon VARCHAR(20)
);

-- Tabel Sensor Lingkungan
CREATE TABLE sensor_lingkungan (
    id_sensor INT PRIMARY KEY,
    lokasi VARCHAR(100),
    jenis_sensor VARCHAR(50),
    nilai DECIMAL(5, 2),
    waktu_terjadi TIMESTAMP
);

-- Tabel Sampah
CREATE TABLE sampah (
    id_sampah INT PRIMARY KEY,
    jenis_sampah VARCHAR(50),
    berat DECIMAL(5, 2),
    status_pengolahan VARCHAR(50),
    waktu_ditemukan TIMESTAMP
);

-- Tabel Tempat Pembuangan Akhir (TPA)
CREATE TABLE tpa (
    id_tpa INT PRIMARY KEY,
    nama_tpa VARCHAR(100),
    lokasi VARCHAR(100)
);

-- Tabel Pengumpulan Sampah
CREATE TABLE pengumpulan_sampah (
    id_pengumpulan INT PRIMARY KEY,
    id_sampah INT,
    id_tpa INT,
    waktu_pengumpulan TIMESTAMP,
    FOREIGN KEY (id_sampah) REFERENCES sampah(id_sampah),
    FOREIGN KEY (id_tpa) REFERENCES tpa(id_tpa)
);
