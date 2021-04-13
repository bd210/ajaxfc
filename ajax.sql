-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2020 at 01:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `anketa`
--

CREATE TABLE `anketa` (
  `id_anketa` int(255) NOT NULL,
  `naziv` text COLLATE utf8_unicode_ci NOT NULL,
  `rezultat` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `anketa`
--

INSERT INTO `anketa` (`id_anketa`, `naziv`, `rezultat`) VALUES
(1, 'Dusan Tadic', 3),
(2, 'David Neres', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anketa_odgovori`
--

CREATE TABLE `anketa_odgovori` (
  `id_anketa_odgovori` int(255) NOT NULL,
  `id_korisnik` int(255) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_anketa` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `anketa_odgovori`
--

INSERT INTO `anketa_odgovori` (`id_anketa_odgovori`, `id_korisnik`, `username`, `id_anketa`) VALUES
(1, 1, 'borisajax', 1),
(2, 2, 'boris', 1),
(3, 4, 'marko', 2),
(4, 6, 'aloo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(20) NOT NULL,
  `naslov` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  `slika` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galerija`
--

CREATE TABLE `galerija` (
  `id_galerija` int(255) NOT NULL,
  `slika` text COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galerija`
--

INSERT INTO `galerija` (`id_galerija`, `slika`, `alt`) VALUES
(4, 'images/1603968616.jpg', 'poraz'),
(5, 'images/1603968630.jpg', 'stadion'),
(6, 'images/1603968649.jpg', 'navijaci'),
(7, 'images/1603968676.jpg', 'navijanje'),
(8, 'images/1603968736.jpg', 'alt 2'),
(9, 'images/1603968773.jpg', 'stadion');

-- --------------------------------------------------------

--
-- Table structure for table `igraci`
--

CREATE TABLE `igraci` (
  `id_igraci` int(255) NOT NULL,
  `ime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `broj` int(255) NOT NULL,
  `pozicija` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slika` text COLLATE utf8_unicode_ci NOT NULL,
  `alt` text COLLATE utf8_unicode_ci NOT NULL,
  `drzava` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `igraci`
--

INSERT INTO `igraci` (`id_igraci`, `ime`, `prezime`, `broj`, `pozicija`, `slika`, `alt`, `drzava`) VALUES
(1, 'Dusan', 'Tadic', 10, 'Napadač', 'images/1603969503.png', 'dusan tadic', 'Srbija'),
(2, 'Andre', 'Onana', 24, 'Golman', 'images/1603969516.png', 'Andre Onana', 'Kamerun'),
(3, 'Daley', 'Blind', 17, 'Vezni', 'images/1603969528.png', 'Daley Blind', 'Holandija'),
(4, 'Nicolas', 'Tagliafico', 31, 'Bek', 'images/1603969549.png', 'Nicolas Tagliafico', 'Argentina'),
(5, 'David', 'Neres', 7, 'Napadač', 'images/1603969571.png', 'David Neres', 'Brazil'),
(6, 'Noussair', 'Mazraoui', 12, 'Bek', 'images/1603969562.png', 'Noussair Mazraoui', 'Maroko');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id_korisnik` int(255) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `id_uloga` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id_korisnik`, `username`, `password`, `email`, `id_uloga`) VALUES
(1, 'borisajax', '6d14a00aadc7ad701da346992a10a44a', 'strukapro@gmail.com', 1),
(2, 'boris', '4dbf44c6b1be736ee92ef90090452fc2', 'boris.dmitrovic.17.09@gmail.com', 2),
(4, 'marko', 'c28aa76990994587b0e907683792297c', 'marko@gmail.com', 2),
(6, 'aloo', 'bc6f0aa94f722407f66281abd0f4027c', 'alo@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigacija`
--

CREATE TABLE `navigacija` (
  `id_navigacija` int(255) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `href` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `navigacija`
--

INSERT INTO `navigacija` (`id_navigacija`, `naziv`, `href`) VALUES
(2, 'Početna', '/'),
(3, 'Kontakt', 'kontakt/prikaz'),
(4, 'Galerija', '/galerija'),
(5, 'Igrači', '/igraci');

-- --------------------------------------------------------

--
-- Table structure for table `uloga`
--

CREATE TABLE `uloga` (
  `id_uloga` int(255) NOT NULL,
  `naziv` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uloga`
--

INSERT INTO `uloga` (`id_uloga`, `naziv`) VALUES
(1, 'admin'),
(2, 'korisnik');

-- --------------------------------------------------------

--
-- Table structure for table `vesti`
--

CREATE TABLE `vesti` (
  `id_vesti` int(255) NOT NULL,
  `naslov` text COLLATE utf8_unicode_ci NOT NULL,
  `tekst` text COLLATE utf8_unicode_ci NOT NULL,
  `kreiran` text COLLATE utf8_unicode_ci NOT NULL,
  `izmenjen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slika` text COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_korisnik` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vesti`
--

INSERT INTO `vesti` (`id_vesti`, `naslov`, `tekst`, `kreiran`, `izmenjen`, `slika`, `alt`, `id_korisnik`) VALUES
(3, 'naslov 4', 'ovo je neki sadrzaj naslova 4', '13:47:33 2020-10-28', NULL, 'images/1603892853.png', 'alt naslova 4', 1),
(4, 'Naslov 1', 'Ovo je sadrzaj naslova 1', '10:47:46 2020-10-29', NULL, 'images/1603968466.jpg', 'alt naslova 1', 1),
(5, 'naslov 2', 'Ovo je sadrzaj naslova 2', '10:48:22 2020-10-29', NULL, 'images/1603968502.jpg', 'alt naslova 2', 1),
(6, 'naslov 3', 'Ovo je sadrzaj naslova 3', '10:49:01 2020-10-29', NULL, 'images/1603968541.jpg', 'alt naslova 3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anketa`
--
ALTER TABLE `anketa`
  ADD PRIMARY KEY (`id_anketa`);

--
-- Indexes for table `anketa_odgovori`
--
ALTER TABLE `anketa_odgovori`
  ADD PRIMARY KEY (`id_anketa_odgovori`);

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indexes for table `galerija`
--
ALTER TABLE `galerija`
  ADD PRIMARY KEY (`id_galerija`);

--
-- Indexes for table `igraci`
--
ALTER TABLE `igraci`
  ADD PRIMARY KEY (`id_igraci`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id_korisnik`);

--
-- Indexes for table `navigacija`
--
ALTER TABLE `navigacija`
  ADD PRIMARY KEY (`id_navigacija`);

--
-- Indexes for table `uloga`
--
ALTER TABLE `uloga`
  ADD PRIMARY KEY (`id_uloga`);

--
-- Indexes for table `vesti`
--
ALTER TABLE `vesti`
  ADD PRIMARY KEY (`id_vesti`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anketa`
--
ALTER TABLE `anketa`
  MODIFY `id_anketa` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `anketa_odgovori`
--
ALTER TABLE `anketa_odgovori`
  MODIFY `id_anketa_odgovori` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galerija`
--
ALTER TABLE `galerija`
  MODIFY `id_galerija` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `igraci`
--
ALTER TABLE `igraci`
  MODIFY `id_igraci` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id_korisnik` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `navigacija`
--
ALTER TABLE `navigacija`
  MODIFY `id_navigacija` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uloga`
--
ALTER TABLE `uloga`
  MODIFY `id_uloga` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vesti`
--
ALTER TABLE `vesti`
  MODIFY `id_vesti` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
