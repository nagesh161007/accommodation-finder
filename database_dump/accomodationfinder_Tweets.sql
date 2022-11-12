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
-- Table structure for table `Tweets`
--

DROP TABLE IF EXISTS `Tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tweets` (
  `tweet_id` varchar(150) NOT NULL,
  `tweet_text` varchar(400) NOT NULL,
  `created_at` datetime NOT NULL,
  `tweet_author_id` varchar(150) DEFAULT NULL,
  `lang` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`tweet_id`),
  UNIQUE KEY `tweet_id_UNIQUE` (`tweet_id`),
  KEY `tweet_user_foreign_key` (`tweet_author_id`),
  CONSTRAINT `tweet_user_foreign_key` FOREIGN KEY (`tweet_author_id`) REFERENCES `TwitterUser` (`twitter_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tweets`
--

LOCK TABLES `Tweets` WRITE;
/*!40000 ALTER TABLE `Tweets` DISABLE KEYS */;
INSERT INTO `Tweets` VALUES ('1590933806558883840','@AccomodFinder \nPermanent accommodation\nAvailable: 1 Jan 23 - 1 May 23\nGender: Girls\nVacancy: 1 hall and 2 bed\nRoom: Private\nAddress: JVue at LMA Apartments, 75 St. Alphonsus Street Boston, MA 02120\nLocation: https://t.co/gVLah4dOrQ\nRent: $600\nApartment: 2 Bed 1 Bath https://t.co/Fn8D17W3dI','2022-11-11 00:05:52','1589634110984699904','en'),('1590935236766228480','@AccomodFinder \nPermanent accommodation\nAvailable: 1 Jan 2023 - 1 Dec 2023\nGender: Girls\nVacancy: 1 hall and 2 bed\nRoom: Private\nAddress: The Longwood Apartments, 1575 Tremont Street, Boston, MA, 02120\nLocation: https://t.co/yvVvD1yq9I\nRent: $630\nApartment: 3 Bed 1 Bath\n#longwood https://t.co/pwM7bgI2ZL','2022-11-11 00:11:33','1589634110984699904','en'),('1590935662714585089','@AccomodFinder \nPermanent accommodation\nAvailable: 28 Oct 2023 - 28 Oct 2024\nGender: Mixed\nVacancy: 0 hall and 1 bed\nRoom: Private\nAddress: 895 Huntington Avenue\nLocation: https://t.co/D1GnkVGHCz\nRent: $499\nApartment: 2 Bed 1 Bath https://t.co/VUPCV9Zce2','2022-11-11 00:13:14','731760630202408960','en'),('1590935998913187840','@AccomodFinder \nPermanent accommodation\nAvailable: 28 Nov 2023 - 28 Nov 2024\nGender: Mixed\nVacancy: 0 hall and 1 bed\nRoom: Private\nAddress: 409 Huntington Ave, Boston, MA\nLocation: https://t.co/RvWWBw0nFL\nRent: $600\nApartment: 2 Bed 1 Bath\n#huntington https://t.co/zLamhqGjKf','2022-11-11 00:14:34','731760630202408960','en'),('1590943722984067072','@AccomodFinder \n\nPermanent accommodation\nAvailable: 28 Nov 2023 - 28 Nov 2024\nGender: Girl\nVacancy: 1 hall and 0 bed\nRoom: Private\nAddress: 18 S Huntington Avenue.\nLocation: https://t.co/BlRVcAu4MQ\nRent: $550\nApartment: 3 Bed 1 Bath https://t.co/qRvjiMqVQ3','2022-11-11 00:45:16','1590943200738426884','en'),('1590943823571849216','@AccomodFinder \n\nPermanent accommodation\nAvailable: 20 Dec 2023 - 20 Dec 2024\nGender: Girls\nVacancy: 2 hall and 0 bed\nRoom: Private\nAddress: 106 Longwood Ave., Brookline, MA\nLocation: https://t.co/Z6BNzt4V3k\nRent: $510\nApartment: 2 Bed 1 Bath','2022-11-11 00:45:40','1590943200738426884','en'),('1590946931823775747','@AccomodFinder \nPermanent accommodation\nAvailable: 28 Nov 2023 - 28 Nov 2024\nGender: Girl\nVacancy: 1 hall and 0 bed\nRoom: Private\nAddress: 18 S Huntington Avenue.\nLocation: https://t.co/Z3iE8YjC17\nRent: $550\nApartment: 3 Bed 1 Bath','2022-11-11 00:58:01','1588329126460592130','en'),('1590947063700733952','@AccomodFinder \nPermanent accommodation\nAvailable: 20 Dec 2023 - 20 Dec 2024\nGender: Girls\nVacancy: 2 hall and 0 bed\nRoom: Private\nAddress: 106 Longwood Ave., Brookline, MA\nLocation: https://t.co/z9rEvvgicp\nRent: $510\nApartment: 2 Bed 1 Bath','2022-11-11 00:58:33','1588329126460592130','en'),('1590949670238363648','@AccomodFinder \nPermanent accommodation\nAvailable: 1 Nov 2023 - 1 Nov 2024\nGender: Boys\nVacancy: 0 hall and 1 bed\nRoom: Private\nAddress: Jamaica Plain, MA\nLocation: https://t.co/PjIhYG6E0F\nRent: $800\nApartment: 3 Bed 1 Bath','2022-11-11 01:08:54','1588329126460592130','en'),('1590949862190813185','@AccomodFinder \nPermanent accommodation\nAvailable: 27 Oct 2023 - 27 Oct 2024\nGender: Girls\nVacancy: 1 hall and 0 bed\nRoom: Private\nAddress: Boylston Street,Boston, MA\nLocation: https://t.co/s1k6MLnbZT\nRent: $537 \nApartment: 3 Bed 1 Bath','2022-11-11 01:09:40','1589634110984699904','en'),('1590950049646841856','@AccomodFinder \nPermanent accommodation\nAvailable: 27 Oct 2023 - 27 Oct 2024\nGender: Girls\nVacancy: 1 hall and 2 bed\nRoom: Private\nAddress: Dudley street, Boston, MA\nLocation: https://t.co/4I9Z5CVN10\nRent: $550\nApartment: 4 Bed 2 Bath','2022-11-11 01:10:24','731760630202408960','en'),('1590951506710142979','@AccomodFinder \n\nPermanent accommodation\nAvailable: 27 Oct 2023 - 27 Oct 2024\nGender: Boys\nVacancy: 0 hall and 1 bed\nRoom: Private\nAddress: JVue at LMA Apartments, 75 St. Alphonsus Street\nLocation: https://t.co/j8OpWXncTr\nRent: $570\nApartment: 2 Bed 1 Bath','2022-11-11 01:16:12','1589644178148974592','en'),('1590951634884251648','@AccomodFinder \n\nPermanent accommodation\nAvailable: 1 Oct 2022 - 1 Oct 2023\nGender: Boys\nVacancy: 0 hall and 1 bed\nRoom: Private\nAddress: Mission Main\nLocation: https://t.co/lIX2UjqUW3\nRent: $620\nApartment: 2 Bed 1 Bath','2022-11-11 01:16:42','1589644178148974592','en'),('1590951743160217600','@AccomodFinder \n\nPermanent accommodation\nAvailable: 1 Oct 2022 - 1 Oct 2023\nGender: Boys\nVacancy: 0 hall and 1 bed\nRoom: Private\nAddress: 832 Huntington Avenue\nLocation: https://t.co/R27cAKyaHe\nRent: $550\nApartment: 3 Bed 1 Bath','2022-11-11 01:17:08','1589644178148974592','en'),('1591148522992242701','@AccomodFinder \n    Permanent accommodation\n    Available: 27 Nov 2022 - 31 May 2023\n    Gender: Girls\n    Vacancy: 1 hall and 3 bed\n    Room: Private\n    Address: Mission Main Apartments\n    Location: https://t.co/lIX2Ujqn6v\n    Rent: $675\n    Apartment: 4 Bed 2 Bath https://t.co/Vj4GLM4rym','2022-11-11 14:19:04','1589644178148974592','en'),('1591160475257118720','@AccomodFinder \n    Temporary accommodation\n    Available: 1 Dec 2022 - 3 Dec 2022\n    Gender: Mixed\n    Room: Private\n    Address: 567 Bolyston Street,Boston,MA,02118.\n    Location: https://t.co/DkYI50wXKW\n    Rent: $20','2022-11-11 15:06:34','731760630202408960','en'),('1591160542999498752','@AccomodFinder \n    Temporary accommodation\n    Available: 25 Nov  2022 - 31 Nov 2022\n    Gender: Girls\n    Room: Private\n    Address: JVue at LMA Apartments, 75 St. Alphonsus Street\n    Location: https://t.co/1AqW3PwqhA\n    Rent: $25','2022-11-11 15:06:50','731760630202408960','en'),('1591160621479124992','@AccomodFinder \n    Temporary accommodation\n    Available: 25 Dec  2022 - 30 Aug 2022\n    Gender: Mixed\n    Room: Private\n    Address: JVue at LMA Apartments, 75 St. Alphonsus Street\n    Location: https://t.co/hXpUFMuS6t\n    Rent: $30','2022-11-11 15:07:09','1588329126460592130','en'),('1591160683441389574','@AccomodFinder \n\n    Temporary accommodation\n    Available: 25 Dec  2022 - 27 Dec 2022\n    Gender: Mixed\n    Room: Private\n    Address: Mission Main\n    Location: https://t.co/UxN7hU1HXZ\n    Rent: $15','2022-11-11 15:07:23','1588329126460592130','en'),('1591160744384626693','@AccomodFinder \n\n   Temporary accommodation\n    Available: 1 Oct 2022 - 5 Oct 2023\n    Gender: Mixed\n    Room: Private\n    Address: Dudley street, Roxbury\n    Location: https://t.co/dhpQdqTIfY','2022-11-11 15:07:38','1589644178148974592','en'),('1591160806787678208','@AccomodFinder \n\n    Temporary accommodation\n    Available: 5 Dec 2022 - 10 Dec 2023\n    Gender: Mixed\n    Room: Private\n    Address: Jvue Apartments 75 Saint Alphonsus Street, Boston, MA\n    Location: https://t.co/j8OpWXFm7z\n    Rent: $590','2022-11-11 15:07:53','1589644178148974592','en'),('1591233533745385472','Permanent accommodation\nAvailable: 31 August 2023 - 1 Dec 2023\nGender: Girls\nVacancy: 0 hall and 1 bed\nRoom: Private\nAddress: 1175 Boylston Street\nLocation: https://t.co/lbGghTOBdX\nRent: $575\nApartment: 1 Bed 1 Bath\n \n@AccomodFinder','2022-11-11 19:56:52','1583209814334746624','en'),('1591233846120677376','Permanent accommodation\n    Available: 1 Dec 2022 - 31 Dec 2023\n    Gender: Boys\n    Vacancy: 1 hall and 1 bed\n    Room: Private\n    Address: Brookline, Boston, MA\n    Location: https://t.co/lbGghTxybX\n    Rent: $650\n    Apartment: 3 Bed 1 Bath\n@AccomodFinder','2022-11-11 19:58:07','1583209814334746624','en'),('1591234071266725888','Permanent accommodation\n    Available: 27 Nov 2022 - 31 May 2023\n    Gender: Girls\n    Vacancy: 1 hall and 3 bed\n    Room: Private\n    Address: Mission Main Apartments\n    Location: https://t.co/ylACbBNv7P\n    Rent: $675\n    Apartment: 4 Bed 2 Bath\n@AccomodFinder','2022-11-11 19:59:00','1583209814334746624','en');
/*!40000 ALTER TABLE `Tweets` ENABLE KEYS */;
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
