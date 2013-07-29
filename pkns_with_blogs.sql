-- MySQL dump 10.13  Distrib 5.5.27, for osx10.8 (i386)
--
-- Host: localhost    Database: pkns_development
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressable_id` int(11) DEFAULT NULL,
  `addressable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'line 1','line 2','34345',1,'BusinessProfile','2013-04-08 18:48:18','2013-04-17 15:05:38',153,'0126899969','0355246246'),(2,'','','',1,'User','2013-04-08 18:48:18','2013-04-17 15:05:38',173,'',''),(3,'','','',2,'BusinessProfile','2013-04-08 18:53:18','2013-04-08 18:53:50',6,NULL,NULL),(4,'','','',2,'User','2013-04-08 18:53:18','2013-04-08 18:53:38',24,NULL,NULL),(5,'','','',3,'BusinessProfile','2013-04-09 15:02:33','2013-04-09 15:02:34',1,NULL,NULL),(6,'','','',3,'User','2013-04-09 15:02:34','2013-04-09 15:02:34',1,NULL,NULL),(7,'','','',4,'BusinessProfile','2013-04-10 11:18:02','2013-04-10 11:18:02',1,NULL,NULL),(8,'','','',4,'User','2013-04-10 11:18:02','2013-04-10 11:18:02',1,NULL,NULL),(11,'','','',6,'BusinessProfile','2013-05-14 11:19:32','2013-05-14 11:19:32',156,NULL,NULL),(12,'asfasdf','123123','123132',20,'User','2013-05-14 11:19:32','2013-06-03 13:50:09',156,NULL,NULL),(13,'','','',7,'BusinessProfile','2013-05-14 11:57:59','2013-05-14 11:57:59',156,NULL,NULL),(15,'','','',8,'BusinessProfile','2013-05-21 13:45:00','2013-05-21 13:45:01',156,NULL,NULL),(16,'','','',44,'User','2013-05-21 13:45:00','2013-05-21 13:45:01',156,NULL,NULL),(17,'','','',9,'BusinessProfile','2013-05-21 16:48:17','2013-05-21 16:48:17',156,NULL,NULL),(18,'','','',46,'User','2013-05-21 16:48:17','2013-05-21 16:48:17',156,NULL,NULL),(19,'','','',10,'BusinessProfile','2013-05-22 07:46:37','2013-05-22 07:46:37',156,NULL,NULL),(20,'','','',35,'User','2013-05-22 07:46:37','2013-05-22 07:46:37',156,NULL,NULL),(21,'','','',11,'BusinessProfile','2013-05-27 13:09:45','2013-05-27 13:09:46',156,NULL,NULL),(22,'','','',55,'User','2013-05-27 13:09:45','2013-05-27 13:09:45',156,NULL,NULL),(23,'','','',12,'BusinessProfile','2013-05-27 13:12:08','2013-05-27 13:12:08',156,NULL,NULL),(24,'some place','anotehr','2342342',54,'User','2013-05-27 13:12:08','2013-05-27 13:13:19',156,NULL,NULL),(25,NULL,NULL,NULL,NULL,NULL,'2013-05-27 15:09:28','2013-05-27 15:09:28',NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL,NULL,'2013-05-27 15:10:46','2013-05-27 15:10:46',NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL,NULL,'2013-05-27 15:12:43','2013-05-27 15:12:43',NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL,NULL,'2013-05-27 15:13:20','2013-05-27 15:13:20',NULL,NULL,NULL),(29,NULL,NULL,NULL,NULL,NULL,'2013-05-27 15:14:48','2013-05-27 15:14:48',NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL,NULL,'2013-05-27 15:16:02','2013-05-27 15:16:02',NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL,NULL,'2013-05-27 15:16:52','2013-05-27 15:16:52',NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL,NULL,'2013-05-27 15:18:21','2013-05-27 15:18:21',NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL,NULL,'2013-05-27 15:18:28','2013-05-27 15:18:28',NULL,NULL,NULL),(35,'','','',48,'User','2013-05-27 15:31:57','2013-05-27 15:31:57',NULL,NULL,NULL),(45,'whatever','hetam','12314',26,'User','2013-05-28 02:16:01','2013-07-09 08:16:32',222,NULL,NULL),(46,'whatever','line ','123123',18,'User','2013-06-03 13:43:46','2013-06-03 13:43:46',NULL,NULL,NULL),(47,'asdfasdf','asdfasdf','12312',92,'User','2013-06-04 14:14:16','2013-06-04 14:15:00',NULL,NULL,NULL),(48,'','','',36,'User','2013-06-12 12:18:36','2013-06-12 12:18:36',NULL,NULL,NULL),(49,'','','',94,'User','2013-06-30 18:06:23','2013-06-30 18:06:23',NULL,NULL,NULL),(50,'','','',100,'User','2013-06-30 19:09:14','2013-06-30 19:09:14',NULL,NULL,NULL),(51,'alamat','kau','12312',23,'User','2013-07-02 18:21:24','2013-07-02 18:31:47',96,NULL,NULL),(52,'','','',30,'User','2013-07-03 04:45:37','2013-07-03 04:45:37',NULL,NULL,NULL),(53,'','','',31,'User','2013-07-03 08:23:38','2013-07-03 08:23:38',NULL,NULL,NULL),(54,'','','',99,'User','2013-07-09 15:03:55','2013-07-09 15:03:55',NULL,NULL,NULL),(55,'','','',113,'User','2013-07-14 16:13:12','2013-07-14 16:13:12',NULL,NULL,NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advert_transactions`
--

DROP TABLE IF EXISTS `advert_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advert_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advert_action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advert_transactions`
--

LOCK TABLES `advert_transactions` WRITE;
/*!40000 ALTER TABLE `advert_transactions` DISABLE KEYS */;
INSERT INTO `advert_transactions` VALUES (1,17,'Gile Iklan','request','2013-06-10 10:59:32','2013-06-10 10:59:32'),(2,19,'some iklan','request','2013-06-10 11:21:57','2013-06-10 11:21:57'),(3,22,'oagi ','request','2013-06-10 11:43:19','2013-06-10 11:43:19'),(4,23,'Gile Iklan','request','2013-06-10 11:45:42','2013-06-10 11:45:42'),(5,23,'Gile Iklan','request','2013-06-10 11:49:57','2013-06-10 11:49:57'),(6,24,'Gile Iklan','request','2013-06-10 11:54:52','2013-06-10 11:54:52'),(7,24,'Gile Iklan','reject','2013-06-10 11:59:46','2013-06-10 11:59:46'),(8,24,'Gile Iklan','request','2013-06-10 12:00:10','2013-06-10 12:00:10'),(9,24,'Gile Iklan','accept','2013-06-10 12:00:21','2013-06-10 12:00:21'),(10,19,'some iklan','approve','2013-06-12 17:41:23','2013-06-12 17:41:23'),(11,17,'Gile Iklan','approve','2013-06-12 17:42:52','2013-06-12 17:42:52'),(12,22,'oagi ','reject','2013-06-16 06:13:54','2013-06-16 06:13:54'),(13,28,'whatever the shit','request','2013-06-16 06:15:25','2013-06-16 06:15:25'),(14,28,'whatever the shit','reject','2013-06-16 06:17:42','2013-06-16 06:17:42'),(15,28,'whatever the shit','request','2013-06-16 06:17:49','2013-06-16 06:17:49'),(16,28,'whatever the shit','reject','2013-06-16 06:17:59','2013-06-16 06:17:59'),(17,28,'whatever the shit','request','2013-06-16 06:18:05','2013-06-16 06:18:05'),(18,28,'whatever the shit','reject','2013-06-16 06:18:27','2013-06-16 06:18:27'),(19,28,'whatever the shit','request','2013-06-16 06:18:33','2013-06-16 06:18:33'),(20,28,'whatever the shit','reject','2013-06-16 06:18:40','2013-06-16 06:18:40'),(21,28,'whatever the shit','request','2013-06-16 06:18:47','2013-06-16 06:18:47'),(22,28,'whatever the shit','approve','2013-06-16 06:19:34','2013-06-16 06:19:34'),(23,43,'Memohon','request','2013-07-10 16:35:15','2013-07-10 16:35:15'),(24,43,'Memohon','approve','2013-07-10 16:52:18','2013-07-10 16:52:18'),(25,44,'A new course','request','2013-07-10 16:58:41','2013-07-10 16:58:41'),(26,44,'A new course','reject','2013-07-10 16:59:52','2013-07-10 16:59:52'),(27,44,'A new course','request','2013-07-10 17:01:04','2013-07-10 17:01:04'),(28,44,'A new course','approve','2013-07-10 17:01:19','2013-07-10 17:01:19'),(29,54,'Gile Iklan','request','2013-07-11 03:59:44','2013-07-11 03:59:44'),(30,53,'Paling baser','request','2013-07-11 04:01:38','2013-07-11 04:01:38'),(31,54,'Gile Iklan','approve','2013-07-11 04:01:47','2013-07-11 04:01:47'),(32,55,'A new course','request','2013-07-11 17:49:44','2013-07-11 17:49:44');
/*!40000 ALTER TABLE `advert_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adverts`
--

DROP TABLE IF EXISTS `adverts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adverts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `paid_for` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `content` tinytext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `program_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_start_date` date DEFAULT NULL,
  `course_end_date` date DEFAULT NULL,
  `advert_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `requested` tinyint(1) DEFAULT NULL,
  `admin_created` tinyint(1) DEFAULT NULL,
  `request_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adverts`
--

LOCK TABLES `adverts` WRITE;
/*!40000 ALTER TABLE `adverts` DISABLE KEYS */;
INSERT INTO `adverts` VALUES (1,'Kurusus with limit','some huraiana','Tempat',NULL,'2013-04-23','2013-07-18',NULL,0,NULL,3,'','2013-06-05 11:20:49','2013-06-06 07:55:59','Seminar','test','2013-07-07','2013-08-09','Product',NULL,NULL,NULL,NULL,NULL),(2,'produc product','product',NULL,NULL,'2013-04-23','2013-07-22',0,0,NULL,NULL,'product','2013-06-05 13:28:16','2013-06-06 07:52:45',NULL,NULL,NULL,NULL,'Product',NULL,NULL,NULL,NULL,NULL),(3,'Kurusus with limit',NULL,'Tempat',NULL,NULL,NULL,1,1,7,3,'','2013-06-06 03:43:10','2013-06-06 08:19:58','Seminar','test','2013-07-07','2013-08-09','Course',NULL,NULL,NULL,NULL,NULL),(4,'',NULL,NULL,NULL,NULL,NULL,NULL,1,5,NULL,'','2013-06-06 03:43:33','2013-06-06 08:23:10',NULL,NULL,NULL,NULL,'Course',NULL,NULL,NULL,NULL,NULL),(5,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,'','2013-06-06 03:44:34','2013-06-06 08:23:14',NULL,NULL,NULL,NULL,'Course',NULL,NULL,NULL,NULL,NULL),(6,'Baru Kursus PUnya',NULL,'tempat kotor',NULL,'2013-04-23','2013-07-16',NULL,1,2,110,'Pari','2013-06-06 03:44:39','2013-06-06 08:23:17','Seminar','test','2013-08-03','2014-09-05','Product',NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,'2013-04-23','2013-07-22',NULL,NULL,NULL,NULL,NULL,'2013-06-06 11:02:57','2013-06-10 10:58:56',NULL,NULL,NULL,NULL,'Course',1,NULL,0,NULL,'pending'),(8,NULL,NULL,NULL,NULL,'2013-04-23','2013-07-16',NULL,NULL,NULL,NULL,NULL,'2013-06-06 11:05:53','2013-06-06 11:05:53',NULL,NULL,NULL,NULL,'Course',1,NULL,NULL,NULL,NULL),(9,'Gile Iklan',NULL,'Some Vuew some where',NULL,NULL,NULL,NULL,NULL,NULL,233,NULL,'2013-06-06 11:11:10','2013-06-06 11:11:10','Seminar','Digital Manifestos','2013-04-05','2013-09-04',NULL,NULL,NULL,NULL,NULL,NULL),(10,'Gile Iklan',NULL,'Some Vuew some where',NULL,NULL,NULL,NULL,NULL,NULL,233,NULL,'2013-06-06 11:15:49','2013-06-06 11:15:49','Seminar','Digital Manifestos','2013-04-05','2013-09-04',NULL,NULL,NULL,NULL,NULL,NULL),(11,'Gile Iklan',NULL,'Some Vuew some where',NULL,NULL,NULL,NULL,NULL,NULL,233,NULL,'2013-06-06 11:16:28','2013-06-06 11:16:28','Seminar','Digital Manifestos','2013-04-05','2013-09-04',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Gile Iklan',NULL,'Some Vuew some where',NULL,NULL,NULL,NULL,NULL,NULL,233,NULL,'2013-06-06 11:20:26','2013-06-06 11:20:26','Seminar','Digital Manifestos','2013-04-05','2013-09-04',NULL,NULL,NULL,NULL,NULL,NULL),(13,'Gile Iklan',NULL,'Some Vuew some where',NULL,NULL,NULL,NULL,NULL,NULL,233,NULL,'2013-06-06 11:21:49','2013-06-06 11:21:49','Seminar','Digital Manifestos','2013-04-05','2013-09-04',NULL,NULL,NULL,NULL,NULL,NULL),(14,'Gile Iklan',NULL,'Some Vuew some where',NULL,NULL,NULL,NULL,NULL,NULL,233,NULL,'2013-06-06 11:26:56','2013-06-06 11:26:56','Seminar','Digital Manifestos','2013-04-05','2013-09-04','Course',NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,'2013-04-23','2013-07-22',NULL,NULL,NULL,NULL,NULL,'2013-06-06 11:30:10','2013-06-06 11:30:10',NULL,NULL,NULL,NULL,'Course',1,NULL,NULL,NULL,NULL),(16,'Gile Iklan',NULL,'Some Vuew some where',NULL,'2013-04-23','2013-07-22',NULL,NULL,NULL,233,NULL,'2013-06-06 11:30:39','2013-06-06 11:30:47','Seminar','Digital Manifestos','2013-04-05','2013-09-04','Course',1,NULL,NULL,NULL,NULL),(17,'Gile Iklan',NULL,'Some Vuew some where',NULL,'2013-04-23','2013-07-22',NULL,1,NULL,233,NULL,'2013-06-06 11:48:35','2013-06-20 10:41:44','Seminar','Digital Manifestos','2013-04-05','2013-09-04','Course',1,NULL,1,NULL,'approved'),(18,'Iklan User',NULL,NULL,NULL,'2013-04-23','2013-07-22',NULL,NULL,NULL,NULL,'asdfa;lskdjf;lka','2013-06-06 11:59:55','2013-06-06 11:59:55',NULL,NULL,NULL,NULL,'Product',NULL,NULL,NULL,NULL,NULL),(19,'some iklan',NULL,NULL,NULL,'2013-04-23','2013-07-22',NULL,0,NULL,NULL,'asdofasd;f','2013-06-06 12:02:53','2013-06-12 17:41:23',NULL,NULL,NULL,NULL,'Product',NULL,26,1,NULL,'approved'),(20,'Kurusus with limit',NULL,'Tempat',NULL,'2013-04-23','2013-07-22',NULL,1,NULL,3,NULL,'2013-06-10 09:12:54','2013-06-10 09:29:23','Seminar','test','2013-07-07','2013-08-09','Course',NULL,NULL,NULL,1,NULL),(22,'oagi ',NULL,NULL,NULL,'2013-04-23','2013-07-22',NULL,NULL,NULL,NULL,'aslke','2013-06-10 11:42:35','2013-06-16 06:13:54',NULL,NULL,NULL,NULL,'Product',NULL,26,0,NULL,'rejected'),(23,'Gile Iklan',NULL,'Some Vuew some where',NULL,'2013-04-23','2013-07-22',NULL,NULL,NULL,233,NULL,'2013-06-10 11:45:18','2013-06-10 11:49:57','Seminar','Digital Manifestos','2013-04-05','2013-09-04','Course',1,NULL,0,NULL,'rejected'),(25,'oagi ',NULL,NULL,NULL,'2013-04-23','2013-07-22',NULL,NULL,NULL,NULL,'aslke','2013-06-10 12:09:13','2013-06-10 12:09:13',NULL,NULL,NULL,NULL,'Product',NULL,26,NULL,NULL,NULL),(26,'Some aaasdf',NULL,NULL,NULL,'2013-06-13','2013-07-22',NULL,NULL,NULL,NULL,'asagsdse','2013-06-12 12:22:42','2013-06-13 09:30:50',NULL,NULL,NULL,NULL,'Product',NULL,26,NULL,NULL,NULL),(27,'A new course',NULL,'some venue',NULL,'2013-04-23','2013-07-22',NULL,NULL,NULL,NULL,NULL,'2013-06-12 17:29:21','2013-07-14 14:43:44',NULL,'Electronics and stuff','2013-05-06','2013-07-11','Course',1,NULL,NULL,NULL,NULL),(28,'whatever the shit',NULL,NULL,NULL,'2013-04-23','2013-07-22',NULL,NULL,NULL,NULL,'thest','2013-06-12 17:31:12','2013-06-16 06:19:34',NULL,NULL,NULL,NULL,'Product',NULL,26,1,NULL,'approved'),(29,'Kurusus with limit',NULL,'Tempat',NULL,'2013-06-03','2013-06-28',NULL,NULL,NULL,3,NULL,'2013-06-29 05:43:34','2013-06-29 05:43:34','Seminar','test','2013-07-07','2013-08-09','Course',NULL,NULL,NULL,1,NULL),(30,'Whenever Whatever',NULL,'tempatku',NULL,'2013-07-03','2013-07-18',NULL,NULL,NULL,10,NULL,'2013-07-01 08:23:26','2013-07-01 08:23:26','Bengkel','Program A','2013-06-14','2013-10-07','Course',NULL,NULL,NULL,1,NULL),(31,'Kurusus with limit',NULL,'Tempat',NULL,'2013-07-01','2013-07-17',NULL,NULL,NULL,3,'d uece','2013-07-01 08:24:46','2013-07-01 08:25:44','Seminar','test','2013-07-07','2013-08-09','Product',NULL,NULL,NULL,1,NULL),(32,'A new course',NULL,'some venue',NULL,'2013-07-01','2013-07-31',NULL,NULL,NULL,NULL,NULL,'2013-07-01 12:17:50','2013-07-01 12:17:50',NULL,'Electronics and stuff','2013-05-06','2013-07-11','Course',NULL,NULL,NULL,1,NULL),(33,'Kurusus with limit',NULL,'Tempat',NULL,'2013-07-01','2013-07-31',NULL,NULL,NULL,3,NULL,'2013-07-01 12:20:46','2013-07-01 12:20:47','Seminar','test','2013-07-07','2013-08-09','Course',NULL,NULL,NULL,1,NULL),(34,'proee',NULL,NULL,NULL,'2013-07-01','2013-07-31',NULL,NULL,NULL,NULL,'asdfasdfasf','2013-07-01 12:21:13','2013-07-01 12:21:13',NULL,NULL,NULL,NULL,'Product',NULL,NULL,NULL,1,NULL),(35,'Terbaru Skelaigus',NULL,'some milk',NULL,'2013-07-01','2013-07-31',NULL,NULL,NULL,3,NULL,'2013-07-01 12:24:58','2013-07-01 12:24:58','Seminar','Electronics and stuff','2013-07-12','2013-08-13','Course',NULL,NULL,NULL,1,NULL),(36,'iklan gambar',NULL,NULL,NULL,'2013-07-03','2013-07-31',NULL,NULL,NULL,NULL,'kandungan ikan','2013-07-02 18:54:14','2013-07-02 18:54:14',NULL,NULL,NULL,NULL,'Product',NULL,26,NULL,NULL,NULL),(37,'Terbaru Skelaigus',NULL,'some milk',NULL,'2013-07-02','2013-07-26',NULL,NULL,NULL,3,NULL,'2013-07-02 19:22:24','2013-07-02 19:22:24','Seminar','Electronics and stuff','2013-07-12','2013-08-13','Course',NULL,NULL,NULL,1,NULL),(38,'paling terbaru ',NULL,NULL,NULL,'2013-07-27','2013-07-31',NULL,NULL,NULL,NULL,'seklai','2013-07-02 19:40:11','2013-07-02 19:40:11',NULL,NULL,NULL,NULL,'Product',NULL,26,NULL,NULL,NULL),(39,'lagi terbaru',NULL,NULL,NULL,'2013-07-15','2013-07-15',NULL,NULL,NULL,NULL,'asdr','2013-07-02 19:41:06','2013-07-02 19:41:06',NULL,NULL,NULL,NULL,'Product',NULL,26,NULL,NULL,NULL),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-09 15:48:05','2013-07-09 15:48:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'testaserasdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'What the hell is going on here? This should be waaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaay more than 150 characters. I\'m pretty sure of that now','2013-07-09 15:48:17','2013-07-09 16:23:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'Wahtever',NULL,NULL,NULL,'2013-07-02','2013-07-25',NULL,1,NULL,NULL,'Ini pasto ie.aser','2013-07-09 17:10:15','2013-07-10 16:32:35',NULL,NULL,NULL,NULL,'Product',NULL,NULL,NULL,1,NULL),(43,'Memohon',NULL,NULL,NULL,'2013-07-11','2013-07-26',NULL,NULL,NULL,NULL,'Babi','2013-07-10 16:34:28','2013-07-10 16:52:17',NULL,NULL,NULL,NULL,'Product',NULL,26,1,NULL,'approved'),(44,'A new course',NULL,'some venue',NULL,'2013-04-23','2013-09-17',NULL,NULL,NULL,NULL,NULL,'2013-07-10 16:58:25','2013-07-10 17:01:19',NULL,'Electronics and stuff','2013-05-06','2013-07-11','Course',1,NULL,1,NULL,'approved'),(45,'Gile Iklan',NULL,'Some Vuew some where',NULL,'2013-07-10','2013-07-29',NULL,NULL,NULL,233,NULL,'2013-07-11 03:33:50','2013-07-11 03:33:50','Seminar','Digital Manifestos','2013-04-05','2013-09-04','Course',NULL,NULL,NULL,NULL,NULL),(46,'Gile Iklan',NULL,'Some Vuew some where',NULL,'2013-07-03','2013-07-31',NULL,NULL,NULL,233,NULL,'2013-07-11 03:36:10','2013-07-11 03:36:10','Seminar','Digital Manifestos','2013-04-05','2013-09-04','Course',NULL,NULL,NULL,NULL,NULL),(47,'A new course',NULL,'some venue',NULL,'2013-07-02','2013-07-24',NULL,NULL,NULL,NULL,NULL,'2013-07-11 03:37:09','2013-07-11 03:37:09',NULL,'Electronics and stuff','2013-05-06','2013-07-11','Course',NULL,NULL,NULL,NULL,NULL),(48,'A new course',NULL,'some venue',NULL,'2013-07-01','2013-07-14',NULL,NULL,NULL,NULL,NULL,'2013-07-11 03:38:02','2013-07-11 03:38:02',NULL,'Electronics and stuff','2013-05-06','2013-07-11','Course',NULL,NULL,NULL,NULL,NULL),(49,'Satu lagi ',NULL,NULL,NULL,'2013-07-09','2013-07-30',NULL,NULL,NULL,NULL,'fofremoest','2013-07-11 03:38:40','2013-07-11 03:38:40',NULL,NULL,NULL,NULL,'Product',NULL,NULL,NULL,NULL,NULL),(50,'Plain ters',NULL,NULL,NULL,'2013-07-02','2013-07-31',NULL,NULL,NULL,NULL,'henaser','2013-07-11 03:40:43','2013-07-11 03:40:43',NULL,NULL,NULL,NULL,'Product',NULL,NULL,NULL,NULL,NULL),(51,'Satu lagi fore',NULL,NULL,NULL,'2013-07-01','2013-07-31',NULL,NULL,NULL,NULL,'most','2013-07-11 03:49:16','2013-07-11 03:49:16',NULL,NULL,NULL,NULL,'Product',NULL,NULL,NULL,NULL,NULL),(52,'puki',NULL,NULL,NULL,'2013-07-01','2013-07-31',NULL,NULL,NULL,NULL,'babi','2013-07-11 03:52:08','2013-07-11 03:52:08',NULL,NULL,NULL,NULL,'Product',NULL,NULL,NULL,NULL,NULL),(53,'Paling baser',NULL,NULL,NULL,'2013-07-03','2013-07-31',NULL,NULL,NULL,NULL,'baser instick','2013-07-11 03:57:34','2013-07-11 04:01:38',NULL,NULL,NULL,NULL,'Product',NULL,26,1,NULL,'pending'),(54,'Gile Iklan',NULL,'Some Vuew some where',NULL,'2013-07-02','2013-07-30',NULL,NULL,NULL,233,NULL,'2013-07-11 03:58:00','2013-07-11 04:01:47','Seminar','Digital Manifestos','2013-04-05','2013-09-04','Course',1,NULL,1,NULL,'approved'),(55,'A new course',NULL,'some venue',NULL,'2013-07-01','2013-07-31',NULL,NULL,NULL,NULL,NULL,'2013-07-11 04:04:58','2013-07-11 17:49:44',NULL,'Electronics and stuff','2013-05-06','2013-07-11','Course',1,NULL,1,NULL,'pending'),(56,'A new course',NULL,'some venue',NULL,'2013-07-03','2013-10-31',NULL,NULL,NULL,NULL,NULL,'2013-07-14 14:48:55','2013-07-14 14:54:47',NULL,'Electronics and stuff','2013-05-06','2013-07-11','Course',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `adverts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` text COLLATE utf8_unicode_ci,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `attachable_id` int(11) DEFAULT NULL,
  `attachable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,NULL,NULL,NULL,1,'Consultant','2013-04-09 14:30:06','2013-06-12 19:30:02','obama-combo-breaker.jpg','ProfilePhoto'),(2,NULL,NULL,NULL,8,'Program','2013-04-10 14:59:22','2013-04-10 14:59:22','t3.png','Logo'),(3,NULL,NULL,NULL,9,'Program','2013-04-12 12:57:39','2013-04-12 12:57:39','zzdemo5.png','Logo'),(4,NULL,NULL,NULL,10,'Program','2013-04-12 12:58:26','2013-04-12 12:58:26','experience-taste-of-asia.jpeg','Logo'),(5,NULL,NULL,NULL,1,'User','2013-05-12 06:46:47','2013-06-20 08:38:49','zzdemo5.png','ProfilePhoto'),(8,NULL,NULL,NULL,29,'Consultant','2013-05-17 10:29:48','2013-05-17 10:29:48','ssj_goten_screaming1.jpg','ProfilePhoto'),(12,'',NULL,NULL,11,'BusinessProfile','2013-05-27 13:09:45','2013-05-27 13:09:45',NULL,'BusinessPhoto'),(13,'',NULL,NULL,12,'BusinessProfile','2013-05-27 13:12:08','2013-05-27 13:12:08',NULL,'BusinessPhoto'),(17,NULL,NULL,NULL,18,'BusinessProfile','2013-05-27 16:30:17','2013-05-27 16:30:17',NULL,'BusinessPhoto'),(19,NULL,NULL,NULL,19,'BusinessProfile','2013-05-27 16:31:10','2013-05-27 16:31:10',NULL,'BusinessPhoto'),(23,'My Company Logo and stuff.',NULL,NULL,26,'BusinessProfile','2013-05-28 07:59:17','2013-07-09 08:00:52',NULL,'BusinessPhoto'),(24,'penerangna',NULL,NULL,27,'BusinessProfile','2013-05-28 07:59:17','2013-06-13 08:58:01','zzdemo5.png','BusinessPhoto'),(25,'',NULL,NULL,28,'BusinessProfile','2013-05-28 07:59:17','2013-05-28 07:59:17',NULL,'BusinessPhoto'),(29,'',NULL,NULL,32,'BusinessProfile','2013-06-03 13:43:46','2013-06-03 13:43:46',NULL,'BusinessPhoto'),(30,'',NULL,NULL,33,'BusinessProfile','2013-06-03 13:43:46','2013-06-03 13:43:46',NULL,'BusinessPhoto'),(31,'',NULL,NULL,34,'BusinessProfile','2013-06-03 13:43:46','2013-06-03 13:43:46',NULL,'BusinessPhoto'),(32,'',NULL,NULL,35,'BusinessProfile','2013-06-03 13:50:09','2013-06-03 13:50:09',NULL,'BusinessPhoto'),(33,'',NULL,NULL,36,'BusinessProfile','2013-06-03 13:50:09','2013-06-03 13:50:09',NULL,'BusinessPhoto'),(34,'',NULL,NULL,37,'BusinessProfile','2013-06-03 13:50:09','2013-06-03 13:50:09',NULL,'BusinessPhoto'),(35,NULL,NULL,NULL,2,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(36,NULL,NULL,NULL,3,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(37,NULL,NULL,NULL,4,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(38,NULL,NULL,NULL,11,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(39,NULL,NULL,NULL,12,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(40,NULL,NULL,NULL,18,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(41,NULL,NULL,NULL,19,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(42,NULL,NULL,NULL,26,'BusinessProfile','2013-06-03 18:50:49','2013-06-13 08:55:24','t1.png','BusinessLogo'),(43,NULL,NULL,NULL,27,'BusinessProfile','2013-06-03 18:50:49','2013-06-13 08:57:54','zzdemo8.png','BusinessLogo'),(44,NULL,NULL,NULL,28,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(48,NULL,NULL,NULL,32,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(49,NULL,NULL,NULL,33,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(50,NULL,NULL,NULL,34,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(51,NULL,NULL,NULL,35,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(52,NULL,NULL,NULL,36,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(53,NULL,NULL,NULL,37,'BusinessProfile','2013-06-03 18:50:49','2013-06-03 18:50:49',NULL,'BusinessLogo'),(54,'',NULL,NULL,38,'BusinessProfile','2013-06-04 14:14:16','2013-06-04 14:14:16',NULL,'BusinessPhoto'),(55,'',NULL,NULL,39,'BusinessProfile','2013-06-04 14:14:16','2013-06-04 14:14:16',NULL,'BusinessPhoto'),(56,'',NULL,NULL,40,'BusinessProfile','2013-06-04 14:14:16','2013-06-04 14:14:16',NULL,'BusinessPhoto'),(57,NULL,NULL,NULL,1,'Advert','2013-06-05 11:20:49','2013-06-05 11:20:49','SR-plan-your-journey-map-route-plain.jpeg','Photo'),(58,NULL,NULL,NULL,2,'Advert','2013-06-05 13:28:16','2013-06-05 13:28:16','SR-plan-your-journey-map-route-kuala-lumpur.jpeg','Photo'),(59,NULL,NULL,NULL,6,'Advert','2013-06-06 04:04:37','2013-06-06 04:04:37','zzdemo6.png','Photo'),(60,NULL,NULL,NULL,8,'Advert','2013-06-06 11:05:53','2013-06-06 11:05:53','zzdemo5.png','Photo'),(61,NULL,NULL,NULL,15,'Advert','2013-06-06 11:30:10','2013-06-06 11:30:10','zzdemo5.png','Photo'),(62,NULL,NULL,NULL,16,'Advert','2013-06-06 11:30:39','2013-06-12 19:56:25','t2.png','Photo'),(63,NULL,NULL,NULL,17,'Advert','2013-06-06 11:48:35','2013-06-06 11:48:35','zzdemo5.png','Photo'),(65,NULL,NULL,NULL,18,'Advert','2013-06-06 12:00:04','2013-06-06 12:00:04','zzdemo5.png','Photo'),(67,NULL,NULL,NULL,19,'Advert','2013-06-06 12:03:02','2013-06-06 12:03:02','zzdemo5.png','Photo'),(68,NULL,NULL,NULL,20,'Advert','2013-06-10 09:12:54','2013-07-01 12:06:26','discover-malaysia-pulau-tioman.jpeg','Photo'),(72,NULL,NULL,NULL,22,'Advert','2013-06-10 11:42:42','2013-06-10 11:42:42','t1.png','Photo'),(73,NULL,NULL,NULL,23,'Advert','2013-06-10 11:45:18','2013-06-10 11:45:18','t2.png','Photo'),(75,NULL,NULL,NULL,25,'Advert','2013-06-10 12:09:21','2013-06-12 19:49:30','zzdemo2.png','Photo'),(76,'',NULL,NULL,41,'BusinessProfile','2013-06-12 12:18:32','2013-06-12 12:18:32',NULL,'BusinessPhoto'),(77,'',NULL,NULL,42,'BusinessProfile','2013-06-12 12:18:32','2013-06-12 12:18:32',NULL,'BusinessPhoto'),(78,'',NULL,NULL,43,'BusinessProfile','2013-06-12 12:18:32','2013-06-12 12:18:32',NULL,'BusinessPhoto'),(79,NULL,NULL,NULL,36,'User','2013-06-12 12:18:32','2013-06-12 12:18:32','zzdemo8.png','ProfilePhoto'),(81,NULL,NULL,NULL,26,'Advert','2013-06-12 12:22:50','2013-06-12 12:22:50','t3.png','Photo'),(82,NULL,NULL,NULL,27,'Advert','2013-06-12 17:29:21','2013-06-12 17:29:21','zzdemo6.png','Photo'),(84,NULL,NULL,NULL,28,'Advert','2013-06-12 17:31:17','2013-06-12 17:31:17','F3F3Z.jpg','Photo'),(86,NULL,NULL,NULL,30,'Consultant','2013-06-14 03:54:09','2013-06-14 03:54:09',NULL,'ProfilePhoto'),(87,NULL,NULL,NULL,33,'Consultant','2013-06-14 04:10:11','2013-06-14 04:10:11',NULL,'ProfilePhoto'),(88,NULL,NULL,NULL,26,'User','2013-06-18 08:57:47','2013-06-18 08:57:47','zzdemo1.png','ProfilePhoto'),(89,NULL,NULL,NULL,29,'Advert','2013-06-29 05:43:34','2013-06-29 05:43:34','bannermalaysia.jpeg','Photo'),(92,NULL,NULL,NULL,36,'Consultant','2013-06-30 06:18:56','2013-06-30 06:18:56',NULL,'ProfilePhoto'),(93,NULL,NULL,NULL,37,'Consultant','2013-06-30 06:21:11','2013-06-30 06:21:11',NULL,'ProfilePhoto'),(94,NULL,NULL,NULL,38,'Consultant','2013-06-30 06:22:17','2013-06-30 06:22:17',NULL,'ProfilePhoto'),(95,'',NULL,NULL,44,'BusinessProfile','2013-06-30 18:06:22','2013-06-30 18:06:22',NULL,'BusinessPhoto'),(96,'',NULL,NULL,45,'BusinessProfile','2013-06-30 18:06:22','2013-06-30 18:06:22',NULL,'BusinessPhoto'),(97,'',NULL,NULL,46,'BusinessProfile','2013-06-30 18:06:22','2013-06-30 18:06:22',NULL,'BusinessPhoto'),(98,NULL,NULL,NULL,94,'User','2013-06-30 18:06:22','2013-06-30 18:06:22','zzdemo4.png','ProfilePhoto'),(99,NULL,NULL,NULL,96,'User','2013-06-30 18:19:38','2013-06-30 18:19:38',NULL,'ProfilePhoto'),(100,NULL,NULL,NULL,99,'User','2013-06-30 18:34:24','2013-06-30 18:34:24',NULL,'ProfilePhoto'),(101,NULL,NULL,NULL,100,'User','2013-06-30 18:47:25','2013-06-30 18:47:25',NULL,'ProfilePhoto'),(104,NULL,NULL,NULL,40,'Consultant','2013-06-30 18:52:16','2013-06-30 18:52:16',NULL,'ProfilePhoto'),(105,'',NULL,NULL,47,'BusinessProfile','2013-06-30 19:09:14','2013-07-03 08:33:46','t3.png','BusinessPhoto'),(106,'',NULL,NULL,48,'BusinessProfile','2013-06-30 19:09:14','2013-06-30 19:09:14',NULL,'BusinessPhoto'),(107,'',NULL,NULL,49,'BusinessProfile','2013-06-30 19:09:14','2013-07-03 08:36:56','zzdemo8.png','BusinessPhoto'),(109,NULL,NULL,NULL,41,'Consultant','2013-06-30 19:51:56','2013-06-30 19:51:56',NULL,'ProfilePhoto'),(110,NULL,NULL,NULL,101,'User','2013-07-01 07:29:24','2013-07-01 07:29:24',NULL,'ProfilePhoto'),(111,NULL,NULL,NULL,30,'Advert','2013-07-01 08:23:26','2013-07-01 08:23:26','bannermalaysia.jpeg','Photo'),(113,NULL,NULL,NULL,31,'Advert','2013-07-01 08:24:46','2013-07-01 08:26:14','twitter_logo_black.jpg','Photo'),(114,NULL,NULL,NULL,32,'Advert','2013-07-01 12:17:50','2013-07-01 12:17:50','mario_party_ds.jpg','Photo'),(115,NULL,NULL,NULL,33,'Advert','2013-07-01 12:20:46','2013-07-01 12:20:46','simple_Badass_Super_Mario_desktop_wallpapers-s1280x800-22554.png','Photo'),(117,NULL,NULL,NULL,34,'Advert','2013-07-01 12:21:14','2013-07-01 12:21:14','super-mario-wallpaper-08-01-09-_5_.jpg','Photo'),(118,NULL,NULL,NULL,35,'Advert','2013-07-01 12:24:58','2013-07-01 12:24:58','Mario_Wallpaper___1st_draw___by_bvx89.jpg','Photo'),(120,NULL,NULL,NULL,42,'Consultant','2013-07-02 09:06:39','2013-07-02 09:06:39',NULL,'ProfilePhoto'),(122,NULL,NULL,NULL,43,'Consultant','2013-07-02 09:10:04','2013-07-02 09:10:04',NULL,'ProfilePhoto'),(124,NULL,NULL,NULL,44,'Consultant','2013-07-02 09:13:57','2013-07-02 09:13:57',NULL,'ProfilePhoto'),(126,NULL,NULL,NULL,45,'Consultant','2013-07-02 09:16:40','2013-07-02 09:16:40',NULL,'ProfilePhoto'),(128,NULL,NULL,NULL,46,'Consultant','2013-07-02 09:17:05','2013-07-02 09:17:05',NULL,'ProfilePhoto'),(130,NULL,NULL,NULL,47,'Consultant','2013-07-02 09:17:55','2013-07-02 09:17:55',NULL,'ProfilePhoto'),(132,NULL,NULL,NULL,48,'Consultant','2013-07-02 09:20:56','2013-07-02 09:20:56',NULL,'ProfilePhoto'),(134,NULL,NULL,NULL,49,'Consultant','2013-07-02 09:27:38','2013-07-02 09:27:38',NULL,'ProfilePhoto'),(139,NULL,NULL,NULL,36,'Advert','2013-07-02 18:54:15','2013-07-02 18:54:15','1_914838847l.jpg','Photo'),(140,NULL,NULL,NULL,37,'Advert','2013-07-02 19:22:24','2013-07-02 19:22:24','451.jpeg','Photo'),(142,NULL,NULL,NULL,38,'Advert','2013-07-02 19:40:11','2013-07-02 19:40:11','zzdemo6.png','Photo'),(144,NULL,NULL,NULL,39,'Advert','2013-07-02 19:41:07','2013-07-02 19:41:07','t1.png','Photo'),(146,NULL,NULL,NULL,103,'User','2013-07-02 20:31:05','2013-07-02 20:31:05',NULL,'ProfilePhoto'),(147,NULL,NULL,NULL,104,'User','2013-07-02 20:32:36','2013-07-02 20:32:36',NULL,'ProfilePhoto'),(148,NULL,NULL,NULL,58,'BusinessProfile','2013-07-03 08:23:38','2013-07-03 08:23:38','img2.png','BusinessLogo'),(149,'',NULL,NULL,58,'BusinessProfile','2013-07-03 08:23:38','2013-07-03 08:23:38','zzdemo8.png','BusinessPhoto'),(150,'Penerangannintu gambar',NULL,NULL,59,'BusinessProfile','2013-07-03 08:23:38','2013-07-09 15:00:21','zzdemo3.png','BusinessPhoto'),(151,'',NULL,NULL,60,'BusinessProfile','2013-07-03 08:23:38','2013-07-03 08:23:38',NULL,'BusinessPhoto'),(152,'',NULL,NULL,56,'BusinessProfile','2013-07-03 09:03:36','2013-07-03 09:03:36',NULL,'BusinessPhoto'),(153,'',NULL,NULL,61,'BusinessProfile','2013-07-03 09:03:36','2013-07-03 09:35:58','zzdemo3.png','BusinessPhoto'),(154,NULL,NULL,NULL,62,'BusinessProfile','2013-07-03 09:35:20','2013-07-03 09:35:20','t2.png','BusinessLogo'),(155,'',NULL,NULL,62,'BusinessProfile','2013-07-03 09:35:20','2013-07-03 09:35:42','zzdemo5.png','BusinessPhoto'),(156,NULL,NULL,NULL,61,'BusinessProfile','2013-07-03 09:36:15','2013-07-03 09:36:15','t1.png','BusinessLogo'),(157,'',NULL,NULL,57,'BusinessProfile','2013-07-09 07:29:11','2013-07-09 07:29:11',NULL,'BusinessPhoto'),(158,NULL,NULL,NULL,63,'BusinessProfile','2013-07-09 07:29:11','2013-07-09 07:29:11','twitter_logo_black.jpg','BusinessLogo'),(159,'',NULL,NULL,63,'BusinessProfile','2013-07-09 07:29:11','2013-07-09 07:29:11','img2.png','BusinessPhoto'),(160,'',NULL,NULL,64,'BusinessProfile','2013-07-09 07:29:11','2013-07-09 07:29:11',NULL,'BusinessPhoto'),(161,NULL,NULL,NULL,105,'User','2013-07-09 07:30:03','2013-07-09 07:30:03',NULL,'ProfilePhoto'),(162,NULL,NULL,NULL,59,'BusinessProfile','2013-07-09 15:00:21','2013-07-09 15:00:21','zzdemo5.png','BusinessLogo'),(163,NULL,NULL,NULL,65,'BusinessProfile','2013-07-09 15:03:55','2013-07-09 15:03:55','zzdemo3.png','BusinessLogo'),(164,'Some descriptions of the picture.',NULL,NULL,65,'BusinessProfile','2013-07-09 15:03:55','2013-07-09 15:03:55','zzdemo4.png','BusinessPhoto'),(165,'',NULL,NULL,66,'BusinessProfile','2013-07-09 15:03:55','2013-07-09 15:16:47','zzdemo4.png','BusinessPhoto'),(166,'omwjuk',NULL,NULL,67,'BusinessProfile','2013-07-09 15:03:55','2013-07-09 15:05:09','SR-plan-your-journey-map-route-changmai.jpeg','BusinessPhoto'),(167,NULL,NULL,NULL,67,'BusinessProfile','2013-07-09 15:05:09','2013-07-09 15:05:09','SR-plan-your-journey-map-route-changmai.jpeg','BusinessLogo'),(168,NULL,NULL,NULL,66,'BusinessProfile','2013-07-09 15:16:47','2013-07-09 15:16:47','zzdemo6.png','BusinessLogo'),(170,NULL,NULL,NULL,42,'Advert','2013-07-09 17:10:16','2013-07-09 17:10:16','zzdemo3.png','Photo'),(171,NULL,NULL,NULL,106,'User','2013-07-09 17:17:44','2013-07-09 17:17:44',NULL,'ProfilePhoto'),(172,NULL,NULL,NULL,107,'User','2013-07-09 17:19:36','2013-07-09 17:19:36',NULL,'ProfilePhoto'),(173,NULL,NULL,NULL,108,'User','2013-07-09 17:21:58','2013-07-09 17:21:58',NULL,'ProfilePhoto'),(174,NULL,NULL,NULL,109,'User','2013-07-09 17:24:07','2013-07-09 17:24:07',NULL,'ProfilePhoto'),(175,NULL,NULL,NULL,110,'User','2013-07-09 17:27:48','2013-07-09 17:27:48',NULL,'ProfilePhoto'),(176,NULL,NULL,NULL,111,'User','2013-07-09 17:31:29','2013-07-09 17:31:29',NULL,'ProfilePhoto'),(177,NULL,NULL,NULL,7,'Program','2013-07-09 17:54:47','2013-07-09 17:54:47','zzdemo5.png','Logo'),(179,NULL,NULL,NULL,43,'Advert','2013-07-10 16:34:29','2013-07-10 16:34:29','t2.png','Photo'),(180,NULL,NULL,NULL,44,'Advert','2013-07-10 16:58:25','2013-07-10 16:58:25','discover-malaysia.jpeg','Photo'),(181,NULL,NULL,NULL,45,'Advert','2013-07-11 03:33:50','2013-07-11 03:33:50','zzdemo6.png','Photo'),(182,NULL,NULL,NULL,46,'Advert','2013-07-11 03:36:10','2013-07-11 03:36:10','zzdemo5.png','Photo'),(184,NULL,NULL,NULL,49,'Advert','2013-07-11 03:38:41','2013-07-11 03:38:41','zzdemo4.png','Photo'),(186,NULL,NULL,NULL,50,'Advert','2013-07-11 03:40:44','2013-07-11 03:40:44','zzdemo4.png','Photo'),(188,NULL,NULL,NULL,51,'Advert','2013-07-11 03:49:17','2013-07-11 03:49:17','zzdemo3.png','Photo'),(190,NULL,NULL,NULL,53,'Advert','2013-07-11 03:57:35','2013-07-11 03:57:35','zzdemo3.png','Photo'),(191,NULL,NULL,NULL,54,'Advert','2013-07-11 03:58:00','2013-07-11 03:58:00','zzdemo4.png','Photo'),(192,NULL,NULL,NULL,55,'Advert','2013-07-11 04:04:58','2013-07-11 04:04:58','bannermalaysia.jpeg','Photo'),(193,NULL,NULL,NULL,56,'Advert','2013-07-14 14:48:55','2013-07-14 14:48:55','zzdemo5.png','Photo'),(194,NULL,NULL,NULL,112,'User','2013-07-14 15:04:55','2013-07-14 15:04:55',NULL,'ProfilePhoto'),(195,NULL,NULL,NULL,113,'User','2013-07-14 16:12:14','2013-07-14 16:12:14',NULL,'ProfilePhoto'),(196,'',NULL,NULL,68,'BusinessProfile','2013-07-14 16:13:12','2013-07-14 16:13:12',NULL,'BusinessPhoto'),(197,'',NULL,NULL,69,'BusinessProfile','2013-07-14 16:13:12','2013-07-14 16:13:12',NULL,'BusinessPhoto'),(198,'',NULL,NULL,70,'BusinessProfile','2013-07-14 16:13:12','2013-07-14 16:13:12',NULL,'BusinessPhoto'),(208,NULL,NULL,NULL,120,'User','2013-07-14 16:48:04','2013-07-14 16:48:04',NULL,'ProfilePhoto'),(209,NULL,NULL,NULL,121,'User','2013-07-14 20:12:52','2013-07-14 20:12:52',NULL,'ProfilePhoto'),(211,NULL,NULL,NULL,50,'Consultant','2013-07-27 12:01:40','2013-07-27 12:01:40',NULL,'ProfilePhoto'),(213,NULL,NULL,NULL,51,'Consultant','2013-07-27 12:02:38','2013-07-27 12:02:38',NULL,'ProfilePhoto'),(215,NULL,NULL,NULL,52,'Consultant','2013-07-27 12:06:46','2013-07-27 12:06:46',NULL,'ProfilePhoto'),(217,NULL,NULL,NULL,53,'Consultant','2013-07-27 12:08:50','2013-07-27 12:08:50',NULL,'ProfilePhoto'),(218,NULL,NULL,NULL,1,'CourseReport','2013-07-28 14:48:50','2013-07-28 14:48:50','IMG_20130725_182554.jpg','CourseSchedule'),(219,NULL,NULL,NULL,2,'CourseReport','2013-07-28 14:54:54','2013-07-28 14:54:54','IMG_20130725_182554.jpg','CourseSchedule'),(220,NULL,NULL,NULL,3,'CourseReport','2013-07-28 14:55:20','2013-07-28 14:55:20','IMG_20130725_182554.jpg','CourseSchedule'),(221,NULL,NULL,NULL,4,'CourseReport','2013-07-28 14:56:09','2013-07-28 14:56:09','IMG_20130725_182554.jpg','CourseSchedule'),(222,NULL,NULL,NULL,6,'CourseReport','2013-07-28 15:21:09','2013-07-28 15:21:09','IMG_20130725_182554.jpg','CourseSchedule'),(238,NULL,NULL,NULL,23,'User','2013-07-28 16:31:00','2013-07-28 16:31:00','IMG_20130725_182633.jpg','ProfilePhoto'),(242,NULL,NULL,NULL,9,'CourseReport','2013-07-28 16:38:16','2013-07-28 16:38:16','Screen_shot_2013-07-02_at_4.49.55_PM.png','CourseSchedule'),(244,NULL,NULL,NULL,10,'CourseReport','2013-07-28 16:47:33','2013-07-28 16:47:33','IMG_20130725_182554.jpg','CourseSchedule'),(245,NULL,NULL,NULL,10,'CourseReport','2013-07-28 17:38:30','2013-07-28 17:38:30','IMG_20130725_182633.jpg','CoursePhoto'),(246,NULL,NULL,NULL,10,'CourseReport','2013-07-28 17:39:24','2013-07-28 17:39:24','IMG_20130725_182554.jpg','CoursePhoto'),(247,NULL,NULL,NULL,10,'CourseReport','2013-07-28 17:40:46','2013-07-28 17:40:46','zzdemo5.png','CoursePhoto'),(248,NULL,NULL,NULL,11,'CourseReport','2013-07-28 19:43:21','2013-07-28 19:43:21','zzdemo3.png','CourseSchedule'),(249,NULL,NULL,NULL,11,'CourseReport','2013-07-28 19:43:21','2013-07-28 19:43:21','zzdemo4.png','CoursePhoto'),(250,NULL,NULL,NULL,11,'CourseReport','2013-07-28 19:43:21','2013-07-28 19:43:21','zzdemo3.png','CoursePhoto'),(251,NULL,NULL,NULL,11,'CourseReport','2013-07-28 19:43:21','2013-07-28 19:43:21','zzdemo2.png','CoursePhoto'),(252,NULL,NULL,NULL,11,'CourseReport','2013-07-28 19:43:21','2013-07-28 19:43:21','zzdemo1.png','CoursePhoto'),(253,NULL,NULL,NULL,11,'CourseReport','2013-07-28 19:43:21','2013-07-28 19:43:21','zzdemo8.png','CoursePhoto'),(254,NULL,NULL,NULL,11,'CourseReport','2013-07-28 19:43:21','2013-07-28 19:43:21','img2.png','CoursePhoto');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_lists`
--

DROP TABLE IF EXISTS `attendance_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `max_attendees` int(11) DEFAULT NULL,
  `attendee_counter` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_lists`
--

LOCK TABLES `attendance_lists` WRITE;
/*!40000 ALTER TABLE `attendance_lists` DISABLE KEYS */;
INSERT INTO `attendance_lists` VALUES (11,42,NULL,3,NULL,'2013-05-13 07:08:08','2013-06-11 09:37:53',0),(21,52,7,3,0,'2013-05-13 07:20:26','2013-05-13 07:20:26',NULL),(22,53,9,20,0,'2013-05-14 06:56:50','2013-06-03 18:31:35',1),(23,54,NULL,0,0,'2013-05-14 10:42:04','2013-05-14 10:42:04',NULL),(24,55,NULL,0,0,'2013-05-14 10:42:49','2013-05-14 10:42:49',NULL),(25,56,NULL,0,0,'2013-05-14 11:19:32','2013-05-14 11:19:32',NULL),(26,57,7,10,0,'2013-05-20 12:50:37','2013-05-28 10:03:28',1),(27,58,10,233,0,'2013-06-06 11:02:31','2013-06-06 11:02:31',NULL),(28,59,8,10,0,'2013-06-13 11:36:37','2013-06-13 11:36:37',NULL),(29,60,9,30,0,'2013-07-14 06:44:52','2013-07-14 06:44:52',NULL),(30,61,9,30,0,'2013-07-14 08:03:07','2013-07-27 22:07:25',1),(31,62,7,10,0,'2013-07-15 08:17:33','2013-07-15 08:17:33',NULL),(32,63,7,0,0,'2013-07-15 11:30:28','2013-07-15 11:30:28',NULL),(33,64,9,10,0,'2013-07-29 07:43:56','2013-07-29 07:43:56',NULL);
/*!40000 ALTER TABLE `attendance_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendees`
--

DROP TABLE IF EXISTS `attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ic_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attended` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `attendance_list_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attendance_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendees`
--

LOCK TABLES `attendees` WRITE;
/*!40000 ALTER TABLE `attendees` DISABLE KEYS */;
INSERT INTO `attendees` VALUES (5,26,'another  new','cibai@gampang.com','901122-12-4444',0,'2013-05-14 12:21:58','2013-05-14 16:13:04',11,NULL,NULL,NULL),(6,26,'another  new','cibai@gampang.com','901122-12-4444',1,'2013-05-14 13:01:05','2013-05-14 13:27:33',22,NULL,NULL,NULL),(10,26,'another  new','cibai@gampang.com','901122-12-4444',1,'2013-05-20 12:52:52','2013-05-21 10:32:07',26,NULL,NULL,NULL),(11,29,'bright eyes','fuck@you.com','111111-11-1111',1,'2013-05-20 12:58:25','2013-05-21 10:51:47',26,NULL,NULL,NULL),(12,30,'kau gila','baru@punya.com','111112-11-1111',1,'2013-05-20 12:58:54','2013-05-21 10:51:47',26,NULL,NULL,NULL),(13,31,NULL,'tell@world.com','100909-11-0909',1,'2013-05-21 10:32:07','2013-05-21 10:51:47',26,'Forgiven','Comin Home',NULL),(14,NULL,NULL,'Email','No KP',1,'2013-05-21 10:32:07','2013-05-21 10:32:07',26,'Nama','Nama Bapa',NULL),(17,NULL,NULL,'Email','No KP',1,'2013-05-21 10:55:29','2013-05-21 10:55:29',26,'somenew','jack',NULL),(18,NULL,NULL,'Email','No KP',1,'2013-05-21 10:55:29','2013-05-21 10:55:29',26,'Nama','Nama Bapa',NULL),(19,34,NULL,'asdfasfsaf@asdfasdfasdfs.com','120808-08-0808',1,'2013-05-21 10:57:49','2013-05-21 10:58:43',26,'naamawe','asfasdfasdf',NULL),(20,35,NULL,'guy@sheba.com','130404-04-0404',1,'2013-05-21 11:02:43','2013-05-21 11:02:43',26,'some other ','guy',NULL),(21,36,NULL,'due@asd.com','120103-04-0304',1,'2013-05-21 11:11:06','2013-05-21 11:11:31',26,'Namaasdf','ude',NULL),(22,37,NULL,'else@lose.com','140102-02-0304',1,'2013-05-21 11:11:54','2013-05-21 11:14:28',26,'someone','else',NULL),(24,39,NULL,'shitake@mushroom.com','110203-01-4523',1,'2013-05-21 11:14:56','2013-05-21 11:18:32',26,'shitake','mushrooms',NULL),(25,NULL,NULL,'Email','No KP',1,'2013-05-21 11:18:33','2013-05-21 11:18:33',26,'Nama','Nama Bapa',NULL),(26,NULL,NULL,'email','No KP',1,'2013-05-21 11:19:18','2013-05-21 11:19:18',26,'Nama','Nama Bapa',NULL),(27,40,NULL,'ciatut@ciatut.com','111101-01-0102',1,'2013-05-21 11:25:14','2013-05-21 11:25:14',26,'kenek','ciautu',NULL),(29,42,NULL,'another@fuckyoudog.com','771111-11-1111',1,'2013-05-21 11:34:19','2013-05-21 11:34:19',26,'added','anotehr',NULL),(31,43,NULL,'noobie@gerk.com','990101-01-0101',1,'2013-05-21 12:35:57','2013-05-21 12:35:57',26,'a ','newguy',NULL),(32,44,NULL,'nugyz@nugyz.com','980101-01-0101',1,'2013-05-21 12:39:39','2013-05-21 12:39:39',26,'somother','nuguyz',NULL),(35,46,NULL,'anjing@sial.com','770829-12-5231',1,'2013-05-21 16:47:29','2013-05-21 16:47:29',22,'SAtu ','pukimak',NULL),(36,48,NULL,'haram@jadah.com','111122-11-2222',1,'2013-05-22 10:16:56','2013-05-22 10:16:56',26,'kemaskini','ahlinujum',NULL),(37,82,NULL,'yooo@da.com','780828-12-5231',1,'2013-05-27 16:42:16','2013-05-27 16:42:16',26,'Nama','Nama Bapa',NULL),(38,20,NULL,'someother@email.com','900212-12-5223',NULL,'2013-06-03 13:50:50','2013-06-03 13:50:50',22,'Hemtammm','SAjaaaasaf',NULL),(39,92,NULL,'random4@random123.com','410116-01-5509',0,'2013-06-04 14:16:17','2013-06-13 09:52:02',21,'JackDot','Zod','cannot_attend'),(40,92,NULL,'random4@random123.com','410116-01-5509',NULL,'2013-06-06 06:29:22','2013-06-06 06:29:22',11,'JackDot','Zod',NULL),(41,26,NULL,'cibai@gampang.com','901122-12-4444',0,'2013-06-13 09:47:17','2013-06-13 09:52:05',21,'another ','new','will_attend'),(42,26,NULL,'cibai@gampang.com','901122-12-4444',NULL,'2013-06-13 11:47:55','2013-06-13 11:47:55',28,'another ','new',NULL),(43,96,NULL,'user3@baru.com','760729-12-5231',NULL,'2013-06-30 18:55:16','2013-06-30 18:55:16',21,'user baru 3','',NULL),(44,99,NULL,'user5@baru.com','820229-12-5231',NULL,'2013-06-30 19:06:24','2013-06-30 19:06:24',NULL,'user baru 5','',NULL),(45,100,NULL,'user7@baru.com','760509-12-4231',NULL,'2013-06-30 19:08:52','2013-06-30 19:08:52',NULL,'user 7','Nama Bapa',NULL),(46,94,NULL,'user1@baru.com','720929-12-5231',NULL,'2013-06-30 19:13:54','2013-06-30 19:20:36',21,'user baru','',NULL),(47,101,NULL,'doo@gmail.com','891222-12-5231',1,'2013-07-01 07:29:24','2013-07-01 07:29:24',26,'Some new','yabadaba',NULL),(48,26,NULL,'cibai@gampang.com','901122-12-4444',NULL,'2013-07-14 14:07:40','2013-07-14 14:07:40',30,'another ','new',NULL);
/*!40000 ALTER TABLE `attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_blogs_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Blog Satu','<p><blockquote><p><strong>ADT 22.0.4</strong>&nbsp;is designed for use with&nbsp;<strong>SDK Tools r22.0.4</strong>. If you haven\'t already installed SDK Tools<strong>r22.0.4</strong>&nbsp;into your SDK, use the Android SDK Manager to do so</p></blockquote><p>What I had to do was update my ADT to 22.0.4 (Latest Version) and then I was able to update SDK tool to 22.0.4. I thought only SDK Tool has been updated not ADT, so I was updating the SDK Tool with Older ADT Version (22.0.1).</p><br></p>','2013-07-29 19:39:25','2013-07-29 19:39:25','blog-satu','Umum'),(2,'Satu lagi','<p><h3>Getting started on Mac</h3><ol><li>Unpack the ZIP file you\'ve downloaded. By default, it\'s unpacked into a directory named&nbsp;<code>android-sdk-mac_x86</code>. Move it to an appropriate location on your machine, such as a \"Development\" directory in your home directory.<p>Make a note of the name and location of the SDK directory on your system—you will need to refer to the SDK directory later, when setting u</p></li></ol><br></p>','2013-07-29 19:40:13','2013-07-29 19:40:13','satu-lagi','Berita'),(3,'more lbosl','<p>another berita issue.<p>You should have already downloaded the&nbsp;<a href=\"http://developer.android.com/sdk/index.html#ExistingIDE\">Android SDK Tools</a>. (If you downloaded the ADT Bundle, you should instead read&nbsp;<a href=\"http://developer.android.com/sdk/installing/bundle.html\">Setting Up the ADT Bundle</a>.)</p></p>','2013-07-29 19:40:57','2013-07-29 19:40:57','more-lbosl','Berita'),(4,'Karangna','<p>usahawan&nbsp;<p><strong>How to Update your ADT to Latest Version</strong></p><ol><li>In Eclipse go to&nbsp;<code>Help</code></li><li><code>Install New Software</code>&nbsp;---&gt;&nbsp;<code>Add</code></li><li>inside&nbsp;<code>Add Repository</code>&nbsp;write the Name:&nbsp;<code>ADT</code>&nbsp;(or whatever you want)</li><li>and Location:&nbsp;<code>https://dl-ssl.google.com/android/eclipse/</code></li><li>after loading you should get&nbsp;<code>Developer Tools</code>&nbsp;and&nbsp;<code>NDK Plugins</code></li><li>check both if you want to use the Native Developer Kit (NDK) in the future or check&nbsp;<code>Developer Tool</code>&nbsp;only</li><li>click&nbsp;<code>Next</code></li><li><code>Finish</code></li></ol></p>','2013-07-29 19:41:42','2013-07-29 19:41:42','karangna','Keusahawanan'),(5,'Pasaran','<p><p><strong>How to Update your ADT to Latest Version</strong></p><ol><li>In Eclipse go to&nbsp;<code>Help</code></li><li><code>Install New Software</code>&nbsp;---&gt;&nbsp;<code>Add</code></li><li>inside&nbsp;<code>Add Repository</code>&nbsp;write the Name:&nbsp;<code>ADT</code>&nbsp;(or whatever you want)</li><li>and Location:&nbsp;<code>https://dl-ssl.google.com/android/eclipse/</code></li><li>after loading you should get&nbsp;<code>Developer Tools</code>&nbsp;and&nbsp;<code>NDK Plugins</code></li><li>check both if you want to use the Native Developer Kit (NDK) in the future or check&nbsp;<code>Developer Tool</code>&nbsp;only</li><li>click&nbsp;<code>Next</code></li><li><code>Finish</code></li></ol><br></p>','2013-07-29 19:42:06','2013-07-29 19:42:06','pasaran','Pemasaran');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_categories`
--

DROP TABLE IF EXISTS `business_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_categories`
--

LOCK TABLES `business_categories` WRITE;
/*!40000 ALTER TABLE `business_categories` DISABLE KEYS */;
INSERT INTO `business_categories` VALUES (1,'Bidang Perniagaan','2013-05-28 18:57:13','2013-05-28 18:57:13'),(2,'hael','2013-05-28 19:01:12','2013-05-28 19:01:12');
/*!40000 ALTER TABLE `business_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_profiles`
--

DROP TABLE IF EXISTS `business_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type_of_business` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_registered` tinyint(1) DEFAULT NULL,
  `customer1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_profiles`
--

LOCK TABLES `business_profiles` WRITE;
/*!40000 ALTER TABLE `business_profiles` DISABLE KEYS */;
INSERT INTO `business_profiles` VALUES (2,'Category1','','','',2,'2013-04-08 18:53:18','2013-04-08 18:53:18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Category1','','','',3,'2013-04-09 15:02:33','2013-04-09 15:02:33','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Category1','','','',4,'2013-04-10 11:18:02','2013-04-10 11:18:02','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Agrikultur','','','',55,'2013-05-27 13:09:45','2013-05-27 13:09:45','',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Agrikultur','','','',54,'2013-05-27 13:12:08','2013-05-27 13:12:08','',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL,'2013-05-27 16:30:17','2013-05-27 16:30:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,NULL,'2013-05-27 16:31:10','2013-05-27 16:31:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'hael','Syarikat Perseorangan','whatever','snnm2395',26,'2013-05-28 07:59:17','2013-07-09 08:16:32','Inequalities of Tyrants',NULL,'mcdo','knf','dje','some alamat','somewhere','35235',221,'',NULL),(27,'Bidang Perniagaan','some other stuf','asdg','asdf',26,'2013-05-28 07:59:17','2013-07-09 08:16:32','Information Technology',NULL,'mclododo','kfj','ets','alamat','saya','123523',206,'',NULL),(28,'','','','',26,'2013-05-28 07:59:17','2013-07-09 08:00:52','',NULL,'','','','','','',156,'',NULL),(32,'Agrikultur','','','',18,'2013-06-03 13:43:46','2013-06-03 13:43:46','',NULL,'','','','','','',156,NULL,NULL),(33,'Agrikultur','','','',18,'2013-06-03 13:43:46','2013-06-03 13:43:46','',NULL,'','','','','','',156,NULL,NULL),(34,'Agrikultur','','','',18,'2013-06-03 13:43:46','2013-06-03 13:43:46','',NULL,'','','','','','',156,NULL,NULL),(35,'Agrikultur','','','',20,'2013-06-03 13:50:09','2013-06-03 13:50:09','',NULL,'','','','','','',156,NULL,NULL),(36,'Agrikultur','','','',20,'2013-06-03 13:50:09','2013-06-03 13:50:09','',NULL,'','','','','','',156,NULL,NULL),(37,'Agrikultur','','','',20,'2013-06-03 13:50:09','2013-06-03 13:50:09','',NULL,'','','','','','',156,NULL,NULL),(38,'','','','',92,'2013-06-04 14:14:16','2013-06-04 14:14:16','',NULL,'','','','','','',156,NULL,NULL),(39,'','','','',92,'2013-06-04 14:14:16','2013-06-04 14:14:16','',NULL,'','','','','','',156,NULL,NULL),(40,'','','','',92,'2013-06-04 14:14:16','2013-06-04 14:14:16','',NULL,'','','','','','',156,NULL,NULL),(41,'','','','',36,'2013-06-12 12:18:32','2013-06-12 12:18:32','',NULL,'','','','','','',156,NULL,NULL),(42,'','','','',36,'2013-06-12 12:18:32','2013-06-12 12:18:32','',NULL,'','','','','','',156,NULL,NULL),(43,'','','','',36,'2013-06-12 12:18:32','2013-06-12 12:18:32','',NULL,'','','','','','',156,NULL,NULL),(44,'','','','',94,'2013-06-30 18:06:22','2013-06-30 18:06:22','',NULL,'','','','','','',156,NULL,NULL),(45,'','','','',94,'2013-06-30 18:06:22','2013-06-30 18:06:22','',NULL,'','','','','','',156,NULL,NULL),(46,'','','','',94,'2013-06-30 18:06:22','2013-06-30 18:06:22','',NULL,'','','','','','',156,NULL,NULL),(47,'Bidang Perniagaan','Sarikat','huraienal','ssm 3333',100,'2013-06-30 19:09:14','2013-07-03 08:33:46','Information Technology',NULL,'asdfasdf','asdf','ggeae','Alamt','Jalan','3333',156,'03333333',NULL),(48,'hael','Sokir','huraiane','ssm 3323',100,'2013-06-30 19:09:14','2013-07-03 08:34:36','Inequalities of Tyrants',NULL,'weqwerqwre','werwer','erer','','','',156,'',NULL),(49,'','erwet','asdfasdf','',100,'2013-06-30 19:09:14','2013-07-03 08:37:06','',NULL,'','','','asdfas','asgasg','34543',156,'',NULL),(56,'hael','an o','asdfasdf','asdf',23,'2013-07-03 04:44:42','2013-07-03 04:44:42','Information Technology',NULL,'asdgasg','sadgasdg','asdgasdg','sdfaf','asdfasdf','2341234',156,'12341234',NULL),(57,'Bidang Perniagaan','perin','asdasdf','xxm 234',30,'2013-07-03 04:46:06','2013-07-03 04:46:06','Information Technology',NULL,'asdfasdfa','sdfasdf','asdfasdf','aegasegaseg','asgasd','234231',156,'31452345',NULL),(58,'hael','Sarikei','hael','SSM 0001',31,'2013-07-03 08:23:38','2013-07-03 08:23:38','Information Technology',NULL,'Yokel','Oeddle','Moogs','Alamt','Rumah','89900',156,'',NULL),(59,'Bidang Perniagaan','Papar','Some hurairnae','3223',31,'2013-07-03 08:23:38','2013-07-09 15:00:21','Information Technology',NULL,'mokci','ikotie','hujiea2','alamat','syarikat','12513',18,'031525613',NULL),(60,'','','','',31,'2013-07-03 08:23:38','2013-07-03 08:23:38','',NULL,'','','','','','',156,'',NULL),(61,'','sfew','','',23,'2013-07-03 09:03:36','2013-07-03 09:37:16','',NULL,'','','','','','',156,'3423455',NULL),(62,'','asdfsadf','','',23,'2013-07-03 09:03:36','2013-07-03 09:36:52','',NULL,'','','','','','',156,'234235',NULL),(63,'hael','bluergh','asdfasdf','323sdf',30,'2013-07-09 07:29:11','2013-07-09 07:29:11','Social Injustice',NULL,'lodog','tiul','yuhil','jalan kiapeng','login','24124',152,'',NULL),(64,'','','','',30,'2013-07-09 07:29:11','2013-07-09 07:29:11','',NULL,'','','','','','',156,'',NULL),(65,'Bidang Perniagaan','First One','Some descriptions of the thing.','5342',99,'2013-07-09 15:03:55','2013-07-09 15:03:55','Inequalities of Tyrants',NULL,'mockilo','uhawio','kisowilo','Some lamathae','from sonwere ','692734',208,'09872341235',NULL),(66,'Bidang Perniagaan','Veto','Something about orderinb by alphabest','235',99,'2013-07-09 15:03:55','2013-07-09 15:16:47','Information Technology',NULL,'','','','','','',156,'',NULL),(67,'Bidang Perniagaan','Third one','juieol','2835',99,'2013-07-09 15:03:55','2013-07-09 15:05:09','Information Technology',NULL,'yujikci','oksile','hicusab','point blank','ujikios','687320',166,'039489839',NULL),(68,'','','','',113,'2013-07-14 16:13:12','2013-07-14 16:13:12','',NULL,'','','','','','',156,'',NULL),(69,'','','','',113,'2013-07-14 16:13:12','2013-07-14 16:13:12','',NULL,'','','','','','',156,'',NULL),(70,'','','','',113,'2013-07-14 16:13:12','2013-07-14 16:13:12','',NULL,'','','','','','',156,'',NULL);
/*!40000 ALTER TABLE `business_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesses`
--

DROP TABLE IF EXISTS `businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `business_profile_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesses`
--

LOCK TABLES `businesses` WRITE;
/*!40000 ALTER TABLE `businesses` DISABLE KEYS */;
INSERT INTO `businesses` VALUES (1,'Information Technology','2013-05-10 19:24:30','2013-05-10 19:24:30',NULL),(2,'Social Injustice','2013-05-10 19:34:42','2013-05-10 19:34:42',NULL),(3,'Inequalities of Tyrants','2013-05-10 19:35:00','2013-05-10 19:35:00',NULL),(4,'whatever','2013-05-28 13:55:40','2013-05-28 13:55:40',NULL),(5,'Terer','2013-05-28 18:42:43','2013-05-28 18:42:43',NULL);
/*!40000 ALTER TABLE `businesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Port Dickson','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(2,'Bahau','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(3,'Rompin','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(4,'Gemas','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(5,'Seremban','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(6,'Rembau','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(7,'Sri Menanti','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(8,'Simpang Pertang','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(9,'Kuala Pilah','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(10,'Kuala Klawang','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(11,'Johol','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(12,'Jelebu','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(13,'Jempol','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(14,'Bandar Baru Serting','Negeri Sembilan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(15,'Ipoh','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(16,'Bukit Merah','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(17,'Sitiawan','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(18,'Lumut','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(19,'Tapah','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(20,'Slim River','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(21,'Perak Tengah','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(22,'Gerik','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(23,'Parit Buntar','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(24,'Teluk Batik','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(25,'Bagan Datuk','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(26,'Sungkai','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(27,'Teluk Intan','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(28,'Kuala Kangsar','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(29,'Batu Gajah','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(30,'Pangkor Island','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(31,'Tambun','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(32,'Bidor','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(33,'Taiping','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(34,'Kampar','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(35,'Sungai Siput','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(36,'Kinta','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(37,'Ayer Tawar','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(38,'Simpang','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(39,'Kamunting','Perak','2013-04-08 18:47:00','2013-04-08 18:47:00'),(40,'Ayer Keroh','Melaka','2013-04-08 18:47:00','2013-04-08 18:47:00'),(41,'Tanjung Bidara','Melaka','2013-04-08 18:47:00','2013-04-08 18:47:00'),(42,'Jasin','Melaka','2013-04-08 18:47:00','2013-04-08 18:47:00'),(43,'Melaka Town','Melaka','2013-04-08 18:47:00','2013-04-08 18:47:00'),(44,'Merlimau','Melaka','2013-04-08 18:47:00','2013-04-08 18:47:00'),(45,'Masjid Tanah','Melaka','2013-04-08 18:47:00','2013-04-08 18:47:00'),(46,'Alor Gajah','Melaka','2013-04-08 18:47:00','2013-04-08 18:47:00'),(47,'Umbai','Melaka','2013-04-08 18:47:00','2013-04-08 18:47:00'),(48,'Tampin','Melaka','2013-04-08 18:47:00','2013-04-08 18:47:00'),(49,'Sungai Udang','Melaka','2013-04-08 18:47:00','2013-04-08 18:47:00'),(50,'Tanjung Buncah','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(51,'Georgetown','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(52,'Bukit Jambul','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(53,'Teluk Bahang','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(54,'Butterworth','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(55,'Batu Feringgi','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(56,'Bayan Lepas','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(57,'Jelutong','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(58,'Seberang Perai','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(59,'Bukit Mertajam','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(60,'Nibong','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(61,'Seberang Jaya','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(62,'Kepala Batas','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(63,'Balik Pulau','Penang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(64,'Pulau Langkawi','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(65,'Ayer Hitam','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(66,'Alor Setar','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(67,'Kulim','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(68,'Kuala Kedah','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(69,'Bandar Baharu','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(70,'Yan','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(71,'Bukit Kayu Hitam','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(72,'Baling','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(73,'Sungai Petani','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(74,'Jitra','Kedah','2013-04-08 18:47:00','2013-04-08 18:47:00'),(75,'Kota Bharu','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(76,'Kuala Krai','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(77,'Jeli','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(78,'Gua Musang','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(79,'Tumpat','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(80,'Kemubu','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(81,'Tanah Merah','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(82,'Pasir Puteh','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(83,'Dabong','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(84,'Kuala Balah','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(85,'Melor','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(86,'Bachok','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(87,'Kuala Nerang','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(88,'Pokok Sena','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(89,'Pasir Mas','Kelantan','2013-04-08 18:47:00','2013-04-08 18:47:00'),(90,'Segamat','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(91,'Muar','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(92,'Yong Peng','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(93,'Endau Rompin','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(94,'Kluang','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(95,'Pasir Gudang','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(96,'Tangkak','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(97,'Batu Pahat','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(98,'Labis','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(99,'Kota Tinggi','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(100,'Johor Bahru','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(101,'Pontian','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(102,'Pagoh','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(103,'Mersing','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(104,'Senai','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(105,'Desaru','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(106,'Skudai','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(107,'Kulai','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(108,'Ulu Tiram','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(109,'Ledang','Johor','2013-04-08 18:47:00','2013-04-08 18:47:00'),(110,'Kangar','Perlis','2013-04-08 18:47:00','2013-04-08 18:47:00'),(111,'Arau','Perlis','2013-04-08 18:47:00','2013-04-08 18:47:00'),(112,'Kuala Perlis','Perlis','2013-04-08 18:47:00','2013-04-08 18:47:00'),(113,'Kg Salang','Perlis','2013-04-08 18:47:00','2013-04-08 18:47:00'),(114,'Simpang Empat','Perlis','2013-04-08 18:47:00','2013-04-08 18:47:00'),(115,'Beseri','Perlis','2013-04-08 18:47:00','2013-04-08 18:47:00'),(116,'Cameron Highlands','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(117,'Kuala Tahan','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(118,'Raub','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(119,'Karak','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(120,'Chenor','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(121,'Tasik Bera','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(122,'Kuantan','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(123,'Kg New Zealand','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(124,'Berserah','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(125,'Kuala Rompin','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(126,'Pekan','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(127,'Kuala Lipis','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(128,'Taman Negara','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(129,'Bentong','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(130,'Lanchang','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(131,'Temerloh','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(132,'Sungai Lembing','Pahang','2013-04-08 18:47:00','2013-04-08 18:47:00'),(133,'Gambang','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(134,'Cherating','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(135,'Tasik Chini','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(136,'Kuala Tembeling','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(137,'Frasers Hill','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(138,'Genting Highlands','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(139,'Mentakab','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(140,'Jerantut','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(141,'Triang','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(142,'Maran','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(143,'Panching','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(144,'Bandar Muadzam','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(145,'Pulau Tioman','Pahang','2013-04-08 18:47:01','2013-04-08 18:47:01'),(146,'Sabak Bernam','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(147,'Kuala Langat','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(148,'Sepang','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(149,'Kota Kemuning','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(150,'Damansara Utama','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(151,'Puchong','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(152,'Cyberjaya','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(153,'Shah Alam','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(154,'Ulu Yam','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(155,'Klang','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(156,'Bangi','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(157,'Pulau Ketam','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(158,'Dengkil','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(159,'Subang Jaya','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(160,'Serdang','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(161,'Tanjung Malim','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(162,'Semenyih','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(163,'Kapar','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(164,'Kajang','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(165,'Sungai Buloh','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(166,'Banting','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(167,'Seri Kembangan','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(168,'Rawang','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(169,'Kuala Kubu','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(170,'Kuala Selangor','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(171,'Casey\'s Island','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(172,'Petaling Jaya','Selangor','2013-04-08 18:47:01','2013-04-08 18:47:01'),(173,'Damansara','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(174,'Selayang','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(175,'Sentul','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(176,'Sri Petaling','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(177,'Damansara Heights','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(178,'Sri Hartamas','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(179,'Putrajaya','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(180,'Bangsar','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(181,'Brickfields','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(182,'Batu Caves','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(183,'Gombak','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(184,'Sungai Besi','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(185,'Salak South','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(186,'Cheras','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(187,'Kepong','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(188,'Kuala Lumpur','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(189,'Ampang','Kuala Lumpur','2013-04-08 18:47:01','2013-04-08 18:47:01'),(190,'Lawas','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(191,'Mulu National Park','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(192,'Sarikei','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(193,'Miri','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(194,'Batang Ai National Park','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(195,'Sibu','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(196,'Kapit','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(197,'Bareo','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(198,'Bako National Park','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(199,'Sri Aman','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(200,'Bau','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(201,'Samarahan','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(202,'Kuching','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(203,'Kabong','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(204,'Bintulu','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01'),(205,'Kuala Terengganu','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(206,'Pulau Redang','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(207,'Kemaman','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(208,'Dungun','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(209,'Pulau Duyong','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(210,'Rantau Abang','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(211,'Kuala Besut','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(212,'Pulau Kapas','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(213,'Pulau Perhentian','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(214,'Marang','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(215,'Besut','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(216,'Setiu','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(217,'Cukai','Terengganu','2013-04-08 18:47:01','2013-04-08 18:47:01'),(218,'Sipadan','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(219,'Lahad Datu','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(220,'Danau','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(221,'Tenom','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(222,'Papar','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(223,'Tuaran','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(224,'Danum','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(225,'Tawau','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(226,'Kudat','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(227,'Keningau','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(228,'Gunung Kinabalu','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(229,'Kota Kinabalu','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(230,'Semporna','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(231,'Limbang','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(232,'Sandakan','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(233,'Kuala Penyu','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(234,'Kinabalu National Park','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(235,'Penampang','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(236,'Kota Maruda','Sabah','2013-04-08 18:47:01','2013-04-08 18:47:01'),(237,'Victoria','Labuan','2013-04-08 18:47:01','2013-04-08 18:47:01'),(238,'Kampung Ganggarak','Labuan','2013-04-08 18:47:01','2013-04-08 18:47:01'),(239,'Saratok','Sarawak','2013-04-08 18:47:01','2013-04-08 18:47:01');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completed_surveys`
--

DROP TABLE IF EXISTS `completed_surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completed_surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_completed_surveys_on_user_id` (`user_id`),
  KEY `index_completed_surveys_on_survey_id` (`survey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completed_surveys`
--

LOCK TABLES `completed_surveys` WRITE;
/*!40000 ALTER TABLE `completed_surveys` DISABLE KEYS */;
INSERT INTO `completed_surveys` VALUES (3,1,7,0,'2013-05-30 13:20:27','2013-06-02 15:47:11'),(4,82,7,NULL,'2013-05-30 13:24:06','2013-05-30 13:24:06'),(5,47,7,NULL,'2013-05-31 16:00:30','2013-05-31 16:00:30'),(6,49,7,NULL,'2013-05-31 16:00:31','2013-05-31 16:00:31'),(7,50,7,NULL,'2013-05-31 16:00:31','2013-05-31 16:00:31'),(8,51,7,NULL,'2013-05-31 16:00:31','2013-05-31 16:00:31'),(9,80,7,NULL,'2013-05-31 16:00:31','2013-05-31 16:00:31'),(138,26,11,1,'2013-06-02 14:51:19','2013-06-02 18:41:51'),(139,80,11,NULL,'2013-06-02 15:28:55','2013-06-02 15:28:55'),(140,26,7,1,'2013-06-02 18:30:41','2013-06-02 18:50:04'),(141,29,7,NULL,'2013-06-02 18:30:41','2013-06-02 18:30:41'),(142,30,7,NULL,'2013-06-02 18:30:41','2013-06-02 18:30:41'),(143,31,7,NULL,'2013-06-02 18:30:41','2013-06-02 18:30:41'),(144,32,7,NULL,'2013-06-02 18:30:41','2013-06-02 18:30:41'),(145,33,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(146,34,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(147,35,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(148,36,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(149,37,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(150,38,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(151,39,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(152,40,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(153,41,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(154,42,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(155,43,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(156,44,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(157,45,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(158,21,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(159,48,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(160,23,7,NULL,'2013-06-02 18:30:42','2013-06-02 18:30:42'),(186,1,10,NULL,'2013-06-03 07:37:13','2013-06-03 07:37:13'),(187,18,10,NULL,'2013-06-03 07:37:26','2013-06-03 07:37:26'),(188,20,10,NULL,'2013-06-03 07:37:26','2013-06-03 07:37:26'),(189,26,10,1,'2013-06-03 07:37:26','2013-06-03 09:05:26'),(190,21,9,NULL,'2013-06-03 09:07:54','2013-06-03 09:07:54'),(191,23,9,NULL,'2013-06-03 09:07:55','2013-06-03 09:07:55'),(192,26,9,1,'2013-06-03 09:07:56','2013-06-03 09:09:16'),(193,29,9,NULL,'2013-06-03 09:07:56','2013-06-03 09:07:56'),(194,30,9,NULL,'2013-06-03 09:07:57','2013-06-03 09:07:57'),(195,31,9,NULL,'2013-06-03 09:07:57','2013-06-03 09:07:57'),(196,32,9,NULL,'2013-06-03 09:07:57','2013-06-03 09:07:57'),(197,33,9,NULL,'2013-06-03 09:07:57','2013-06-03 09:07:57'),(198,34,9,NULL,'2013-06-03 09:07:57','2013-06-03 09:07:57'),(199,35,9,NULL,'2013-06-03 09:07:57','2013-06-03 09:07:57'),(200,36,9,NULL,'2013-06-03 09:07:57','2013-06-03 09:07:57'),(201,37,9,NULL,'2013-06-03 09:07:58','2013-06-03 09:07:58'),(202,38,9,NULL,'2013-06-03 09:07:58','2013-06-03 09:07:58'),(203,39,9,NULL,'2013-06-03 09:07:58','2013-06-03 09:07:58'),(204,40,9,NULL,'2013-06-03 09:07:58','2013-06-03 09:07:58'),(205,41,9,NULL,'2013-06-03 09:07:59','2013-06-03 09:07:59'),(206,42,9,NULL,'2013-06-03 09:07:59','2013-06-03 09:07:59'),(207,43,9,NULL,'2013-06-03 09:07:59','2013-06-03 09:07:59'),(208,44,9,NULL,'2013-06-03 09:07:59','2013-06-03 09:07:59'),(209,45,9,NULL,'2013-06-03 09:07:59','2013-06-03 09:07:59'),(210,47,9,NULL,'2013-06-03 09:08:00','2013-06-03 09:08:00'),(211,48,9,NULL,'2013-06-03 09:08:00','2013-06-03 09:08:00'),(212,49,9,NULL,'2013-06-03 09:08:00','2013-06-03 09:08:00'),(213,50,9,NULL,'2013-06-03 09:08:00','2013-06-03 09:08:00'),(214,51,9,NULL,'2013-06-03 09:08:00','2013-06-03 09:08:00'),(215,80,9,NULL,'2013-06-03 09:08:00','2013-06-03 09:08:00'),(216,82,9,NULL,'2013-06-03 09:08:00','2013-06-03 09:08:00'),(217,26,8,1,'2013-06-03 09:10:58','2013-06-03 09:11:33'),(218,29,8,NULL,'2013-06-03 09:10:58','2013-06-03 09:10:58'),(219,30,8,NULL,'2013-06-03 09:10:58','2013-06-03 09:10:58'),(220,31,8,NULL,'2013-06-03 09:10:58','2013-06-03 09:10:58'),(221,32,8,NULL,'2013-06-03 09:10:59','2013-06-03 09:10:59'),(222,33,8,NULL,'2013-06-03 09:10:59','2013-06-03 09:10:59'),(223,34,8,NULL,'2013-06-03 09:10:59','2013-06-03 09:10:59'),(224,35,8,NULL,'2013-06-03 09:10:59','2013-06-03 09:10:59'),(225,36,8,NULL,'2013-06-03 09:10:59','2013-06-03 09:10:59'),(226,37,8,NULL,'2013-06-03 09:10:59','2013-06-03 09:10:59'),(227,38,8,NULL,'2013-06-03 09:10:59','2013-06-03 09:10:59'),(228,39,8,NULL,'2013-06-03 09:10:59','2013-06-03 09:10:59'),(229,40,8,NULL,'2013-06-03 09:11:00','2013-06-03 09:11:00'),(230,41,8,NULL,'2013-06-03 09:11:00','2013-06-03 09:11:00'),(231,42,8,NULL,'2013-06-03 09:11:00','2013-06-03 09:11:00'),(232,43,8,NULL,'2013-06-03 09:11:00','2013-06-03 09:11:00'),(233,44,8,NULL,'2013-06-03 09:11:00','2013-06-03 09:11:00'),(234,45,8,NULL,'2013-06-03 09:11:00','2013-06-03 09:11:00'),(235,21,8,NULL,'2013-06-03 09:11:00','2013-06-03 09:11:00'),(236,48,8,NULL,'2013-06-03 09:11:00','2013-06-03 09:11:00'),(237,23,8,NULL,'2013-06-03 09:11:01','2013-06-03 09:11:01'),(238,82,8,NULL,'2013-06-03 09:11:01','2013-06-03 09:11:01'),(239,26,12,1,'2013-06-03 11:08:40','2013-06-03 11:09:04'),(240,80,12,NULL,'2013-06-03 11:08:40','2013-06-03 11:08:40'),(241,21,12,NULL,'2013-06-03 13:42:41','2013-06-03 13:42:41'),(242,23,12,NULL,'2013-06-03 13:42:41','2013-06-03 13:42:41'),(243,29,12,NULL,'2013-06-03 13:42:41','2013-06-03 13:42:41'),(244,30,12,NULL,'2013-06-03 13:42:41','2013-06-03 13:42:41'),(245,31,12,NULL,'2013-06-03 13:42:41','2013-06-03 13:42:41'),(246,32,12,NULL,'2013-06-03 13:42:41','2013-06-03 13:42:41'),(247,33,12,NULL,'2013-06-03 13:42:41','2013-06-03 13:42:41'),(248,34,12,NULL,'2013-06-03 13:42:41','2013-06-03 13:42:41'),(249,35,12,NULL,'2013-06-03 13:42:41','2013-06-03 13:42:41'),(250,36,12,NULL,'2013-06-03 13:42:41','2013-06-03 13:42:41'),(251,37,12,NULL,'2013-06-03 13:42:42','2013-06-03 13:42:42'),(252,38,12,NULL,'2013-06-03 13:42:42','2013-06-03 13:42:42'),(253,39,12,NULL,'2013-06-03 13:42:42','2013-06-03 13:42:42'),(254,40,12,NULL,'2013-06-03 13:42:42','2013-06-03 13:42:42'),(255,41,12,NULL,'2013-06-03 13:42:42','2013-06-03 13:42:42'),(256,42,12,NULL,'2013-06-03 13:42:42','2013-06-03 13:42:42'),(257,43,12,NULL,'2013-06-03 13:42:42','2013-06-03 13:42:42'),(258,44,12,NULL,'2013-06-03 13:42:43','2013-06-03 13:42:43'),(259,45,12,NULL,'2013-06-03 13:42:43','2013-06-03 13:42:43'),(260,47,12,NULL,'2013-06-03 13:42:43','2013-06-03 13:42:43'),(261,48,12,NULL,'2013-06-03 13:42:43','2013-06-03 13:42:43'),(262,49,12,NULL,'2013-06-03 13:42:43','2013-06-03 13:42:43'),(263,50,12,NULL,'2013-06-03 13:42:43','2013-06-03 13:42:43'),(264,51,12,NULL,'2013-06-03 13:42:43','2013-06-03 13:42:43'),(265,82,12,NULL,'2013-06-03 13:42:44','2013-06-03 13:42:44'),(266,20,12,NULL,'2013-06-03 13:51:18','2013-06-03 13:51:18'),(267,20,13,NULL,'2013-06-03 13:55:07','2013-06-03 13:55:07'),(268,26,13,1,'2013-06-03 13:55:07','2013-06-10 06:06:48'),(269,1,13,NULL,'2013-06-04 14:17:16','2013-06-04 14:17:16'),(270,18,13,NULL,'2013-06-04 14:17:16','2013-06-04 14:17:16'),(271,92,13,1,'2013-06-04 14:17:16','2013-06-06 06:30:14'),(272,47,8,NULL,'2013-06-10 06:05:34','2013-06-10 06:05:34'),(273,49,8,NULL,'2013-06-10 06:05:34','2013-06-10 06:05:34'),(274,50,8,NULL,'2013-06-10 06:05:34','2013-06-10 06:05:34'),(275,51,8,NULL,'2013-06-10 06:05:34','2013-06-10 06:05:34'),(276,89,8,NULL,'2013-06-10 06:05:35','2013-06-10 06:05:35'),(277,90,8,NULL,'2013-06-10 06:05:35','2013-06-10 06:05:35'),(278,91,8,NULL,'2013-06-10 06:05:36','2013-06-10 06:05:36'),(279,92,8,NULL,'2013-06-10 06:05:36','2013-06-10 06:05:36'),(280,89,12,NULL,'2013-06-10 06:10:49','2013-06-10 06:10:49'),(281,91,12,NULL,'2013-06-10 06:10:49','2013-06-10 06:10:49'),(282,26,14,1,'2013-06-10 06:13:37','2013-06-10 06:15:43'),(283,89,14,NULL,'2013-06-10 06:13:37','2013-06-10 06:13:37'),(284,91,14,NULL,'2013-06-10 06:13:37','2013-06-10 06:13:37'),(285,18,7,NULL,'2013-06-14 06:09:01','2013-06-14 06:09:01'),(286,20,7,NULL,'2013-06-14 06:09:01','2013-06-14 06:09:01'),(287,92,7,NULL,'2013-06-14 06:09:01','2013-06-14 06:09:01'),(288,1,19,NULL,'2013-06-30 19:40:01','2013-06-30 19:40:01'),(289,18,19,NULL,'2013-06-30 19:40:02','2013-06-30 19:40:02'),(290,20,19,NULL,'2013-06-30 19:40:02','2013-06-30 19:40:02'),(291,26,19,1,'2013-06-30 19:40:02','2013-07-14 11:13:08'),(292,92,19,NULL,'2013-06-30 19:40:02','2013-06-30 19:40:02'),(293,94,19,NULL,'2013-06-30 19:40:02','2013-06-30 19:40:02'),(294,96,19,NULL,'2013-06-30 19:40:03','2013-06-30 19:40:03'),(295,99,19,NULL,'2013-06-30 19:40:03','2013-06-30 19:40:03'),(296,100,19,NULL,'2013-06-30 19:40:03','2013-06-30 19:40:03'),(297,92,10,NULL,'2013-07-02 20:40:04','2013-07-02 20:40:04'),(298,94,10,NULL,'2013-07-02 20:40:04','2013-07-02 20:40:04'),(299,96,10,NULL,'2013-07-02 20:40:04','2013-07-02 20:40:04'),(300,99,10,NULL,'2013-07-02 20:40:04','2013-07-02 20:40:04'),(301,100,10,NULL,'2013-07-02 20:40:04','2013-07-02 20:40:04'),(302,20,17,NULL,'2013-07-02 20:41:25','2013-07-02 20:41:25'),(303,26,17,1,'2013-07-02 20:41:25','2013-07-14 11:15:26'),(304,20,15,NULL,'2013-07-02 20:46:47','2013-07-02 20:46:47'),(305,26,15,NULL,'2013-07-02 20:46:48','2013-07-02 20:46:48'),(306,20,18,NULL,'2013-07-02 20:48:49','2013-07-02 20:48:49'),(307,26,18,1,'2013-07-02 20:48:49','2013-07-14 11:15:22'),(308,93,8,NULL,'2013-07-11 04:41:40','2013-07-11 04:41:40'),(309,94,8,NULL,'2013-07-11 04:41:40','2013-07-11 04:41:40'),(310,95,8,NULL,'2013-07-11 04:41:40','2013-07-11 04:41:40'),(311,96,8,NULL,'2013-07-11 04:41:40','2013-07-11 04:41:40'),(312,97,8,NULL,'2013-07-11 04:41:40','2013-07-11 04:41:40'),(313,99,8,NULL,'2013-07-11 04:41:40','2013-07-11 04:41:40'),(314,100,8,NULL,'2013-07-11 04:41:40','2013-07-11 04:41:40'),(315,101,8,NULL,'2013-07-11 04:41:40','2013-07-11 04:41:40'),(316,102,8,NULL,'2013-07-11 04:41:40','2013-07-11 04:41:40'),(317,103,8,NULL,'2013-07-11 04:41:41','2013-07-11 04:41:41'),(318,104,8,NULL,'2013-07-11 04:41:41','2013-07-11 04:41:41'),(319,105,8,NULL,'2013-07-11 04:41:41','2013-07-11 04:41:41'),(320,106,8,NULL,'2013-07-11 04:41:41','2013-07-11 04:41:41'),(321,107,8,NULL,'2013-07-11 04:41:41','2013-07-11 04:41:41'),(322,108,8,NULL,'2013-07-11 04:41:41','2013-07-11 04:41:41'),(323,109,8,NULL,'2013-07-11 04:41:41','2013-07-11 04:41:41'),(324,110,8,NULL,'2013-07-11 04:41:42','2013-07-11 04:41:42'),(325,111,8,NULL,'2013-07-11 04:41:42','2013-07-11 04:41:42'),(326,1,16,NULL,'2013-07-24 19:30:25','2013-07-24 19:30:25'),(327,18,16,NULL,'2013-07-24 19:30:26','2013-07-24 19:30:26'),(328,20,16,NULL,'2013-07-24 19:30:26','2013-07-24 19:30:26'),(329,26,16,NULL,'2013-07-24 19:30:26','2013-07-24 19:30:26'),(330,92,16,NULL,'2013-07-24 19:30:27','2013-07-24 19:30:27'),(331,94,16,NULL,'2013-07-24 19:30:27','2013-07-24 19:30:27'),(332,96,16,NULL,'2013-07-24 19:30:27','2013-07-24 19:30:27'),(333,99,16,NULL,'2013-07-24 19:30:28','2013-07-24 19:30:28'),(334,100,16,NULL,'2013-07-24 19:30:28','2013-07-24 19:30:28');
/*!40000 ALTER TABLE `completed_surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultants`
--

DROP TABLE IF EXISTS `consultants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio_data` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `profile_complete` tinyint(1) DEFAULT NULL,
  `active_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_to` date DEFAULT NULL,
  `register_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_consultants_on_email` (`email`),
  UNIQUE KEY `index_consultants_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultants`
--

LOCK TABLES `consultants` WRITE;
/*!40000 ALTER TABLE `consultants` DISABLE KEYS */;
INSERT INTO `consultants` VALUES (1,'Fadhil','Luqman',NULL,'0126893949','some bios','2013-04-09 14:29:15','2013-07-27 22:07:04','fadhil@says.com','$2a$10$6ayd71BH6SGBXgbvNuPaqOc/K7a8zW2OpBHkMbw7R/lQt4akkbry6',NULL,NULL,'2013-07-27 22:07:04',94,'2013-07-27 22:07:04','2013-07-26 17:24:12','127.0.0.1','127.0.0.1','Syarikat aku',1,1,NULL,NULL,NULL,'2013',NULL),(22,NULL,NULL,NULL,NULL,NULL,'2013-04-12 13:39:43','2013-04-12 13:39:43','2323@asfd.com','$2a$10$FjZLy9Vr7VZEhxsl/BN3gec2yl0ysOs0kfsXqLd.upg5CCFOW0EI.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'','',NULL,'','','2013-04-12 13:43:08','2013-06-14 04:02:40','fadhil.luqman234234@gmail.com','$2a$10$S0j3dTZUSbexFmw4..kvL.AOLTaK4IcLgOvH509RJzgx3Zr025K.S',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Nama','Pertama',NULL,'012566666','','2013-04-12 13:45:33','2013-07-15 06:07:42','power@ranger.com','$2a$10$DgNXTw.meKoipcenwUGeru8tTDQPzNNMtB7j6oO2VeiHBSlUAWIWS',NULL,NULL,NULL,1,'2013-05-01 08:31:21','2013-05-01 08:31:21','127.0.0.1','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL,NULL,'2013-05-01 18:09:22','2013-05-01 18:09:22','fadhil.luqman+hentammm@gmail.com','$2a$10$Ujc8.DjrKScqwRkyXxi8YuWis7S4MyUt1uj7n2/kUh/v0EZPariwW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL,NULL,'2013-05-01 18:11:01','2013-05-01 18:11:01','some@sdfd.com','$2a$10$4Vl7eI31IgG21gAoTp1PZ.Ar8ogdcTNCQTCQjWIVSVp1I2Y93fVDS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL,NULL,'2013-05-17 10:25:40','2013-05-17 10:25:40','perunding@baru.com','$2a$10$6T0TSdCrw6uM1PDMW7cSBeg3bhCwHDEpy/rj1ai8SxTMawfqZEFH2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Haram','Jadah',NULL,'012554564564','Latar blekagnnn ku','2013-05-17 10:27:37','2013-07-15 07:35:05','serunding@baru.com','$2a$10$E2Ea8BRCtsdgSdFu0gekguHrN5..skb4XM4q7niniyB/JIHpJUehi',NULL,NULL,NULL,2,'2013-05-17 10:28:30','2013-05-17 10:27:45','127.0.0.1','127.0.0.1','Syarikat Serunding',1,1,NULL,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL,NULL,'2013-06-03 18:36:51','2013-06-03 18:36:51','tee@haaa.com','$2a$10$vFQ2blENgtYhE/Yxb3RzxuxqQ6.Jg78Yln5Ue2m6cYB7EkDB6H7ly',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(31,'Perunding','Baru',NULL,NULL,NULL,'2013-06-14 04:06:46','2013-06-14 04:06:46','new@dick.com','$2a$10$ANU1WrX7YVrqGwfYEotv1eWATzLV15esiOoUGCN/pweW5nnejxv6m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(32,'Perunding','Baru',NULL,NULL,NULL,'2013-06-14 04:08:15','2013-06-14 04:08:15','anothernew@dick.com','$2a$10$11G6Jv43heI4ixi03NhY.ersWB1Ocs/SSthGDM8qnHO0QSFubGYPO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Perunding','Baru',NULL,NULL,NULL,'2013-06-14 04:10:11','2013-06-14 04:10:11','latestnew@dick.com','$2a$10$4IlliEKnG0/R11CWHJzIGevPoDjUdfqliID1vZGoIKg5/LDQhylha',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(36,'Perunding','Baru',NULL,NULL,NULL,'2013-06-30 06:18:56','2013-06-30 06:18:56','herok@os.com','$2a$10$x0Xd4TPOHJNR32tV4aOMX.uZwuMgxLQrCRzAG9S6XFZEW5x/L5zYu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(37,'Perunding','Baru',NULL,NULL,NULL,'2013-06-30 06:21:11','2013-06-30 06:21:11','dwayne@smth.com','$2a$10$RHQjo8YVPVyW0g0DG8NW/eEpOUGK82UAKA4q2dheZ7B4cEjU21.h.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(38,'Perunding','Baru',NULL,NULL,NULL,'2013-06-30 06:22:17','2013-06-30 06:22:17','you@tu.com','$2a$10$u5x/WJQwPgBZ0NEoxeziVuwOfX2JHI.ZiriTFRScl3lj9//6nfi/S',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(40,'Perunding','Baru',NULL,NULL,NULL,'2013-06-30 18:52:16','2013-06-30 18:52:16','consultant1@test.com','$2a$10$BZlpC8O05o2LJVEVDPqBYucpzWy.HB80n0hd4y8Wed.5T/98Ynydu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(41,'Perunding','Baru',NULL,NULL,NULL,'2013-06-30 19:51:56','2013-06-30 19:51:56','consultant2@test.com','$2a$10$BtyB2UHKsY8hkluwjAOiV.bjoiPFvSZrxot64W8o4Ieq5Jbb3O3V.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(42,'Perunding','Baru',NULL,NULL,NULL,'2013-07-02 09:06:39','2013-07-02 09:06:39','hentam@kromo.com','$2a$10$stgDZS5mXJayGxbNQeqw5OrzXyQlfsmf08h9m6lWLTgUyN6Pinkja',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(43,'Perunding','Baru',NULL,NULL,NULL,'2013-07-02 09:10:04','2013-07-02 09:10:04','paoing@baru.com','$2a$10$gkQEgGwpS3awSxBBCzI3zeOq6sZom6PNpF8fnrTwJi4Cr9nM5uJou',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(44,'Perunding','Baru',NULL,NULL,NULL,'2013-07-02 09:13:57','2013-07-02 09:13:57','simpan@gmia.com','$2a$10$pmqE5Uof4ik/.i8aeZ8fperAa2yZ5skda3oFSLl/.DV6WY5TF67u6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(45,'Perunding','Baru',NULL,NULL,NULL,'2013-07-02 09:16:40','2013-07-02 09:16:40','jump@joine.com','$2a$10$QxaE2Msxzc/lO3ZFJIsKK.liPNZIjQfWGnrOh490cwz2k4uO4blcK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(46,'Perunding','Baru',NULL,NULL,NULL,'2013-07-02 09:17:05','2013-07-02 09:17:05','hea@osdf.com','$2a$10$nkH6VLoVneSUl/o6e8MgdeTj4CNSqVSRpmm40M.7ACFhSBb.DMdoW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(47,'Perunding','Baru',NULL,NULL,NULL,'2013-07-02 09:17:55','2013-07-02 09:17:55','trans@form.com','$2a$10$/DnHO5aC4U22cbkU0E2/TO29TVBMJl1XOPy8Q6YVGHx0/TL07KTRy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(48,'Perunding','Baru',NULL,NULL,NULL,'2013-07-02 09:20:56','2013-07-02 09:20:56','mock@flow.com','$2a$10$Yxj/4H72BOWHAQd1ntUuh.v7Xvf771rZ0nM4oksIdzoQQMa37Vvd6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(49,'Perunding','Baru',NULL,NULL,NULL,'2013-07-02 09:27:38','2013-07-02 09:27:38','hentam@gmail.cro','$2a$10$IghEbp.zoauedS2Fi6/ifOSdo0CpaafJuWnZ24WefLtqqcybL27NS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(50,'Perunding','Baru',NULL,NULL,NULL,'2013-07-27 12:01:40','2013-07-27 12:01:40','ninja@consult.com','$2a$10$WZW6gkY/Z4v6Sj3//dev4e0bJS56kt0nyjowUiBtZ6RPT8Vbbxmy.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(51,'Perunding','Baru',NULL,NULL,NULL,'2013-07-27 12:02:38','2013-07-27 12:02:38','ninja@another.com','$2a$10$CjM3WFcs067b9Hbw8D1j/eT9x/P88XQuiCPIs7Wn0NWYSsjPj.iW2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Perunding','Baru',NULL,NULL,NULL,'2013-07-27 12:06:46','2013-07-27 12:06:46','ninja@fuckers.com','$2a$10$ry1PPx28uWZffdKn/prlP.k51CdkA0MDsSKLijvFetLtwdKtpbv6y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Perunding','Baru',NULL,NULL,NULL,'2013-07-27 12:08:50','2013-07-27 12:08:50','nin@nin.com','$2a$10$1ImrEZFmHUZMy08NbHrqjuDyEc92G8BCgAiWUViwteIKkzrsIc8Cq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2013',NULL);
/*!40000 ALTER TABLE `consultants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultants_programs`
--

DROP TABLE IF EXISTS `consultants_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultants_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consultant_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultants_programs`
--

LOCK TABLES `consultants_programs` WRITE;
/*!40000 ALTER TABLE `consultants_programs` DISABLE KEYS */;
INSERT INTO `consultants_programs` VALUES (24,1,10,'2013-05-17 06:37:55','2013-05-17 06:37:55'),(26,28,9,'2013-05-17 10:25:40','2013-05-17 10:25:40'),(27,28,7,'2013-05-17 10:25:40','2013-05-17 10:25:40'),(28,29,8,'2013-05-17 10:27:37','2013-05-17 10:27:37'),(29,29,9,'2013-05-17 10:27:37','2013-05-17 10:27:37'),(30,30,8,'2013-06-03 18:36:51','2013-06-03 18:36:51'),(31,31,9,'2013-06-14 04:06:46','2013-06-14 04:06:46'),(32,32,10,'2013-06-14 04:08:15','2013-06-14 04:08:15'),(33,33,10,'2013-06-14 04:10:11','2013-06-14 04:10:11'),(35,40,9,'2013-06-30 18:52:16','2013-06-30 18:52:16'),(36,43,9,'2013-07-02 09:10:04','2013-07-02 09:10:04'),(37,49,10,'2013-07-02 09:27:38','2013-07-02 09:27:38'),(38,1,9,'2013-07-09 06:51:53','2013-07-09 06:51:53'),(39,50,10,'2013-07-27 12:01:40','2013-07-27 12:01:40'),(40,51,10,'2013-07-27 12:02:38','2013-07-27 12:02:38'),(41,52,9,'2013-07-27 12:06:46','2013-07-27 12:06:46'),(42,53,7,'2013-07-27 12:08:50','2013-07-27 12:08:50');
/*!40000 ALTER TABLE `consultants_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_reports`
--

DROP TABLE IF EXISTS `course_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `course_details` text COLLATE utf8_unicode_ci,
  `course_summary` text COLLATE utf8_unicode_ci,
  `report_date` date DEFAULT NULL,
  `course_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_date` date DEFAULT NULL,
  `consultant_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_targeted_attendees` int(11) DEFAULT NULL,
  `course_actual_attendees` int(11) DEFAULT NULL,
  `course_no_of_vips` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `course_program` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_program_id` int(11) DEFAULT NULL,
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_venue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_reports`
--

LOCK TABLES `course_reports` WRITE;
/*!40000 ALTER TABLE `course_reports` DISABLE KEYS */;
INSERT INTO `course_reports` VALUES (11,61,NULL,'Ulasan',NULL,NULL,NULL,'fadhil@says.com',NULL,NULL,5,'2013-07-28 19:43:21','2013-07-28 19:43:21','Electronics and stuff',9,'Seminar',NULL,1);
/*!40000 ALTER TABLE `course_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `venue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `pax` int(11) DEFAULT '0',
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (6,'A new course','some course descriptions','2013-05-06','2013-07-11','some venue','2013-04-18 11:55:51','2013-04-18 14:12:55',9,NULL,1,NULL,NULL),(42,'Kurusus with limit','3 orang saja','2013-07-07','2013-08-09','Tempat','2013-05-13 07:08:08','2013-06-11 09:31:23',7,NULL,0,3,'Seminar'),(52,'Terbaru Skelaigus','some munch','2013-07-12','2013-08-13','some milk','2013-05-13 07:20:26','2013-05-13 09:16:36',9,NULL,1,3,'Seminar'),(53,'Kursus Harem','Harem J','2013-07-10','2013-07-11','Suatu Tempat','2013-05-14 06:56:50','2013-06-03 18:31:35',9,NULL,0,20,'Seminar'),(54,'',NULL,'2013-04-04',NULL,'','2013-05-14 10:42:04','2013-07-23 16:50:24',NULL,'PreviousCourse',NULL,0,NULL),(55,'',NULL,'2013-04-04',NULL,'','2013-05-14 10:42:49','2013-07-23 16:50:24',7,'PreviousCourse',NULL,0,NULL),(56,'',NULL,'2013-04-04',NULL,'','2013-05-14 11:19:32','2013-07-23 16:50:24',7,'PreviousCourse',NULL,0,NULL),(57,'Baru Kursus PUnya','some new huraianas','2013-08-03','2014-09-05','tempat kotor','2013-05-20 12:50:37','2013-07-01 07:29:25',7,NULL,0,110,'Seminar'),(58,'Gile Iklan','Halo Huraiana','2013-04-05','2013-09-04','Some Vuew some where','2013-06-06 11:02:31','2013-06-06 11:02:31',10,NULL,1,233,'Seminar'),(59,'Whenever Whatever','Hurairianana','2013-06-14','2013-10-07','tempatku','2013-06-13 11:36:37','2013-06-13 11:36:37',8,NULL,1,10,'Bengkel'),(60,'Paling Upcoming','Hurainniasd.','2013-07-01','2013-12-28','Kuala Lumpur','2013-07-14 06:44:52','2013-07-14 06:44:52',9,NULL,NULL,30,'Seminar'),(61,'Some new','Fucker','2013-10-01','2013-10-27','KL','2013-07-14 08:03:07','2013-07-27 22:07:25',9,NULL,0,30,'Seminar'),(62,'Another','lagi satu','2013-08-02','2014-01-31','foremos','2013-07-15 08:17:33','2013-07-23 20:28:54',7,NULL,1,10,'Bengkel'),(63,'','','2013-07-18','2013-07-31','','2013-07-15 11:30:27','2013-07-15 11:30:27',7,NULL,1,0,'Seminar'),(64,'Lagi Baru','Huraian','2013-07-29','2013-09-30','tempat','2013-07-29 07:43:56','2013-07-29 07:43:56',9,NULL,1,10,'Bengkel');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_users`
--

DROP TABLE IF EXISTS `courses_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_users` (
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_courses_users_on_course_id_and_user_id` (`course_id`,`user_id`),
  KEY `index_courses_users_on_user_id_and_course_id` (`user_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_users`
--

LOCK TABLES `courses_users` WRITE;
/*!40000 ALTER TABLE `courses_users` DISABLE KEYS */;
INSERT INTO `courses_users` VALUES (42,26),(42,92),(52,1),(52,18),(52,20),(52,26),(52,92),(52,94),(52,96),(52,99),(52,100),(53,20),(53,26),(57,26),(57,80),(57,83),(57,83),(57,85),(57,85),(57,87),(57,89),(57,89),(57,89),(57,91),(59,26),(61,26);
/*!40000 ALTER TABLE `courses_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) DEFAULT '0',
  `attempts` int(11) DEFAULT '0',
  `handler` text COLLATE utf8_unicode_ci,
  `last_error` text COLLATE utf8_unicode_ci,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `delayed_jobs_priority` (`priority`,`run_at`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
INSERT INTO `delayed_jobs` VALUES (1,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 1\n    ic_number: 800829-12-5231\n    phone: 0126893949\n    created_at: 2013-04-08 18:48:07.000000000 Z\n    updated_at: 2013-07-15 08:13:25.000000000 Z\n    email: fadhil.luqman@gmail.com\n    encrypted_password: $2a$10$reecJsQsDwHuWIIu/Vf2AusRJnEIAb7aQod1LJGDuswlhtDF7FxMa\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: 2013-07-15 08:13:25.000000000 Z\n    sign_in_count: 137\n    current_sign_in_at: 2013-07-15 08:13:25.000000000 Z\n    last_sign_in_at: 2013-07-14 19:44:43.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-04-08 18:48:09.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-08 18:48:07.000000000 Z\n    first_name: Fadhil\n    last_name: \'\'\n    confirmed: 1\n    has_business_profile: 1\n    attended_course: \n    has_attended_course: 0\n    gender: m\n    twitter_handle: fadhil\n    facebook_handle: fadhil.luqman\n    current_employment_status: part_time_business\n    role_id: 5\n    is_active: 1\n    staff_number: SM1234\n    section: Training\n    unit: Some Unit\n    office_phone: 0456785753\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- wat\n- whatevs\n',NULL,'2013-07-15 18:24:44',NULL,NULL,NULL,NULL,'2013-07-15 18:21:44','2013-07-15 18:21:44'),(2,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 18\n    ic_number: 800829-12-5239\n    phone: 0125889923\n    created_at: 2013-04-15 00:21:33.000000000 Z\n    updated_at: 2013-07-14 13:00:02.000000000 Z\n    email: cibai@hentam.com\n    encrypted_password: $2a$10$HWsKCpKxT8ObnstNV8.CZOkdAJW0dPYMZ.X5siaDolEJq1z9kJlJO\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 8\n    current_sign_in_at: 2013-07-14 12:59:56.000000000 Z\n    last_sign_in_at: 2013-07-02 19:28:49.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-05-13 08:43:56.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-15 00:21:33.000000000 Z\n    first_name: Fuck\n    last_name: You\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: f\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: studying\n    role_id: 6\n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- wat\n- whatevs\n',NULL,'2013-07-15 18:24:44',NULL,NULL,NULL,NULL,'2013-07-15 18:21:44','2013-07-15 18:21:44'),(3,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 20\n    ic_number: 900212-12-5223\n    phone: 0125687959\n    created_at: 2013-04-22 13:43:17.000000000 Z\n    updated_at: 2013-06-03 13:57:57.000000000 Z\n    email: someother@email.com\n    encrypted_password: $2a$10$q1N7KkGnFiLboqK3VlUpvOIbUP/W6rGIEM9vnYSBSiSHlR7nMcA6C\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 5\n    current_sign_in_at: 2013-06-03 13:57:57.000000000 Z\n    last_sign_in_at: 2013-06-03 13:49:40.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-04-22 13:43:20.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-22 13:43:17.000000000 Z\n    first_name: Hemtammm\n    last_name: SAjaaaasaf\n    confirmed: 1\n    has_business_profile: 0\n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: own_business\n    role_id: 0\n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- wat\n- whatevs\n',NULL,'2013-07-15 18:24:44',NULL,NULL,NULL,NULL,'2013-07-15 18:21:44','2013-07-15 18:21:44'),(4,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 26\n    ic_number: 901122-12-4444\n    phone: \'123235235\'\n    created_at: 2013-05-14 12:17:27.000000000 Z\n    updated_at: 2013-07-15 06:51:18.000000000 Z\n    email: cibai@gampang.com\n    encrypted_password: $2a$10$nc97Q9G41gnz/zOkY0Fkq.UxV3eOPku4FGIJWCIoKnxFwcn9vrfSq\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: 2013-07-15 06:51:18.000000000 Z\n    sign_in_count: 54\n    current_sign_in_at: 2013-07-15 06:51:18.000000000 Z\n    last_sign_in_at: 2013-07-14 19:46:50.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-05-14 12:17:30.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-05-14 12:17:27.000000000 Z\n    first_name: ! \'another \'\n    last_name: new\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- wat\n- whatevs\n',NULL,'2013-07-15 18:24:44',NULL,NULL,NULL,NULL,'2013-07-15 18:21:44','2013-07-15 18:21:44'),(5,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 92\n    ic_number: 410116-01-5509\n    phone: \'124125525\'\n    created_at: 2013-06-03 18:17:28.000000000 Z\n    updated_at: 2013-06-04 14:17:51.000000000 Z\n    email: random4@random123.com\n    encrypted_password: $2a$10$1q4U8j8ArI9a5.1nOGfQCuQW8AWa8KkeuVdk1GzOLgJgFuyjuMrfy\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 2\n    current_sign_in_at: 2013-06-04 14:17:51.000000000 Z\n    last_sign_in_at: 2013-06-04 14:13:54.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-04 14:13:54.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-03 18:17:28.000000000 Z\n    first_name: JackDot\n    last_name: Zod\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: studying\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- wat\n- whatevs\n',NULL,'2013-07-15 18:24:44',NULL,NULL,NULL,NULL,'2013-07-15 18:21:44','2013-07-15 18:21:44'),(6,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 94\n    ic_number: 720929-12-5231\n    phone: 0125894858\n    created_at: 2013-06-30 18:03:47.000000000 Z\n    updated_at: 2013-06-30 19:22:02.000000000 Z\n    email: user1@baru.com\n    encrypted_password: $2a$10$HbDTzRV.YKgUXIgINORiPeS8voNpiBNbSMj179bJ6UQv1a/t.7HFW\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 2\n    current_sign_in_at: 2013-06-30 19:13:41.000000000 Z\n    last_sign_in_at: 2013-06-30 18:03:53.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:03:53.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:03:47.000000000 Z\n    first_name: user baru\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- wat\n- whatevs\n',NULL,'2013-07-15 18:24:45',NULL,NULL,NULL,NULL,'2013-07-15 18:21:45','2013-07-15 18:21:45'),(7,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 96\n    ic_number: 760729-12-5231\n    phone: 0129694858\n    created_at: 2013-06-30 18:17:11.000000000 Z\n    updated_at: 2013-07-15 06:05:19.000000000 Z\n    email: user3@baru.com\n    encrypted_password: $2a$10$SavINkaRrI3hIULY7ZQB7.XCvj4E6H4ewB4GnvSuK3dDKf4Ikt1Sq\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 4\n    current_sign_in_at: 2013-07-15 06:05:19.000000000 Z\n    last_sign_in_at: 2013-07-15 05:45:21.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:17:13.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:17:11.000000000 Z\n    first_name: user baru 3\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \n    facebook_handle: \n    current_employment_status: \n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \n    walk_in_first_time: \n    profile_complete: \n    type: \n- wat\n- whatevs\n',NULL,'2013-07-15 18:24:45',NULL,NULL,NULL,NULL,'2013-07-15 18:21:45','2013-07-15 18:21:45'),(8,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 99\n    ic_number: 820229-12-5231\n    phone: 01234566788\n    created_at: 2013-06-30 18:34:23.000000000 Z\n    updated_at: 2013-07-10 16:33:47.000000000 Z\n    email: user5@baru.com\n    encrypted_password: $2a$10$Zgg9.RRKRqyOIyTSzeU6VeAcwTpYHqT6tnxUBCP2wJeFGl/q/O/am\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 5\n    current_sign_in_at: 2013-07-09 15:01:27.000000000 Z\n    last_sign_in_at: 2013-07-02 17:36:00.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:34:31.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:34:23.000000000 Z\n    first_name: user baru 5\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- wat\n- whatevs\n',NULL,'2013-07-15 18:24:45',NULL,NULL,NULL,NULL,'2013-07-15 18:21:45','2013-07-15 18:21:45'),(9,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 100\n    ic_number: 760509-12-4231\n    phone: \'012341234\'\n    created_at: 2013-06-30 18:47:25.000000000 Z\n    updated_at: 2013-07-15 06:51:07.000000000 Z\n    email: user7@baru.com\n    encrypted_password: $2a$10$CCSNarL47MdRByItHVELTe/1hoLqTpLBqO9KMxvBr1OUPNXCoVrDa\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 7\n    current_sign_in_at: 2013-07-15 06:48:31.000000000 Z\n    last_sign_in_at: 2013-07-14 13:41:59.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:47:29.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:47:25.000000000 Z\n    first_name: user 7\n    last_name: Nama Bapa\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: f\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- wat\n- whatevs\n',NULL,'2013-07-15 18:24:45',NULL,NULL,NULL,NULL,'2013-07-15 18:21:45','2013-07-15 18:21:45'),(10,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 1\n    ic_number: 800829-12-5231\n    phone: 0126893949\n    created_at: 2013-04-08 18:48:07.000000000 Z\n    updated_at: 2013-07-15 18:23:49.000000000 Z\n    email: fadhil.luqman@gmail.com\n    encrypted_password: $2a$10$reecJsQsDwHuWIIu/Vf2AusRJnEIAb7aQod1LJGDuswlhtDF7FxMa\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 137\n    current_sign_in_at: 2013-07-15 08:13:25.000000000 Z\n    last_sign_in_at: 2013-07-14 19:44:43.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-04-08 18:48:09.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-08 18:48:07.000000000 Z\n    first_name: Fadhil\n    last_name: \'\'\n    confirmed: 1\n    has_business_profile: 1\n    attended_course: \n    has_attended_course: 0\n    gender: m\n    twitter_handle: fadhil\n    facebook_handle: fadhil.luqman\n    current_employment_status: part_time_business\n    role_id: 5\n    is_active: 1\n    staff_number: SM1234\n    section: Training\n    unit: Some Unit\n    office_phone: 0456785753\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- my shit\n- ! \"\\r\\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\\r\\n<head>\\r\\n<meta http-equiv=\\\"Content-Type\\\"\n  content=\\\"text/html; charset=utf-8\\\" />\\r\\n<title>Untitled Document</title>\\r\\n</head>\\r\\n<body>\\r\\n\\r\\n<div\n  style=\\\"width:100%;\\\" align=\\\"center\\\">\\r\\n\\r\\n<table width=\\\"100%\\\" border=\\\"0\\\"\n  cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td align=\\\"center\\\" valign=\\\"top\\\"\n  style=\\\"background-color:#53636e;\\\" bgcolor=\\\"#53636e;\\\">\\r\\n    \\r\\n    <br>\\r\\n\n  \\   <br>\\r\\n    <table width=\\\"583\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><img\n  src=\\\"images/header.jpg\\\" width=\\\"583\\\" height=\\\"118\\\"></td>\\r\\n      </tr>\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n            <td\n  align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\"\n  cellpadding=\\\"0\\\">\\r\\n              <tr>\\r\\n                <td align=\\\"center\\\"\n  valign=\\\"top\\\">\\r\\n                \\t<div style=\\\"color:#245da5; font-family:Times\n  New Roman, Times, serif; font-size:48px;\\\">Newsletter Title</div>\\r\\n                  <div\n  style=\\\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\\\">Month\n  Day, Year</div></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\"><img src=\\\"images/pic1.jpg\\\" width=\\\"512\\\" height=\\\"296\\\"\n  vspace=\\\"10\\\"></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif;\n  font-size:12px; color:#525252;\\\">\\r\\n                \\r\\n                <div style=\\\"color:#3482ad;\n  font-size:19px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum\n  magna enim, volutpat venenatis eros.</div>\\r\\n                <br>\\r\\n                Aliquam\n  sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\\r\\nsapien\n  justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam\n  orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend\n  feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu\n  nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec\n  dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis.\n  Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim.\n  Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales\n  consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\\r\\n<br>\\r\\n<table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td\n  width=\\\"13%\\\"><b><img src=\\\"images/tweet.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\">\n  <img src=\\\"images/facebook.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\"></b></td>\\r\\n\n  \\   <td width=\\\"87%\\\" style=\\\"font-size:11px; color:#525252; font-family:Arial,\n  Helvetica, sans-serif;\\\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed\n  <br>\\r\\n      Customer Support: support@companyname.com</b></td>\\r\\n  </tr>\\r\\n</table></td>\\r\\n\n  \\             </tr>\\r\\n              <tr>\\r\\n                <td align=\\\"left\\\"\n  valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif; font-size:12px;\n  color:#525252;\\\">&nbsp;</td>\\r\\n              </tr>\\r\\n            </table></td>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n\n  \\       </table></td>\\r\\n      </tr>\\r\\n      <tr>\\r\\n        <td align=\\\"left\\\"\n  valign=\\\"top\\\" bgcolor=\\\"#3d90bd\\\" style=\\\"background-color:#3d90bd;\\\"><table width=\\\"100%\\\"\n  border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n            <td height=\\\"50\\\" valign=\\\"middle\\\" style=\\\"color:#FFFFFF;\n  font-size:11px; font-family:Arial, Helvetica, sans-serif;\\\"><b>Company Address:</b><br>\\r\\n123\n  James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n        </table></td>\\r\\n      </tr>\\r\\n\n  \\ </table>\\r\\n    <br>\\r\\n    <br></td>\\r\\n  </tr>\\r\\n</table>\\r\\n\\r\\n</div>\\r\\n\\r\\n</body>\\r\\n</html>\\r\\n\"\n',NULL,'2013-07-15 19:19:46',NULL,NULL,NULL,NULL,'2013-07-15 19:16:46','2013-07-15 19:16:46'),(11,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 18\n    ic_number: 800829-12-5239\n    phone: 0125889923\n    created_at: 2013-04-15 00:21:33.000000000 Z\n    updated_at: 2013-07-14 13:00:02.000000000 Z\n    email: cibai@hentam.com\n    encrypted_password: $2a$10$HWsKCpKxT8ObnstNV8.CZOkdAJW0dPYMZ.X5siaDolEJq1z9kJlJO\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 8\n    current_sign_in_at: 2013-07-14 12:59:56.000000000 Z\n    last_sign_in_at: 2013-07-02 19:28:49.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-05-13 08:43:56.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-15 00:21:33.000000000 Z\n    first_name: Fuck\n    last_name: You\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: f\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: studying\n    role_id: 6\n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- my shit\n- ! \"\\r\\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\\r\\n<head>\\r\\n<meta http-equiv=\\\"Content-Type\\\"\n  content=\\\"text/html; charset=utf-8\\\" />\\r\\n<title>Untitled Document</title>\\r\\n</head>\\r\\n<body>\\r\\n\\r\\n<div\n  style=\\\"width:100%;\\\" align=\\\"center\\\">\\r\\n\\r\\n<table width=\\\"100%\\\" border=\\\"0\\\"\n  cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td align=\\\"center\\\" valign=\\\"top\\\"\n  style=\\\"background-color:#53636e;\\\" bgcolor=\\\"#53636e;\\\">\\r\\n    \\r\\n    <br>\\r\\n\n  \\   <br>\\r\\n    <table width=\\\"583\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><img\n  src=\\\"images/header.jpg\\\" width=\\\"583\\\" height=\\\"118\\\"></td>\\r\\n      </tr>\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n            <td\n  align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\"\n  cellpadding=\\\"0\\\">\\r\\n              <tr>\\r\\n                <td align=\\\"center\\\"\n  valign=\\\"top\\\">\\r\\n                \\t<div style=\\\"color:#245da5; font-family:Times\n  New Roman, Times, serif; font-size:48px;\\\">Newsletter Title</div>\\r\\n                  <div\n  style=\\\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\\\">Month\n  Day, Year</div></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\"><img src=\\\"images/pic1.jpg\\\" width=\\\"512\\\" height=\\\"296\\\"\n  vspace=\\\"10\\\"></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif;\n  font-size:12px; color:#525252;\\\">\\r\\n                \\r\\n                <div style=\\\"color:#3482ad;\n  font-size:19px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum\n  magna enim, volutpat venenatis eros.</div>\\r\\n                <br>\\r\\n                Aliquam\n  sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\\r\\nsapien\n  justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam\n  orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend\n  feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu\n  nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec\n  dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis.\n  Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim.\n  Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales\n  consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\\r\\n<br>\\r\\n<table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td\n  width=\\\"13%\\\"><b><img src=\\\"images/tweet.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\">\n  <img src=\\\"images/facebook.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\"></b></td>\\r\\n\n  \\   <td width=\\\"87%\\\" style=\\\"font-size:11px; color:#525252; font-family:Arial,\n  Helvetica, sans-serif;\\\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed\n  <br>\\r\\n      Customer Support: support@companyname.com</b></td>\\r\\n  </tr>\\r\\n</table></td>\\r\\n\n  \\             </tr>\\r\\n              <tr>\\r\\n                <td align=\\\"left\\\"\n  valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif; font-size:12px;\n  color:#525252;\\\">&nbsp;</td>\\r\\n              </tr>\\r\\n            </table></td>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n\n  \\       </table></td>\\r\\n      </tr>\\r\\n      <tr>\\r\\n        <td align=\\\"left\\\"\n  valign=\\\"top\\\" bgcolor=\\\"#3d90bd\\\" style=\\\"background-color:#3d90bd;\\\"><table width=\\\"100%\\\"\n  border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n            <td height=\\\"50\\\" valign=\\\"middle\\\" style=\\\"color:#FFFFFF;\n  font-size:11px; font-family:Arial, Helvetica, sans-serif;\\\"><b>Company Address:</b><br>\\r\\n123\n  James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n        </table></td>\\r\\n      </tr>\\r\\n\n  \\ </table>\\r\\n    <br>\\r\\n    <br></td>\\r\\n  </tr>\\r\\n</table>\\r\\n\\r\\n</div>\\r\\n\\r\\n</body>\\r\\n</html>\\r\\n\"\n',NULL,'2013-07-15 19:19:46',NULL,NULL,NULL,NULL,'2013-07-15 19:16:46','2013-07-15 19:16:46'),(12,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 20\n    ic_number: 900212-12-5223\n    phone: 0125687959\n    created_at: 2013-04-22 13:43:17.000000000 Z\n    updated_at: 2013-06-03 13:57:57.000000000 Z\n    email: someother@email.com\n    encrypted_password: $2a$10$q1N7KkGnFiLboqK3VlUpvOIbUP/W6rGIEM9vnYSBSiSHlR7nMcA6C\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 5\n    current_sign_in_at: 2013-06-03 13:57:57.000000000 Z\n    last_sign_in_at: 2013-06-03 13:49:40.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-04-22 13:43:20.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-22 13:43:17.000000000 Z\n    first_name: Hemtammm\n    last_name: SAjaaaasaf\n    confirmed: 1\n    has_business_profile: 0\n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: own_business\n    role_id: 0\n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- my shit\n- ! \"\\r\\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\\r\\n<head>\\r\\n<meta http-equiv=\\\"Content-Type\\\"\n  content=\\\"text/html; charset=utf-8\\\" />\\r\\n<title>Untitled Document</title>\\r\\n</head>\\r\\n<body>\\r\\n\\r\\n<div\n  style=\\\"width:100%;\\\" align=\\\"center\\\">\\r\\n\\r\\n<table width=\\\"100%\\\" border=\\\"0\\\"\n  cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td align=\\\"center\\\" valign=\\\"top\\\"\n  style=\\\"background-color:#53636e;\\\" bgcolor=\\\"#53636e;\\\">\\r\\n    \\r\\n    <br>\\r\\n\n  \\   <br>\\r\\n    <table width=\\\"583\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><img\n  src=\\\"images/header.jpg\\\" width=\\\"583\\\" height=\\\"118\\\"></td>\\r\\n      </tr>\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n            <td\n  align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\"\n  cellpadding=\\\"0\\\">\\r\\n              <tr>\\r\\n                <td align=\\\"center\\\"\n  valign=\\\"top\\\">\\r\\n                \\t<div style=\\\"color:#245da5; font-family:Times\n  New Roman, Times, serif; font-size:48px;\\\">Newsletter Title</div>\\r\\n                  <div\n  style=\\\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\\\">Month\n  Day, Year</div></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\"><img src=\\\"images/pic1.jpg\\\" width=\\\"512\\\" height=\\\"296\\\"\n  vspace=\\\"10\\\"></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif;\n  font-size:12px; color:#525252;\\\">\\r\\n                \\r\\n                <div style=\\\"color:#3482ad;\n  font-size:19px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum\n  magna enim, volutpat venenatis eros.</div>\\r\\n                <br>\\r\\n                Aliquam\n  sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\\r\\nsapien\n  justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam\n  orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend\n  feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu\n  nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec\n  dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis.\n  Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim.\n  Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales\n  consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\\r\\n<br>\\r\\n<table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td\n  width=\\\"13%\\\"><b><img src=\\\"images/tweet.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\">\n  <img src=\\\"images/facebook.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\"></b></td>\\r\\n\n  \\   <td width=\\\"87%\\\" style=\\\"font-size:11px; color:#525252; font-family:Arial,\n  Helvetica, sans-serif;\\\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed\n  <br>\\r\\n      Customer Support: support@companyname.com</b></td>\\r\\n  </tr>\\r\\n</table></td>\\r\\n\n  \\             </tr>\\r\\n              <tr>\\r\\n                <td align=\\\"left\\\"\n  valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif; font-size:12px;\n  color:#525252;\\\">&nbsp;</td>\\r\\n              </tr>\\r\\n            </table></td>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n\n  \\       </table></td>\\r\\n      </tr>\\r\\n      <tr>\\r\\n        <td align=\\\"left\\\"\n  valign=\\\"top\\\" bgcolor=\\\"#3d90bd\\\" style=\\\"background-color:#3d90bd;\\\"><table width=\\\"100%\\\"\n  border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n            <td height=\\\"50\\\" valign=\\\"middle\\\" style=\\\"color:#FFFFFF;\n  font-size:11px; font-family:Arial, Helvetica, sans-serif;\\\"><b>Company Address:</b><br>\\r\\n123\n  James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n        </table></td>\\r\\n      </tr>\\r\\n\n  \\ </table>\\r\\n    <br>\\r\\n    <br></td>\\r\\n  </tr>\\r\\n</table>\\r\\n\\r\\n</div>\\r\\n\\r\\n</body>\\r\\n</html>\\r\\n\"\n',NULL,'2013-07-15 19:19:46',NULL,NULL,NULL,NULL,'2013-07-15 19:16:46','2013-07-15 19:16:46'),(13,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 26\n    ic_number: 901122-12-4444\n    phone: \'123235235\'\n    created_at: 2013-05-14 12:17:27.000000000 Z\n    updated_at: 2013-07-15 06:51:18.000000000 Z\n    email: cibai@gampang.com\n    encrypted_password: $2a$10$nc97Q9G41gnz/zOkY0Fkq.UxV3eOPku4FGIJWCIoKnxFwcn9vrfSq\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: 2013-07-15 06:51:18.000000000 Z\n    sign_in_count: 54\n    current_sign_in_at: 2013-07-15 06:51:18.000000000 Z\n    last_sign_in_at: 2013-07-14 19:46:50.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-05-14 12:17:30.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-05-14 12:17:27.000000000 Z\n    first_name: ! \'another \'\n    last_name: new\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- my shit\n- ! \"\\r\\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\\r\\n<head>\\r\\n<meta http-equiv=\\\"Content-Type\\\"\n  content=\\\"text/html; charset=utf-8\\\" />\\r\\n<title>Untitled Document</title>\\r\\n</head>\\r\\n<body>\\r\\n\\r\\n<div\n  style=\\\"width:100%;\\\" align=\\\"center\\\">\\r\\n\\r\\n<table width=\\\"100%\\\" border=\\\"0\\\"\n  cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td align=\\\"center\\\" valign=\\\"top\\\"\n  style=\\\"background-color:#53636e;\\\" bgcolor=\\\"#53636e;\\\">\\r\\n    \\r\\n    <br>\\r\\n\n  \\   <br>\\r\\n    <table width=\\\"583\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><img\n  src=\\\"images/header.jpg\\\" width=\\\"583\\\" height=\\\"118\\\"></td>\\r\\n      </tr>\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n            <td\n  align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\"\n  cellpadding=\\\"0\\\">\\r\\n              <tr>\\r\\n                <td align=\\\"center\\\"\n  valign=\\\"top\\\">\\r\\n                \\t<div style=\\\"color:#245da5; font-family:Times\n  New Roman, Times, serif; font-size:48px;\\\">Newsletter Title</div>\\r\\n                  <div\n  style=\\\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\\\">Month\n  Day, Year</div></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\"><img src=\\\"images/pic1.jpg\\\" width=\\\"512\\\" height=\\\"296\\\"\n  vspace=\\\"10\\\"></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif;\n  font-size:12px; color:#525252;\\\">\\r\\n                \\r\\n                <div style=\\\"color:#3482ad;\n  font-size:19px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum\n  magna enim, volutpat venenatis eros.</div>\\r\\n                <br>\\r\\n                Aliquam\n  sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\\r\\nsapien\n  justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam\n  orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend\n  feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu\n  nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec\n  dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis.\n  Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim.\n  Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales\n  consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\\r\\n<br>\\r\\n<table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td\n  width=\\\"13%\\\"><b><img src=\\\"images/tweet.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\">\n  <img src=\\\"images/facebook.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\"></b></td>\\r\\n\n  \\   <td width=\\\"87%\\\" style=\\\"font-size:11px; color:#525252; font-family:Arial,\n  Helvetica, sans-serif;\\\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed\n  <br>\\r\\n      Customer Support: support@companyname.com</b></td>\\r\\n  </tr>\\r\\n</table></td>\\r\\n\n  \\             </tr>\\r\\n              <tr>\\r\\n                <td align=\\\"left\\\"\n  valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif; font-size:12px;\n  color:#525252;\\\">&nbsp;</td>\\r\\n              </tr>\\r\\n            </table></td>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n\n  \\       </table></td>\\r\\n      </tr>\\r\\n      <tr>\\r\\n        <td align=\\\"left\\\"\n  valign=\\\"top\\\" bgcolor=\\\"#3d90bd\\\" style=\\\"background-color:#3d90bd;\\\"><table width=\\\"100%\\\"\n  border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n            <td height=\\\"50\\\" valign=\\\"middle\\\" style=\\\"color:#FFFFFF;\n  font-size:11px; font-family:Arial, Helvetica, sans-serif;\\\"><b>Company Address:</b><br>\\r\\n123\n  James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n        </table></td>\\r\\n      </tr>\\r\\n\n  \\ </table>\\r\\n    <br>\\r\\n    <br></td>\\r\\n  </tr>\\r\\n</table>\\r\\n\\r\\n</div>\\r\\n\\r\\n</body>\\r\\n</html>\\r\\n\"\n',NULL,'2013-07-15 19:19:46',NULL,NULL,NULL,NULL,'2013-07-15 19:16:46','2013-07-15 19:16:46'),(14,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 92\n    ic_number: 410116-01-5509\n    phone: \'124125525\'\n    created_at: 2013-06-03 18:17:28.000000000 Z\n    updated_at: 2013-06-04 14:17:51.000000000 Z\n    email: random4@random123.com\n    encrypted_password: $2a$10$1q4U8j8ArI9a5.1nOGfQCuQW8AWa8KkeuVdk1GzOLgJgFuyjuMrfy\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 2\n    current_sign_in_at: 2013-06-04 14:17:51.000000000 Z\n    last_sign_in_at: 2013-06-04 14:13:54.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-04 14:13:54.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-03 18:17:28.000000000 Z\n    first_name: JackDot\n    last_name: Zod\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: studying\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- my shit\n- ! \"\\r\\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\\r\\n<head>\\r\\n<meta http-equiv=\\\"Content-Type\\\"\n  content=\\\"text/html; charset=utf-8\\\" />\\r\\n<title>Untitled Document</title>\\r\\n</head>\\r\\n<body>\\r\\n\\r\\n<div\n  style=\\\"width:100%;\\\" align=\\\"center\\\">\\r\\n\\r\\n<table width=\\\"100%\\\" border=\\\"0\\\"\n  cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td align=\\\"center\\\" valign=\\\"top\\\"\n  style=\\\"background-color:#53636e;\\\" bgcolor=\\\"#53636e;\\\">\\r\\n    \\r\\n    <br>\\r\\n\n  \\   <br>\\r\\n    <table width=\\\"583\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><img\n  src=\\\"images/header.jpg\\\" width=\\\"583\\\" height=\\\"118\\\"></td>\\r\\n      </tr>\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n            <td\n  align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\"\n  cellpadding=\\\"0\\\">\\r\\n              <tr>\\r\\n                <td align=\\\"center\\\"\n  valign=\\\"top\\\">\\r\\n                \\t<div style=\\\"color:#245da5; font-family:Times\n  New Roman, Times, serif; font-size:48px;\\\">Newsletter Title</div>\\r\\n                  <div\n  style=\\\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\\\">Month\n  Day, Year</div></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\"><img src=\\\"images/pic1.jpg\\\" width=\\\"512\\\" height=\\\"296\\\"\n  vspace=\\\"10\\\"></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif;\n  font-size:12px; color:#525252;\\\">\\r\\n                \\r\\n                <div style=\\\"color:#3482ad;\n  font-size:19px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum\n  magna enim, volutpat venenatis eros.</div>\\r\\n                <br>\\r\\n                Aliquam\n  sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\\r\\nsapien\n  justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam\n  orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend\n  feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu\n  nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec\n  dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis.\n  Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim.\n  Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales\n  consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\\r\\n<br>\\r\\n<table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td\n  width=\\\"13%\\\"><b><img src=\\\"images/tweet.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\">\n  <img src=\\\"images/facebook.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\"></b></td>\\r\\n\n  \\   <td width=\\\"87%\\\" style=\\\"font-size:11px; color:#525252; font-family:Arial,\n  Helvetica, sans-serif;\\\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed\n  <br>\\r\\n      Customer Support: support@companyname.com</b></td>\\r\\n  </tr>\\r\\n</table></td>\\r\\n\n  \\             </tr>\\r\\n              <tr>\\r\\n                <td align=\\\"left\\\"\n  valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif; font-size:12px;\n  color:#525252;\\\">&nbsp;</td>\\r\\n              </tr>\\r\\n            </table></td>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n\n  \\       </table></td>\\r\\n      </tr>\\r\\n      <tr>\\r\\n        <td align=\\\"left\\\"\n  valign=\\\"top\\\" bgcolor=\\\"#3d90bd\\\" style=\\\"background-color:#3d90bd;\\\"><table width=\\\"100%\\\"\n  border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n            <td height=\\\"50\\\" valign=\\\"middle\\\" style=\\\"color:#FFFFFF;\n  font-size:11px; font-family:Arial, Helvetica, sans-serif;\\\"><b>Company Address:</b><br>\\r\\n123\n  James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n        </table></td>\\r\\n      </tr>\\r\\n\n  \\ </table>\\r\\n    <br>\\r\\n    <br></td>\\r\\n  </tr>\\r\\n</table>\\r\\n\\r\\n</div>\\r\\n\\r\\n</body>\\r\\n</html>\\r\\n\"\n',NULL,'2013-07-15 19:19:46',NULL,NULL,NULL,NULL,'2013-07-15 19:16:46','2013-07-15 19:16:46'),(15,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 94\n    ic_number: 720929-12-5231\n    phone: 0125894858\n    created_at: 2013-06-30 18:03:47.000000000 Z\n    updated_at: 2013-06-30 19:22:02.000000000 Z\n    email: user1@baru.com\n    encrypted_password: $2a$10$HbDTzRV.YKgUXIgINORiPeS8voNpiBNbSMj179bJ6UQv1a/t.7HFW\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 2\n    current_sign_in_at: 2013-06-30 19:13:41.000000000 Z\n    last_sign_in_at: 2013-06-30 18:03:53.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:03:53.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:03:47.000000000 Z\n    first_name: user baru\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- my shit\n- ! \"\\r\\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\\r\\n<head>\\r\\n<meta http-equiv=\\\"Content-Type\\\"\n  content=\\\"text/html; charset=utf-8\\\" />\\r\\n<title>Untitled Document</title>\\r\\n</head>\\r\\n<body>\\r\\n\\r\\n<div\n  style=\\\"width:100%;\\\" align=\\\"center\\\">\\r\\n\\r\\n<table width=\\\"100%\\\" border=\\\"0\\\"\n  cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td align=\\\"center\\\" valign=\\\"top\\\"\n  style=\\\"background-color:#53636e;\\\" bgcolor=\\\"#53636e;\\\">\\r\\n    \\r\\n    <br>\\r\\n\n  \\   <br>\\r\\n    <table width=\\\"583\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><img\n  src=\\\"images/header.jpg\\\" width=\\\"583\\\" height=\\\"118\\\"></td>\\r\\n      </tr>\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n            <td\n  align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\"\n  cellpadding=\\\"0\\\">\\r\\n              <tr>\\r\\n                <td align=\\\"center\\\"\n  valign=\\\"top\\\">\\r\\n                \\t<div style=\\\"color:#245da5; font-family:Times\n  New Roman, Times, serif; font-size:48px;\\\">Newsletter Title</div>\\r\\n                  <div\n  style=\\\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\\\">Month\n  Day, Year</div></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\"><img src=\\\"images/pic1.jpg\\\" width=\\\"512\\\" height=\\\"296\\\"\n  vspace=\\\"10\\\"></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif;\n  font-size:12px; color:#525252;\\\">\\r\\n                \\r\\n                <div style=\\\"color:#3482ad;\n  font-size:19px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum\n  magna enim, volutpat venenatis eros.</div>\\r\\n                <br>\\r\\n                Aliquam\n  sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\\r\\nsapien\n  justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam\n  orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend\n  feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu\n  nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec\n  dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis.\n  Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim.\n  Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales\n  consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\\r\\n<br>\\r\\n<table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td\n  width=\\\"13%\\\"><b><img src=\\\"images/tweet.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\">\n  <img src=\\\"images/facebook.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\"></b></td>\\r\\n\n  \\   <td width=\\\"87%\\\" style=\\\"font-size:11px; color:#525252; font-family:Arial,\n  Helvetica, sans-serif;\\\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed\n  <br>\\r\\n      Customer Support: support@companyname.com</b></td>\\r\\n  </tr>\\r\\n</table></td>\\r\\n\n  \\             </tr>\\r\\n              <tr>\\r\\n                <td align=\\\"left\\\"\n  valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif; font-size:12px;\n  color:#525252;\\\">&nbsp;</td>\\r\\n              </tr>\\r\\n            </table></td>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n\n  \\       </table></td>\\r\\n      </tr>\\r\\n      <tr>\\r\\n        <td align=\\\"left\\\"\n  valign=\\\"top\\\" bgcolor=\\\"#3d90bd\\\" style=\\\"background-color:#3d90bd;\\\"><table width=\\\"100%\\\"\n  border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n            <td height=\\\"50\\\" valign=\\\"middle\\\" style=\\\"color:#FFFFFF;\n  font-size:11px; font-family:Arial, Helvetica, sans-serif;\\\"><b>Company Address:</b><br>\\r\\n123\n  James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n        </table></td>\\r\\n      </tr>\\r\\n\n  \\ </table>\\r\\n    <br>\\r\\n    <br></td>\\r\\n  </tr>\\r\\n</table>\\r\\n\\r\\n</div>\\r\\n\\r\\n</body>\\r\\n</html>\\r\\n\"\n',NULL,'2013-07-15 19:19:46',NULL,NULL,NULL,NULL,'2013-07-15 19:16:46','2013-07-15 19:16:46'),(16,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 96\n    ic_number: 760729-12-5231\n    phone: 0129694858\n    created_at: 2013-06-30 18:17:11.000000000 Z\n    updated_at: 2013-07-15 06:05:19.000000000 Z\n    email: user3@baru.com\n    encrypted_password: $2a$10$SavINkaRrI3hIULY7ZQB7.XCvj4E6H4ewB4GnvSuK3dDKf4Ikt1Sq\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 4\n    current_sign_in_at: 2013-07-15 06:05:19.000000000 Z\n    last_sign_in_at: 2013-07-15 05:45:21.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:17:13.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:17:11.000000000 Z\n    first_name: user baru 3\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \n    facebook_handle: \n    current_employment_status: \n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \n    walk_in_first_time: \n    profile_complete: \n    type: \n- my shit\n- ! \"\\r\\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\\r\\n<head>\\r\\n<meta http-equiv=\\\"Content-Type\\\"\n  content=\\\"text/html; charset=utf-8\\\" />\\r\\n<title>Untitled Document</title>\\r\\n</head>\\r\\n<body>\\r\\n\\r\\n<div\n  style=\\\"width:100%;\\\" align=\\\"center\\\">\\r\\n\\r\\n<table width=\\\"100%\\\" border=\\\"0\\\"\n  cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td align=\\\"center\\\" valign=\\\"top\\\"\n  style=\\\"background-color:#53636e;\\\" bgcolor=\\\"#53636e;\\\">\\r\\n    \\r\\n    <br>\\r\\n\n  \\   <br>\\r\\n    <table width=\\\"583\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><img\n  src=\\\"images/header.jpg\\\" width=\\\"583\\\" height=\\\"118\\\"></td>\\r\\n      </tr>\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n            <td\n  align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\"\n  cellpadding=\\\"0\\\">\\r\\n              <tr>\\r\\n                <td align=\\\"center\\\"\n  valign=\\\"top\\\">\\r\\n                \\t<div style=\\\"color:#245da5; font-family:Times\n  New Roman, Times, serif; font-size:48px;\\\">Newsletter Title</div>\\r\\n                  <div\n  style=\\\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\\\">Month\n  Day, Year</div></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\"><img src=\\\"images/pic1.jpg\\\" width=\\\"512\\\" height=\\\"296\\\"\n  vspace=\\\"10\\\"></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif;\n  font-size:12px; color:#525252;\\\">\\r\\n                \\r\\n                <div style=\\\"color:#3482ad;\n  font-size:19px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum\n  magna enim, volutpat venenatis eros.</div>\\r\\n                <br>\\r\\n                Aliquam\n  sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\\r\\nsapien\n  justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam\n  orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend\n  feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu\n  nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec\n  dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis.\n  Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim.\n  Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales\n  consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\\r\\n<br>\\r\\n<table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td\n  width=\\\"13%\\\"><b><img src=\\\"images/tweet.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\">\n  <img src=\\\"images/facebook.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\"></b></td>\\r\\n\n  \\   <td width=\\\"87%\\\" style=\\\"font-size:11px; color:#525252; font-family:Arial,\n  Helvetica, sans-serif;\\\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed\n  <br>\\r\\n      Customer Support: support@companyname.com</b></td>\\r\\n  </tr>\\r\\n</table></td>\\r\\n\n  \\             </tr>\\r\\n              <tr>\\r\\n                <td align=\\\"left\\\"\n  valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif; font-size:12px;\n  color:#525252;\\\">&nbsp;</td>\\r\\n              </tr>\\r\\n            </table></td>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n\n  \\       </table></td>\\r\\n      </tr>\\r\\n      <tr>\\r\\n        <td align=\\\"left\\\"\n  valign=\\\"top\\\" bgcolor=\\\"#3d90bd\\\" style=\\\"background-color:#3d90bd;\\\"><table width=\\\"100%\\\"\n  border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n            <td height=\\\"50\\\" valign=\\\"middle\\\" style=\\\"color:#FFFFFF;\n  font-size:11px; font-family:Arial, Helvetica, sans-serif;\\\"><b>Company Address:</b><br>\\r\\n123\n  James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n        </table></td>\\r\\n      </tr>\\r\\n\n  \\ </table>\\r\\n    <br>\\r\\n    <br></td>\\r\\n  </tr>\\r\\n</table>\\r\\n\\r\\n</div>\\r\\n\\r\\n</body>\\r\\n</html>\\r\\n\"\n',NULL,'2013-07-15 19:19:46',NULL,NULL,NULL,NULL,'2013-07-15 19:16:46','2013-07-15 19:16:46'),(17,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 99\n    ic_number: 820229-12-5231\n    phone: 01234566788\n    created_at: 2013-06-30 18:34:23.000000000 Z\n    updated_at: 2013-07-10 16:33:47.000000000 Z\n    email: user5@baru.com\n    encrypted_password: $2a$10$Zgg9.RRKRqyOIyTSzeU6VeAcwTpYHqT6tnxUBCP2wJeFGl/q/O/am\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 5\n    current_sign_in_at: 2013-07-09 15:01:27.000000000 Z\n    last_sign_in_at: 2013-07-02 17:36:00.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:34:31.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:34:23.000000000 Z\n    first_name: user baru 5\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- my shit\n- ! \"\\r\\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\\r\\n<head>\\r\\n<meta http-equiv=\\\"Content-Type\\\"\n  content=\\\"text/html; charset=utf-8\\\" />\\r\\n<title>Untitled Document</title>\\r\\n</head>\\r\\n<body>\\r\\n\\r\\n<div\n  style=\\\"width:100%;\\\" align=\\\"center\\\">\\r\\n\\r\\n<table width=\\\"100%\\\" border=\\\"0\\\"\n  cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td align=\\\"center\\\" valign=\\\"top\\\"\n  style=\\\"background-color:#53636e;\\\" bgcolor=\\\"#53636e;\\\">\\r\\n    \\r\\n    <br>\\r\\n\n  \\   <br>\\r\\n    <table width=\\\"583\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><img\n  src=\\\"images/header.jpg\\\" width=\\\"583\\\" height=\\\"118\\\"></td>\\r\\n      </tr>\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n            <td\n  align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\"\n  cellpadding=\\\"0\\\">\\r\\n              <tr>\\r\\n                <td align=\\\"center\\\"\n  valign=\\\"top\\\">\\r\\n                \\t<div style=\\\"color:#245da5; font-family:Times\n  New Roman, Times, serif; font-size:48px;\\\">Newsletter Title</div>\\r\\n                  <div\n  style=\\\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\\\">Month\n  Day, Year</div></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\"><img src=\\\"images/pic1.jpg\\\" width=\\\"512\\\" height=\\\"296\\\"\n  vspace=\\\"10\\\"></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif;\n  font-size:12px; color:#525252;\\\">\\r\\n                \\r\\n                <div style=\\\"color:#3482ad;\n  font-size:19px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum\n  magna enim, volutpat venenatis eros.</div>\\r\\n                <br>\\r\\n                Aliquam\n  sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\\r\\nsapien\n  justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam\n  orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend\n  feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu\n  nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec\n  dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis.\n  Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim.\n  Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales\n  consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\\r\\n<br>\\r\\n<table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td\n  width=\\\"13%\\\"><b><img src=\\\"images/tweet.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\">\n  <img src=\\\"images/facebook.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\"></b></td>\\r\\n\n  \\   <td width=\\\"87%\\\" style=\\\"font-size:11px; color:#525252; font-family:Arial,\n  Helvetica, sans-serif;\\\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed\n  <br>\\r\\n      Customer Support: support@companyname.com</b></td>\\r\\n  </tr>\\r\\n</table></td>\\r\\n\n  \\             </tr>\\r\\n              <tr>\\r\\n                <td align=\\\"left\\\"\n  valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif; font-size:12px;\n  color:#525252;\\\">&nbsp;</td>\\r\\n              </tr>\\r\\n            </table></td>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n\n  \\       </table></td>\\r\\n      </tr>\\r\\n      <tr>\\r\\n        <td align=\\\"left\\\"\n  valign=\\\"top\\\" bgcolor=\\\"#3d90bd\\\" style=\\\"background-color:#3d90bd;\\\"><table width=\\\"100%\\\"\n  border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n            <td height=\\\"50\\\" valign=\\\"middle\\\" style=\\\"color:#FFFFFF;\n  font-size:11px; font-family:Arial, Helvetica, sans-serif;\\\"><b>Company Address:</b><br>\\r\\n123\n  James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n        </table></td>\\r\\n      </tr>\\r\\n\n  \\ </table>\\r\\n    <br>\\r\\n    <br></td>\\r\\n  </tr>\\r\\n</table>\\r\\n\\r\\n</div>\\r\\n\\r\\n</body>\\r\\n</html>\\r\\n\"\n',NULL,'2013-07-15 19:19:46',NULL,NULL,NULL,NULL,'2013-07-15 19:16:46','2013-07-15 19:16:46'),(18,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 100\n    ic_number: 760509-12-4231\n    phone: \'012341234\'\n    created_at: 2013-06-30 18:47:25.000000000 Z\n    updated_at: 2013-07-15 06:51:07.000000000 Z\n    email: user7@baru.com\n    encrypted_password: $2a$10$CCSNarL47MdRByItHVELTe/1hoLqTpLBqO9KMxvBr1OUPNXCoVrDa\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 7\n    current_sign_in_at: 2013-07-15 06:48:31.000000000 Z\n    last_sign_in_at: 2013-07-14 13:41:59.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:47:29.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:47:25.000000000 Z\n    first_name: user 7\n    last_name: Nama Bapa\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: f\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- my shit\n- ! \"\\r\\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\\r\\n<head>\\r\\n<meta http-equiv=\\\"Content-Type\\\"\n  content=\\\"text/html; charset=utf-8\\\" />\\r\\n<title>Untitled Document</title>\\r\\n</head>\\r\\n<body>\\r\\n\\r\\n<div\n  style=\\\"width:100%;\\\" align=\\\"center\\\">\\r\\n\\r\\n<table width=\\\"100%\\\" border=\\\"0\\\"\n  cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td align=\\\"center\\\" valign=\\\"top\\\"\n  style=\\\"background-color:#53636e;\\\" bgcolor=\\\"#53636e;\\\">\\r\\n    \\r\\n    <br>\\r\\n\n  \\   <br>\\r\\n    <table width=\\\"583\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><img\n  src=\\\"images/header.jpg\\\" width=\\\"583\\\" height=\\\"118\\\"></td>\\r\\n      </tr>\\r\\n\n  \\     <tr>\\r\\n        <td align=\\\"left\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\" style=\\\"background-color:#FFFFFF;\\\"><table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n            <td\n  align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\"\n  cellpadding=\\\"0\\\">\\r\\n              <tr>\\r\\n                <td align=\\\"center\\\"\n  valign=\\\"top\\\">\\r\\n                \\t<div style=\\\"color:#245da5; font-family:Times\n  New Roman, Times, serif; font-size:48px;\\\">Newsletter Title</div>\\r\\n                  <div\n  style=\\\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\\\">Month\n  Day, Year</div></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\"><img src=\\\"images/pic1.jpg\\\" width=\\\"512\\\" height=\\\"296\\\"\n  vspace=\\\"10\\\"></td>\\r\\n              </tr>\\r\\n              <tr>\\r\\n                <td\n  align=\\\"left\\\" valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif;\n  font-size:12px; color:#525252;\\\">\\r\\n                \\r\\n                <div style=\\\"color:#3482ad;\n  font-size:19px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum\n  magna enim, volutpat venenatis eros.</div>\\r\\n                <br>\\r\\n                Aliquam\n  sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\\r\\nsapien\n  justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam\n  orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend\n  feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu\n  nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec\n  dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis.\n  Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim.\n  Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales\n  consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\\r\\n<br>\\r\\n<table\n  width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n  <tr>\\r\\n    <td\n  width=\\\"13%\\\"><b><img src=\\\"images/tweet.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\">\n  <img src=\\\"images/facebook.gif\\\" alt=\\\"\\\" width=\\\"24\\\" height=\\\"23\\\"></b></td>\\r\\n\n  \\   <td width=\\\"87%\\\" style=\\\"font-size:11px; color:#525252; font-family:Arial,\n  Helvetica, sans-serif;\\\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed\n  <br>\\r\\n      Customer Support: support@companyname.com</b></td>\\r\\n  </tr>\\r\\n</table></td>\\r\\n\n  \\             </tr>\\r\\n              <tr>\\r\\n                <td align=\\\"left\\\"\n  valign=\\\"top\\\" style=\\\"font-family:Arial, Helvetica, sans-serif; font-size:12px;\n  color:#525252;\\\">&nbsp;</td>\\r\\n              </tr>\\r\\n            </table></td>\\r\\n\n  \\           <td width=\\\"35\\\" align=\\\"left\\\" valign=\\\"top\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n\n  \\       </table></td>\\r\\n      </tr>\\r\\n      <tr>\\r\\n        <td align=\\\"left\\\"\n  valign=\\\"top\\\" bgcolor=\\\"#3d90bd\\\" style=\\\"background-color:#3d90bd;\\\"><table width=\\\"100%\\\"\n  border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n          <tr>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n            <td height=\\\"50\\\" valign=\\\"middle\\\" style=\\\"color:#FFFFFF;\n  font-size:11px; font-family:Arial, Helvetica, sans-serif;\\\"><b>Company Address:</b><br>\\r\\n123\n  James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\\r\\n            <td\n  width=\\\"35\\\">&nbsp;</td>\\r\\n          </tr>\\r\\n        </table></td>\\r\\n      </tr>\\r\\n\n  \\ </table>\\r\\n    <br>\\r\\n    <br></td>\\r\\n  </tr>\\r\\n</table>\\r\\n\\r\\n</div>\\r\\n\\r\\n</body>\\r\\n</html>\\r\\n\"\n',NULL,'2013-07-15 19:19:46',NULL,NULL,NULL,NULL,'2013-07-15 19:16:46','2013-07-15 19:16:46'),(19,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 1\n    ic_number: 800829-12-5231\n    phone: 0126893949\n    created_at: 2013-04-08 18:48:07.000000000 Z\n    updated_at: 2013-07-15 18:23:49.000000000 Z\n    email: fadhil.luqman@gmail.com\n    encrypted_password: $2a$10$reecJsQsDwHuWIIu/Vf2AusRJnEIAb7aQod1LJGDuswlhtDF7FxMa\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 137\n    current_sign_in_at: 2013-07-15 08:13:25.000000000 Z\n    last_sign_in_at: 2013-07-14 19:44:43.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-04-08 18:48:09.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-08 18:48:07.000000000 Z\n    first_name: Fadhil\n    last_name: \'\'\n    confirmed: 1\n    has_business_profile: 1\n    attended_course: \n    has_attended_course: 0\n    gender: m\n    twitter_handle: fadhil\n    facebook_handle: fadhil.luqman\n    current_employment_status: part_time_business\n    role_id: 5\n    is_active: 1\n    staff_number: SM1234\n    section: Training\n    unit: Some Unit\n    office_phone: 0456785753\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- the mos\n- whatevs\n',NULL,'2013-07-15 19:52:15',NULL,NULL,NULL,NULL,'2013-07-15 19:49:15','2013-07-15 19:49:15'),(20,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 18\n    ic_number: 800829-12-5239\n    phone: 0125889923\n    created_at: 2013-04-15 00:21:33.000000000 Z\n    updated_at: 2013-07-14 13:00:02.000000000 Z\n    email: cibai@hentam.com\n    encrypted_password: $2a$10$HWsKCpKxT8ObnstNV8.CZOkdAJW0dPYMZ.X5siaDolEJq1z9kJlJO\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 8\n    current_sign_in_at: 2013-07-14 12:59:56.000000000 Z\n    last_sign_in_at: 2013-07-02 19:28:49.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-05-13 08:43:56.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-15 00:21:33.000000000 Z\n    first_name: Fuck\n    last_name: You\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: f\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: studying\n    role_id: 6\n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- the mos\n- whatevs\n',NULL,'2013-07-15 19:52:16',NULL,NULL,NULL,NULL,'2013-07-15 19:49:16','2013-07-15 19:49:16'),(21,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 20\n    ic_number: 900212-12-5223\n    phone: 0125687959\n    created_at: 2013-04-22 13:43:17.000000000 Z\n    updated_at: 2013-06-03 13:57:57.000000000 Z\n    email: someother@email.com\n    encrypted_password: $2a$10$q1N7KkGnFiLboqK3VlUpvOIbUP/W6rGIEM9vnYSBSiSHlR7nMcA6C\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 5\n    current_sign_in_at: 2013-06-03 13:57:57.000000000 Z\n    last_sign_in_at: 2013-06-03 13:49:40.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-04-22 13:43:20.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-22 13:43:17.000000000 Z\n    first_name: Hemtammm\n    last_name: SAjaaaasaf\n    confirmed: 1\n    has_business_profile: 0\n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: own_business\n    role_id: 0\n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- the mos\n- whatevs\n',NULL,'2013-07-15 19:52:16',NULL,NULL,NULL,NULL,'2013-07-15 19:49:16','2013-07-15 19:49:16'),(22,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 26\n    ic_number: 901122-12-4444\n    phone: \'123235235\'\n    created_at: 2013-05-14 12:17:27.000000000 Z\n    updated_at: 2013-07-15 19:42:22.000000000 Z\n    email: cibai@gampang.com\n    encrypted_password: $2a$10$nc97Q9G41gnz/zOkY0Fkq.UxV3eOPku4FGIJWCIoKnxFwcn9vrfSq\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 55\n    current_sign_in_at: 2013-07-15 19:41:43.000000000 Z\n    last_sign_in_at: 2013-07-15 06:51:18.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-05-14 12:17:30.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-05-14 12:17:27.000000000 Z\n    first_name: ! \'another \'\n    last_name: new\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- the mos\n- whatevs\n',NULL,'2013-07-15 19:52:16',NULL,NULL,NULL,NULL,'2013-07-15 19:49:16','2013-07-15 19:49:16'),(23,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 92\n    ic_number: 410116-01-5509\n    phone: \'124125525\'\n    created_at: 2013-06-03 18:17:28.000000000 Z\n    updated_at: 2013-06-04 14:17:51.000000000 Z\n    email: random4@random123.com\n    encrypted_password: $2a$10$1q4U8j8ArI9a5.1nOGfQCuQW8AWa8KkeuVdk1GzOLgJgFuyjuMrfy\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 2\n    current_sign_in_at: 2013-06-04 14:17:51.000000000 Z\n    last_sign_in_at: 2013-06-04 14:13:54.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-04 14:13:54.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-03 18:17:28.000000000 Z\n    first_name: JackDot\n    last_name: Zod\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: studying\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- the mos\n- whatevs\n',NULL,'2013-07-15 19:52:16',NULL,NULL,NULL,NULL,'2013-07-15 19:49:16','2013-07-15 19:49:16'),(24,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 94\n    ic_number: 720929-12-5231\n    phone: 0125894858\n    created_at: 2013-06-30 18:03:47.000000000 Z\n    updated_at: 2013-06-30 19:22:02.000000000 Z\n    email: user1@baru.com\n    encrypted_password: $2a$10$HbDTzRV.YKgUXIgINORiPeS8voNpiBNbSMj179bJ6UQv1a/t.7HFW\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 2\n    current_sign_in_at: 2013-06-30 19:13:41.000000000 Z\n    last_sign_in_at: 2013-06-30 18:03:53.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:03:53.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:03:47.000000000 Z\n    first_name: user baru\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- the mos\n- whatevs\n',NULL,'2013-07-15 19:52:16',NULL,NULL,NULL,NULL,'2013-07-15 19:49:16','2013-07-15 19:49:16'),(25,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 96\n    ic_number: 760729-12-5231\n    phone: 0129694858\n    created_at: 2013-06-30 18:17:11.000000000 Z\n    updated_at: 2013-07-15 06:05:19.000000000 Z\n    email: user3@baru.com\n    encrypted_password: $2a$10$SavINkaRrI3hIULY7ZQB7.XCvj4E6H4ewB4GnvSuK3dDKf4Ikt1Sq\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 4\n    current_sign_in_at: 2013-07-15 06:05:19.000000000 Z\n    last_sign_in_at: 2013-07-15 05:45:21.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:17:13.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:17:11.000000000 Z\n    first_name: user baru 3\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \n    facebook_handle: \n    current_employment_status: \n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \n    walk_in_first_time: \n    profile_complete: \n    type: \n- the mos\n- whatevs\n',NULL,'2013-07-15 19:52:16',NULL,NULL,NULL,NULL,'2013-07-15 19:49:16','2013-07-15 19:49:16'),(26,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 99\n    ic_number: 820229-12-5231\n    phone: 01234566788\n    created_at: 2013-06-30 18:34:23.000000000 Z\n    updated_at: 2013-07-10 16:33:47.000000000 Z\n    email: user5@baru.com\n    encrypted_password: $2a$10$Zgg9.RRKRqyOIyTSzeU6VeAcwTpYHqT6tnxUBCP2wJeFGl/q/O/am\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 5\n    current_sign_in_at: 2013-07-09 15:01:27.000000000 Z\n    last_sign_in_at: 2013-07-02 17:36:00.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:34:31.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:34:23.000000000 Z\n    first_name: user baru 5\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- the mos\n- whatevs\n',NULL,'2013-07-15 19:52:16',NULL,NULL,NULL,NULL,'2013-07-15 19:49:16','2013-07-15 19:49:16'),(27,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 100\n    ic_number: 760509-12-4231\n    phone: \'012341234\'\n    created_at: 2013-06-30 18:47:25.000000000 Z\n    updated_at: 2013-07-15 06:51:07.000000000 Z\n    email: user7@baru.com\n    encrypted_password: $2a$10$CCSNarL47MdRByItHVELTe/1hoLqTpLBqO9KMxvBr1OUPNXCoVrDa\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 7\n    current_sign_in_at: 2013-07-15 06:48:31.000000000 Z\n    last_sign_in_at: 2013-07-14 13:41:59.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:47:29.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:47:25.000000000 Z\n    first_name: user 7\n    last_name: Nama Bapa\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: f\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- the mos\n- whatevs\n',NULL,'2013-07-15 19:52:16',NULL,NULL,NULL,NULL,'2013-07-15 19:49:16','2013-07-15 19:49:16'),(28,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 1\n    ic_number: 800829-12-5231\n    phone: 0126893949\n    created_at: 2013-04-08 18:48:07.000000000 Z\n    updated_at: 2013-07-15 18:23:49.000000000 Z\n    email: fadhil.luqman@gmail.com\n    encrypted_password: $2a$10$reecJsQsDwHuWIIu/Vf2AusRJnEIAb7aQod1LJGDuswlhtDF7FxMa\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 137\n    current_sign_in_at: 2013-07-15 08:13:25.000000000 Z\n    last_sign_in_at: 2013-07-14 19:44:43.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-04-08 18:48:09.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-08 18:48:07.000000000 Z\n    first_name: Fadhil\n    last_name: \'\'\n    confirmed: 1\n    has_business_profile: 1\n    attended_course: \n    has_attended_course: 0\n    gender: m\n    twitter_handle: fadhil\n    facebook_handle: fadhil.luqman\n    current_employment_status: part_time_business\n    role_id: 5\n    is_active: 1\n    staff_number: SM1234\n    section: Training\n    unit: Some Unit\n    office_phone: 0456785753\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- another mos\n- whatevs\n',NULL,'2013-07-15 19:53:45',NULL,NULL,NULL,NULL,'2013-07-15 19:50:45','2013-07-15 19:50:45'),(29,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 18\n    ic_number: 800829-12-5239\n    phone: 0125889923\n    created_at: 2013-04-15 00:21:33.000000000 Z\n    updated_at: 2013-07-14 13:00:02.000000000 Z\n    email: cibai@hentam.com\n    encrypted_password: $2a$10$HWsKCpKxT8ObnstNV8.CZOkdAJW0dPYMZ.X5siaDolEJq1z9kJlJO\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 8\n    current_sign_in_at: 2013-07-14 12:59:56.000000000 Z\n    last_sign_in_at: 2013-07-02 19:28:49.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-05-13 08:43:56.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-15 00:21:33.000000000 Z\n    first_name: Fuck\n    last_name: You\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: f\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: studying\n    role_id: 6\n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- another mos\n- whatevs\n',NULL,'2013-07-15 19:53:45',NULL,NULL,NULL,NULL,'2013-07-15 19:50:45','2013-07-15 19:50:45'),(30,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 20\n    ic_number: 900212-12-5223\n    phone: 0125687959\n    created_at: 2013-04-22 13:43:17.000000000 Z\n    updated_at: 2013-06-03 13:57:57.000000000 Z\n    email: someother@email.com\n    encrypted_password: $2a$10$q1N7KkGnFiLboqK3VlUpvOIbUP/W6rGIEM9vnYSBSiSHlR7nMcA6C\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 5\n    current_sign_in_at: 2013-06-03 13:57:57.000000000 Z\n    last_sign_in_at: 2013-06-03 13:49:40.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-04-22 13:43:20.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-04-22 13:43:17.000000000 Z\n    first_name: Hemtammm\n    last_name: SAjaaaasaf\n    confirmed: 1\n    has_business_profile: 0\n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: own_business\n    role_id: 0\n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- another mos\n- whatevs\n',NULL,'2013-07-15 19:53:45',NULL,NULL,NULL,NULL,'2013-07-15 19:50:45','2013-07-15 19:50:45'),(31,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 26\n    ic_number: 901122-12-4444\n    phone: \'123235235\'\n    created_at: 2013-05-14 12:17:27.000000000 Z\n    updated_at: 2013-07-15 19:42:22.000000000 Z\n    email: cibai@gampang.com\n    encrypted_password: $2a$10$nc97Q9G41gnz/zOkY0Fkq.UxV3eOPku4FGIJWCIoKnxFwcn9vrfSq\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 55\n    current_sign_in_at: 2013-07-15 19:41:43.000000000 Z\n    last_sign_in_at: 2013-07-15 06:51:18.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-05-14 12:17:30.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-05-14 12:17:27.000000000 Z\n    first_name: ! \'another \'\n    last_name: new\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- another mos\n- whatevs\n',NULL,'2013-07-15 19:53:45',NULL,NULL,NULL,NULL,'2013-07-15 19:50:45','2013-07-15 19:50:45'),(32,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 92\n    ic_number: 410116-01-5509\n    phone: \'124125525\'\n    created_at: 2013-06-03 18:17:28.000000000 Z\n    updated_at: 2013-06-04 14:17:51.000000000 Z\n    email: random4@random123.com\n    encrypted_password: $2a$10$1q4U8j8ArI9a5.1nOGfQCuQW8AWa8KkeuVdk1GzOLgJgFuyjuMrfy\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 2\n    current_sign_in_at: 2013-06-04 14:17:51.000000000 Z\n    last_sign_in_at: 2013-06-04 14:13:54.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-04 14:13:54.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-03 18:17:28.000000000 Z\n    first_name: JackDot\n    last_name: Zod\n    confirmed: 1\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: m\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: studying\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: 1\n    type: \n- another mos\n- whatevs\n',NULL,'2013-07-15 19:53:45',NULL,NULL,NULL,NULL,'2013-07-15 19:50:45','2013-07-15 19:50:45'),(33,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 94\n    ic_number: 720929-12-5231\n    phone: 0125894858\n    created_at: 2013-06-30 18:03:47.000000000 Z\n    updated_at: 2013-06-30 19:22:02.000000000 Z\n    email: user1@baru.com\n    encrypted_password: $2a$10$HbDTzRV.YKgUXIgINORiPeS8voNpiBNbSMj179bJ6UQv1a/t.7HFW\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 2\n    current_sign_in_at: 2013-06-30 19:13:41.000000000 Z\n    last_sign_in_at: 2013-06-30 18:03:53.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:03:53.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:03:47.000000000 Z\n    first_name: user baru\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- another mos\n- whatevs\n',NULL,'2013-07-15 19:53:45',NULL,NULL,NULL,NULL,'2013-07-15 19:50:45','2013-07-15 19:50:45'),(34,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 96\n    ic_number: 760729-12-5231\n    phone: 0129694858\n    created_at: 2013-06-30 18:17:11.000000000 Z\n    updated_at: 2013-07-15 06:05:19.000000000 Z\n    email: user3@baru.com\n    encrypted_password: $2a$10$SavINkaRrI3hIULY7ZQB7.XCvj4E6H4ewB4GnvSuK3dDKf4Ikt1Sq\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 4\n    current_sign_in_at: 2013-07-15 06:05:19.000000000 Z\n    last_sign_in_at: 2013-07-15 05:45:21.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:17:13.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:17:11.000000000 Z\n    first_name: user baru 3\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \n    facebook_handle: \n    current_employment_status: \n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \n    walk_in_first_time: \n    profile_complete: \n    type: \n- another mos\n- whatevs\n',NULL,'2013-07-15 19:53:45',NULL,NULL,NULL,NULL,'2013-07-15 19:50:45','2013-07-15 19:50:45'),(35,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 99\n    ic_number: 820229-12-5231\n    phone: 01234566788\n    created_at: 2013-06-30 18:34:23.000000000 Z\n    updated_at: 2013-07-10 16:33:47.000000000 Z\n    email: user5@baru.com\n    encrypted_password: $2a$10$Zgg9.RRKRqyOIyTSzeU6VeAcwTpYHqT6tnxUBCP2wJeFGl/q/O/am\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 5\n    current_sign_in_at: 2013-07-09 15:01:27.000000000 Z\n    last_sign_in_at: 2013-07-02 17:36:00.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:34:31.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:34:23.000000000 Z\n    first_name: user baru 5\n    last_name: \'\'\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: \n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- another mos\n- whatevs\n',NULL,'2013-07-15 19:53:45',NULL,NULL,NULL,NULL,'2013-07-15 19:50:45','2013-07-15 19:50:45'),(36,0,0,'--- !ruby/object:Delayed::PerformableMailer\nobject: !ruby/class \'NewsletterMailer\'\nmethod_name: :mailer_newsletter\nargs:\n- !ruby/ActiveRecord:User\n  attributes:\n    id: 100\n    ic_number: 760509-12-4231\n    phone: \'012341234\'\n    created_at: 2013-06-30 18:47:25.000000000 Z\n    updated_at: 2013-07-15 06:51:07.000000000 Z\n    email: user7@baru.com\n    encrypted_password: $2a$10$CCSNarL47MdRByItHVELTe/1hoLqTpLBqO9KMxvBr1OUPNXCoVrDa\n    reset_password_token: \n    reset_password_sent_at: \n    remember_created_at: \n    sign_in_count: 7\n    current_sign_in_at: 2013-07-15 06:48:31.000000000 Z\n    last_sign_in_at: 2013-07-14 13:41:59.000000000 Z\n    current_sign_in_ip: 127.0.0.1\n    last_sign_in_ip: 127.0.0.1\n    password: \n    confirmed_at: 2013-06-30 18:47:29.000000000 Z\n    confirmation_token: \n    confirmation_sent_at: 2013-06-30 18:47:25.000000000 Z\n    first_name: user 7\n    last_name: Nama Bapa\n    confirmed: 0\n    has_business_profile: \n    attended_course: \n    has_attended_course: \n    gender: f\n    twitter_handle: \'\'\n    facebook_handle: \'\'\n    current_employment_status: \'\'\n    role_id: \n    is_active: 1\n    staff_number: \n    section: \n    unit: \n    office_phone: \'\'\n    walk_in_first_time: 0\n    profile_complete: \n    type: \n- another mos\n- whatevs\n',NULL,'2013-07-15 19:53:45',NULL,NULL,NULL,NULL,'2013-07-15 19:50:45','2013-07-15 19:50:45');
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educations`
--

DROP TABLE IF EXISTS `educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educations`
--

LOCK TABLES `educations` WRITE;
/*!40000 ALTER TABLE `educations` DISABLE KEYS */;
INSERT INTO `educations` VALUES (1,'Electrical Engineering','2013-04-17 16:20:16','2013-04-17 16:20:16'),(2,'Business Administration','2013-04-17 16:20:29','2013-04-17 16:20:29'),(3,'Commerce','2013-04-17 16:20:42','2013-04-17 16:20:42'),(4,'Education','2013-04-20 19:45:26','2013-04-20 19:45:26'),(5,'Education','2013-04-20 19:46:41','2013-04-20 19:46:41'),(6,'Another Education Stock','2013-04-20 19:46:57','2013-04-20 19:46:57'),(7,'Kejuruteraan','2013-04-20 20:04:14','2013-04-20 20:04:14'),(8,'Perubatan','2013-04-20 20:04:24','2013-04-20 20:04:24'),(9,'Sastera','2013-04-20 20:04:33','2013-04-20 20:04:33'),(10,'Teknologi Maklumat','2013-04-20 20:04:42','2013-04-20 20:04:42'),(11,'Lain-lain','2013-04-20 20:04:50','2013-04-20 20:04:50');
/*!40000 ALTER TABLE `educations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educations_users`
--

DROP TABLE IF EXISTS `educations_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educations_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `education_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_educations_users_on_user_id_and_education_id` (`user_id`,`education_id`),
  KEY `index_educations_users_on_education_id_and_user_id` (`education_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educations_users`
--

LOCK TABLES `educations_users` WRITE;
/*!40000 ALTER TABLE `educations_users` DISABLE KEYS */;
INSERT INTO `educations_users` VALUES (2,54,1,'somewhere','2013-05-27 13:13:19','2013-05-27 13:13:19',NULL,NULL),(5,26,1,'asfasdf','2013-05-28 07:59:17','2013-05-28 07:59:17',NULL,NULL),(7,18,1,'asdfasdf','2013-06-03 13:44:13','2013-06-03 13:44:13',NULL,NULL),(8,20,1,'23423','2013-06-03 13:50:09','2013-06-03 13:50:09',NULL,NULL),(9,92,1,'asdfasdf','2013-06-04 14:15:00','2013-06-04 14:15:00',NULL,NULL),(10,23,1,'Huraiang','2013-07-03 09:03:36','2013-07-03 09:03:36',2005,2009);
/*!40000 ALTER TABLE `educations_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `letters`
--

DROP TABLE IF EXISTS `letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `letters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `letters`
--

LOCK TABLES `letters` WRITE;
/*!40000 ALTER TABLE `letters` DISABLE KEYS */;
INSERT INTO `letters` VALUES (1,NULL,NULL,NULL,NULL,'2013-06-12 20:29:39','2013-06-12 20:29:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,'2013-06-12 20:34:43','2013-06-12 20:34:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,'2013-06-21 08:46:03','2013-06-21 08:46:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,'2013-06-21 08:46:12','2013-06-21 08:46:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,'2013-06-21 08:46:23','2013-06-21 08:46:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'','Fadhil','','','2013-06-21 08:46:31','2013-06-21 08:46:43','','','',NULL,1,'Damansara','Kuala Lumpur'),(7,'Perkara berikut',NULL,NULL,'<p>Kandungannya Sura t itu.</p>','2013-06-26 06:01:52','2013-06-26 06:01:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'klhgjg',NULL,NULL,'<p>,b,nb</p>','2013-06-30 20:07:28','2013-06-30 20:07:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'some suooorat',NULL,NULL,'<p>kanlk;alsdf</p>','2013-07-01 06:59:44','2013-07-01 06:59:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Whatever the fuck',NULL,NULL,'<p>bullshit</p>','2013-07-10 15:54:06','2013-07-10 15:54:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberships`
--

DROP TABLE IF EXISTS `memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberships`
--

LOCK TABLES `memberships` WRITE;
/*!40000 ALTER TABLE `memberships` DISABLE KEYS */;
INSERT INTO `memberships` VALUES (21,'BIZ000520',26,'2013-05-14 13:27:32','2013-05-26 16:35:17','platinum'),(24,'BIZ000523',29,'2013-05-21 10:51:47','2013-05-26 16:41:44','platinum'),(25,'BIZ000524',30,'2013-05-21 10:51:47','2013-05-26 16:31:54','gold'),(26,'BIZ000525',31,'2013-05-21 10:51:47','2013-05-26 16:42:35','gold'),(27,'BIZ000526',NULL,'2013-05-21 10:51:47','2013-05-21 10:51:48',NULL),(30,'BIZ000529',NULL,'2013-05-21 10:55:29','2013-05-21 10:55:29',NULL),(31,'BIZ000530',NULL,'2013-05-21 10:58:43','2013-05-21 10:58:43',NULL),(32,'BIZ000531',NULL,'2013-05-21 10:58:43','2013-05-21 10:58:43',NULL),(33,'BIZ000532',NULL,'2013-05-21 10:58:43','2013-05-21 10:58:43',NULL),(34,'BIZ000533',34,'2013-05-21 10:58:43','2013-05-21 10:58:43',NULL),(35,'BIZ000534',35,'2013-05-21 11:02:43','2013-05-26 16:07:21','gold'),(36,'BIZ000535',NULL,'2013-05-21 11:11:05','2013-05-21 11:11:05',NULL),(37,'BIZ000536',NULL,'2013-05-21 11:11:05','2013-05-21 11:11:05',NULL),(38,'BIZ000537',NULL,'2013-05-21 11:11:06','2013-05-21 11:11:06',NULL),(39,'BIZ000538',NULL,'2013-05-21 11:11:31','2013-05-21 11:11:31',NULL),(40,'BIZ000539',NULL,'2013-05-21 11:11:31','2013-05-21 11:11:31',NULL),(41,'BIZ000540',NULL,'2013-05-21 11:11:31','2013-05-21 11:11:31',NULL),(42,'BIZ000541',36,'2013-05-21 11:11:31','2013-05-21 11:11:31',NULL),(43,'BIZ000542',NULL,'2013-05-21 11:14:28','2013-05-21 11:14:28',NULL),(44,'BIZ000543',NULL,'2013-05-21 11:14:28','2013-05-21 11:14:28',NULL),(45,'BIZ000544',NULL,'2013-05-21 11:14:28','2013-05-21 11:14:28',NULL),(46,'BIZ000545',37,'2013-05-21 11:14:28','2013-05-21 11:14:28',NULL),(48,'BIZ000547',NULL,'2013-05-21 11:18:30','2013-05-21 11:18:30',NULL),(49,'BIZ000548',NULL,'2013-05-21 11:18:30','2013-05-21 11:18:30',NULL),(50,'BIZ000549',NULL,'2013-05-21 11:18:31','2013-05-21 11:18:31',NULL),(51,'BIZ000550',39,'2013-05-21 11:18:31','2013-05-21 11:18:32',NULL),(52,'BIZ000551',NULL,'2013-05-21 11:19:18','2013-05-21 11:19:18',NULL),(53,'BIZ000552',40,'2013-05-21 11:25:15','2013-05-21 11:25:15',NULL),(55,'BIZ000554',42,'2013-05-21 11:34:19','2013-05-21 11:34:19',NULL),(56,'BIZ000555',43,'2013-05-21 12:35:58','2013-05-21 12:35:58',NULL),(57,'BIZ000556',44,'2013-05-21 12:39:39','2013-05-21 12:39:39',NULL),(59,'BIZ000558',20,'2013-05-21 15:15:19','2013-05-21 15:15:19',NULL),(61,'BIZ000560',46,'2013-05-21 16:47:31','2013-05-21 16:47:31',NULL),(62,'BIZ000561',48,'2013-05-22 10:16:56','2013-05-22 10:16:56',NULL),(63,'BIZ000562',23,'2013-05-26 10:12:03','2013-05-26 10:12:04',NULL),(64,'BIZ000563',54,'2013-05-27 13:07:19','2013-05-27 13:07:19',NULL),(65,'BIZ000564',55,'2013-05-27 13:07:19','2013-05-27 13:07:19',NULL),(66,'BIZ000565',57,'2013-05-27 13:52:18','2013-05-27 13:52:18',NULL),(67,'BIZ000566',58,'2013-05-27 13:52:18','2013-05-27 13:52:18',NULL),(68,'BIZ000567',59,'2013-05-27 13:53:33','2013-05-27 13:53:33',NULL),(69,'BIZ000568',60,'2013-05-27 13:53:33','2013-05-27 13:53:33',NULL),(70,'BIZ000569',68,'2013-05-27 14:10:42','2013-05-27 14:10:42',NULL),(71,'BIZ000570',82,'2013-05-27 16:42:17','2013-05-27 16:42:17',NULL),(72,'BIZ13000571',1,'2013-05-28 13:38:17','2013-05-28 13:38:18',NULL),(73,'BIZ130572',92,'2013-06-04 14:13:54','2013-06-04 14:13:54',NULL),(74,'BIZ130573',101,'2013-07-01 07:29:24','2013-07-01 07:29:24',NULL),(75,'BIZ130574',47,'2013-07-02 22:03:06','2013-07-02 22:03:06',NULL),(76,'BIZ130575',49,'2013-07-02 22:03:09','2013-07-02 22:03:10',NULL),(77,'BIZ130576',93,'2013-07-02 22:07:34','2013-07-02 22:07:34',NULL);
/*!40000 ALTER TABLE `memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
INSERT INTO `newsletters` VALUES (1,'Some Buletin','<p>BAru</p>','2013-07-01 17:10:29','2013-07-01 17:10:29',NULL),(2,'subject','<p>some buleit</p>','2013-07-01 17:11:47','2013-07-01 17:11:47',NULL),(3,'','\r\n\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title>Untitled Document</title>\r\n\r\n\r\n\r\n<p>\r\n\r\n</p><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tbody><tr>\r\n    <td align=\"center\" valign=\"top\" style=\"background-color:#53636e;\" bgcolor=\"#53636e;\">\r\n    \r\n    <br>\r\n    <br>\r\n    <table width=\"583\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n      <tbody><tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\"><br></td>\r\n      </tr>\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tbody><tr>\r\n            <td width=\"35\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n            <td align=\"left\" valign=\"top\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody><tr>\r\n                <td align=\"center\" valign=\"top\">\r\n                	<div style=\"color:#245da5; font-family:Times New Roman, Times, serif; font-size:48px;\">Newsletter Title<p></p>\r\n                  <p>Month Day, Year</p></div></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\"><img src=\"images/pic1.jpg\" width=\"512\" height=\"296\" vspace=\"10\"></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#525252;\">\r\n                \r\n                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum magna enim, volutpat venenatis eros.</p>\r\n                <br>\r\n                Aliquam sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\r\nsapien justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis. Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim. Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\r\n<br>\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tbody><tr>\r\n    <td width=\"13%\"><b><img src=\"images/tweet.gif\" alt=\"\" width=\"24\" height=\"23\"> <img src=\"images/facebook.gif\" alt=\"\" width=\"24\" height=\"23\"></b></td>\r\n    <td width=\"87%\" style=\"font-size:11px; color:#525252; font-family:Arial, Helvetica, sans-serif;\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed <br>\r\n      Customer Support: support@companyname.com</b></td>\r\n  </tr>\r\n</tbody></table></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#525252;\">&nbsp;</td>\r\n              </tr>\r\n            </tbody></table></td>\r\n            <td width=\"35\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n          </tr>\r\n        </tbody></table></td>\r\n      </tr>\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#3d90bd\" style=\"background-color:#3d90bd;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tbody><tr>\r\n            <td width=\"35\">&nbsp;</td>\r\n            <td height=\"50\" valign=\"middle\" style=\"color:#FFFFFF; font-size:11px; font-family:Arial, Helvetica, sans-serif;\"><b>Company Address:</b><br>\r\n123 James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\r\n            <td width=\"35\">&nbsp;</td>\r\n          </tr>\r\n        </tbody></table></td>\r\n      </tr>\r\n  </tbody></table>\r\n    <br>\r\n    <br></td>\r\n  </tr>\r\n</tbody></table>\r\n\r\n\r\n\r\n\r\n\r\n','2013-07-15 18:20:18','2013-07-15 18:20:18',NULL),(4,'','whatevs','2013-07-15 18:20:42','2013-07-15 18:20:42',NULL),(5,'wat','whatevs','2013-07-15 18:20:47','2013-07-15 18:20:47',NULL),(6,'my shit','\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n</head>\r\n<body>\r\n\r\n<div style=\"width:100%;\" align=\"center\">\r\n\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td align=\"center\" valign=\"top\" style=\"background-color:#53636e;\" bgcolor=\"#53636e;\">\r\n    \r\n    <br>\r\n    <br>\r\n    <table width=\"583\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\"><img src=\"images/header.jpg\" width=\"583\" height=\"118\"></td>\r\n      </tr>\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td width=\"35\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n            <td align=\"left\" valign=\"top\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tr>\r\n                <td align=\"center\" valign=\"top\">\r\n                	<div style=\"color:#245da5; font-family:Times New Roman, Times, serif; font-size:48px;\">Newsletter Title</div>\r\n                  <div style=\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\">Month Day, Year</div></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\"><img src=\"images/pic1.jpg\" width=\"512\" height=\"296\" vspace=\"10\"></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#525252;\">\r\n                \r\n                <div style=\"color:#3482ad; font-size:19px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum magna enim, volutpat venenatis eros.</div>\r\n                <br>\r\n                Aliquam sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\r\nsapien justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis. Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim. Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\r\n<br>\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td width=\"13%\"><b><img src=\"images/tweet.gif\" alt=\"\" width=\"24\" height=\"23\"> <img src=\"images/facebook.gif\" alt=\"\" width=\"24\" height=\"23\"></b></td>\r\n    <td width=\"87%\" style=\"font-size:11px; color:#525252; font-family:Arial, Helvetica, sans-serif;\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed <br>\r\n      Customer Support: support@companyname.com</b></td>\r\n  </tr>\r\n</table></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#525252;\">&nbsp;</td>\r\n              </tr>\r\n            </table></td>\r\n            <td width=\"35\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n          </tr>\r\n        </table></td>\r\n      </tr>\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#3d90bd\" style=\"background-color:#3d90bd;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td width=\"35\">&nbsp;</td>\r\n            <td height=\"50\" valign=\"middle\" style=\"color:#FFFFFF; font-size:11px; font-family:Arial, Helvetica, sans-serif;\"><b>Company Address:</b><br>\r\n123 James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\r\n            <td width=\"35\">&nbsp;</td>\r\n          </tr>\r\n        </table></td>\r\n      </tr>\r\n  </table>\r\n    <br>\r\n    <br></td>\r\n  </tr>\r\n</table>\r\n\r\n</div>\r\n\r\n</body>\r\n</html>\r\n','2013-07-15 19:16:35','2013-07-15 19:16:35',NULL),(7,'the mos','whatevs','2013-07-15 19:49:07','2013-07-15 19:49:07',NULL),(8,'another mos','whatevs','2013-07-15 19:50:39','2013-07-15 19:50:39',NULL),(9,'thiiis','whatevs','2013-07-15 19:57:47','2013-07-15 19:57:47',1),(10,'','templat qumquat','2013-07-16 02:37:53','2013-07-16 02:37:53',1),(11,'Subject','\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n</head>\r\n<body>\r\n\r\n<div style=\"width:100%;\" align=\"center\">\r\n\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td align=\"center\" valign=\"top\" style=\"background-color:#53636e;\" bgcolor=\"#53636e;\">\r\n    \r\n    <br>\r\n    <br>\r\n    <table width=\"583\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\"><img src=\"images/header.jpg\" width=\"583\" height=\"118\"></td>\r\n      </tr>\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td width=\"35\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n            <td align=\"left\" valign=\"top\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tr>\r\n                <td align=\"center\" valign=\"top\">\r\n                	<div style=\"color:#245da5; font-family:Times New Roman, Times, serif; font-size:48px;\">Newsletter Title</div>\r\n                  <div style=\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\">Month Day, Year</div></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\"><img src=\"images/pic1.jpg\" width=\"512\" height=\"296\" vspace=\"10\"></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#525252;\">\r\n                \r\n                <div style=\"color:#3482ad; font-size:19px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum magna enim, volutpat venenatis eros.</div>\r\n                <br>\r\n                Aliquam sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\r\nsapien justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis. Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim. Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\r\n<br>\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td width=\"13%\"><b><img src=\"images/tweet.gif\" alt=\"\" width=\"24\" height=\"23\"> <img src=\"images/facebook.gif\" alt=\"\" width=\"24\" height=\"23\"></b></td>\r\n    <td width=\"87%\" style=\"font-size:11px; color:#525252; font-family:Arial, Helvetica, sans-serif;\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed <br>\r\n      Customer Support: support@companyname.com</b></td>\r\n  </tr>\r\n</table></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#525252;\">&nbsp;</td>\r\n              </tr>\r\n            </table></td>\r\n            <td width=\"35\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n          </tr>\r\n        </table></td>\r\n      </tr>\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#3d90bd\" style=\"background-color:#3d90bd;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td width=\"35\">&nbsp;</td>\r\n            <td height=\"50\" valign=\"middle\" style=\"color:#FFFFFF; font-size:11px; font-family:Arial, Helvetica, sans-serif;\"><b>Company Address:</b><br>\r\n123 James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\r\n            <td width=\"35\">&nbsp;</td>\r\n          </tr>\r\n        </table></td>\r\n      </tr>\r\n  </table>\r\n    <br>\r\n    <br></td>\r\n  </tr>\r\n</table>\r\n\r\n</div>\r\n\r\n</body>\r\n</html>\r\n','2013-07-29 09:42:44','2013-07-29 09:42:44',1);
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters_templates`
--

DROP TABLE IF EXISTS `newsletters_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters_templates`
--

LOCK TABLES `newsletters_templates` WRITE;
/*!40000 ALTER TABLE `newsletters_templates` DISABLE KEYS */;
INSERT INTO `newsletters_templates` VALUES (1,'Templaat','\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n</head>\r\n<body>\r\n\r\n<div style=\"width:100%;\" align=\"center\">\r\n\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td align=\"center\" valign=\"top\" style=\"background-color:#53636e;\" bgcolor=\"#53636e;\">\r\n    \r\n    <br>\r\n    <br>\r\n    <table width=\"583\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\"><img src=\"images/header.jpg\" width=\"583\" height=\"118\"></td>\r\n      </tr>\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\" style=\"background-color:#FFFFFF;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td width=\"35\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n            <td align=\"left\" valign=\"top\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tr>\r\n                <td align=\"center\" valign=\"top\">\r\n                	<div style=\"color:#245da5; font-family:Times New Roman, Times, serif; font-size:48px;\">Newsletter Title</div>\r\n                  <div style=\"font-family: Verdana, Geneva, sans-serif; color:#898989; font-size:12px;\">Month Day, Year</div></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\"><img src=\"images/pic1.jpg\" width=\"512\" height=\"296\" vspace=\"10\"></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#525252;\">\r\n                \r\n                <div style=\"color:#3482ad; font-size:19px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum magna enim, volutpat venenatis eros.</div>\r\n                <br>\r\n                Aliquam sed velit vitae nibh pulvinar iaculis. Aenean hendrerit, lorem eu luctus cursus.\r\nsapien justo auctor ligula id bibendum lorem leo quis leo. Suspendisse sit amet aliquam orci. Aliquam erat volutpat. Aliquam erat volutpat. Nunc ac justo enim. Morbi eleifend feugiat turpis non placerat. Etiam sed tellus ac lectus lacinia molestie nec eu nisl. Pellentesque mattis luctus ultrices. Suspendisse pretium feugiat ipsum nec dapibus. Aenean bibendum vestibulum scelerisque. Curabitur tempus pharetra mollis. Pellentesque rhoncus euismod pellentesque. Nam vulputate purus et neque rutrum dignissim. Duis aliquam erat massa, vel gravida orci. Aenean consectetur, libero non sodales consequat, lorem leo ultrices eros, in porta erat arcu at ante.<br>\r\n<br>\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td width=\"13%\"><b><img src=\"images/tweet.gif\" alt=\"\" width=\"24\" height=\"23\"> <img src=\"images/facebook.gif\" alt=\"\" width=\"24\" height=\"23\"></b></td>\r\n    <td width=\"87%\" style=\"font-size:11px; color:#525252; font-family:Arial, Helvetica, sans-serif;\"><b>Hours: Mon-Fri 9:30-5:30, Sat. 9:30-3:00, Sun. Closed <br>\r\n      Customer Support: support@companyname.com</b></td>\r\n  </tr>\r\n</table></td>\r\n              </tr>\r\n              <tr>\r\n                <td align=\"left\" valign=\"top\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#525252;\">&nbsp;</td>\r\n              </tr>\r\n            </table></td>\r\n            <td width=\"35\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n          </tr>\r\n        </table></td>\r\n      </tr>\r\n      <tr>\r\n        <td align=\"left\" valign=\"top\" bgcolor=\"#3d90bd\" style=\"background-color:#3d90bd;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td width=\"35\">&nbsp;</td>\r\n            <td height=\"50\" valign=\"middle\" style=\"color:#FFFFFF; font-size:11px; font-family:Arial, Helvetica, sans-serif;\"><b>Company Address:</b><br>\r\n123 James Street,  Suite100, Long Beach CA, 90000, (000) 123  4567 </td>\r\n            <td width=\"35\">&nbsp;</td>\r\n          </tr>\r\n        </table></td>\r\n      </tr>\r\n  </table>\r\n    <br>\r\n    <br></td>\r\n  </tr>\r\n</table>\r\n\r\n</div>\r\n\r\n</body>\r\n</html>\r\n','2013-07-15 18:13:48','2013-07-15 18:13:48'),(2,'more','whatevs','2013-07-15 18:16:04','2013-07-15 18:16:04'),(3,'another','templat qumquat','2013-07-15 18:17:38','2013-07-15 18:17:38');
/*!40000 ALTER TABLE `newsletters_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `past_attendances`
--

DROP TABLE IF EXISTS `past_attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `past_attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `venue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ic_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `successful` tinyint(1) DEFAULT NULL,
  `newly_generated` tinyint(1) DEFAULT NULL,
  `latest_uploaded` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `past_attendances`
--

LOCK TABLES `past_attendances` WRITE;
/*!40000 ALTER TABLE `past_attendances` DISABLE KEYS */;
INSERT INTO `past_attendances` VALUES (9,'test','Baru Kursus PUnya','2012-12-16','2011-12-16','Lakeview College','Arifin','Mohamad','661216-01-5509','171234567','random@random123.com','2013-06-03 18:17:15','2013-06-20 11:34:20',1,0,1),(10,'Usahawan','Permata Hati','2012-12-19','2013-12-12','Paradigm Mall','Peter','Griffin','420116-01-5509','171234567','random2@random123.com','2013-06-03 18:17:15','2013-06-20 11:34:20',1,0,1),(11,'Usahawan','Permata Hati','2012-11-22',NULL,'Wherever','Fhadil','Luqman','901122-12-4444','126893949','cibai@gampang.com','2013-06-03 18:17:15','2013-06-20 11:34:20',1,0,1),(12,'test','Baru Kursus PUnya','2012-12-16','2011-12-16','Lakeview College','Jackass','McGormit','621216-01-5509','171234567','random3@random123.com','2013-06-03 18:17:28','2013-06-20 11:15:44',1,0,0),(13,'Usahawan','Permata Hati','2012-12-19','2013-12-12','Paradigm Mall','JackDot','Zod','410116-01-5509','171234567','random4@random123.com','2013-06-03 18:17:28','2013-06-20 11:15:44',1,0,0);
/*!40000 ALTER TABLE `past_attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previous_courses_users`
--

DROP TABLE IF EXISTS `previous_courses_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previous_courses_users` (
  `previous_course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_previous_courses_users_on_previous_course_id_and_user_id` (`previous_course_id`,`user_id`),
  KEY `index_previous_courses_users_on_user_id_and_previous_course_id` (`user_id`,`previous_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previous_courses_users`
--

LOCK TABLES `previous_courses_users` WRITE;
/*!40000 ALTER TABLE `previous_courses_users` DISABLE KEYS */;
INSERT INTO `previous_courses_users` VALUES (1,1),(2,2),(3,3),(4,4),(5,19),(11,1),(56,20);
/*!40000 ALTER TABLE `previous_courses_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES (7,'test','Program apa tah','2013-04-10 14:57:17','2013-05-01 18:29:02',27,NULL),(8,'Program A','<p>Integer sollicitudin justo vel lectus dapibus ut egestas tortor condimentum. Suspendisse ac odio vitae erat varius fringilla ut eget enim.\r\n</p>\r\n<p>\r\nMaecenas tempor auctor purus non dignissim. Cras sit amet diam vitae urna pulvinar consectetur nec eu turpis. Praesent venenatis justo ac libero suscipit id pellentesque ipsum pellentesque.\r\n</p>\r\n<p>\r\n\r\nDonec commodo luctus magna, id vestibulum urna porta sollicitudin. Nullam turpis ipsum, hendrerit vitae tincidunt id, tincidunt ut felis. Proin tempor ligula eget dui faucibus ornare. Phasellus id sem id tellus dictum luctus at pretium ante.</p>','2013-04-10 14:59:22','2013-05-01 18:45:27',NULL,NULL),(9,'Electronics and stuff','Some logo descri','2013-04-12 12:57:39','2013-05-02 05:59:00',1,NULL),(10,'Digital Manifestos','experience it slut','2013-04-12 12:58:26','2013-05-01 18:09:22',26,NULL);
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `question_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (18,'Do I like Anissa?',NULL,NULL,NULL,NULL,NULL,'2013-05-30 13:09:02','2013-05-30 13:09:02',7,'yes_no'),(19,'Is Anissa Hot?',NULL,'Yes','Very','Hells Yes',NULL,'2013-05-30 13:10:02','2013-05-30 13:10:02',7,'multiple_choice'),(20,'How hot is Anissa?',NULL,NULL,NULL,NULL,NULL,'2013-05-30 13:10:27','2013-05-30 13:10:27',7,'scale'),(21,'Is Johnny Goode?',NULL,'','','','','2013-05-31 09:35:16','2013-05-31 09:35:16',8,'yes_no'),(22,'Which one of these does Johnny look like?',NULL,'Apple','Vinegar','Cider','Honey','2013-05-31 09:35:16','2013-05-31 09:35:16',8,'multiple_choice'),(23,'How much does Johnny Appleseed taste like Vinegar?',NULL,'','','','','2013-05-31 09:35:16','2013-06-10 05:58:42',8,'subjective'),(24,'Is Johnny Goode?',NULL,'','','','','2013-05-31 09:41:25','2013-05-31 09:41:25',9,'yes_no'),(25,'Which one of these does Johnny look like?',NULL,'Apple','Vinegar','Cider','Honey','2013-05-31 09:41:25','2013-05-31 09:45:19',9,'yes_no'),(26,'How much does Johnny Appleseed taste like Vinegar?',NULL,'','','','','2013-05-31 09:41:25','2013-05-31 09:45:19',9,'yes_no'),(27,'Some question',NULL,'','','','','2013-05-31 10:07:20','2013-05-31 10:29:28',10,'scale'),(28,'Another Question',NULL,'option','optoin2','opoin3','optoin5','2013-05-31 10:07:20','2013-05-31 11:11:38',10,'scale'),(29,'Yes Another thqwer',NULL,'','','','','2013-05-31 10:07:20','2013-05-31 10:07:20',10,'scale'),(30,'best tak?',NULL,'','','','','2013-05-31 11:12:00','2013-05-31 11:12:00',11,'yes_no'),(31,'First Question',NULL,'','','','','2013-06-03 11:02:31','2013-06-03 11:02:31',12,'yes_no'),(32,'SEcond question',NULL,'a','b','c','d','2013-06-03 11:02:31','2013-06-03 11:02:31',12,'multiple_choice'),(33,'scale',NULL,'','','','','2013-06-03 11:02:31','2013-06-03 11:02:31',12,'scale'),(34,'s0aoan',NULL,'','','','','2013-06-03 13:54:51','2013-06-03 13:54:51',13,'yes_no'),(35,'wasdfa',NULL,'asdf','aweraw','33','we','2013-06-03 13:54:51','2013-06-03 13:54:51',13,'multiple_choice'),(36,'asdagashah',NULL,'','','','','2013-06-03 13:54:51','2013-06-10 06:06:30',13,'subjective'),(37,'whwraeeatjjj  arga',NULL,'as4y4','34','herh','aerhae','2013-06-03 13:54:51','2013-06-03 13:54:51',13,'multiple_choice'),(38,'Solalalan gila',NULL,'','','','','2013-06-10 06:10:23','2013-06-10 06:10:23',12,'subjective'),(39,'What is this shit?',NULL,'','','','','2013-06-10 06:13:24','2013-06-10 06:13:24',14,'subjective'),(40,'Did that work?',NULL,'','','','','2013-06-10 06:13:24','2013-06-10 06:13:24',14,'yes_no'),(41,'whatever',NULL,'','','','','2013-06-10 12:13:25','2013-06-10 12:13:25',15,'subjective'),(42,'asgash',NULL,'','','','','2013-06-10 12:14:04','2013-06-10 12:14:04',16,'yes_no'),(43,'whatever',NULL,'','','','','2013-06-30 19:37:49','2013-06-30 19:37:49',19,'yes_no');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redactor_assets`
--

DROP TABLE IF EXISTS `redactor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redactor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_redactor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_redactor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redactor_assets`
--

LOCK TABLES `redactor_assets` WRITE;
/*!40000 ALTER TABLE `redactor_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `redactor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_images`
--

DROP TABLE IF EXISTS `refinery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `image_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_images`
--

LOCK TABLES `refinery_images` WRITE;
/*!40000 ALTER TABLE `refinery_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_part_translations`
--

DROP TABLE IF EXISTS `refinery_page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_f9716c4215584edbca2557e32706a5ae084a15ef` (`refinery_page_part_id`),
  KEY `index_refinery_page_part_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_part_translations`
--

LOCK TABLES `refinery_page_part_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_part_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_part_translations` VALUES (1,1,'bm','<p>The first page. Bla bla</p>','2013-05-27 06:56:17','2013-05-27 06:56:17'),(2,2,'bm','','2013-05-27 06:56:17','2013-05-27 06:56:17');
/*!40000 ALTER TABLE `refinery_page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_parts`
--

DROP TABLE IF EXISTS `refinery_page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_parts_on_id` (`id`),
  KEY `index_refinery_page_parts_on_refinery_page_id` (`refinery_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_parts`
--

LOCK TABLES `refinery_page_parts` WRITE;
/*!40000 ALTER TABLE `refinery_page_parts` DISABLE KEYS */;
INSERT INTO `refinery_page_parts` VALUES (1,1,'Body','<p>The first page. Bla bla</p>',0,'2013-05-27 06:56:17','2013-05-27 06:57:09'),(2,1,'Side Body','',1,'2013-05-27 06:56:17','2013-05-27 06:57:09');
/*!40000 ALTER TABLE `refinery_page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_translations`
--

DROP TABLE IF EXISTS `refinery_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_d079468f88bff1c6ea81573a0d019ba8bf5c2902` (`refinery_page_id`),
  KEY `index_refinery_page_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_translations`
--

LOCK TABLES `refinery_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_translations` VALUES (1,1,'bm','Some Page',NULL,'','some-page','2013-05-27 06:56:17','2013-05-27 06:56:17');
/*!40000 ALTER TABLE `refinery_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_pages`
--

DROP TABLE IF EXISTS `refinery_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_match` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `view_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_pages_on_depth` (`depth`),
  KEY `index_refinery_pages_on_id` (`id`),
  KEY `index_refinery_pages_on_lft` (`lft`),
  KEY `index_refinery_pages_on_parent_id` (`parent_id`),
  KEY `index_refinery_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_pages`
--

LOCK TABLES `refinery_pages` WRITE;
/*!40000 ALTER TABLE `refinery_pages` DISABLE KEYS */;
INSERT INTO `refinery_pages` VALUES (1,NULL,NULL,'some-page',1,'',NULL,1,0,0,1,2,0,NULL,NULL,'2013-05-27 06:56:17','2013-05-27 06:57:09');
/*!40000 ALTER TABLE `refinery_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_resources`
--

DROP TABLE IF EXISTS `refinery_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_resources`
--

LOCK TABLES `refinery_resources` WRITE;
/*!40000 ALTER TABLE `refinery_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
INSERT INTO `responses` VALUES (7,1,18,'yes','2013-05-30 13:11:20','2013-05-30 13:11:20'),(8,82,19,'no','2013-05-30 13:11:35','2013-05-30 13:11:35'),(9,1,19,'C','2013-05-30 13:12:05','2013-05-30 13:12:05'),(10,82,19,'C','2013-05-30 13:12:35','2013-05-30 13:12:35'),(11,1,20,'5','2013-05-30 13:12:52','2013-05-30 13:12:52'),(12,82,20,'4','2013-05-30 13:13:07','2013-05-30 13:13:07'),(13,82,18,'no','2013-05-30 13:14:51','2013-05-30 13:14:51'),(14,26,18,'yes','2013-06-02 18:36:09','2013-06-02 18:36:09'),(15,26,19,'C','2013-06-02 18:36:09','2013-06-02 18:36:09'),(16,26,20,'5','2013-06-02 18:36:09','2013-06-02 18:36:09'),(17,26,18,'yes','2013-06-02 18:40:15','2013-06-02 18:40:15'),(18,26,19,'C','2013-06-02 18:40:15','2013-06-02 18:40:15'),(19,26,20,'5','2013-06-02 18:40:15','2013-06-02 18:40:15'),(20,26,18,'yes','2013-06-02 18:40:31','2013-06-02 18:40:31'),(21,26,19,'C','2013-06-02 18:40:31','2013-06-02 18:40:31'),(22,26,20,'5','2013-06-02 18:40:31','2013-06-02 18:40:31'),(23,26,18,'yes','2013-06-02 18:41:23','2013-06-02 18:41:23'),(24,26,19,'A','2013-06-02 18:41:23','2013-06-02 18:41:23'),(25,26,20,'5','2013-06-02 18:41:23','2013-06-02 18:41:23'),(26,26,18,'yes','2013-06-02 18:41:51','2013-06-02 18:41:51'),(27,26,19,'C','2013-06-02 18:41:51','2013-06-02 18:41:51'),(28,26,20,'5','2013-06-02 18:41:51','2013-06-02 18:41:51'),(29,26,18,'yes','2013-06-02 18:44:05','2013-06-02 18:44:05'),(30,26,19,'C','2013-06-02 18:44:05','2013-06-02 18:44:05'),(31,26,20,'5','2013-06-02 18:44:05','2013-06-02 18:44:05'),(32,26,18,'yes','2013-06-02 18:45:57','2013-06-02 18:45:57'),(33,26,19,'A','2013-06-02 18:45:57','2013-06-02 18:45:57'),(34,26,20,'5','2013-06-02 18:45:57','2013-06-02 18:45:57'),(35,26,18,'yes','2013-06-02 18:46:42','2013-06-02 18:46:42'),(36,26,19,'A','2013-06-02 18:46:42','2013-06-02 18:46:42'),(37,26,20,'5','2013-06-02 18:46:42','2013-06-02 18:46:42'),(38,26,18,'yes','2013-06-02 18:49:03','2013-06-02 18:49:03'),(39,26,19,'A','2013-06-02 18:49:03','2013-06-02 18:49:03'),(40,26,20,'5','2013-06-02 18:49:03','2013-06-02 18:49:03'),(41,26,18,'yes','2013-06-02 18:49:10','2013-06-02 18:49:11'),(42,26,19,'A','2013-06-02 18:49:11','2013-06-02 18:49:11'),(43,26,20,'5','2013-06-02 18:49:11','2013-06-02 18:49:11'),(44,26,18,'yes','2013-06-02 18:49:23','2013-06-02 18:49:23'),(45,26,19,'A','2013-06-02 18:49:23','2013-06-02 18:49:23'),(46,26,20,'5','2013-06-02 18:49:23','2013-06-02 18:49:23'),(47,26,18,'yes','2013-06-02 18:50:04','2013-06-02 18:50:04'),(48,26,19,'C','2013-06-02 18:50:04','2013-06-02 18:50:04'),(49,26,20,'5','2013-06-02 18:50:04','2013-06-02 18:50:04'),(50,26,30,'yes','2013-06-03 05:10:55','2013-06-03 05:10:55'),(51,26,27,'5','2013-06-03 05:14:59','2013-06-03 05:14:59'),(52,26,28,'5','2013-06-03 05:14:59','2013-06-03 05:14:59'),(53,26,29,'5','2013-06-03 05:14:59','2013-06-03 05:14:59'),(54,26,27,'5','2013-06-03 09:05:25','2013-06-03 09:05:26'),(55,26,28,'3','2013-06-03 09:05:26','2013-06-03 09:05:26'),(56,26,29,'5','2013-06-03 09:05:26','2013-06-03 09:05:26'),(57,26,24,'yes','2013-06-03 09:09:16','2013-06-03 09:09:16'),(58,26,25,'yes','2013-06-03 09:09:16','2013-06-03 09:09:16'),(59,26,26,'yes','2013-06-03 09:09:16','2013-06-03 09:09:16'),(60,26,21,'yes','2013-06-03 09:11:32','2013-06-03 09:11:33'),(61,26,22,'B','2013-06-03 09:11:33','2013-06-03 09:11:33'),(62,26,23,'4','2013-06-03 09:11:33','2013-06-03 09:11:33'),(63,26,31,'yes','2013-06-03 11:09:04','2013-06-03 11:09:04'),(64,26,32,'B','2013-06-03 11:09:04','2013-06-03 11:09:04'),(65,26,33,'4','2013-06-03 11:09:04','2013-06-03 11:09:04'),(66,92,34,'yes','2013-06-06 06:30:14','2013-06-06 06:30:14'),(67,92,35,'A','2013-06-06 06:30:14','2013-06-06 06:30:14'),(68,92,36,'1','2013-06-06 06:30:14','2013-06-06 06:30:14'),(69,92,37,'A','2013-06-06 06:30:14','2013-06-06 06:30:14'),(70,1,21,'yes','2013-06-10 06:00:49','2013-06-10 06:00:49'),(71,1,22,'C','2013-06-10 06:00:49','2013-06-10 06:00:49'),(72,1,23,NULL,'2013-06-10 06:00:49','2013-06-10 06:00:49'),(73,26,34,'yes','2013-06-10 06:06:48','2013-06-10 06:06:48'),(74,26,35,'A','2013-06-10 06:06:48','2013-06-10 06:06:48'),(75,26,36,NULL,'2013-06-10 06:06:48','2013-06-10 06:06:48'),(76,26,37,'A','2013-06-10 06:06:48','2013-06-10 06:06:48'),(77,26,39,'maybe our relationship isn\'t as crazy as it seems.','2013-06-10 06:15:43','2013-06-10 06:15:43'),(78,26,40,'yes','2013-06-10 06:15:43','2013-06-10 06:15:43'),(79,26,43,'yes','2013-07-14 11:13:08','2013-07-14 11:13:08'),(80,26,43,'yes','2013-07-14 11:14:22','2013-07-14 11:14:22');
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,NULL,'Admin'),(3,NULL,'Refinery'),(4,NULL,'Tester'),(5,'pkns','Pkns');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_users_on_user_id` (`user_id`),
  KEY `index_roles_users_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (14,1,2,'2013-05-27 09:59:18','2013-05-27 09:59:18'),(17,34,4,'2013-05-28 05:09:43','2013-05-28 05:09:43'),(18,34,2,'2013-05-28 05:10:33','2013-05-28 05:10:33'),(19,46,2,'2013-05-28 10:42:15','2013-05-28 10:42:15'),(20,102,5,'2013-07-02 20:19:27','2013-07-02 20:19:27'),(21,103,5,'2013-07-02 20:31:05','2013-07-02 20:31:05'),(22,104,5,'2013-07-02 20:32:36','2013-07-02 20:32:36'),(23,112,5,'2013-07-14 15:04:55','2013-07-14 15:04:55'),(24,113,5,'2013-07-14 16:12:14','2013-07-14 16:12:14'),(25,114,5,'2013-07-14 16:23:44','2013-07-14 16:23:44'),(26,115,5,'2013-07-14 16:32:45','2013-07-14 16:32:45'),(27,116,2,'2013-07-14 16:36:02','2013-07-14 16:36:02'),(28,119,2,'2013-07-14 16:45:12','2013-07-14 16:45:12'),(29,120,2,'2013-07-14 16:48:04','2013-07-14 16:48:04'),(30,121,2,'2013-07-14 20:12:53','2013-07-14 20:12:53');
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130319151046'),('20130322140244'),('20130322140740'),('20130322140816'),('20130325130338'),('20130325131845'),('20130325132142'),('20130327144350'),('20130327145900'),('20130327150603'),('20130327164158'),('20130327165859'),('20130328025958'),('20130328030320'),('20130328104157'),('20130328161015'),('20130328170303'),('20130329031743'),('20130329033247'),('20130329120440'),('20130330115634'),('20130331051943'),('20130331052023'),('20130331061846'),('20130331062119'),('20130331063058'),('20130331063242'),('20130331070259'),('20130331071840'),('20130331072308'),('20130331085525'),('20130406052501'),('20130406053355'),('20130406062829'),('20130406064425'),('20130409143401'),('20130411153915'),('20130411161718'),('20130411164154'),('20130411172808'),('20130414100607'),('20130417145556'),('20130417150657'),('20130417154133'),('20130417161835'),('20130418111816'),('20130418123513'),('20130418123829'),('20130420123659'),('20130420123750'),('20130420141155'),('20130422044247'),('20130426185633'),('20130501153105'),('20130510043726'),('20130510200322'),('20130512161113'),('20130512161255'),('20130512161533'),('20130513113648'),('20130513115316'),('20130513143306'),('20130514023134'),('20130514060639'),('20130514103728'),('20130516182647'),('20130517105435'),('20130521010050'),('20130521121939'),('20130522162126'),('20130523093329'),('20130523112355'),('20130523132744'),('20130527034035'),('20130527034036'),('20130527034037'),('20130527034038'),('20130527050224'),('20130527050247'),('20130527050453'),('20130527092444'),('20130527093701'),('20130527114740'),('20130527160411'),('20130528091311'),('20130528134807'),('20130529093835'),('20130529093836'),('20130529093837'),('20130529093838'),('20130529093839'),('20130529093840'),('20130529093841'),('20130529093842'),('20130529093843'),('20130529093844'),('20130529093845'),('20130529093846'),('20130529093847'),('20130529093848'),('20130529093849'),('20130529093850'),('20130529093851'),('20130529093852'),('20130529093853'),('20130529093855'),('20130529093856'),('20130529093857'),('20130529093858'),('20130529093859'),('20130529093860'),('20130529093861'),('20130529093862'),('20130529093863'),('20130529093864'),('20130529093865'),('20130529180347'),('20130530090019'),('20130530092606'),('20130530105939'),('20130530110103'),('20130530114415'),('20130530115358'),('20130530125038'),('20130530130704'),('20130531095117'),('20130603054041'),('20130603142036'),('20130603142037'),('20130603142038'),('20130603142039'),('20130603142040'),('20130603172228'),('20130603174931'),('20130604051857'),('20130605060233'),('20130605064840'),('20130605105233'),('20130605105653'),('20130605112409'),('20130606105813'),('20130606115053'),('20130607064009'),('20130607105557'),('20130610085416'),('20130610090345'),('20130610104731'),('20130610105537'),('20130612195744'),('20130613094037'),('20130614053031'),('20130617203640'),('20130619053606'),('20130620081841'),('20130625094252'),('20130625133540'),('20130626072437'),('20130701165819'),('20130714210507'),('20130715164836'),('20130715192415'),('20130724195800'),('20130727105201'),('20130728100610'),('20130728103508'),('20130728103853'),('20130728104004'),('20130728104217'),('20130728152742');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (1,1,'Refinery::Page::Translation','','','','2013-05-27 06:56:17','2013-05-27 06:56:17');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `experience` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Writing',NULL,NULL,'2013-04-17 14:08:52','2013-04-17 14:08:52'),(2,'Programming',NULL,NULL,'2013-04-17 14:09:08','2013-04-17 14:09:08'),(3,'Accounting',NULL,NULL,'2013-04-17 14:09:41','2013-04-17 14:09:41'),(4,'some skill',NULL,NULL,'2013-04-20 20:35:48','2013-04-20 20:35:48');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_sections`
--

DROP TABLE IF EXISTS `survey_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `reference_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_export_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `common_namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `common_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `custom_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_sections`
--

LOCK TABLES `survey_sections` WRITE;
/*!40000 ALTER TABLE `survey_sections` DISABLE KEYS */;
INSERT INTO `survey_sections` VALUES (1,1,'Basic questions',NULL,NULL,'',NULL,NULL,0,NULL,'2013-05-29 09:39:24','2013-05-29 09:39:24'),(2,1,'Complicated questions',NULL,NULL,'',NULL,NULL,1,NULL,'2013-05-29 09:39:24','2013-05-29 09:39:24');
/*!40000 ALTER TABLE `survey_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_translations`
--

DROP TABLE IF EXISTS `survey_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translation` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_translations`
--

LOCK TABLES `survey_translations` WRITE;
/*!40000 ALTER TABLE `survey_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `completed` tinyint(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `creator_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (7,'Love','2013-05-30 13:08:12','2013-06-14 06:09:01',NULL,1,NULL,NULL,NULL,NULL,1),(8,'Johnny Be Goode','2013-05-31 09:35:15','2013-07-11 04:41:42','',NULL,'2013-04-02','2013-11-20',NULL,NULL,1),(10,'Baru PUnya','2013-05-31 10:07:20','2013-07-02 20:40:04','ada la huraiana sikit',1,'2013-04-08','2013-12-21',NULL,NULL,1),(11,'Coca Cola','2013-05-31 11:12:00','2013-05-31 11:12:00','best tak',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Latest Survey','2013-06-03 11:02:31','2013-06-12 18:02:19','Yang Sepatutnya Betul dia punya kira-kira',1,'2013-02-03','2013-12-03',NULL,NULL,NULL),(13,'Satu Lagi Survey','2013-06-03 13:54:51','2013-06-10 06:06:52','Whatever',1,'2013-02-02','2013-08-03',NULL,NULL,NULL),(14,'Baru with subjective','2013-06-10 06:13:23','2013-06-10 06:16:08','some subjective shit',1,'2013-03-01','2013-08-04',NULL,NULL,NULL),(15,'Kaji sliek','2013-06-10 12:13:25','2013-07-02 20:48:05','jasklha;lkke',1,'2013-03-02','2013-10-06',NULL,NULL,1),(16,'dafter','2013-06-10 12:14:04','2013-07-24 19:30:28','asgasey',1,'2013-04-01','2013-09-06',NULL,NULL,1),(17,'admin','2013-06-10 12:16:44','2013-07-02 20:41:25','asdag',NULL,'2013-04-01','2013-11-02',NULL,NULL,1),(18,'asghash','2013-06-10 12:17:03','2013-07-02 20:48:49','asdfhafh',NULL,'2013-04-04','2013-08-03',NULL,NULL,1),(19,'kahi','2013-06-30 19:37:49','2013-06-30 19:40:03','selidi',NULL,'2013-07-01','2013-07-31',NULL,NULL,1);
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_users`
--

DROP TABLE IF EXISTS `surveys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_surveys_users_on_survey_id` (`survey_id`),
  KEY `index_surveys_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_users`
--

LOCK TABLES `surveys_users` WRITE;
/*!40000 ALTER TABLE `surveys_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,1,'Blog',NULL,NULL,'tags','2013-07-29 19:39:26'),(2,2,1,'Blog',NULL,NULL,'tags','2013-07-29 19:39:26'),(3,3,2,'Blog',NULL,NULL,'tags','2013-07-29 19:40:13'),(4,4,2,'Blog',NULL,NULL,'tags','2013-07-29 19:40:13'),(5,3,3,'Blog',NULL,NULL,'tags','2013-07-29 19:40:57'),(6,4,3,'Blog',NULL,NULL,'tags','2013-07-29 19:40:57'),(7,5,4,'Blog',NULL,NULL,'tags','2013-07-29 19:41:42'),(8,1,4,'Blog',NULL,NULL,'tags','2013-07-29 19:41:42'),(9,6,5,'Blog',NULL,NULL,'tags','2013-07-29 19:42:06');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'blog'),(2,'umum'),(3,'Berita'),(4,'latest'),(5,'usahawan'),(6,'tags');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plugins`
--

DROP TABLE IF EXISTS `user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plugins`
--

LOCK TABLES `user_plugins` WRITE;
/*!40000 ALTER TABLE `user_plugins` DISABLE KEYS */;
INSERT INTO `user_plugins` VALUES (1,1,'refinery_core',0,'2013-05-27 06:47:21','2013-05-27 06:47:21'),(2,1,'refinery_dialogs',1,'2013-05-27 06:47:21','2013-05-27 06:47:21'),(3,1,'refinery_dashboard',2,'2013-05-27 06:47:21','2013-05-27 06:47:21'),(4,1,'refinery_images',3,'2013-05-27 06:47:21','2013-05-27 06:47:21'),(5,1,'refinery_pages',4,'2013-05-27 06:47:21','2013-05-27 06:47:21'),(6,1,'refinery_files',5,'2013-05-27 06:47:21','2013-05-27 06:47:21');
/*!40000 ALTER TABLE `user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ic_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `has_business_profile` tinyint(1) DEFAULT NULL,
  `attended_course` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `has_attended_course` tinyint(1) DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_employment_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `staff_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `walk_in_first_time` tinyint(1) DEFAULT NULL,
  `profile_complete` tinyint(1) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_users_on_ic_number` (`ic_number`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'800829-12-5231','0126893949','2013-04-08 18:48:07','2013-07-29 13:11:12','fadhil.luqman@gmail.com','$2a$10$reecJsQsDwHuWIIu/Vf2AusRJnEIAb7aQod1LJGDuswlhtDF7FxMa',NULL,NULL,'2013-07-29 13:11:11',152,'2013-07-29 13:11:12','2013-07-29 08:18:46','127.0.0.1','127.0.0.1',NULL,'2013-04-08 18:48:09',NULL,'2013-04-08 18:48:07','Fadhil','',1,1,NULL,0,'m','fadhil','fadhil.luqman','part_time_business',5,1,'SM1234','Training','Some Unit','0456785753',0,1,NULL),(18,'800829-12-5239','0125889923','2013-04-15 00:21:33','2013-07-14 13:00:02','cibai@hentam.com','$2a$10$HWsKCpKxT8ObnstNV8.CZOkdAJW0dPYMZ.X5siaDolEJq1z9kJlJO',NULL,NULL,NULL,8,'2013-07-14 12:59:56','2013-07-02 19:28:49','127.0.0.1','127.0.0.1',NULL,'2013-05-13 08:43:56',NULL,'2013-04-15 00:21:33','Fuck','You',1,NULL,NULL,NULL,'f','','','studying',6,1,NULL,NULL,NULL,'',0,1,NULL),(20,'900212-12-5223','0125687959','2013-04-22 13:43:17','2013-06-03 13:57:57','someother@email.com','$2a$10$q1N7KkGnFiLboqK3VlUpvOIbUP/W6rGIEM9vnYSBSiSHlR7nMcA6C',NULL,NULL,NULL,5,'2013-06-03 13:57:57','2013-06-03 13:49:40','127.0.0.1','127.0.0.1',NULL,'2013-04-22 13:43:20',NULL,'2013-04-22 13:43:17','Hemtammm','SAjaaaasaf',1,0,NULL,NULL,'m','','','own_business',0,1,NULL,NULL,NULL,'',0,1,NULL),(23,'802211-11-2222','012351213','2013-05-14 12:10:04','2013-07-24 18:41:47','hentam@fucker.com','$2a$10$mdcE4uF3qoTup1EbUt0r4OSQI7gm.crhPlj57K6nc2qTmZvBL8qSa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2013-05-14 12:10:08',NULL,'2013-05-14 12:10:04','ahli','baru',0,NULL,NULL,NULL,'f','','','own_business',NULL,0,NULL,NULL,NULL,'',0,1,NULL),(26,'901122-12-4444','123235235','2013-05-14 12:17:27','2013-07-21 16:41:11','cibai@gampang.com','$2a$10$nc97Q9G41gnz/zOkY0Fkq.UxV3eOPku4FGIJWCIoKnxFwcn9vrfSq',NULL,NULL,NULL,55,'2013-07-15 19:41:43','2013-07-15 06:51:18','127.0.0.1','127.0.0.1',NULL,'2013-05-14 12:17:30',NULL,'2013-05-14 12:17:27','another ','new',1,NULL,NULL,NULL,'m','','','working',NULL,1,NULL,NULL,NULL,'',0,1,NULL),(29,'111111-11-1111',NULL,'2013-05-21 10:51:44','2013-07-21 17:07:58','fuck@you.com','$2a$10$kQGlgymgk./wtvlY5Vrk5O.w4tjZrVLIRvbuLe4WJ7GfzGgdE5dty',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'yM44TPvbmggwZjWEjipy','2013-05-21 10:51:44',NULL,NULL,0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'111112-11-1111','234123412','2013-05-21 10:51:47','2013-07-21 16:41:31','baru@punya.com','$2a$10$irBXPAMYGvEF013Yq/LhmO6zY7A08CisrjjTCzxUunbfGgHJ1GFJa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ip3bpst85dRuQdxs28cH','2013-05-21 10:51:47','wbatewr','ashfasdf',0,NULL,NULL,NULL,'m','','','working_studying',NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL),(31,'100909-11-0909','','2013-05-21 10:51:47','2013-07-21 17:07:58','tell@world.com','$2a$10$1DFgIwDss1ydE7iFFM7BU.6duwfe0qKZpmOM6w1lIzUEWPMxVitJC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'4rMjnhN1vncxGpM6qLvy','2013-05-21 10:51:47','Forgiven','Comin Home',0,NULL,NULL,NULL,'f','','','',NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL),(34,'120808-08-0808',NULL,'2013-05-21 10:58:43','2013-07-21 17:07:58','asdfasfsaf@asdfasdfasdfs.com','$2a$10$L95DfYez7ii8Nk4EKSmdSeCcRAVo/rfm/QYexwxhXhUBNUyxHEkAm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'DAgzaSGDbpyenJduzBVz','2013-05-21 10:58:43','naamawe','asfasdfasdf',0,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'130404-04-0404','','2013-05-21 11:02:43','2013-07-21 17:07:58','guy@sheba.com','$2a$10$n6Q384yIQxExwbPcUhxc7.ZAZfHqODT6y9UMSCS8Jhft8ri9JoABG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'Gd7uURqYJjJNjZzsq8uz','2013-05-21 11:02:43','some other ','guy',0,NULL,NULL,NULL,'m','','','own_business',NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL),(36,'120103-04-0304','','2013-05-21 11:11:31','2013-07-21 17:07:59','due@asd.com','$2a$10$bx1MR.7eGXZwOH19yACXieObtvnrM7f/mSbecKSb5HT1ad9st8u4m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'vcqkzbLWfgNyaj29uxvv','2013-05-21 11:11:31','Namaasdf','ude',0,NULL,NULL,NULL,'m','','','',NULL,1,NULL,NULL,NULL,'',0,NULL,NULL),(37,'140102-02-0304',NULL,'2013-05-21 11:14:28','2013-07-21 17:07:59','else@lose.com','$2a$10$p.v2bVyGJ2/yh/WmUFjkg.JiQrD5viBjMEDoj8FjVLQKJWlBldW2a',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'yQ6zgy26oDzWboaE6i6E','2013-05-21 11:14:28','someone','else',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'110203-01-4523',NULL,'2013-05-21 11:18:31','2013-07-21 17:07:59','shitake@mushroom.com','$2a$10$IkRbnLzvo67wQakFWu8ubO.eBUyBSSfBxvUoF1kwYKXdKx1l7WXzu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'nqmmrVDGhsz84WqZxhqF','2013-05-21 11:18:31','shitake','mushrooms',0,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'111101-01-0102',NULL,'2013-05-21 11:25:14','2013-07-21 17:07:59','ciatut@ciatut.com','$2a$10$kfqbdhEfo4SVBDOW8zsdL.Vpqhu.UrKQPsE9I4omuVKrXKFMEA.hK',NULL,NULL,NULL,1,'2013-05-21 11:25:34','2013-05-21 11:25:34','127.0.0.1','127.0.0.1',NULL,'2013-05-21 11:25:34',NULL,'2013-05-21 11:25:14','kenek','ciautu',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'771111-11-1111',NULL,'2013-05-21 11:34:19','2013-07-21 17:07:59','another@fuckyoudog.com','$2a$10$T2CMtEhOBtfGneh69b529Oenb4ULtKEyDiLoYA63a6S24qDJ5f0zC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'QhUpK4usWkrkBDbPp9S2','2013-05-21 11:34:19','added','anotehr',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'990101-01-0101',NULL,'2013-05-21 12:35:58','2013-07-21 17:07:59','noobie@gerk.com','$2a$10$623qZ5KhieLFvWw1bhVLUutD/jiiF2rMOOQURHYGg5jJRa32NFLdC',NULL,NULL,NULL,1,'2013-05-21 12:36:10','2013-05-21 12:36:10','127.0.0.1','127.0.0.1',NULL,'2013-05-21 12:36:10',NULL,'2013-05-21 12:35:58','a ','newguy',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1,NULL,NULL),(44,'980101-01-0101','','2013-05-21 12:39:39','2013-07-21 17:07:59','nugyz@nugyz.com','$2a$10$HBrYnQec/2SRzLPpm4TXjuNdm8TQ16G/AjtSEJo9KCpDAGV4h0wda',NULL,NULL,NULL,11,'2013-05-21 14:00:33','2013-05-21 13:44:39','127.0.0.1','127.0.0.1',NULL,'2013-05-21 12:39:48',NULL,'2013-05-21 12:39:39','somother','nuguyz',1,NULL,NULL,NULL,'f','','','studying',NULL,1,NULL,NULL,NULL,'',0,NULL,NULL),(46,'770829-12-5231','','2013-05-21 16:47:29','2013-07-21 17:07:59','anjing@sial.com','$2a$10$nadpoaZ2PrBzEfh51/9QouUbzGBPGXnPTx0iRG3rycLfjeZon//Me',NULL,NULL,NULL,20,'2013-06-03 13:43:04','2013-05-28 10:32:47','127.0.0.1','127.0.0.1',NULL,'2013-05-21 16:47:39',NULL,'2013-05-21 16:47:29','SAtu ','pukimak',1,NULL,NULL,NULL,'f','','','own_business',0,1,NULL,NULL,NULL,'',0,NULL,NULL),(47,'720829-12-5231',NULL,'2013-05-22 09:01:06','2013-07-21 17:07:59','hentam@kreromok.com','$2a$10$2Eij63qjjBcH0EWMynV6jeG3QHnpqWX2686wQDRz7uChxCjvMUoQa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'zyTcDg8Lmc9rbMVk9GH2','2013-05-22 09:01:06',NULL,NULL,1,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'111122-11-2222','','2013-05-22 10:16:56','2013-07-21 17:07:59','haram@jadah.com','$2a$10$OxupkncPbHfMuIRvbBT9JucP1A7xQtlTJqLVLMLVqx0DJ9vAel2TC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'6dyp7jw5j2DJqEZhxe1S','2013-05-22 10:16:56','kemaskini','ahlinujum',1,NULL,NULL,NULL,'f','','','own_business',NULL,1,NULL,NULL,NULL,'23452345',0,NULL,NULL),(49,'760829-12-5231','0125768767','2013-05-23 10:08:33','2013-06-03 13:46:07','pkns@user.com','$2a$10$nyYhRii.zjOaGHf.S1Hbc.Y846CXeaf4v0aigQH1LlJVdm8cpX3uy',NULL,NULL,NULL,2,'2013-06-03 13:46:07','2013-06-02 15:35:51','127.0.0.1','127.0.0.1',NULL,'2013-06-02 15:35:51',NULL,'2013-05-23 10:08:33','PKNS','User',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'780828-12-5231',NULL,'2013-05-27 16:42:16','2013-07-21 17:07:59','yooo@da.com','$2a$10$PU6OuhdemvFo9oINIidPieUq3ifuRMyEHc4T/Hbaq4tpDJuKfLwdS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'4av2jaBJbyvv3Ua7Qts2','2013-05-27 16:42:16','Nama','Nama Bapa',1,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1,NULL,NULL),(89,'661216-01-5509',NULL,'2013-06-03 18:17:15','2013-07-21 17:07:59','random@random123.com','$2a$10$vlimiVc5i.4a6xBt4qWkN.Im6pJQ9Kv0vBwVcMuq9Gimlw4RcsszO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'CQrzF5sPnBpRFyvepVSZ','2013-06-03 18:17:15','Arifin','Mohamad',1,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1,NULL,NULL),(90,'420116-01-5509',NULL,'2013-06-03 18:17:16','2013-07-21 17:07:59','random2@random123.com','$2a$10$bVqh8RWWE6Fr7pYrypNNo.lj15FNT8qphZPfDEHxpOoylORbhsy5W',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'qwYB8NN6zkMyXgZWQNpY','2013-06-03 18:17:16','Peter','Griffin',1,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1,NULL,NULL),(91,'621216-01-5509',NULL,'2013-06-03 18:17:28','2013-07-21 17:07:59','random3@random123.com','$2a$10$Jzcyzxd7T6lLZSMFWcpoW.b6XGm1tt7GAb8PSsA0u8331t4kgeQMC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'AJjgfL4ftvdqpny9s7qp','2013-06-03 18:17:28','Jackass','McGormit',1,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1,NULL,NULL),(92,'410116-01-5509','124125525','2013-06-03 18:17:28','2013-06-04 14:17:51','random4@random123.com','$2a$10$1q4U8j8ArI9a5.1nOGfQCuQW8AWa8KkeuVdk1GzOLgJgFuyjuMrfy',NULL,NULL,NULL,2,'2013-06-04 14:17:51','2013-06-04 14:13:54','127.0.0.1','127.0.0.1',NULL,'2013-06-04 14:13:54',NULL,'2013-06-03 18:17:28','JackDot','Zod',1,NULL,NULL,NULL,'m','','','studying',NULL,1,NULL,NULL,NULL,'',0,1,NULL),(93,'750829-12-5231','0126893949','2013-06-30 05:31:35','2013-07-21 17:07:59','hentam@codelovr.com','$2a$10$qZ1BLj0LlWMBb/VomgbxBusFKBBjA9wFpKFcEaVMDjNQTbh8xoO1C',NULL,NULL,NULL,1,'2013-06-30 05:31:55','2013-06-30 05:31:55','127.0.0.1','127.0.0.1',NULL,'2013-06-30 05:31:55',NULL,'2013-06-30 05:31:35','hentam','',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,'720929-12-5231','0125894858','2013-06-30 18:03:47','2013-07-21 17:07:59','user1@baru.com','$2a$10$HbDTzRV.YKgUXIgINORiPeS8voNpiBNbSMj179bJ6UQv1a/t.7HFW',NULL,NULL,NULL,2,'2013-06-30 19:13:41','2013-06-30 18:03:53','127.0.0.1','127.0.0.1',NULL,'2013-06-30 18:03:53',NULL,'2013-06-30 18:03:47','user baru','',0,NULL,NULL,NULL,'m','','','',NULL,1,NULL,NULL,NULL,'',0,NULL,NULL),(95,'770222-12-5231','012394959','2013-06-30 18:09:36','2013-07-21 17:07:59','user2@baru.com','$2a$10$rxDa8NqowPcq.XHimF4f2.lHkNNHIgYc0/Yc3Qx05ppfg2Viq8wa6',NULL,NULL,NULL,2,'2013-06-30 19:22:40','2013-06-30 18:09:40','127.0.0.1','127.0.0.1',NULL,'2013-06-30 18:09:40',NULL,'2013-06-30 18:09:36','user baru 2','',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,'760729-12-5231','0129694858','2013-06-30 18:17:11','2013-07-21 17:07:59','user3@baru.com','$2a$10$SavINkaRrI3hIULY7ZQB7.XCvj4E6H4ewB4GnvSuK3dDKf4Ikt1Sq',NULL,NULL,NULL,4,'2013-07-15 06:05:19','2013-07-15 05:45:21','127.0.0.1','127.0.0.1',NULL,'2013-06-30 18:17:13',NULL,'2013-06-30 18:17:11','user baru 3','',0,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,'710829-12-5231','0123456778','2013-06-30 18:21:11','2013-07-21 17:07:59','user4@baru.com','$2a$10$E8ZHelhOQEtFNprZhh1upOFOV170dgOiK/JogNYmljWRh9rC2LlaG',NULL,NULL,NULL,1,'2013-06-30 18:21:21','2013-06-30 18:21:21','127.0.0.1','127.0.0.1',NULL,'2013-06-30 18:21:21',NULL,'2013-06-30 18:21:11','user baru 4','',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,'820229-12-5231','01234566788','2013-06-30 18:34:23','2013-07-21 17:07:59','user5@baru.com','$2a$10$Zgg9.RRKRqyOIyTSzeU6VeAcwTpYHqT6tnxUBCP2wJeFGl/q/O/am',NULL,NULL,NULL,5,'2013-07-09 15:01:27','2013-07-02 17:36:00','127.0.0.1','127.0.0.1',NULL,'2013-06-30 18:34:31',NULL,'2013-06-30 18:34:23','user baru 5','',0,NULL,NULL,NULL,'f','','','',NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL),(100,'760509-12-4231','012341234','2013-06-30 18:47:25','2013-07-15 06:51:07','user7@baru.com','$2a$10$CCSNarL47MdRByItHVELTe/1hoLqTpLBqO9KMxvBr1OUPNXCoVrDa',NULL,NULL,NULL,7,'2013-07-15 06:48:31','2013-07-14 13:41:59','127.0.0.1','127.0.0.1',NULL,'2013-06-30 18:47:29',NULL,'2013-06-30 18:47:25','user 7','Nama Bapa',0,NULL,NULL,NULL,'f','','','',NULL,1,NULL,NULL,NULL,'',0,NULL,NULL),(101,'891222-12-5231',NULL,'2013-07-01 07:29:24','2013-07-21 17:07:59','doo@gmail.com','$2a$10$GsCobKmx2vcfLbHEzpyVpOoWdG5JWfgSB.zB0zpds/kElXEete55.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'Xry9SN6aYq3FvysQzHz6','2013-07-01 07:29:24','Some new','yabadaba',1,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1,NULL,NULL),(103,'660606-12-5231','01231231','2013-07-02 20:31:05','2013-07-21 17:07:59','fadhil.luqman+pkns11@gmail.com','$2a$10$UBFkm1.DmZMg.p9bhSeA9Ow.YdH857My78Byg9vQpSGmWBtxOZr.S',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'FGv7pCwUffxowHpKgmSe','2013-07-02 20:31:05','last','mother',0,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,'23424','234234','fuck','0123123',NULL,NULL,'PknsUser'),(104,'761212-12-5231','12515135','2013-07-02 20:32:36','2013-07-21 17:07:59','fadhil.luqman+pkns12@gmail.com','$2a$10$ozNM5bWEn3r56s6Bu73cVuzw6RA8.CKI8WK7O5n.38QR2Im6AQrYG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'nVe8pXbqiqpBCUzt7a6y','2013-07-02 20:32:36','Wot','The',0,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,'FUck','123123','123123','23525235',NULL,NULL,'PknsUser'),(105,'681209-12-5231','023425231','2013-07-09 07:30:02','2013-07-21 17:07:59','user12@baru.com','$2a$10$zTAGtQaN/0nO6HoF4ULcjOc6BL09.23rT98/3DFXH49g7pyeqIjQS',NULL,NULL,NULL,3,'2013-07-14 12:59:41','2013-07-09 07:30:21','127.0.0.1','127.0.0.1',NULL,'2013-07-09 07:30:06',NULL,'2013-07-09 07:30:02','User 12','Nama Bapa',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,'691112-12-5231','012555456','2013-07-09 17:17:44','2013-07-21 17:07:59','user13@baru.com','$2a$10$zp8Xw3gMMUu82mjXkXfVsu6mVlmrot/6xueohFwi7LKm2.IIDnE8C',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ZuG2UQbEQe32zmqcS6Ng','2013-07-09 17:17:44','User13','Nama Bapa',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,'651122-21-1231','023532342','2013-07-09 17:19:36','2013-07-21 17:07:59','user14@baru.com','$2a$10$BV8euGGTx12NB7p.x/q6VODLgmJMCN6Ho7HuW2wZf59EER5.dFxV2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'rsqaxkZho8pm1hu2vNGU','2013-07-09 17:19:36','user14','Nama Bapa',0,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,'641212-12-5231','2362364','2013-07-09 17:21:58','2013-07-21 17:07:59','user16@baru.com','$2a$10$NTnXVM6mS94WVGrNTs9eUeudFwRhfa4qm3O7n6IGejqa5AxRKYqfe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'oA3XvpjUhE3sR433gVMH','2013-07-09 17:21:58','user16','Nama Bapa',0,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,'760912-12-5231','2352352','2013-07-09 17:24:07','2013-07-21 17:07:59','user17@baru.com','$2a$10$lE4OmHBnZNBxzTUCR5MJd.UYGTSN3gZHQwF2g.XO6fvEiGTuWXPyq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'pzswUY5h1D8auYnTqgkq','2013-07-09 17:24:07','user17','Nama Bapa',0,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,'931212-21-5231','3523523','2013-07-09 17:27:47','2013-07-21 17:07:59','user18@baru.com','$2a$10$ml/tkKAaVE2LVWltqgb.2eA4LjSYcY7zWpNBVYsf3af8I0voM4spy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ziMyRRVJKsnFmixiux6u','2013-07-09 17:27:47','user18','Nama Bapa',0,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,'660912-12-4231','2435235','2013-07-09 17:31:29','2013-07-21 17:07:59','user19@baru.com','$2a$10$wfRszcQuzm01Q.5tvISuPubFtoDGVD4Vqo3eV5io/9kSSVav1m67W',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'NhuYLko8FbW5CYfJpvqw','2013-07-09 17:31:29','user19','Nama Bapa',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,'760912-12-5243','034536455','2013-07-14 15:04:54','2013-07-21 17:07:59','pkns1@baru.com','$2a$10$MBuVb1UzlK7P4WURauVY5.hH8XCvXm95bBWWex0Yu3JxheZl4HwI6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'fDTnp2ydRD3ys3h2NhDB','2013-07-14 15:04:54','Fadhil','PKNS',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,NULL,'sm1234','atas','tengah','0121254634',NULL,NULL,'PknsUser'),(113,'750203-12-5232','03412552123','2013-07-14 16:12:14','2013-07-14 16:17:19','pkns@user1.com','$2a$10$f2WrJ57AZIg7kPfhE/PjJ.jU5w.ambo1fHfDkiuCKCqjkxc.JfCKe',NULL,NULL,NULL,2,'2013-07-14 16:13:25','2013-07-14 16:13:25','127.0.0.1','127.0.0.1',NULL,'2013-07-14 16:12:18',NULL,'2013-07-14 16:12:14','PKNS','Terbaru',0,NULL,NULL,NULL,'m','','','',NULL,1,'sm123123','atas','awat','0242123535',NULL,NULL,'PknsUser'),(120,'860426-12-5566','0352342352','2013-07-14 16:48:04','2013-07-21 17:07:59','admin@pkns.com','$2a$10$FpoMlUYwK/d8ySpt294pm.t0bKA93uvdHK38GjxLrU77tbDypYVBy',NULL,NULL,NULL,1,'2013-07-14 16:49:17','2013-07-14 16:49:17','127.0.0.1','127.0.0.1',NULL,'2013-07-14 16:49:17',NULL,'2013-07-14 16:48:04','Fadhil','PKSN',0,NULL,NULL,NULL,'f',NULL,NULL,NULL,NULL,1,'xm2352','atas','bawah','03523236',NULL,NULL,'PknsUser'),(121,'981105-12-5231','2352352','2013-07-14 20:12:52','2013-07-21 17:07:59','oper@ator.com','$2a$10$VajYIXOVTz1Q/97FaRWnNuCp.CZMPpTNJaO0A39TOTxquWULfFy06',NULL,NULL,NULL,1,'2013-07-14 20:13:31','2013-07-14 20:13:31','127.0.0.1','127.0.0.1',NULL,'2013-07-14 20:13:31',NULL,'2013-07-14 20:12:52','oper','ator',0,NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,1,'23423','234234','basdr','246423636',NULL,NULL,'PknsUser');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_skills`
--

DROP TABLE IF EXISTS `users_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `des` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_skills`
--

LOCK TABLES `users_skills` WRITE;
/*!40000 ALTER TABLE `users_skills` DISABLE KEYS */;
INSERT INTO `users_skills` VALUES (3,54,1,12,NULL,'writersra','2013-05-27 13:13:19','2013-05-27 13:13:19'),(5,26,1,12,NULL,'asdfasf','2013-05-28 07:59:17','2013-05-28 07:59:17'),(7,18,3,3,NULL,'asdfasdf','2013-06-03 13:44:13','2013-06-03 13:44:13'),(8,20,1,3,NULL,'whri','2013-06-03 13:50:09','2013-06-03 13:50:09'),(9,92,1,3,NULL,'awerae','2013-06-04 14:15:00','2013-06-04 14:15:00'),(10,23,1,12,NULL,'writing ll sorts alke ','2013-07-03 09:03:36','2013-07-03 09:03:36');
/*!40000 ALTER TABLE `users_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validation_conditions`
--

DROP TABLE IF EXISTS `validation_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validation_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `validation_id` int(11) DEFAULT NULL,
  `rule_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` float DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_value` text COLLATE utf8_unicode_ci,
  `string_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regexp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validation_conditions`
--

LOCK TABLES `validation_conditions` WRITE;
/*!40000 ALTER TABLE `validation_conditions` DISABLE KEYS */;
INSERT INTO `validation_conditions` VALUES (1,1,'A','>=',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2013-05-29 09:39:24','2013-05-29 09:39:24'),(2,2,'A','=~',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[0-9a-zA-z. #]','2013-05-29 09:39:24','2013-05-29 09:39:24');
/*!40000 ALTER TABLE `validation_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validations`
--

DROP TABLE IF EXISTS `validations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) DEFAULT NULL,
  `rule` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validations`
--

LOCK TABLES `validations` WRITE;
/*!40000 ALTER TABLE `validations` DISABLE KEYS */;
INSERT INTO `validations` VALUES (1,24,'A',NULL,'2013-05-29 09:39:24','2013-05-29 09:39:24'),(2,25,'A',NULL,'2013-05-29 09:39:24','2013-05-29 09:39:24');
/*!40000 ALTER TABLE `validations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-30  3:42:40
