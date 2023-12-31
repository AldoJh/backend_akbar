-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2023 pada 18.07
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi-v2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` int(20) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `nama_guru`, `password`) VALUES
(1001, 'aldo', 'aldo111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hadir_guru`
--

CREATE TABLE `hadir_guru` (
  `id_hadir` int(11) NOT NULL,
  `nip` int(20) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hadir_guru`
--

INSERT INTO `hadir_guru` (`id_hadir`, `nip`, `nama_guru`, `keterangan`, `latitude`, `longitude`, `tanggal`) VALUES
(4, 1001, 'aldo', 'Hadir', 4.01388, 98.2762, '2023-07-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hadir_siswa`
--

CREATE TABLE `hadir_siswa` (
  `id_hadir` int(20) NOT NULL,
  `nis` int(20) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hadir_siswa`
--

INSERT INTO `hadir_siswa` (`id_hadir`, `nis`, `nama_siswa`, `kelas`, `keterangan`, `latitude`, `longitude`, `tanggal`) VALUES
(26, 1008, 'paijo suka kamu', 'X-TKJ2', 'Hadir', 4.01388, 98.2762, '2023-06-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepsek`
--

CREATE TABLE `kepsek` (
  `nip` int(20) NOT NULL,
  `nama_kepsek` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(20) NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `latitude`, `longitude`) VALUES
(1, '4.013948966949593', '98.2762727868');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pulang_guru`
--

CREATE TABLE `pulang_guru` (
  `id_pulang` int(20) NOT NULL,
  `nip` int(20) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pulang_guru`
--

INSERT INTO `pulang_guru` (`id_pulang`, `nip`, `nama_guru`, `keterangan`, `latitude`, `longitude`, `tanggal`) VALUES
(3, 1001, 'aldo', 'Pulang', '4.013882060502609', '98.27621333525438', '2023-07-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pulang_siswa`
--

CREATE TABLE `pulang_siswa` (
  `id_pulang` int(20) NOT NULL,
  `nis` int(20) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pulang_siswa`
--

INSERT INTO `pulang_siswa` (`id_pulang`, `nis`, `nama_siswa`, `kelas`, `keterangan`, `latitude`, `longitude`, `tanggal`) VALUES
(3, 1008, 'paijo suka kamu', 'X-TKJ2', 'Pulang', '4.013882060502609', '98.27621333525438', '2023-07-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(20) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `whatsapp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama_siswa`, `kelas`, `password`, `whatsapp`) VALUES
(1008, 'paijo suka kamu', 'X-TKJ2', '123', '081233445526');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `hadir_guru`
--
ALTER TABLE `hadir_guru`
  ADD PRIMARY KEY (`id_hadir`);

--
-- Indeks untuk tabel `hadir_siswa`
--
ALTER TABLE `hadir_siswa`
  ADD PRIMARY KEY (`id_hadir`);

--
-- Indeks untuk tabel `kepsek`
--
ALTER TABLE `kepsek`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indeks untuk tabel `pulang_guru`
--
ALTER TABLE `pulang_guru`
  ADD PRIMARY KEY (`id_pulang`);

--
-- Indeks untuk tabel `pulang_siswa`
--
ALTER TABLE `pulang_siswa`
  ADD PRIMARY KEY (`id_pulang`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `hadir_guru`
--
ALTER TABLE `hadir_guru`
  MODIFY `id_hadir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `hadir_siswa`
--
ALTER TABLE `hadir_siswa`
  MODIFY `id_hadir` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pulang_guru`
--
ALTER TABLE `pulang_guru`
  MODIFY `id_pulang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pulang_siswa`
--
ALTER TABLE `pulang_siswa`
  MODIFY `id_pulang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
