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
-- Table structure for table `PermanentAccommodation`
--

DROP TABLE IF EXISTS `PermanentAccommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PermanentAccommodation` (
  `accommodationId` int NOT NULL AUTO_INCREMENT,
  `rent` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `bed` int DEFAULT NULL,
  `room_type` varchar(45) DEFAULT NULL,
  `bath` int DEFAULT NULL,
  `tweet_id` varchar(150) NOT NULL,
  `gender` enum('Boys','Girls','Mixed') DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `available_start` datetime DEFAULT NULL,
  `available_end` datetime DEFAULT NULL,
  `hall` int DEFAULT NULL,
  `bedroom` int DEFAULT NULL,
  PRIMARY KEY (`accommodationId`),
  KEY `Tweet_Id_Key` (`tweet_id`),
  CONSTRAINT `Tweet_Id_Key` FOREIGN KEY (`tweet_id`) REFERENCES `Tweets` (`tweet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermanentAccommodation`
--

LOCK TABLES `PermanentAccommodation` WRITE;
/*!40000 ALTER TABLE `PermanentAccommodation` DISABLE KEYS */;
INSERT INTO `PermanentAccommodation` VALUES (239,675,'https://t.co/ylACbBNv7P',4,'Private',2,'1591234071266725888','Girls','Mission Main Apartments','2022-11-27 00:00:00','2023-05-31 00:00:00',1,3),(240,650,'https://t.co/lbGghTxybX',3,'Private',1,'1591233846120677376','Boys','Brookline, Boston, MA','2022-12-01 00:00:00','2023-12-31 00:00:00',1,1),(241,575,'https://t.co/lbGghTOBdX',1,'Private',1,'1591233533745385472','Girls','1175 Boylston Street','2023-08-31 00:00:00','2023-12-01 00:00:00',0,1),(242,550,'https://t.co/R27cAKyaHe',3,'Private',1,'1590951743160217600','Boys','832 Huntington Avenue','2022-10-01 00:00:00','2023-10-01 00:00:00',0,1),(243,675,'https://t.co/lIX2Ujqn6v',4,'Private',2,'1591148522992242701','Girls','Mission Main Apartments','2022-11-27 00:00:00','2023-05-31 00:00:00',1,3),(244,620,'https://t.co/lIX2UjqUW3',2,'Private',1,'1590951634884251648','Boys','Mission Main','2022-10-01 00:00:00','2023-10-01 00:00:00',0,1),(245,570,'https://t.co/j8OpWXncTr',2,'Private',1,'1590951506710142979','Boys','JVue at LMA Apartments, 75 St. Alphonsus Street','2023-10-27 00:00:00','2024-10-27 00:00:00',0,1),(246,550,'https://t.co/4I9Z5CVN10',4,'Private',2,'1590950049646841856','Girls','Dudley street, Boston, MA','2023-10-27 00:00:00','2024-10-27 00:00:00',1,2),(247,537,'https://t.co/s1k6MLnbZT',3,'Private',1,'1590949862190813185','Girls','Boylston Street,Boston, MA','2023-10-27 00:00:00','2024-10-27 00:00:00',1,0),(248,800,'https://t.co/PjIhYG6E0F',3,'Private',1,'1590949670238363648','Boys','Jamaica Plain, MA','2023-11-01 00:00:00','2024-11-01 00:00:00',0,1),(249,510,'https://t.co/z9rEvvgicp',2,'Private',1,'1590947063700733952','Girls','106 Longwood Ave., Brookline, MA','2023-12-20 00:00:00','2024-12-20 00:00:00',2,0),(250,550,'https://t.co/Z3iE8YjC17',3,'Private',1,'1590946931823775747','','18 S Huntington Avenue.','2023-11-28 00:00:00','2024-11-28 00:00:00',1,0),(251,510,'https://t.co/Z6BNzt4V3k',2,'Private',1,'1590943823571849216','Girls','106 Longwood Ave., Brookline, MA','2023-12-20 00:00:00','2024-12-20 00:00:00',2,0),(252,550,'https://t.co/BlRVcAu4MQ',3,'Private',1,'1590943722984067072','','18 S Huntington Avenue.','2023-11-28 00:00:00','2024-11-28 00:00:00',1,0),(253,499,'https://t.co/D1GnkVGHCz',2,'Private',1,'1590935662714585089','Mixed','895 Huntington Avenue','2023-10-28 00:00:00','2024-10-28 00:00:00',0,1),(254,600,'https://t.co/RvWWBw0nFL',2,'Private',1,'1590935998913187840','Mixed','409 Huntington Ave, Boston, MA','2023-11-28 00:00:00','2024-11-28 00:00:00',0,1),(255,630,'https://t.co/yvVvD1yq9I',3,'Private',1,'1590935236766228480','Girls','The Longwood Apartments, 1575 Tremont Street, Boston, MA, 02120','2023-01-01 00:00:00','2023-12-01 00:00:00',1,2),(256,600,'https://t.co/gVLah4dOrQ',2,'Private',1,'1590933806558883840','Girls','JVue at LMA Apartments, 75 St. Alphonsus Street Boston, MA 02120','2023-01-01 00:00:00','2023-05-01 00:00:00',1,2);
/*!40000 ALTER TABLE `PermanentAccommodation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-12 14:16:11
