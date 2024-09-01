-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 04:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restoran_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `nama_level`) VALUES
(1, 'Administrator'),
(2, 'Waiter'),
(3, 'Kasir'),
(4, 'Owner'),
(5, 'Pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masakan`
--

CREATE TABLE `tb_masakan` (
  `id_masakan` int(11) NOT NULL,
  `nama_masakan` varchar(150) NOT NULL,
  `harga` varchar(150) NOT NULL,
  `stok` int(11) NOT NULL,
  `status_masakan` varchar(150) NOT NULL,
  `gambar_masakan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_masakan`
--

INSERT INTO `tb_masakan` (`id_masakan`, `nama_masakan`, `harga`, `stok`, `status_masakan`, `gambar_masakan`) VALUES
(22, 'Bakso Tahu', '7000', 100, 'tersedia', 'Bakso Tahu.jpg'),
(23, 'Mie Ayam', '8000', 100, 'tersedia', 'Mie Ayam.jpg'),
(27, 'Bakso + Telor', '10000', 50, 'tersedia', 'Bakso + Telor.jpg'),
(29, 'Bakso Jumbo', '15000', 20, 'tersedia', 'Bakso Jumbo.jpg'),
(30, 'Bakso Biasa', '10000', 40, 'tersedia', 'Bakso Biasa.jpg'),
(35, 'Es Jeruk Seger', '5000', 100, 'tersedia', 'Es Jeruk Seger.jpg'),
(36, 'Jus Alpukat ', '5000', 20, 'tersedia', 'Jus Alpukat .png'),
(37, 'Bakso Tusuk', '10000', 500, 'tersedia', 'Bakso Tusuk.png'),
(38, 'Es Tweh ', '3000', 100, 'tersedia', 'Es Tweh .png'),
(40, 'Soto', '15000', 100, 'tersedia', 'Soto.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `id_pengunjung` int(11) NOT NULL,
  `waktu_pesan` datetime NOT NULL,
  `no_meja` int(11) NOT NULL,
  `total_harga` varchar(150) NOT NULL,
  `uang_bayar` varchar(150) DEFAULT NULL,
  `uang_kembali` varchar(150) DEFAULT NULL,
  `status_order` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `id_admin`, `id_pengunjung`, `waktu_pesan`, `no_meja`, `total_harga`, `uang_bayar`, `uang_kembali`, `status_order`) VALUES
(14, 1, 9, '2019-08-03 12:43:52', 1, '48000', '50000', '2000', 'sudah bayar'),
(15, 1, 1, '2019-08-04 16:25:45', 1, '44000', '50000', '6000', 'sudah bayar'),
(16, 1, 1, '2019-08-04 16:35:24', 8, '105500', '150000', '44500', 'sudah bayar'),
(18, 1, 7, '2019-08-04 16:37:58', 8, '87000', '100000', '13000', 'sudah bayar'),
(19, 1, 1, '2019-08-04 17:17:09', 1, '22000', '50000', '28000', 'sudah bayar'),
(25, 1, 18, '2024-03-23 13:54:49', 10, '280000', '500000', '220000', 'sudah bayar'),
(26, 1, 18, '2024-03-23 14:13:21', 1, '99500', '100000', '500', 'sudah bayar'),
(27, 1, 17, '2024-03-23 14:13:49', 1, '7000', '20000', '13000', 'sudah bayar'),
(28, 1, 1, '2024-03-25 23:04:04', 8, '6000', '100000', '94000', 'sudah bayar'),
(29, 1, 17, '2024-03-25 23:05:34', 0, '20000', '20000', '0', 'sudah bayar'),
(30, 1, 1, '2024-03-29 15:10:26', 2, '9000', '15000', '6000', 'sudah bayar'),
(31, 1, 17, '2024-04-14 12:51:15', 1, '14000', '100000', '86000', 'sudah bayar'),
(32, 1, 1, '2024-05-03 15:59:34', 0, '100000', '100000', '0', 'sudah bayar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) DEFAULT NULL,
  `id_masakan` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `status_pesan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pesan`
--

INSERT INTO `tb_pesan` (`id_pesan`, `id_user`, `id_order`, `id_masakan`, `jumlah`, `status_pesan`) VALUES
(33, 9, 14, 14, 2, 'sudah'),
(34, 9, 14, 8, 3, 'sudah'),
(35, 1, 15, 19, 2, 'sudah'),
(36, 1, 15, 14, 4, 'sudah'),
(37, 1, 16, 19, 3, 'sudah'),
(38, 1, 16, 14, 1, 'sudah'),
(39, 1, 16, 8, 7, 'sudah'),
(43, 7, 18, 19, 4, 'sudah'),
(44, 7, 18, 14, 2, 'sudah'),
(45, 7, 18, 8, 4, 'sudah'),
(46, 1, 19, 19, 1, 'sudah'),
(47, 1, 19, 14, 2, 'sudah'),
(62, 18, 25, 20, 10, 'sudah'),
(63, 18, 25, 19, 10, 'sudah'),
(64, 18, 25, 14, 10, 'sudah'),
(65, 18, 25, 8, 10, 'sudah'),
(66, 18, 26, 14, 12, 'sudah'),
(67, 18, 26, 19, 1, 'sudah'),
(68, 18, 26, 20, 1, 'sudah'),
(69, 17, 27, 19, 1, 'sudah'),
(70, 1, 28, 32, 2, 'sudah'),
(71, 17, 29, 31, 10, 'sudah'),
(73, 1, 30, 32, 3, 'sudah'),
(74, 17, 31, 31, 7, 'sudah'),
(75, 1, 32, 30, 10, 'sudah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok`
--

CREATE TABLE `tb_stok` (
  `id_stok` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `jumlah_terjual` int(11) DEFAULT NULL,
  `status_cetak` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_stok`
--

INSERT INTO `tb_stok` (`id_stok`, `id_pesan`, `jumlah_terjual`, `status_cetak`) VALUES
(1, 46, 1, 'belum cetak'),
(2, 47, 2, 'belum cetak'),
(3, 48, 2, 'belum cetak'),
(4, 49, 1, 'belum cetak'),
(5, 50, 2, 'belum cetak'),
(6, 51, 0, 'belum cetak'),
(7, 52, 0, 'belum cetak'),
(8, 53, 0, 'belum cetak'),
(9, 54, 0, 'belum cetak'),
(10, 55, 0, 'belum cetak'),
(11, 56, 2, 'belum cetak'),
(12, 57, 1, 'belum cetak'),
(13, 58, 6, 'belum cetak'),
(14, 59, 1, 'belum cetak'),
(15, 60, 1, 'belum cetak'),
(16, 61, 0, 'belum cetak'),
(17, 62, 10, 'belum cetak'),
(18, 63, 10, 'belum cetak'),
(19, 64, 10, 'belum cetak'),
(20, 65, 10, 'belum cetak'),
(21, 66, 12, 'belum cetak'),
(22, 67, 1, 'belum cetak'),
(23, 68, 1, 'belum cetak'),
(24, 69, 1, 'belum cetak'),
(25, 70, 2, 'belum cetak'),
(26, 71, 10, 'belum cetak'),
(27, 72, 0, 'belum cetak'),
(28, 73, 3, 'belum cetak'),
(29, 74, 7, 'belum cetak'),
(30, 75, 10, 'belum cetak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama_user` varchar(150) NOT NULL,
  `id_level` int(11) NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_user`, `id_level`, `status`) VALUES
(1, 'admin', '123', 'Putri Bengawan Solo', 1, 'aktif'),
(6, '-', '-', '-', 2, 'aktif'),
(7, 'muklis', '123', 'Mukhlis Khoirudin', 3, 'aktif'),
(8, 'jemy', '123', 'Jemmy Supriyadi', 4, 'aktif'),
(9, 'endi', '123', 'Muhammaad Endi', 4, 'aktif'),
(17, 'mukliskh', '123', 'Mukhlis Khoirudin', 5, 'aktif'),
(18, 'rama', '123', 'Rama Wijaya', 5, 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_pengunjung` (`id_pengunjung`);

--
-- Indexes for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `tb_stok`
--
ALTER TABLE `tb_stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tb_stok`
--
ALTER TABLE `tb_stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
