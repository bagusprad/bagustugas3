-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2019 at 02:14 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cacastie`
--

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE IF NOT EXISTS `makanan` (
  `id_makanan` int(5) NOT NULL,
  `nama_makanan` varchar(20) NOT NULL,
  `harga` int(18) NOT NULL,
  `id_penjual` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id_makanan`, `nama_makanan`, `harga`, `id_penjual`) VALUES
(1, 'nasi goreng', 10000, 2),
(2, 'mie goreng', 7000, 2),
(3, 'mie rebus', 7000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE IF NOT EXISTS `minuman` (
  `id_minuman` int(5) NOT NULL,
  `nama_minuman` varchar(20) NOT NULL,
  `harga` int(18) NOT NULL,
  `id_penjual` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`id_minuman`, `nama_minuman`, `harga`, `id_penjual`) VALUES
(1, 'teh', 2000, 1),
(2, 'jeruk', 4000, 1),
(3, 'susu', 3500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `penjual`
--

CREATE TABLE IF NOT EXISTS `penjual` (
  `id_penjual` int(5) NOT NULL,
  `nama_warung` varchar(20) NOT NULL,
  `nama_penjual` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjual`
--

INSERT INTO `penjual` (`id_penjual`, `nama_warung`, `nama_penjual`) VALUES
(1, 'mbok galak', 'bu mirah'),
(2, 'bu to', 'bu ningsih'),
(3, 'tenda biru', 'pak sarman');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jabatan` varchar(10) NOT NULL,
  `nomor_induk` int(15) NOT NULL,
  `nomor_hp` varchar(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `jabatan`, `nomor_induk`, `nomor_hp`, `email`, `password`) VALUES
(1, 'Fahmi', 'konsumen', 1001, '088198298111', 'fahmi@cacastie.com', 'cacastie'),
(2, 'alfian', 'pemasok', 2001, '0877654421', 'alfian@cacastie.com', 'cacastie'),
(3, 'giva', 'konsumen', 3001, '0895442122777', 'giva@cacastie.com', 'cacastie'),
(4, 'bagus', 'seller', 4001, '089776543212', 'bagus@cacastie.com', 'cacastie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id_makanan`);

--
-- Indexes for table `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`id_minuman`);

--
-- Indexes for table `penjual`
--
ALTER TABLE `penjual`
  ADD PRIMARY KEY (`id_penjual`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id_makanan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `minuman`
--
ALTER TABLE `minuman`
  MODIFY `id_minuman` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `penjual`
--
ALTER TABLE `penjual`
  MODIFY `id_penjual` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
