-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: snapsell
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `offer` float NOT NULL,
  `fk_listing_id` int NOT NULL,
  `fk_offeror_id` int NOT NULL,
  `status` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_to_link_to_listings_idx` (`fk_listing_id`),
  KEY `fk_to_link_to_users_idx` (`fk_offeror_id`),
  CONSTRAINT `fk_to_link_to_listing2` FOREIGN KEY (`fk_listing_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_to_link_to_users2` FOREIGN KEY (`fk_offeror_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (28,550,20,13,'pending','2020-02-03 15:25:33'),(31,40,23,9,'rejected','2020-02-04 17:32:28'),(32,530,20,9,'accepted','2020-02-04 17:42:00'),(33,3450,116,11,'rejected','2020-02-09 13:08:44'),(34,500,117,11,'accepted','2020-02-09 13:09:05'),(35,790,127,9,'accepted','2020-02-09 13:21:35'),(36,600,107,11,'accepted','2020-02-09 13:22:10'),(37,540,117,11,'accepted','2020-02-09 13:22:53'),(38,1000,120,9,'pending','2020-02-09 15:19:57'),(39,1300,120,9,'pending','2020-02-09 15:20:45'),(40,1400,120,9,'pending','2020-02-09 15:20:51'),(41,120,126,9,'pending','2021-01-07 08:22:19'),(42,122,135,9,'accepted','2023-02-01 06:46:26'),(43,122,143,9,'rejected','2023-02-04 04:40:24');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-04 20:43:53
