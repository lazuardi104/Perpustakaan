-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 06:01 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_lazuardi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `Id_anggota` int(15) NOT NULL,
  `Nis_anggota` int(15) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `alamat_anggota` text NOT NULL,
  `no_telfon_anggota` text NOT NULL,
  `biaya_pendaftaran` int(10) NOT NULL,
  `waktu_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`Id_anggota`, `Nis_anggota`, `nama_anggota`, `alamat_anggota`, `no_telfon_anggota`, `biaya_pendaftaran`, `waktu_pendaftaran`) VALUES
(1, 2366, 'Jauza Fadil', 'kalimantan', '081856498996', 10, '2023-03-14'),
(2, 2676, 'Ian Hafiz', 'Bekasi', '085461254768', 10, '2023-04-01'),
(3, 5427, 'Ananda Nanda', 'Yogyakarta', '085612547990', 10, '2023-06-23'),
(4, 2678, 'Vito El nino', 'Banyuwangi', '083124264678', 10, '2023-09-17'),
(5, 5699, 'Kitano Mina', 'Mojokerto', '085347893900', 10, '2023-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `Id_anggota` int(15) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `no_telfon anggota` text NOT NULL,
  `Jumlah_Buku` int(4) NOT NULL,
  `Waktu_Peminjaman` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`Id_anggota`, `nama_anggota`, `no_telfon anggota`, `Jumlah_Buku`, `Waktu_Peminjaman`) VALUES
(1, 'Jauza Fadil', '081856498996', 2, '2023-08-20'),
(2, 'Ian Hafiz', '085461254768', 2, '2023-06-20'),
(3, 'Ananda Nanda', '085612547990', 1, '2023-04-04'),
(4, 'Vito El nino', '083124264678', 2, '2023-01-03'),
(5, 'Kitano Mina', '085347893900', 3, '2023-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `Id_anggota` int(15) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `terlambat` int(14) NOT NULL,
  `hilang` int(14) NOT NULL,
  `donatur` varchar(20) NOT NULL,
  `rusak` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `waktu_Pengembalian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`Id_anggota`, `nama_anggota`, `terlambat`, `hilang`, `donatur`, `rusak`, `total`, `waktu_Pengembalian`) VALUES
(1, 'Jauza Fadil', 0, 0, '0', 0, 0, '2023-08-30'),
(2, 'Ian Hafiz', 2, 1, '1', 0, 1000, '2023-10-02'),
(3, 'Ananda Nanda', 0, 0, '0', 0, 0, '2023-06-23'),
(4, 'Vito El nino', 4, 1, '0', 1, 2000, '2023-07-25'),
(5, 'Kitano Mina', 0, 0, '0', 0, 0, '2023-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `Id_petugas` int(15) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `alamat_petugas` varchar(50) NOT NULL,
  `no_telfon_Petugas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`Id_petugas`, `nama_petugas`, `alamat_petugas`, `no_telfon_Petugas`) VALUES
(6907, 'Sugeng', 'Yogyakarta', '083462354677'),
(1785, 'Supriadi', 'Yogyakarta', '084323562789'),
(7853, 'Elang', 'Mojokerto', '085235688455'),
(588, 'Sutijo', 'Yogyakarta', '082353479670'),
(3459, 'Bowo', 'Yogyakarta', '082347890859');

-- --------------------------------------------------------

--
-- Table structure for table `rak`
--

CREATE TABLE `rak` (
  `Id_rak` int(11) NOT NULL,
  `nama_rak` varchar(50) NOT NULL,
  `lokasi_rak` varchar(50) NOT NULL,
  `nama_buku` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rak`
--

INSERT INTO `rak` (`Id_rak`, `nama_rak`, `lokasi_rak`, `nama_buku`) VALUES
(67, 'Melati', 'Lantai 2', 'Laskar Pelangi'),
(23, 'Singa', 'Lantai 1', 'Ronggeng Dukuh Paruk'),
(53, 'Mawar', 'Lantai 2', 'Cantik Itu Luka'),
(46, 'Ular', 'Lantai 1', 'Tenggelamnya Kapal Van Der Wijck'),
(13, 'Gajah', 'Lantai 2', 'etralogi Pulau Buru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`Id_anggota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `Id_anggota` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
