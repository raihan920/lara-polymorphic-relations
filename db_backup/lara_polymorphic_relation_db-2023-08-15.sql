-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2023 at 11:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_polymorphic_relation_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `body` varchar(255) NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 'A very nice video!', 1, 'App\\Models\\Video', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(2, 'Wow what a nice video!', 1, 'App\\Models\\Video', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(3, 'Wow what a cool video!', 1, 'App\\Models\\Video', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(4, 'A very very nice nice video!', 2, 'App\\Models\\Video', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(5, 'Wow what a nice nice nice video!', 2, 'App\\Models\\Video', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(6, 'Wow what a cool cool video!', 2, 'App\\Models\\Video', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(7, 'Wow what a video it is!', 3, 'App\\Models\\Video', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(8, 'A very nice and cool video!', 3, 'App\\Models\\Video', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(9, 'The video is so awesome!!!', 4, 'App\\Models\\Video', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(10, 'A very nice post!', 1, 'App\\Models\\Post', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(11, 'Wow what a nice Post!', 1, 'App\\Models\\Post', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(12, 'Wow what a cool Post!', 1, 'App\\Models\\Post', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(13, 'A very very nice nice Post!', 2, 'App\\Models\\Post', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(14, 'Wow what a nice nice nice Post!', 2, 'App\\Models\\Post', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(15, 'Wow what a cool cool Post!', 2, 'App\\Models\\Post', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(16, 'Wow what a Post it is!', 3, 'App\\Models\\Post', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(17, 'A very nice and cool Post!', 3, 'App\\Models\\Post', '2023-08-15 09:19:17', '2023-08-15 09:19:17'),
(18, 'The Post is so awesome!!!', 4, 'App\\Models\\Post', '2023-08-15 09:19:17', '2023-08-15 09:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'https://picsum.photos/200/300', 1, 'App\\Models\\Post', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(2, 'https://picsum.photos/200', 1, 'App\\Models\\User', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(3, 'https://picsum.photos/200/300', 2, 'App\\Models\\Post', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(4, 'https://picsum.photos/200/300', 3, 'App\\Models\\Post', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(5, 'https://picsum.photos/200/300', 4, 'App\\Models\\Post', '2023-08-14 17:21:42', '2023-08-14 16:49:34'),
(6, 'https://picsum.photos/200/300', 5, 'App\\Models\\Post', '2023-08-14 17:21:46', '2023-08-14 16:49:34'),
(7, 'https://picsum.photos/200/300', 6, 'App\\Models\\Post', '2023-08-14 17:21:49', '2023-08-14 16:49:34'),
(8, 'https://picsum.photos/200/300', 7, 'App\\Models\\Post', '2023-08-14 17:21:53', '2023-08-14 16:49:34'),
(9, 'https://picsum.photos/200/300', 8, 'App\\Models\\Post', '2023-08-14 17:21:57', '2023-08-14 16:49:34'),
(10, 'https://picsum.photos/200/300', 9, 'App\\Models\\Post', '2023-08-14 17:22:00', '2023-08-14 16:49:34'),
(11, 'https://picsum.photos/200/300', 10, 'App\\Models\\Post', '2023-08-14 17:22:05', '2023-08-14 16:49:34'),
(12, 'https://picsum.photos/200/300', 11, 'App\\Models\\Post', '2023-08-14 17:22:09', '2023-08-14 16:49:34'),
(13, 'https://picsum.photos/200/300', 12, 'App\\Models\\Post', '2023-08-14 17:22:14', '2023-08-14 16:49:34'),
(14, 'https://picsum.photos/200/300', 13, 'App\\Models\\Post', '2023-08-14 17:22:16', '2023-08-14 16:49:34'),
(15, 'https://picsum.photos/200/300', 14, 'App\\Models\\Post', '2023-08-14 17:22:20', '2023-08-14 16:49:34'),
(16, 'https://picsum.photos/200/300', 15, 'App\\Models\\Post', '2023-08-14 17:22:23', '2023-08-14 16:49:34'),
(17, 'https://picsum.photos/200/300', 16, 'App\\Models\\Post', '2023-08-14 17:22:27', '2023-08-14 16:49:34'),
(18, 'https://picsum.photos/200/300', 17, 'App\\Models\\Post', '2023-08-14 17:22:30', '2023-08-14 16:49:34'),
(19, 'https://picsum.photos/200/300', 18, 'App\\Models\\Post', '2023-08-14 17:22:34', '2023-08-14 16:49:34'),
(22, 'https://picsum.photos/200', 2, 'App\\Models\\User', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(23, 'https://picsum.photos/200', 2, 'App\\Models\\User', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(24, 'https://picsum.photos/200', 3, 'App\\Models\\User', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(25, 'https://picsum.photos/200', 4, 'App\\Models\\User', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(26, 'https://picsum.photos/200', 5, 'App\\Models\\User', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(27, 'https://picsum.photos/200', 6, 'App\\Models\\User', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(28, 'https://picsum.photos/200', 7, 'App\\Models\\User', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(29, 'https://picsum.photos/200', 8, 'App\\Models\\User', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(30, 'https://picsum.photos/200', 9, 'App\\Models\\User', '2023-08-14 16:49:34', '2023-08-14 16:49:34'),
(32, 'https://picsum.photos/200/300', 19, 'App\\Models\\Post', '2023-08-14 11:45:14', '2023-08-14 11:45:14'),
(33, 'https://picsum.photos/200/300', 20, 'App\\Models\\Post', '2023-08-14 11:45:14', '2023-08-14 11:45:14'),
(34, 'https://picsum.photos/200', 10, 'App\\Models\\User', '2023-08-14 11:45:14', '2023-08-14 11:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Post Title 1', 'This is body of post 1', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(2, 'Post Title 2', 'This is body of post 2', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(3, 'Post Title 3', 'This is body of post 3', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(4, 'Post Title 4', 'This is body of post 4', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(5, 'Post Title 5', 'This is body of post 5', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(6, 'Post Title 6', 'This is body of post 6', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(7, 'Post Title 7', 'This is body of post 7', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(8, 'Post Title 8', 'This is body of post 8', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(9, 'Post Title 9', 'This is body of post 9', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(10, 'Post Title 10', 'This is body of post 10', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(11, 'Post Title 11', 'This is body of post 11', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(12, 'Post Title 12', 'This is body of post 12', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(13, 'Post Title 13', 'This is body of post 13', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(14, 'Post Title 14', 'This is body of post 14', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(15, 'Post Title 15', 'This is body of post 15', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(16, 'Post Title 16', 'This is body of post 16', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(17, 'Post Title 17', 'This is body of post 17', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(18, 'Post Title 18', 'This is body of post 18', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(19, 'Post Title 19', 'This is body of post 19', '2023-08-15 05:07:43', '2023-08-15 05:07:43'),
(20, 'Post Title 20', 'This is body of post 20', '2023-08-15 05:07:43', '2023-08-15 05:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Akbar'),
(2, 'Mosharraf'),
(3, 'Tahfim'),
(4, 'Ishaq'),
(5, 'Imran'),
(6, 'Faruque'),
(7, 'Ashiq'),
(8, 'Mustafa'),
(9, 'Bukhari'),
(10, 'Atik');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Test video of a road in a city', 'https://samplelib.com/lib/preview/mp4/sample-5s.mp4', '2023-08-15 09:13:59', '2023-08-15 09:13:59'),
(2, 'Test video of a couple of buses passing by the par', 'https://samplelib.com/lib/preview/mp4/sample-10s.mp4', '2023-08-15 09:13:59', '2023-08-15 09:13:59'),
(3, 'A stream of vehicles passing by the park', 'https://samplelib.com/lib/preview/mp4/sample-15s.mp4', '2023-08-15 09:16:26', '2023-08-15 09:16:26'),
(4, 'Test video of the road, and then of the traffic fl', 'https://samplelib.com/lib/preview/mp4/sample-20s.mp4', '2023-08-15 09:16:26', '2023-08-15 09:16:26'),
(5, 'Videos of the park, roads, and even people crossin', 'https://samplelib.com/lib/preview/mp4/sample-30s.mp4', '2023-08-15 09:16:26', '2023-08-15 09:16:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
