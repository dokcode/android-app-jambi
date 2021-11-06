-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2020 pada 05.05
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cf_java`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_diagnosa`
--

CREATE TABLE `tb_diagnosa` (
  `kode_diagnosa` varchar(16) NOT NULL,
  `nama_diagnosa` varchar(256) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_diagnosa`
--

INSERT INTO `tb_diagnosa` (`kode_diagnosa`, `nama_diagnosa`, `keterangan`) VALUES
('D01', 'Anemia', 'Anemia adalah berkurangnya jumlah sel darah merah atau kandungan hemoglobin di dalam darah. Hemoglobin (hb) adalah suatu senyawa protein pembawa oksigen di dalam sel darah merah. Sel darah merah diproduksi di sumsum tulang.'),
('D02', 'Bronkitis', 'Bronkitis adalah infeksi pada saluran pernapasan utama dari paru-paru atau bronkus yang menyebabkan terjadinya peradangan atau inflamasi pada saluran tersebut. Kondisi ini termasuk sebagai salah satu penyakit pernapasan.'),
('D03', 'Demam', 'Demam adalah suatu keadaan saat suhu badan melebihi 37oC yang disebabkan oleh penyakit atau peradangan. Demam juga merupakan pertanda bahwa sel antibodi manusia ( sel darah putih ) sedang melawan suatu virus atau bakteri. Anak yang memiliki suhu tinggi karena suhu tinggi berkepanjangan dapat menyebabkan sawan.'),
('D04', 'Flu', 'Flu adalah penyakit menular umum yang disebabkan oleh virus, juga dikenal sebagai influenza. Flu sering salah dianggap seperti pilek biasa karena mempunyai gejala – gejala yang sama. Namun, virus yang menyebabkan flu berbeda dari pilek dan flu cenderung lebih serius. Bahkan, flu parah dapat membahayakan nyawa.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `kode_gejala` varchar(8) NOT NULL,
  `nama_gejala` varchar(256) NOT NULL DEFAULT '',
  `keterangan` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`kode_gejala`, `nama_gejala`, `keterangan`) VALUES
('G001', 'Panas', '-'),
('G002', 'Sakit Kepala', '-'),
('G003', 'Bersin', '-'),
('G004', 'Batuk', '-'),
('G005', 'Pilek, Hidung Buntu', '-'),
('G006', 'Badan Lemas', '-'),
('G007', 'Kedinginan', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengetahuan`
--

CREATE TABLE `tb_pengetahuan` (
  `ID` int(11) NOT NULL,
  `kode_diagnosa` varchar(16) NOT NULL,
  `kode_gejala` varchar(16) NOT NULL,
  `mb` double NOT NULL,
  `md` double NOT NULL,
  `cf` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengetahuan`
--

INSERT INTO `tb_pengetahuan` (`ID`, `kode_diagnosa`, `kode_gejala`, `mb`, `md`, `cf`) VALUES
(1, 'D01', 'G002', 0.7, 0.2, 0.4),
(2, 'D01', 'G006', 0.8, 0.1, 0.2),
(3, 'D02', 'G001', 0.6, 0.2, 0.2),
(4, 'D02', 'G003', 0.7, 0.4, 0.4),
(5, 'D02', 'G004', 0.8, 0.1, 0.8),
(6, 'D03', 'G007', 0.7, 0.1, 0.4),
(7, 'D03', 'G006', 0.6, 0.2, 0.2),
(8, 'D03', 'G001', 0.8, 0.1, 0.2),
(9, 'D04', 'G001', 0.6, 0.2, 0.2),
(10, 'D04', 'G002', 0.7, 0.2, 0.4),
(11, 'D04', 'G003', 0.6, 0.2, 0.4),
(12, 'D04', 'G004', 0.6, 0.1, 0.8),
(13, 'D04', 'G005', 0.8, 0.1, 0.2),
(14, 'D04', 'G006', 0.7, 0.1, 0.2),
(15, 'D04', 'G007', 0.8, 0.05, 0.4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`user`, `pass`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
  ADD PRIMARY KEY (`kode_diagnosa`);

--
-- Indeks untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `tb_pengetahuan`
--
ALTER TABLE `tb_pengetahuan`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pengetahuan`
--
ALTER TABLE `tb_pengetahuan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
