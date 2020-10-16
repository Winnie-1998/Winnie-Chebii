-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: talentcentre3
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_user`
--

DROP TABLE IF EXISTS `about_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `year_started` year(4) DEFAULT NULL,
  `awards` varchar(255) DEFAULT NULL,
  `phone_no` int(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `about_user_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_user`
--

LOCK TABLES `about_user` WRITE;
/*!40000 ALTER TABLE `about_user` DISABLE KEYS */;
INSERT INTO `about_user` VALUES (1,NULL,NULL,NULL,NULL,NULL),(2,NULL,2019,'Best Performer',727641393,'xyz@gmail.com'),(3,NULL,2019,'1',704250579,'xyz@gmail.com'),(4,NULL,2019,'Best Performer',704250579,'xyz@gmail.com'),(5,NULL,2010,'BEST DANCER',715233021,'lyn001@gmail.com'),(6,NULL,2019,'1',704250579,'xyz@gmail.com'),(7,NULL,2013,'BEST DANCER',727641393,'xyz@gmail.com'),(8,NULL,2013,'BEST DANCER',727641393,'xyz@gmail.com'),(9,NULL,2013,'BEST DANCER',727641393,'xyz@gmail.com'),(10,NULL,2019,'Best Performer',704250579,'xyz@gmail.com'),(11,NULL,2010,'1',704250579,'xyz@gmail.com'),(12,NULL,2019,'Best Performer',704250579,'xyz@gmail.com'),(13,NULL,2010,'1',704250579,'xyz@gmail.com'),(14,NULL,2019,'1',727641393,'xyz@gmail.com'),(15,NULL,2019,'1',704250579,'xyz@gmail.com');
/*!40000 ALTER TABLE `about_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agric_extension`
--

DROP TABLE IF EXISTS `agric_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agric_extension` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `agric_extension_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agric_extension`
--

LOCK TABLES `agric_extension` WRITE;
/*!40000 ALTER TABLE `agric_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `agric_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `art_design`
--

DROP TABLE IF EXISTS `art_design`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `art_design` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `art_design_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art_design`
--

LOCK TABLES `art_design` WRITE;
/*!40000 ALTER TABLE `art_design` DISABLE KEYS */;
/*!40000 ALTER TABLE `art_design` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `athletics`
--

DROP TABLE IF EXISTS `athletics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `athletics` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `field_event` varchar(100) DEFAULT NULL,
  `others` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `athletics_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletics`
--

LOCK TABLES `athletics` WRITE;
/*!40000 ALTER TABLE `athletics` DISABLE KEYS */;
/*!40000 ALTER TABLE `athletics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carpentry`
--

DROP TABLE IF EXISTS `carpentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carpentry` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `carpentry_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carpentry`
--

LOCK TABLES `carpentry` WRITE;
/*!40000 ALTER TABLE `carpentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `carpentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coaching`
--

DROP TABLE IF EXISTS `coaching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coaching` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `descripion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `coaching_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaching`
--

LOCK TABLES `coaching` WRITE;
/*!40000 ALTER TABLE `coaching` DISABLE KEYS */;
/*!40000 ALTER TABLE `coaching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `music_type` varchar(10) DEFAULT NULL,
  `others` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `music_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_skills`
--

DROP TABLE IF EXISTS `other_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_skills` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `talent_title` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `other_skills_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_skills`
--

LOCK TABLES `other_skills` WRITE;
/*!40000 ALTER TABLE `other_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_talents`
--

DROP TABLE IF EXISTS `other_talents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_talents` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `talent_title` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `other_talents_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_talents`
--

LOCK TABLES `other_talents` WRITE;
/*!40000 ALTER TABLE `other_talents` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_talents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physical_address`
--

DROP TABLE IF EXISTS `physical_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `physical_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `county` varchar(25) DEFAULT NULL,
  `subcounty` varchar(25) DEFAULT NULL,
  `current_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `physical_address_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physical_address`
--

LOCK TABLES `physical_address` WRITE;
/*!40000 ALTER TABLE `physical_address` DISABLE KEYS */;
INSERT INTO `physical_address` VALUES (1,NULL,'Kenya','NAIROBI','NAIROBI','NAIROBI'),(2,NULL,'Kenya','NAIROBI','NAIROBI','NAIROBI'),(3,NULL,'Kenya','NAIROBI','NAIROBI','NAIROBI'),(4,NULL,'Kenya','NYERI','KIENI','KIMATHI'),(5,NULL,'Kenya','NAIROBI','NAIROBI','KIMATHI'),(6,NULL,'Kenya','NAIROBI','NAIROBI','NAIROBI'),(7,NULL,'Kenya','NAIROBI','NAIROBI','KIMATHI'),(8,NULL,'Kenya','NAIROBI','NAIROBI','NAIROBI'),(9,NULL,'Kenya','NAIROBI','NAIROBI','KIMATHI'),(10,NULL,'Kenya','NAIROBI','NAIROBI','KIMATHI'),(11,NULL,'Kenya','NAIROBI','NAIROBI','KIMATHI'),(12,NULL,'Kenya','NAIROBI','NAIROBI','NAIROBI'),(13,NULL,'Kenya','NAIROBI','NAIROBI','NAIROBI'),(14,NULL,'Kenya','NAIROBI','NAIROBI','NAIROBI'),(15,NULL,'kimathi','NAIROBI','NAIROBI','NAIROBI'),(16,NULL,'Kenya','NAIROBI','NAIROBI','NAIROBI'),(17,NULL,'Kenya','NAIROBI','NAIROBI','NAIROBI');
/*!40000 ALTER TABLE `physical_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referees`
--

DROP TABLE IF EXISTS `referees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referees` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `f_name` varchar(25) DEFAULT NULL,
  `l_name` varchar(25) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone_no` int(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `referees_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referees`
--

LOCK TABLES `referees` WRITE;
/*!40000 ALTER TABLE `referees` DISABLE KEYS */;
INSERT INTO `referees` VALUES (1,NULL,'Chris','Bosi','chief','1234',727641393,'xyz@gmail.com'),(2,NULL,'Chris','Bosi','chief','1234',727641393,'xyz@gmail.com'),(3,NULL,'Chris','Bosi','chief','JOARK HOUSE NUMBER 20, SEASONS ROAD, KASARANI.',704250579,'xyz@gmail.com'),(4,NULL,'Enoc','Mimi','Lecturer','123',739998731,'xyz@gmail.com'),(5,NULL,'Enoc','Koech','student','1234',715233021,'lyn001@gmail.com'),(6,NULL,'Enoc','Mimi','student','JOARK HOUSE NUMBER 20, SEASONS ROAD, KASARANI.',704250579,'xyz@gmail.com'),(7,NULL,'TEST1','TEST1','tester','qwerty',7000000,'xyz@gmail.com'),(8,NULL,'TEST1','TEST1','tester','qwerty',7000000,'xyz@gmail.com'),(9,NULL,'TEST1','TEST1','tester','qwerty',7000000,'xyz@gmail.com'),(10,NULL,'Enoc','Bosi','chief','JOARK HOUSE NUMBER 20, SEASONS ROAD, KASARANI.',704250579,'xyz@gmail.com'),(11,NULL,'Chris','Bosi','tester','JOARK HOUSE NUMBER 20, SEASONS ROAD, KASARANI.',704250579,'xyz@gmail.com'),(12,NULL,'Chris','Mimi','chief','JOARK HOUSE NUMBER 20, SEASONS ROAD, KASARANI.',704250579,'xyz@gmail.com'),(13,NULL,'Enoc','kOech','Lecturer','123',727641393,'Brian2@gmail.com'),(14,NULL,'Chris','Bosi','chief','JOARK HOUSE NUMBER 20, SEASONS ROAD, KASARANI.',704250579,'xyz@gmail.com'),(15,NULL,'Chris','Bosi','Lecturer','JOARK HOUSE NUMBER 20, SEASONS ROAD, KASARANI.',704250579,'xyz@gmail.com');
/*!40000 ALTER TABLE `referees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sports` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` int(30) DEFAULT NULL,
  `football` varchar(30) DEFAULT NULL,
  `netball` varchar(30) DEFAULT NULL,
  `volleyball` varchar(30) DEFAULT NULL,
  `others` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  CONSTRAINT `sports_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user_details` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,1,'football','netball','volleyball','Commentator'),(2,2,'football','netball','volleyball','Commentator');
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `uuid` int(30) NOT NULL AUTO_INCREMENT,
  `F_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `gender` char(7) DEFAULT NULL,
  `year_of_birth` year(4) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'Jimmy','koi','1234','M',2019),(2,'Wanyama','Nyamu','1234','M',2018),(3,'Lucas','Njema','1234','M',2018),(4,'Baraka','bossi','1234','M',2010),(5,'Blues','bales','1234','f',2000),(6,'Mless','brown','1234','F',2011),(7,'code','messi','1234','F',2018),(8,'Good','Times','1234','F',2016),(9,'Great','Minds','1234','M',2017),(10,'Fancie','Cherono','1234','F',2018),(11,'Enock','Koech','1234','M',1999),(12,'Enock','Koech','1234','M',1999),(13,'Enock','Koech','1234','M',1999),(14,'Enock','Koech','234','M',1999),(15,'Enock','Koech','1234','F',1999),(16,'Enock','Koech','1234','M',1999),(17,'Dennis','njeru','1234','M',2000),(18,'Lyneth','Koech','lyn1234','F',1999),(19,'Lyneth','njeru','12345','F',2019),(20,'Enock','Koech','12345','M',2018),(21,'Enock','Koech','12345','M',2018),(22,'Enock','Koech','12345','M',2018),(23,'Enock','Koech','1234','F',2019),(24,'allan','james','1234567','M',2018),(25,'Enock','Koech','23456','M',2000),(26,'BRIAN','Onyango','1234','M',2019),(27,'Enock','Koech','1234','KIPROP',2019),(28,'Enock','Koech','1234','M',2000);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `fullname` varchar(20) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_uuid`
--

DROP TABLE IF EXISTS `view_uuid`;
/*!50001 DROP VIEW IF EXISTS `view_uuid`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_uuid` (
  `max(uuid+1)` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_uuid`
--

/*!50001 DROP TABLE IF EXISTS `view_uuid`*/;
/*!50001 DROP VIEW IF EXISTS `view_uuid`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_uuid` AS select max((`user_details`.`uuid` + 1)) AS `max(uuid+1)` from `user_details` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-28  2:18:34
