-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 04, 2015 at 06:03 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `dosen_nip` int(20) NOT NULL,
  `dosen_nama` varchar(200) NOT NULL,
  `fak_id` int(11) NOT NULL,
  `pel_id` int(11) NOT NULL,
  `dosen_status` int(11) NOT NULL,
  PRIMARY KEY (`dosen_nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `fak_id`, `pel_id`, `dosen_status`) VALUES
(1010001, 'Gilang Rizky Rahmana', 1, 2, 1),
(1010002, 'Ridho Nurfitrian ', 2, 4, 1),
(1010003, 'Ardhyiansyah M.kom', 1, 5, 1),
(1010004, 'Salsan Maulana S.Kom', 2, 7, 1),
(1010005, 'I Putu Gede Juliantara', 3, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE IF NOT EXISTS `fakultas` (
  `fak_id` int(11) NOT NULL AUTO_INCREMENT,
  `fak_nama` varchar(200) NOT NULL,
  PRIMARY KEY (`fak_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`fak_id`, `fak_nama`) VALUES
(1, 'Tekhnik'),
(2, 'Farmasi'),
(3, 'Hukum'),
(4, 'Ekonomi'),
(5, 'Bahasa');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tanggal_lahir` varchar(200) NOT NULL,
  `jurusan` varchar(200) NOT NULL,
  `fak_id` int(11) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `tanggal_lahir`, `jurusan`, `fak_id`, `alamat`) VALUES
('1234123', 'Muhammad Alfasi Syadili', '19/04/1992', 'Informatika', 1, 'Perumahan Pabuaran Indah Blok E 3 No 9'),
('23423523', 'Muhammad Naufal', '19/4/1995', 'Programmer', 1, 'Perumahan Pabuaran Blok D3 No 9 Cibinong Bogor Pabuaran Indah'),
('3450934509', 'Muhamamad Iqbal', '21/04/2010', 'Tekhnik Mesin', 1, 'Bukit Sentul City No 92 Rw 17'),
('800702374', 'Ardhy Hasriza', '20/08/2015', 'Tekhnik Kimia', 1, 'Bukin Pabuaran Indah Blok D2 No 9');

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE IF NOT EXISTS `pelajaran` (
  `pel_id` int(11) NOT NULL AUTO_INCREMENT,
  `pel_nama` varchar(200) NOT NULL,
  PRIMARY KEY (`pel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`pel_id`, `pel_nama`) VALUES
(1, 'Matimatika'),
(2, 'Bahasa Indonesia'),
(3, 'Pemrograman 1,2,3'),
(4, 'Rekayasa Perangkat Lunak'),
(5, 'Basis Data'),
(6, 'Desain Website'),
(7, 'Algoritma Pemrogrmana'),
(8, 'Statistik'),
(9, 'Interaksi Manusia & Komputer'),
(10, 'Sistem Informasi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
