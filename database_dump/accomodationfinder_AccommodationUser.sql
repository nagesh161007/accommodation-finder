-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: accomodationfinder
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `AccommodationUser`
--

DROP TABLE IF EXISTS `AccommodationUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AccommodationUser` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `tweet_handle` varchar(20) NOT NULL,
  `university_name` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `accommodation_user_tweet_key` (`tweet_handle`),
  CONSTRAINT `accommodation_user_tweet_key` FOREIGN KEY (`tweet_handle`) REFERENCES `TwitterUser` (`twitter_handle`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccommodationUser`
--

LOCK TABLES `AccommodationUser` WRITE;
/*!40000 ALTER TABLE `AccommodationUser` DISABLE KEYS */;
INSERT INTO `AccommodationUser` VALUES (1,'sneha_g1610','Northeastern University','MSIS','Sneha Govindarajan','sneha@gmail.com','9597346827'),(2,'16_foden','Northeastern University','MSIS','Phil Foden','foden@gmail.com','1234567890'),(3,'AccomodFinder','Northeastern University','MSIS','Nageshwara sairam','sairam.nageshwara99@gmail.com','8573135578'),(4,'funstack_dev','Northeastern University','MS DAE','Akash Ganesan','akash@gmail.com','91234567890'),(5,'ArizonaHotGuy','Northeastern University','MSIS','Athipathi','athipathi@gmail.com','9876543210');
/*!40000 ALTER TABLE `AccommodationUser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-12 17:53:33
