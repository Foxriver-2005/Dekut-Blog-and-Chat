-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 22, 2023 at 01:46 PM
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
-- Database: `complete-blog-php`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, '5 Habits that can improve your studies', '5-habits-that-can-improve-your-studies', 0, '', '<ol>\r\n	<li><strong>Read every day</strong></li>\r\n	<li><strong>Don&#39;t panic</strong></li>\r\n	<li><strong>Minimize hanging out</strong></li>\r\n	<li><strong>Have peace of mind.</strong></li>\r\n	<li><strong>Be happy</strong></li>\r\n</ol>\r\n', 1, '2022-07-24 09:58:20', '2022-07-07 07:03:06'),
(3, 1, 'Motivation', 'motivation', 0, 'Untitled(308).png', 'hello everyone', 1, '2022-07-24 09:25:38', '2022-07-06 13:18:44'),
(4, 1, 'Inspiration', 'inspiration', 0, 'Untitled(308).png', 'hello everyone', 1, '2022-07-24 09:25:41', '2022-07-06 13:44:39'),
(13, 1, 'Opening Day', 'opening-day', 0, 'Untitled(299).png', '&lt;p&gt;Hey Happy to inform you about the opening day of the school&lt;/p&gt;\r\n', 1, '2022-07-24 09:25:43', '2022-07-06 21:55:00'),
(14, 1, 'End of Internal Attachment', 'end-of-internal-attachment', 0, 'Untitled(90).png', '&lt;p&gt;&lt;em&gt;&lt;strong&gt;Hello,today internall attachment for computer scince comes to an end.&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;\r\n', 0, '2022-07-24 09:17:28', '2022-07-07 05:00:50'),
(15, 1, 'Sports', 'sports', 0, 'Untitled(297).jpg', '&lt;p&gt;There will be a game on friday&lt;/p&gt;\r\n', 0, '2022-07-24 09:17:30', '2022-07-07 07:38:18'),
(16, 1, 'Morning', 'morning', 0, 'Untitled(87).png', '&lt;p&gt;morning guys&lt;/p&gt;\r\n', 0, '2022-07-24 09:17:34', '2022-07-07 09:13:24'),
(17, 1, 'China', 'china', 0, 'Untitled(308).png', '&lt;p&gt;Chinese cultrural language&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;GUEST King chom&lt;/strong&gt;&lt;/p&gt;\r\n', 0, '2022-08-26 15:20:29', '2022-07-07 09:48:19'),
(18, 1, 'okay', 'okay', 0, 'Untitled(134).png', 'hey buddy', 0, '2022-07-17 13:19:13', '2022-07-17 13:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(1, 1, 1),
(1, 16, 1),
(1, 17, 1),
(1, 18, 20);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Inspiration', 'inspiration'),
(20, 'Sports', 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Awa', 'awa@gmail.com', 'Admin', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-08 09:52:58', '2018-01-08 09:52:58'),
(3, 'fox', 'fox@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '2022-07-06 12:48:47', '2022-07-06 12:48:47'),
(4, 'fav', 'fav@gmail.com', 'Author', '81dc9bdb52d04dc20036dbd8313ed055', '2022-07-06 19:32:27', '2022-07-06 19:32:27'),
(5, 'caleb', 'ticha@gmail.com', 'Admin', '81dc9bdb52d04dc20036dbd8313ed055', '2022-07-06 19:33:16', '2022-07-06 19:33:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
