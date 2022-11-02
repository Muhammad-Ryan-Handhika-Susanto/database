-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 03:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajarharirabudatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbuku`
--

CREATE TABLE `tblbuku` (
  `idbuku` int(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penerbit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbuku`
--

INSERT INTO `tblbuku` (`idbuku`, `judul`, `penerbit`) VALUES
(1, 'HTML (Hypertext Markup Language) untuk pemula', 'Lion king'),
(2, 'CSS (Cascading Style Sheet)', 'banana bear');

-- --------------------------------------------------------

--
-- Table structure for table `tbldetailsiswa`
--

CREATE TABLE `tbldetailsiswa` (
  `iddetailsiswa` int(50) NOT NULL,
  `nis` int(50) NOT NULL,
  `idkelas` int(50) NOT NULL,
  `idjurusan` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldetailsiswa`
--

INSERT INTO `tbldetailsiswa` (`iddetailsiswa`, `nis`, `idkelas`, `idjurusan`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbljurusan`
--

CREATE TABLE `tbljurusan` (
  `idjurusan` int(50) NOT NULL,
  `namajurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbljurusan`
--

INSERT INTO `tbljurusan` (`idjurusan`, `namajurusan`) VALUES
(1, 'Rekayasa Perangkat Lunak'),
(2, 'Teknik Mesin Industri');

-- --------------------------------------------------------

--
-- Table structure for table `tblkelas`
--

CREATE TABLE `tblkelas` (
  `idkelas` int(50) NOT NULL,
  `namakelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblkelas`
--

INSERT INTO `tblkelas` (`idkelas`, `namakelas`) VALUES
(1, 'X'),
(2, 'XI'),
(3, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `tblpeminjaman`
--

CREATE TABLE `tblpeminjaman` (
  `idpeminjaman` int(50) NOT NULL,
  `iddetailsiswa` int(50) NOT NULL,
  `idbuku` int(50) NOT NULL,
  `idpetugas` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpeminjaman`
--

INSERT INTO `tblpeminjaman` (`idpeminjaman`, `iddetailsiswa`, `idbuku`, `idpetugas`) VALUES
(1, 1, 2, 2),
(2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpetugas`
--

CREATE TABLE `tblpetugas` (
  `idpetugas` int(50) NOT NULL,
  `namapetugas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpetugas`
--

INSERT INTO `tblpetugas` (`idpetugas`, `namapetugas`) VALUES
(1, 'Asep Saipudin'),
(2, 'Bunga Citra Lestari\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tblsiswa`
--

CREATE TABLE `tblsiswa` (
  `nis` int(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsiswa`
--

INSERT INTO `tblsiswa` (`nis`, `nama`, `alamat`, `email`) VALUES
(1, 'Muhammad Ryan Handhika Susanto', 'Perum Pondok Cikampek', 'ryan@gmail.com'),
(2, 'Rizaldi Ilyas Muhamad Permana', 'Perum Purwasari Merdeka', 'izal@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbuku`
--
ALTER TABLE `tblbuku`
  ADD PRIMARY KEY (`idbuku`);

--
-- Indexes for table `tbldetailsiswa`
--
ALTER TABLE `tbldetailsiswa`
  ADD PRIMARY KEY (`iddetailsiswa`),
  ADD KEY `nis` (`nis`),
  ADD KEY `idjurusan` (`idjurusan`),
  ADD KEY `idkelas` (`idkelas`);

--
-- Indexes for table `tbljurusan`
--
ALTER TABLE `tbljurusan`
  ADD PRIMARY KEY (`idjurusan`);

--
-- Indexes for table `tblkelas`
--
ALTER TABLE `tblkelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indexes for table `tblpeminjaman`
--
ALTER TABLE `tblpeminjaman`
  ADD PRIMARY KEY (`idpeminjaman`),
  ADD KEY `iddetailsiswa` (`iddetailsiswa`),
  ADD KEY `idbuku` (`idbuku`),
  ADD KEY `idpetugas` (`idpetugas`);

--
-- Indexes for table `tblpetugas`
--
ALTER TABLE `tblpetugas`
  ADD PRIMARY KEY (`idpetugas`);

--
-- Indexes for table `tblsiswa`
--
ALTER TABLE `tblsiswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbuku`
--
ALTER TABLE `tblbuku`
  MODIFY `idbuku` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbljurusan`
--
ALTER TABLE `tbljurusan`
  MODIFY `idjurusan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblkelas`
--
ALTER TABLE `tblkelas`
  MODIFY `idkelas` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpetugas`
--
ALTER TABLE `tblpetugas`
  MODIFY `idpetugas` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsiswa`
--
ALTER TABLE `tblsiswa`
  MODIFY `nis` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbldetailsiswa`
--
ALTER TABLE `tbldetailsiswa`
  ADD CONSTRAINT `tbldetailsiswa_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tblsiswa` (`nis`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbldetailsiswa_ibfk_2` FOREIGN KEY (`idkelas`) REFERENCES `tblkelas` (`idkelas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbldetailsiswa_ibfk_3` FOREIGN KEY (`idjurusan`) REFERENCES `tbljurusan` (`idjurusan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblpeminjaman`
--
ALTER TABLE `tblpeminjaman`
  ADD CONSTRAINT `tblpeminjaman_ibfk_1` FOREIGN KEY (`iddetailsiswa`) REFERENCES `tbldetailsiswa` (`iddetailsiswa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblpeminjaman_ibfk_2` FOREIGN KEY (`idbuku`) REFERENCES `tblbuku` (`idbuku`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblpeminjaman_ibfk_3` FOREIGN KEY (`idpetugas`) REFERENCES `tblpetugas` (`idpetugas`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
