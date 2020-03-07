-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: web0812
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIO` varchar(256) NOT NULL,
  `EMAIL` varchar(256) NOT NULL,
  `PHONE` varchar(16) DEFAULT NULL,
  `MESSAGE` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'Александр Петрухин','sprf8611@gmail.com','1232413123231','1312312321312вфв21увцы'),(5,'123213','12321ds@dasdad','213232131','-1'),(6,'123213','12321ds@dasdad','213232131','asdsadadasd'),(7,'123213','12321ds@dasdad','213232131','-1'),(8,'123213','12321ds@dasdad','213232131','asdsadadasd'),(9,'123213','12321ds@dasdad','213232131','-1'),(10,'123213','12321ds@dasdad','213232131','asdsadadasd');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEXT` text NOT NULL,
  `FROM` int(11) NOT NULL,
  `TO` int(11) NOT NULL,
  `DATETIME` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'asdsadd',1,2,'2020-02-16 08:47:20'),(2,'adsadasdd',1,2,'2020-02-16 09:21:04'),(3,'asdsad',2,1,'2020-02-16 10:03:01'),(4,'asdasd',2,1,'2020-02-16 10:03:03'),(5,'asdsad',2,1,'2020-02-16 10:03:04'),(6,'adasd',1,2,'2020-02-16 10:03:24'),(7,'dfsfd',1,2,'2020-02-22 09:05:36'),(8,'sadsd',2,1,'2020-02-22 09:05:40'),(9,'test 1\n',2,1,'2020-02-22 09:08:32'),(10,'ssdfdsfsf',2,1,'2020-02-22 09:16:47'),(11,'safsada',2,1,'2020-02-22 09:22:00'),(12,'adasd',2,1,'2020-02-22 09:22:02'),(13,'test2',2,1,'2020-02-22 09:26:19'),(14,'test3',2,1,'2020-02-22 09:27:16'),(15,'test4',2,1,'2020-02-22 09:39:28'),(16,'test4',2,1,'2020-02-22 09:40:32'),(17,'hi!',2,1,'2020-02-22 09:49:15'),(18,'hi2!',2,1,'2020-02-22 09:55:08'),(19,'hi3!',2,1,'2020-02-22 10:01:47'),(20,'tivirp',1,2,'2020-02-22 10:06:07'),(21,'hi man!',1,2,'2020-02-22 10:17:07'),(22,'hi!!',2,1,'2020-02-22 10:17:38'),(23,'133',1,2,'2020-02-22 10:21:29');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(256) NOT NULL,
  `FIO` varchar(256) NOT NULL,
  `REACTION` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'test@test.ru','Ivan Ivanov','1'),(2,'test@test.ru','Ivan Ivan','4'),(3,'test@test.ru','Ivan Ivan','4'),(4,'asdasd','dfdsf',NULL);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TOKEN` varchar(256) NOT NULL,
  `LOGIN` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,'601f1889667efaebb33b8c12572835da3f027f78',1),(2,'994b579fe9db3e4b8b4642b13f126b407c1d11e2',2);
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(256) NOT NULL,
  `PASSWORD` varchar(256) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'123','123',1),(2,'234','234',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-22 18:28:13
