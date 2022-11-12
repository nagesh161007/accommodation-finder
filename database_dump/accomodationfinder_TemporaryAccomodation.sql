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
-- Table structure for table `TemporaryAccomodation`
--

DROP TABLE IF EXISTS `TemporaryAccomodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TemporaryAccomodation` (
  `accommodation_id` int NOT NULL AUTO_INCREMENT,
  `rent` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `available_start` datetime DEFAULT NULL,
  `available_end` datetime DEFAULT NULL,
  `tweet_id` varchar(100) DEFAULT NULL,
  `gender` enum('Boys','Girls','Mixed') DEFAULT NULL,
  `room_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`accommodation_id`),
  UNIQUE KEY `tweet_id_UNIQUE` (`tweet_id`),
  CONSTRAINT `Tweet_Id_Key_Temporary` FOREIGN KEY (`tweet_id`) REFERENCES `Tweets` (`tweet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TemporaryAccomodation`
--

LOCK TABLES `TemporaryAccomodation` WRITE;
/*!40000 ALTER TABLE `TemporaryAccomodation` DISABLE KEYS */;
INSERT INTO `TemporaryAccomodation` VALUES (43,590,'https://t.co/j8OpWXFm7z','Jvue Apartments 75 Saint Alphonsus Street, Boston, MA','2022-12-05 00:00:00','2023-12-10 00:00:00','1591160806787678208','Mixed','Private'),(44,NULL,'https://t.co/dhpQdqTIfY','Dudley street, Roxbury','2022-10-01 00:00:00','2023-10-05 00:00:00','1591160744384626693','Mixed','Private'),(45,15,'https://t.co/UxN7hU1HXZ','Mission Main','2022-12-25 00:00:00','2022-12-27 00:00:00','1591160683441389574','Mixed','Private'),(46,25,'https://t.co/1AqW3PwqhA','JVue at LMA Apartments, 75 St. Alphonsus Street','2022-11-25 00:00:00','2022-12-01 00:00:00','1591160542999498752','Girls','Private'),(47,30,'https://t.co/hXpUFMuS6t','JVue at LMA Apartments, 75 St. Alphonsus Street','2022-12-25 00:00:00','2022-08-30 00:00:00','1591160621479124992','Mixed','Private'),(48,20,'https://t.co/DkYI50wXKW','567 Bolyston Street,Boston,MA,02118.','2022-12-01 00:00:00','2022-12-03 00:00:00','1591160475257118720','Mixed','Private');
/*!40000 ALTER TABLE `TemporaryAccomodation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-12 17:53:32
