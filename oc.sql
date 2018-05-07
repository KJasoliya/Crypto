-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2018 at 10:24 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oc`
--

-- --------------------------------------------------------

--
-- Table structure for table `userhistory`
--

CREATE TABLE `userhistory` (
  `id` bigint(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `cipher` varchar(20) NOT NULL,
  `userstring` varchar(500) NOT NULL,
  `datetime` datetime NOT NULL,
  `cipherkey` varchar(300) NOT NULL,
  `encryptedtext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userhistory`
--

INSERT INTO `userhistory` (`id`, `email`, `cipher`, `userstring`, `datetime`, `cipherkey`, `encryptedtext`) VALUES
(12, 'nikhil@gmail.com', 'Vegenere Cipher', 'HELLO THISI IS NIKHIL', '2015-04-20 15:46:23', 'codeSecure', 'JSOPG>VBZWK.LW2RKEYMN'),
(13, 'k@k.com', 'Caesar Cipher', 'kinnari', '2018-04-22 10:52:52', '2', 'mkppctk'),
(14, 'kin876@kin5432.com', 'Caesar Cipher', 'kjikmn', '2018-05-06 13:53:59', '4', 'onmoqr'),
(15, 'kin876@kin5432.com', 'Vegenere Cipher', ',MNBVFGCHNB', '2018-05-06 13:54:58', 'yh', 'DTLITMEJFUZ'),
(18, 'k@k.com', 'Vegenere Cipher', '{RTF1ANSIANSICPG1252COCOARTF1561COCOASUBRTF400\n', '2018-05-06 14:20:32', 'rf', 'XGIYW6SFEXZGRSJNTUX6C:CGTTTTRWKKB:G6SHFHFFJZSWKKE5A)'),
(19, 'k@k.com', 'Vegenere Cipher', '{RTF1ANSIANSICPG1252COCOARTF1561COCOASUBRTF400\n', '2018-05-06 14:20:32', 'rf', 'XGIYW6SFEXZGRSJNTUX6C:CGTTTTRWKKB:G6SHFHFFJZSWKKE5A)'),
(20, 'kin@kin.com', 'Caesar Cipher', 'kin', '2018-05-06 15:24:25', '2', 'mkp'),
(21, 'kinnari@gmail.com', 'Caesar Cipher', 'Kin', '2018-05-07 16:04:30', '3', 'Nlq'),
(25, 'kin@gmail.com', 'Caesar Cipher', 'Kinnari', '2018-05-07 16:14:34', 'k', 'Kinnari');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profilepic` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `name`, `email`, `password`, `datecreated`, `profilepic`) VALUES
(33, 'kinn', 'k@k.com', 'K!nnar!2017', '2018-05-06 14:12:33', NULL),
(34, 'Kinnari', 'kin@kin.com', 'K!nnar!2017', '2018-05-06 15:24:11', 'uploads/kin@kin.com-Screen Shot 2018-04-04 at 7.46.15 AM.png'),
(35, 'Kinnari', 'kinnari@gmail.com', 'K!nnar!', '2018-05-07 16:04:19', 'uploads/kinnari@gmail.com-Compressed.png'),
(36, 'Kinnari', 'kin@gmail.com', 'K!nnar!', '2018-05-07 16:14:22', 'uploads/kin@gmail.com-Compressed.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userhistory`
--
ALTER TABLE `userhistory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userhistory`
--
ALTER TABLE `userhistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
