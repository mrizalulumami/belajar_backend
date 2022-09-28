-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2022 at 01:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `content_gambar`
--

CREATE TABLE `content_gambar` (
  `id` int(11) NOT NULL,
  `nama_gambar` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content_gambar`
--

INSERT INTO `content_gambar` (`id`, `nama_gambar`, `created_at`, `updated_at`) VALUES
(1, '/img/gallery/gallery-1.jpg', '2022-09-28 18:34:42', '2022-09-28 19:14:56'),
(2, '/img/gallery/gallery-2.jpg', '2022-09-28 18:34:42', '2022-09-28 19:15:09'),
(3, '/img/gallery/gallery-3.jpg', '2022-09-28 18:34:42', '2022-09-28 19:15:15'),
(4, '/img/gallery/gallery-4.jpg', '2022-09-28 18:34:42', '2022-09-28 19:15:22'),
(5, '/img/gallery/gallery-5.jpg', '2022-09-28 19:15:53', '2022-09-28 19:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(24) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_balita`
--

CREATE TABLE `tabel_balita` (
  `id` int(24) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `umur` int(10) NOT NULL,
  `berat_badan` int(3) NOT NULL,
  `tingg` int(3) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_balita`
--

INSERT INTO `tabel_balita` (`id`, `nama`, `umur`, `berat_badan`, `tingg`, `jenis_kelamin`, `created_at`, `update_at`) VALUES
(1, 'sayidan', 66, 60, 171, 'L', '2022-08-24 17:16:39', '2022-09-23 23:14:29'),
(2, 'Rizky', 23, 65, 170, 'L', '2022-09-23 22:36:01', '2022-09-23 22:36:01'),
(3, 'Aini', 23, 50, 169, 'P', '2022-09-23 22:36:38', '2022-09-23 22:36:38'),
(4, 'Yuli', 23, 55, 165, 'P', '2022-09-23 22:37:55', '2022-09-23 22:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_ibu_hamil`
--

CREATE TABLE `tabel_ibu_hamil` (
  `id` int(24) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `umur` int(10) NOT NULL,
  `tinggi` varchar(30) NOT NULL,
  `berat_badan` int(12) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_ibu_hamil`
--

INSERT INTO `tabel_ibu_hamil` (`id`, `nama`, `alamat`, `umur`, `tinggi`, `berat_badan`, `created_at`, `update_at`) VALUES
(1, 'aini', 'nenggung', 23, '156', 46, '2022-08-24 17:22:38', '2022-08-24 17:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_lansia`
--

CREATE TABLE `tabel_lansia` (
  `id` int(24) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `umur` int(10) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `berat_badan` int(12) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_lansia`
--

INSERT INTO `tabel_lansia` (`id`, `nama`, `alamat`, `umur`, `jenis_kelamin`, `berat_badan`, `created_at`, `update_at`) VALUES
(1, 'bjahsjnknsb', 'rakam', 70, 'p', 50, '2022-08-24 17:27:54', '2022-08-24 17:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_ptm`
--

CREATE TABLE `tabel_ptm` (
  `id` int(24) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `umur` int(10) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_ptm`
--

INSERT INTO `tabel_ptm` (`id`, `nama`, `alamat`, `umur`, `jenis_kelamin`, `created_at`, `update_at`) VALUES
(1, 'hgjahnmsljlna', 'rakam', 25, 'l', '2022-08-24 17:29:31', '2022-08-24 17:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_remaja`
--

CREATE TABLE `tabel_remaja` (
  `id` int(24) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `umur` int(10) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `berat_badan` int(12) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_remaja`
--

INSERT INTO `tabel_remaja` (`id`, `nama`, `alamat`, `umur`, `jenis_kelamin`, `berat_badan`, `created_at`, `update_at`) VALUES
(1, 'bsjhkaslajoa', 'rakam', 23, 'p', 49, '2022-08-24 17:29:54', '2022-08-24 17:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `user role` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content_gambar`
--
ALTER TABLE `content_gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_balita`
--
ALTER TABLE `tabel_balita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_ibu_hamil`
--
ALTER TABLE `tabel_ibu_hamil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_lansia`
--
ALTER TABLE `tabel_lansia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_ptm`
--
ALTER TABLE `tabel_ptm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_remaja`
--
ALTER TABLE `tabel_remaja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content_gambar`
--
ALTER TABLE `content_gambar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(24) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_balita`
--
ALTER TABLE `tabel_balita`
  MODIFY `id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tabel_ibu_hamil`
--
ALTER TABLE `tabel_ibu_hamil`
  MODIFY `id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_lansia`
--
ALTER TABLE `tabel_lansia`
  MODIFY `id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_ptm`
--
ALTER TABLE `tabel_ptm`
  MODIFY `id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_remaja`
--
ALTER TABLE `tabel_remaja`
  MODIFY `id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
