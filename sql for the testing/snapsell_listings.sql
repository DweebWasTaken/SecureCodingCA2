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
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `category` varchar(70) NOT NULL,
  `description` varchar(120) NOT NULL,
  `price` float NOT NULL,
  `fk_poster_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_to_link_to_users_idx` (`fk_poster_id`),
  CONSTRAINT `fk_to_link_to_users` FOREIGN KEY (`fk_poster_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (20,'AF1 Paranoise UK8','Shoes','G-Dragon AF1 Paranoise from NIKE SG BNDS UK8',580,10,'2020-01-29 06:40:06'),(21,'Off White Nike Air Max 90 Black','Shoes','Off White Nike Air Max 90 Black BNDS from Nike EU',880,10,'2020-01-29 06:41:10'),(22,'Abercrombie & Fitch','Clothing','A&F Hoodie',118,13,'2020-01-29 16:26:55'),(23,'Abercrombie & Fitch shirt','Clothing','A&F Tiger shirt',50,13,'2020-01-29 16:27:14'),(106,'Cookies \"','Food$','Cookies for sale',4,9,'2020-02-09 09:48:33'),(107,'Supreme 20th Anniversary Box Logo T-Shirt','Clothing','Supreme 20th Anniversary Box Logo T-Shirt<br>Quite Rare<br>BNDS',610,9,'2020-02-09 09:49:39'),(108,'Yeezy Boost !@#$%^&*   ><','Shoes','Yeezy boost lundamarks BNDS<br>Size: UK9',450,9,'2020-02-09 09:50:20'),(116,'Air Jordan 1 Dior','Shoes','Pre-Order ',3500,9,'2020-02-09 11:41:38'),(117,'Supreme San Francisco Box Logo','Clothing','Supreme San Francisco Box Logo<br>BNDS<br>Size M',610,9,'2020-02-09 11:46:06'),(118,'Off White Marianna Hoodie','Clothing','Off White Marianna Hoodie<br>BNDS<br>Size L',880,9,'2020-02-09 11:47:10'),(119,'BAPE X MCM Hoodie','Clothing','BAPE X MCM Hoodie<br>BNDS<br>Size S',720,9,'2020-02-09 11:48:18'),(120,'Air Jordan 1 \'85','Shoes','Air Jordan 1 \'85<br>BNDS<br>Size: US 9',1100,10,'2020-02-09 12:36:32'),(121,'Travis Scott Air Jordan 1 Low','Shoes','Travis Scott Air Jordan 1 Low<br>BNDS<br>UK 11',750,10,'2020-02-09 12:39:45'),(122,'Off White Air Max 90 Black','Shoes','Off White Air Max 90 Black<br>BNDS<br>SIZE: us 10',900,10,'2020-02-09 12:41:23'),(123,'League of Legends Garena Shells','Games','Selling 10k GS for $140',140,10,'2020-02-09 12:42:09'),(124,'League of Legends Boost','Games','League of Legends boost<br>$15 for promos $8 per division',8,10,'2020-02-09 12:43:18'),(125,'Supreme Grey BOGO Crewneck','Clothing','Supreme Grey BOGO Crewneck<br>BNDS SIZE S',900,11,'2020-02-09 13:04:52'),(126,'Supreme Red Badana BOGO','Clothing','Supreme Red Badana BOGO<br>SIZE M',820,11,'2020-02-09 13:07:05'),(127,'Supreme Black Badana BOGO','Clothing','Supreme Black Badana BOGO<br>Size A',820,11,'2020-02-09 13:07:30'),(129,'aa','shoes','aaa',10,9,'2021-01-07 06:06:29'),(130,'abc','sql','abc',10,9,'2021-01-07 08:21:23'),(131,'virus','virus','gg',123,14,'2023-02-01 06:42:18'),(132,'virus','virus','gg',123,14,'2023-02-01 06:42:44'),(133,'virus','virus','gg',123,14,'2023-02-01 06:42:44'),(134,'virus','virus','gg',123,14,'2023-02-01 06:43:08'),(135,'virus','virus','gg',123,14,'2023-02-01 06:43:08'),(136,'virus','virus','gg',123,14,'2023-02-01 06:43:08'),(137,'glow','glow','hi',2,14,'2023-02-01 06:55:54'),(138,'glow','glow','hi',2,14,'2023-02-01 06:56:29'),(139,'glow','fish','ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',7,14,'2023-02-01 06:58:59'),(140,'virus (click me)','virus (click me)','virus (click me)',123,13,'2023-02-02 13:20:46'),(141,'glow green','glowd','hi',44,10,'2023-02-02 13:25:31'),(142,'virus2 (click me)','virus2 (click me)','virus2 (click me)',4,10,'2023-02-02 13:26:07'),(143,'<b>glow</b> %*','<u>deez</u>','<u>deez</u>',3,14,'2023-02-03 09:40:22');
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-04 20:43:52
