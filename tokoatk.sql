-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2025 pada 09.26
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoatk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(18) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jenis_barang` varchar(20) NOT NULL,
  `harga_barang` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `jenis_barang`, `harga_barang`) VALUES
('P22110057', 'Pulpen Snowman', 'Pulpen', 4000),
('P22110058', 'Pulpen Standart', 'Pulpen', 3000),
('P22110059', 'Penggaris Plastik', 'Penggaris', 2500),
('P22110060', 'Penghapus Putih', 'Penghapus', 2000),
('P22110061', 'Spidol Snowman', 'Spidol', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `salesd`
--

CREATE TABLE `salesd` (
  `id` int(11) NOT NULL,
  `sales_id` varchar(16) NOT NULL,
  `barang_id` varchar(16) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `salesd`
--

INSERT INTO `salesd` (`id`, `sales_id`, `barang_id`, `qty`, `harga`) VALUES
(22, '2506262029314', 'P22110060', 2, 2000),
(23, '2506262047475', 'P22110060', 2, 2000),
(24, '2506262128235', 'P22110060', 2, 2000),
(25, '2506262203102', 'P22110060', 2, 2000),
(26, '2506262203102', 'P22110059', 2, 25000),
(27, '2506271349365', 'P22110061', 20, 10000),
(28, '2506271402553', 'P22110061', 2, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `salesm`
--

CREATE TABLE `salesm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime DEFAULT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `salesm`
--

INSERT INTO `salesm` (`id`, `waktu`, `username`) VALUES
('2506261952460', '2025-06-26 19:52:46', 'willy'),
('2506262203102', '2025-06-26 22:03:10', 'willy'),
('2506271348353', '2025-06-27 13:48:35', 'willy'),
('2506271349365', '2025-06-27 13:49:36', 'willy'),
('2506271402553', '2025-06-27 14:02:55', 'willy'),
('2506271411502', '2025-06-27 14:11:50', 'willy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `password` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `fullname`, `password`) VALUES
('admin', 'Administrator', '202cb962ac59075b964b07152d234b70'),
('admin2', 'administrator2', '0192023a7bbd73250516f069df18b500'),
('Rinzeince', 'willy', '79672e479fc2fe12f79f44d48821fbb1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `salesd`
--
ALTER TABLE `salesd`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `salesm`
--
ALTER TABLE `salesm`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `salesd`
--
ALTER TABLE `salesd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
