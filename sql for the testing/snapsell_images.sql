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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(130) NOT NULL,
  `fk_product_id` int NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_link_to_product_idx` (`fk_product_id`),
  CONSTRAINT `fk_link_to_product` FOREIGN KEY (`fk_product_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (36,'50-1581241713214.jpg',106,'2020-02-09 09:48:33'),(37,'Supreme-20th-Anniversary-Box-Logo-Tee-White-1581241779499.jpg',107,'2020-02-09 09:49:39'),(38,'yeezy-boost-350-v2-antlia-lundmark-synth-release-date-price-01-1581241820941.jpg',108,'2020-02-09 09:50:20'),(42,'air-jordan-1-dior-release-info-4-1581248498871.jpg',116,'2020-02-09 11:41:38'),(43,'supreme-san-francisco-box-logo-tee-black-1581248766336.jfif',117,'2020-02-09 11:46:06'),(44,'off-white-marianna-1581248830797.jfif',118,'2020-02-09 11:47:10'),(45,'BAPE-x-MCM-Camo-Zip-Hoodie-Brown-1581248898688.jpg',119,'2020-02-09 11:48:18'),(46,'jordan-1-high-\'85-1581251792615.jpg',120,'2020-02-09 12:36:32'),(47,'Air-Jordan-1-Retro-Low-Travis-Scott-Product-1581251985871.jpg',121,'2020-02-09 12:39:45'),(48,'OffWhiteXAirMax90-1581252083619.jfif',122,'2020-02-09 12:41:23'),(49,'vlad-1581252129491.png',123,'2020-02-09 12:42:09'),(50,'vlads+-1581252198429.png',124,'2020-02-09 12:43:18'),(51,'crewneckashgrey-1581253492700.jfif',125,'2020-02-09 13:04:52'),(52,'redbadanasupreme-1581253625505.jpg',126,'2020-02-09 13:07:05'),(53,'blackbadanasupreme-1581253650812.jfif',127,'2020-02-09 13:07:30'),(55,'GitHub-1609999590009.appref-ms',129,'2021-01-07 06:06:30'),(56,'snapsell-1610007683525.sql',130,'2021-01-07 08:21:23'),(57,'Discord Auto Typer-1675233788721.exe',135,'2023-02-01 06:43:08'),(58,'Orange Glow Block-1675234739812.png',139,'2023-02-01 06:58:59'),(59,'AutoClicker-1675344046410.exe',140,'2023-02-02 13:20:46'),(60,'Green Glow Block-1675344331228.png',141,'2023-02-02 13:25:31'),(61,'anon-1675417222707.jpg',143,'2023-02-03 09:40:22');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
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
