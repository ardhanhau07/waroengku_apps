-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 06:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go_restapi_gin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `username` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `nama-product` varchar(300) DEFAULT NULL,
  `deskripsi` varchar(300) DEFAULT NULL,
  `di` bigint(20) DEFAULT NULL,
  `desc` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama-product`, `deskripsi`, `di`, `desc`) VALUES
(1, 'tumbler', 'botol yang bisa diisi minuman dingin maupun panas', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id-review` int(10) NOT NULL,
  `id-warung` int(10) NOT NULL,
  `nama-warung` varchar(255) NOT NULL,
  `id-user` int(10) NOT NULL,
  `email` longtext DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_review` int(10) DEFAULT NULL,
  `id_warung` int(10) DEFAULT NULL,
  `nama_warung` varchar(255) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `nama-lengkap` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `token`, `nama-lengkap`, `email`, `nama_lengkap`) VALUES
(19, '$2a$10$9YfpXcR0xy9jpMI5JSMgEu3dZea8K1jWYk2UUu8QfkPABvSjNZEiG', '', '', 'halo10@test.com', ''),
(20, '$2a$10$QXTOBawwHMdeHHmeg4HqSO/cSZSOpXocOy8jlxwxQP7fIyeD.087G', '', '', '', ''),
(21, '$2a$10$Y0Zns6bn/Mw8dHDTbFyZqOMqGJa07nbB7fpsZ81hwu.FiQg4INGeK', '', '', '', ''),
(22, '$2a$10$IaBSaH/ZlZ2MNTvjzCXUIeB27qjGhmnirVnYSkd5BWOOzzT8fWH2.', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `warungs`
--

CREATE TABLE `warungs` (
  `id` int(10) NOT NULL,
  `nama_warung` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `rating` bigint(20) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warungs`
--

INSERT INTO `warungs` (`id`, `nama_warung`, `gambar`, `rating`, `lokasi`, `deskripsi`) VALUES
(1, 'restu ibu', '(ini link)', 4, 'deket uin', 'murah meriah'),
(2, 'warung matos', '(ini link)', 5, 'depan dewa vermak', 'murah enak gratis minum air putih refil sepuasnya'),
(3, '', '(ini link)', 3, 'dekat gerbang belakang UIN Malang', 'gratis minum air putih refil sepuasnya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id-review`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warungs`
--
ALTER TABLE `warungs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id-review` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `warungs`
--
ALTER TABLE `warungs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
