-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2024 at 02:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trova_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `description` varchar(2500) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `postTime` timestamp NULL DEFAULT current_timestamp(),
  `approval` varchar(10) NOT NULL DEFAULT 'not'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postId`, `userId`, `description`, `location`, `postTime`, `approval`) VALUES
(1, 1, 'This is post 1 by user 1', 'Location A', '2024-11-15 10:41:02', 'not'),
(2, 1, 'This is post 2 by user 1', 'Location B', '2024-11-15 10:41:02', 'not'),
(3, 1, 'This is post 3 by user 1', 'Location C', '2024-11-15 10:41:02', 'not'),
(4, 1, 'This is post 4 by user 1', 'Location D', '2024-11-15 10:41:02', 'not'),
(5, 1, 'This is post 5 by user 1', 'Location E', '2024-11-15 10:41:02', 'not'),
(6, 1, 'This is post 6 by user 1', 'Location F', '2024-11-15 10:41:02', 'not'),
(7, 1, 'This is post 7 by user 1', 'Location G', '2024-11-15 10:41:02', 'not'),
(8, 1, 'This is post 8 by user 1', 'Location H', '2024-11-15 10:41:02', 'not'),
(9, 1, 'This is post 9 by user 1', 'Location I', '2024-11-15 10:41:02', 'not'),
(10, 1, 'This is post 10 by user 1', 'Location J', '2024-11-15 10:41:02', 'not'),
(11, 2, 'This is post 1 by user 2', 'Location A', '2024-11-15 10:41:02', 'not'),
(12, 2, 'This is post 2 by user 2', 'Location B', '2024-11-15 10:41:02', 'not'),
(13, 2, 'This is post 3 by user 2', 'Location C', '2024-11-15 10:41:02', 'not'),
(14, 2, 'This is post 4 by user 2', 'Location D', '2024-11-15 10:41:02', 'not'),
(15, 2, 'This is post 5 by user 2', 'Location E', '2024-11-15 10:41:02', 'not'),
(16, 2, 'This is post 6 by user 2', 'Location F', '2024-11-15 10:41:02', 'not'),
(17, 2, 'This is post 7 by user 2', 'Location G', '2024-11-15 10:41:02', 'not'),
(18, 2, 'This is post 8 by user 2', 'Location H', '2024-11-15 10:41:02', 'not'),
(19, 2, 'This is post 9 by user 2', 'Location I', '2024-11-15 10:41:02', 'not'),
(20, 2, 'This is post 10 by user 2', 'Location J', '2024-11-15 10:41:02', 'not'),
(21, 3, 'This is post 1 by user 3', 'Location A', '2024-11-15 10:41:02', 'not'),
(22, 3, 'This is post 2 by user 3', 'Location B', '2024-11-15 10:41:02', 'not'),
(23, 3, 'This is post 3 by user 3', 'Location C', '2024-11-15 10:41:02', 'not'),
(24, 3, 'This is post 4 by user 3', 'Location D', '2024-11-15 10:41:02', 'not'),
(25, 3, 'This is post 5 by user 3', 'Location E', '2024-11-15 10:41:02', 'not'),
(26, 3, 'This is post 6 by user 3', 'Location F', '2024-11-15 10:41:02', 'not'),
(27, 3, 'This is post 7 by user 3', 'Location G', '2024-11-15 10:41:02', 'not'),
(28, 3, 'This is post 8 by user 3', 'Location H', '2024-11-15 10:41:02', 'not'),
(29, 3, 'This is post 9 by user 3', 'Location I', '2024-11-15 10:41:02', 'not'),
(30, 3, 'This is post 10 by user 3', 'Location J', '2024-11-15 10:41:02', 'not'),
(31, 1, 'hansaka', '123456', '2024-11-15 11:40:24', 'not'),
(32, 1, 'ha2232313nsaka', '123fdsfds456', '2024-11-15 11:49:56', 'not'),
(33, 1, 'ha223231fdfsfdsfdsf3nsaka', '123fdfdfdsffdfdsfds456', '2024-11-15 11:50:25', 'not'),
(35, 1, 'ha223231fdfsfdsfddfsfdsfdsf3nsaka', '123fdfdfdsfdsfdsffdsffdfdsfds456', '2024-11-15 14:00:14', 'not'),
(36, 1, 'ha223231fdfsfdsfddfsfdsfdsf3nsaka', '123fdfdfdsfdsfdsffdsffdfdsfds456', '2024-11-15 14:01:42', 'not'),
(38, 1, 'ha223231fdfsfdsfdfdsfdfsfdsfdsf3nsaka', '123fddffdfdsfdsfdsffdsffdfdsfds456', '2024-11-15 14:10:29', 'not'),
(39, 1, 'ha2232sfdsfdsf3hnsaka', '123fddffdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:12:37', 'not'),
(40, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:13:24', 'not'),
(41, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:13:57', 'not'),
(42, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:14:56', 'not'),
(43, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:16:27', 'not'),
(44, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:16:44', 'not'),
(45, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:17:03', 'not'),
(46, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:17:25', 'not'),
(47, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:18:01', 'not'),
(48, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:18:09', 'not'),
(49, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:18:23', 'not'),
(50, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:18:35', 'not'),
(51, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:19:31', 'not'),
(52, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:19:58', 'not'),
(53, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:20:43', 'not'),
(54, 1, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:24:11', 'not'),
(55, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:35:43', 'not'),
(56, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:46:07', 'not'),
(57, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:52:39', 'not'),
(58, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:53:54', 'not'),
(59, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:54:17', 'not'),
(60, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:54:38', 'not'),
(61, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:54:47', 'not'),
(62, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:55:15', 'not'),
(63, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 14:55:19', 'not'),
(64, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:40:35', 'not'),
(65, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:41:16', 'not'),
(66, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:42:06', 'not'),
(67, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:42:20', 'not'),
(68, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:42:48', 'not'),
(69, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:42:52', 'not'),
(70, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:42:55', 'not'),
(71, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:42:56', 'not'),
(72, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:43:02', 'not'),
(73, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:44:55', 'not'),
(74, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:52:34', 'not'),
(75, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:52:39', 'not'),
(76, 2, 'ha2232sfdsfdsdsdsf3hnsaka', '123fddffdsdfdsfdsfghjgfdsffdfdsfds456', '2024-11-15 15:53:25', 'not');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `commenId` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `createat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`commenId`, `postId`, `userID`, `content`, `createat`) VALUES
(1, 1, 1, 'Nice picture', '2024-11-15 23:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `post_image`
--

CREATE TABLE `post_image` (
  `postId` int(11) NOT NULL,
  `imageLink` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_image`
--

INSERT INTO `post_image` (`postId`, `imageLink`) VALUES
(1, 'https://example.com/image1.jpg'),
(1, 'https://example.com/image2.jpg'),
(2, 'https://example.com/image3.jpg'),
(3, 'https://example.com/image4.jpg'),
(3, 'https://example.com/image5.jpg'),
(5, 'https://example.com/image6.jpg'),
(10, 'https://example.com/image7.jpg'),
(15, 'https://example.com/image8.jpg'),
(15, 'https://example.com/image9.jpg'),
(20, 'https://example.com/image10.jpg'),
(38, 'id1'),
(38, 'id2'),
(52, 'dshdsh'),
(52, 'hansaka@gmail.com'),
(53, 'dshdfdsfsh'),
(53, 'hansaka@gmfdsfail.com'),
(54, 'dshdsfdsfsh'),
(54, 'hansaka@gmfsdsfail.com'),
(55, 'dshdsfdsfsh'),
(55, 'hansaka@gmfsdsfail.com'),
(56, '7-1731681967274-image.png'),
(74, '11-1731685954403-image.png'),
(76, '12-1731686005825-download.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`postId`, `userId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `sellerId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `location` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `postAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `productId` int(11) NOT NULL,
  `imageLink` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `reviewId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `reviewRate` double NOT NULL,
  `review_content` varchar(250) NOT NULL,
  `availibility` varchar(45) NOT NULL,
  `reviewtime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved_posts`
--

CREATE TABLE `saved_posts` (
  `userId` int(11) NOT NULL,
  `postId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_posts`
--

INSERT INTO `saved_posts` (`userId`, `postId`) VALUES
(1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `sid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `name` varchar(45) NOT NULL,
  `profilepic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `password`, `name`, `profilepic`) VALUES
(1, 'hansaka', 'hansaka@gmail.com', '$2a$10$gituJ0O./Yd3DgsQUWIo4OEBjcao4TI99QpqDWVeww0UE3UJMNTta', 'shana', NULL),
(2, 'hansaka Ravishan', 'hansaka@gmail12.com', '$2a$10$TG5IIQxCD8.Gc/E1dCr09e653tx2cdwwk4LXKWMkGm8v7yy1sKtf.', 'shana12', NULL),
(3, 'hansa', 'hansaka@gmai21l12.com', '$2a$10$sbZ5mQ9qiL.rutZfYE8UkuX6HOP1LIgfwo3nEri47QD5qf/zFlCUS', 'shana1212', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postId`,`userId`),
  ADD UNIQUE KEY `postId_UNIQUE` (`postId`),
  ADD KEY `postuserId_idx` (`userId`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`commenId`,`postId`,`userID`),
  ADD UNIQUE KEY `commenId_UNIQUE` (`commenId`),
  ADD KEY `comentedUser_idx` (`userID`),
  ADD KEY `comntedPost_idx` (`postId`);

--
-- Indexes for table `post_image`
--
ALTER TABLE `post_image`
  ADD PRIMARY KEY (`postId`,`imageLink`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`postId`,`userId`),
  ADD KEY `likedUser_idx` (`userId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`,`sellerId`),
  ADD UNIQUE KEY `productId_UNIQUE` (`productId`),
  ADD KEY `sellerproduct_idx` (`sellerId`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`productId`,`imageLink`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`reviewId`),
  ADD KEY `reviewProduct_idx` (`productId`),
  ADD KEY `reviewUser_idx` (`userid`);

--
-- Indexes for table `saved_posts`
--
ALTER TABLE `saved_posts`
  ADD PRIMARY KEY (`userId`,`postId`),
  ADD KEY `savedPost_idx` (`postId`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `sid_UNIQUE` (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `userid_UNIQUE` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `commenId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `postuserId` FOREIGN KEY (`userId`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `comentedUser` FOREIGN KEY (`userID`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comntedPost` FOREIGN KEY (`postId`) REFERENCES `posts` (`postId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_image`
--
ALTER TABLE `post_image`
  ADD CONSTRAINT `postimages` FOREIGN KEY (`postId`) REFERENCES `posts` (`postId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `likedPost` FOREIGN KEY (`postId`) REFERENCES `posts` (`postId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `likedUser` FOREIGN KEY (`userId`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `sellerproduct` FOREIGN KEY (`sellerId`) REFERENCES `sellers` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `porductImage` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `reviewProduct` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewUser` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `saved_posts`
--
ALTER TABLE `saved_posts`
  ADD CONSTRAINT `savedPost` FOREIGN KEY (`postId`) REFERENCES `posts` (`postId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `savedUser` FOREIGN KEY (`userId`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
