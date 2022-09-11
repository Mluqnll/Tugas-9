-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2022 at 08:10 AM
-- Server version: 5.7.33
-- PHP Version: 8.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_dpw`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `nama`, `username`, `email`, `nomor_hp`, `password`, `created_at`, `updated_at`) VALUES
('9716e328-b254-48b8-b0a7-a58bcab490c2', 'diqi', 'diqiiiii', 'diqi@gmail.com', '2637568465', '$2y$10$trtrM6wUkocO3mNdig8btuqk9bd7A5bQu.JkWPj6rpWpzGFEfsvo.', '2022-08-23 02:06:01', '2022-08-23 02:06:01'),
('97292e23-4fd5-4017-9f26-fb588786af92', 'ririn', 'ririrnnnnn', 'ririn@gmail.com', '27368421284', '$2y$10$Wbw9mtYNBmltYjXXsjhVpuDLf43Cf9pab/HXtZTYk1.Fqn9MMJ/.q', '2022-09-01 04:20:35', '2022-09-01 04:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
('970d630c-45f3-469b-a027-720f998341ee', 'bibit', '2022-08-18 08:45:21', '2022-08-18 08:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `penjual`
--

CREATE TABLE `penjual` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nomor_hp` varchar(15) DEFAULT NULL,
  `jenis_kelamin` int(1) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjual`
--

INSERT INTO `penjual` (`id`, `nama`, `username`, `email`, `nomor_hp`, `jenis_kelamin`, `nama_toko`, `password`, `created_at`, `updated_at`) VALUES
('9736fe58-83a2-4867-b083-5f03fdc3f858', 'Luqinul', 'mluqnl_', 'luqinul@gmail.com', '0843174183174', 1, 'luqinul shop', '$2y$10$mPcpIqNOpvQhM6/DPkcl6O3vIx3KDYql0MZxAu6rH.s4l.MfRo0zG', '2022-09-08 01:08:32', '2022-09-08 01:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` char(36) NOT NULL,
  `id_penjual` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(6) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jenis_kelamin` int(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `foto`, `jenis_kelamin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'dimasssss', 'dimas@gmail.com', 'dimas', 'app/images/user/-1662604534-LVjqJ.jpg', 1, '$2y$10$ET9pB6WonAKWjL6MtrE8fOX83ey5r4s.I103iDOf/xmW31d8GOdPC', NULL, '2022-09-07 19:35:34', '2022-09-07 19:35:34'),
(13, 'mluqnl_', 'luqinul@gmail.com', 'Luqinul', 'app/images/user/-1662606437-9luZU.jpg', 1, '$2y$10$2D5X4bjDfIH9CuNJqOl5LePs0QuWOi2Saznos0IuXsqRocHxM7cGu', NULL, '2022-09-07 20:07:17', '2022-09-07 20:07:17'),
(14, 'arjunnn', 'inul@gmail.com', 'arjun', 'app/images/user/-1662607271-mhP6h.jpg', 1, '$2y$10$Al.atvzbkv0Bst7DancEqeIwjkKZpyxz5CKJehsC3NhUZQA0b01P.', NULL, '2022-09-07 20:21:11', '2022-09-07 20:21:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjual`
--
ALTER TABLE `penjual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
