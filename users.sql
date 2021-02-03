-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 01:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `useraccount`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `phone`, `email`, `password`) VALUES
(1, 'yeri', '0233125325', 'yeri@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'nara', '0226546432', 'nara11@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'sirinapa', '0933562174', 'thangtham_19@hotmail.com', 'eb02fde9e9b30c863de4e281aae83081'),
(4, 'top', '0862145321', 'top.t@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'gate', '0955232323', 'ga_te@testy.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'mark', '0576321525', 'ma_rk@gmail.com', '984cefd6d27eb0471fc401a493a4fdff'),
(7, 'got7', '0855621355', 'got@gmail.com', 'ec2d752ed0d0652254087040bced0247'),
(8, 'wolf45', '0984523633', 'awolf.12@gmail.com', '7adaa756553ba9eb6a235080f6263b5b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
