-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 22, 2023 at 01:47 PM
-- Server version: 10.7.6-MariaDB-1:10.7.6+maria~deb11
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wassup`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `sent_by` varchar(255) CHARACTER SET latin1 NOT NULL,
  `received_by` varchar(255) CHARACTER SET latin1 NOT NULL,
  `message` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createdAt` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sent_by`, `received_by`, `message`, `createdAt`) VALUES
(27, 'fox@gmail.com', 'ticha@gmail.com', 'hello', '2022-06-03 02:56:41pm'),
(28, 'fav@gmail.com', 'fox@gmail.com', 'hello', '2022-06-03 03:09:21pm'),
(29, 'ticha@gmail.com', 'fox@gmail.com', 'hello', '2022-06-03 03:09:51pm'),
(30, 'foxriver@gmail.com', 'fox@gmail.com', 'welcome', '2022-06-03 03:11:05pm'),
(31, 'fox@gmail.com', 'ticha@gmail.com', 'hi', '2022-06-03 03:18:03pm'),
(32, 'fav@gmail.com', 'fox@gmail.com', 'welcome', '2022-06-05 12:31:41pm'),
(33, 'fox@gmail.com', 'foxriver@gmail.com', 'hi', '2022-06-05 12:32:25pm'),
(34, 'fox@gmail.com', 'fav@gmail.com', 'hi', '2022-06-05 12:33:31pm'),
(35, 'fav@gmail.com', 'fox@gmail.com', 'okay', '2022-06-05 12:33:43pm'),
(36, 'fox@gmail.com', 'fav@gmail.com', 'welcome', '2022-07-06 05:15:20pm'),
(37, 'fox@gmail.com', 'fav@gmail.com', 'morning', '2022-07-07 09:52:29am'),
(38, 'fox@gmail.com', '', 'hi', '2022-07-07 10:29:09am'),
(39, 'fox@gmail.com', 'ticha@gmail.com', 'ghasia hii ', '2022-07-07 12:49:32pm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `dp` varchar(255) CHARACTER SET latin1 NOT NULL,
  `salt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `dp`, `salt`) VALUES
(25, 'Tichaa', 'ticha@gmail.com', '6cc493515fafdf4bf371cd3c2b99ef8e', 'FB_IMG_16374984976594204.jpg', '6299f64eee84d'),
(26, 'fox', 'fox@gmail.com', '4e2422b5f8744fca586a82b7ea3e809b', 'IMG_7r3gw3.jpg', '6299f6c498e47'),
(27, 'Favorite', 'fav@gmail.com', '990d4f8c17c6b19419b76785767b92be', 'T_bag_by_harilari.jpg', '6299f9d0b6fd9'),
(28, 'YoungMan', 'foxriver@gmail.com', 'ae527bd1182738cdd9745981a6c610a3', 'FB_IMG_16304409679309275.jpg', '6299fa398c54c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
