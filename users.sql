-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 07:43 AM
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
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `number` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `number`) VALUES
(16, 'chaitanya', 'chaitanya@gmail.com', 'chaitu', 12345),
(23, 'regr', 'erhg', 'werh', 215487541),
(27, 'chaitanyaa', 'chaithanya5421@gmail.com', 'chaitu', 2147483647),
(48, 'iuargnk', 'hello@gmail.com', 'lkajebr', 2147483647),
(49, 'fubheu', 'ugiakhrb@gmail.com', '89alrehbgr', 2147483647),
(50, 'ajvk', 'kjvvvvjk @gmail.com', 'kjvfunj', 2147483647),
(52, 'harsha', 'harsha@gmail.com', 'harsha', 2147483647),
(54, 'njefw', 'lvkvjb@gmail', 'jhewvb', 0),
(62, 'iwjenf', 'onweg', 'oweng', 2147483647),
(64, 'chenchu', '', '', 0),
(67, 'kiran', 'kiran@gmail.com', 'kiran', 2147483647),
(75, 'chaitanyam', 'chaithanyahello@gmail.com', 'chaitu5421', 7895487),
(80, 'ndoe', 'ndoe@gmail.com', 'NODE', 54821);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
