-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trova_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `postId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `description` varchar(2500) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `postTime` timestamp NULL DEFAULT current_timestamp(),
  `approval` varchar(10) NOT NULL DEFAULT 'not',
  PRIMARY KEY (`postId`,`userId`),
  UNIQUE KEY `postId_UNIQUE` (`postId`),
  KEY `postuserId_idx` (`userId`),
  CONSTRAINT `postuserId` FOREIGN KEY (`userId`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'This is post 1 by user 1','Location A','2024-11-15 10:41:02','not'),(2,1,'This is post 2 by user 1','Location B','2024-11-15 10:41:02','not'),(3,1,'This is post 3 by user 1','Location C','2024-11-15 10:41:02','not'),(4,1,'This is post 4 by user 1','Location D','2024-11-15 10:41:02','not'),(5,1,'This is post 5 by user 1','Location E','2024-11-15 10:41:02','not'),(6,1,'This is post 6 by user 1','Location F','2024-11-15 10:41:02','not'),(7,1,'This is post 7 by user 1','Location G','2024-11-15 10:41:02','not'),(8,1,'This is post 8 by user 1','Location H','2024-11-15 10:41:02','not'),(9,1,'This is post 9 by user 1','Location I','2024-11-15 10:41:02','not'),(10,1,'This is post 10 by user 1','Location J','2024-11-15 10:41:02','not'),(11,2,'This is post 1 by user 2','Location A','2024-11-15 10:41:02','not'),(12,2,'This is post 2 by user 2','Location B','2024-11-15 10:41:02','not'),(13,2,'This is post 3 by user 2','Location C','2024-11-15 10:41:02','not'),(14,2,'This is post 4 by user 2','Location D','2024-11-15 10:41:02','not'),(15,2,'This is post 5 by user 2','Location E','2024-11-15 10:41:02','not'),(16,2,'This is post 6 by user 2','Location F','2024-11-15 10:41:02','not'),(17,2,'This is post 7 by user 2','Location G','2024-11-15 10:41:02','not'),(18,2,'This is post 8 by user 2','Location H','2024-11-15 10:41:02','not'),(19,2,'This is post 9 by user 2','Location I','2024-11-15 10:41:02','not'),(20,2,'This is post 10 by user 2','Location J','2024-11-15 10:41:02','not'),(21,3,'This is post 1 by user 3','Location A','2024-11-15 10:41:02','not'),(22,3,'This is post 2 by user 3','Location B','2024-11-15 10:41:02','not'),(23,3,'This is post 3 by user 3','Location C','2024-11-15 10:41:02','not'),(24,3,'This is post 4 by user 3','Location D','2024-11-15 10:41:02','not'),(25,3,'This is post 5 by user 3','Location E','2024-11-15 10:41:02','not'),(26,3,'This is post 6 by user 3','Location F','2024-11-15 10:41:02','not'),(27,3,'This is post 7 by user 3','Location G','2024-11-15 10:41:02','not'),(28,3,'This is post 8 by user 3','Location H','2024-11-15 10:41:02','not'),(29,3,'This is post 9 by user 3','Location I','2024-11-15 10:41:02','not'),(30,3,'This is post 10 by user 3','Location J','2024-11-15 10:41:02','not'),(31,1,'hansaka','123456','2024-11-15 11:40:24','not'),(32,1,'ha2232313nsaka','123fdsfds456','2024-11-15 11:49:56','not'),(33,1,'ha223231fdfsfdsfdsf3nsaka','123fdfdfdsffdfdsfds456','2024-11-15 11:50:25','not'),(35,1,'ha223231fdfsfdsfddfsfdsfdsf3nsaka','123fdfdfdsfdsfdsffdsffdfdsfds456','2024-11-15 14:00:14','not'),(36,1,'ha223231fdfsfdsfddfsfdsfdsf3nsaka','123fdfdfdsfdsfdsffdsffdfdsfds456','2024-11-15 14:01:42','not'),(38,1,'ha223231fdfsfdsfdfdsfdfsfdsfdsf3nsaka','123fddffdfdsfdsfdsffdsffdfdsfds456','2024-11-15 14:10:29','not'),(39,1,'ha2232sfdsfdsf3hnsaka','123fddffdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:12:37','not'),(40,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:13:24','not'),(41,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:13:57','not'),(42,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:14:56','not'),(43,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:16:27','not'),(44,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:16:44','not'),(45,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:17:03','not'),(46,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:17:25','not'),(47,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:18:01','not'),(48,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:18:09','not'),(49,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:18:23','not'),(50,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:18:35','not'),(51,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:19:31','not'),(52,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:19:58','not'),(53,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:20:43','not'),(54,1,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:24:11','not'),(55,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:35:43','not'),(56,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:46:07','not'),(57,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:52:39','not'),(58,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:53:54','not'),(59,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:54:17','not'),(60,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:54:38','not'),(61,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:54:47','not'),(62,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:55:15','not'),(63,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 14:55:19','not'),(64,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:40:35','not'),(65,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:41:16','not'),(66,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:42:06','not'),(67,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:42:20','not'),(68,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:42:48','not'),(69,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:42:52','not'),(70,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:42:55','not'),(71,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:42:56','not'),(72,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:43:02','not'),(73,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:44:55','not'),(74,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:52:34','not'),(75,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:52:39','not'),(76,2,'ha2232sfdsfdsdsdsf3hnsaka','123fddffdsdfdsfdsfghjgfdsffdfdsfds456','2024-11-15 15:53:25','not');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-16  6:39:56
