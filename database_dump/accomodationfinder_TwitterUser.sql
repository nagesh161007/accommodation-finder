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
-- Table structure for table `TwitterUser`
--

DROP TABLE IF EXISTS `TwitterUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TwitterUser` (
  `twitter_handle` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `twitter_user_id` varchar(150) DEFAULT NULL,
  `profile_image_url` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`twitter_handle`),
  UNIQUE KEY `twitter_user_id_UNIQUE` (`twitter_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TwitterUser`
--

LOCK TABLES `TwitterUser` WRITE;
/*!40000 ALTER TABLE `TwitterUser` DISABLE KEYS */;
INSERT INTO `TwitterUser` VALUES ('16_foden','Foden 16','','2022-11-07','1589634110984699904','https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png'),('AccomodFinder','Accomodation Finder','','2022-11-03','1588329126460592130','https://pbs.twimg.com/profile_images/1588329230512816134/WkpwcpNO_normal.png'),('AKSHITHAKAMSHE4','AKSHITHA KAMSHETTY','','2022-10-20','1583209814334746624','https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png'),('ArizonaHotGuy','ArizonaHotGuy','','2022-11-11','1590943200738426884','https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png'),('funstack_dev','Nageshsairam','','2016-05-15','731760630202408960','https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png'),('sneha_g1610','Sneha G','.....','2022-11-07','1589644178148974592','https://pbs.twimg.com/profile_images/1590950959542407168/YJQE3t6z_normal.jpg');
/*!40000 ALTER TABLE `TwitterUser` ENABLE KEYS */;
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
