-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: photo_rating
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Current Database: `photo_rating`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `photo_rating` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `photo_rating`;

--
-- Table structure for table `listing_details`
--

DROP TABLE IF EXISTS `listing_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listingid` int(11) NOT NULL,
  `data` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listingid` (`listingid`),
  CONSTRAINT `fk_listings_id` FOREIGN KEY (`listingid`) REFERENCES `listings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_details`
--

LOCK TABLES `listing_details` WRITE;
/*!40000 ALTER TABLE `listing_details` DISABLE KEYS */;
INSERT INTO `listing_details` VALUES (1,1,'{\"shooting\": {\"id\": 1, \"title\": \"Lychie\", \"photos\": [{\"name\": \"R0000210.JPG\", \"trash\": false, \"rating\": 1, \"thumbs\": true, \"comments\": [{\"text\": \"erster\", \"author\": \"paul@asd.de\"}, {\"text\": \"zweiter\", \"author\": \"maike@domain.com\"}]}, {\"name\": \"R0000211.JPG\", \"trash\": true, \"rating\": 0, \"thumbs\": false, \"comments\": [{\"text\": \"nur ein comment\", \"author\": \"fred@locke.io\"}]}, {\"name\": \"R0000212.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000215.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000216.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000217.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000218.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000219.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000220.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}], \"description\": \"Fotos aus der Lychie\"}}'),(2,2,'{\"shooting\": {\"id\": 2, \"title\": \"Tischtennis\", \"photos\": [{\"name\": \"R0000205.JPG\", \"trash\": false, \"rating\": 1, \"thumbs\": true, \"comments\": [{\"text\": \"erster\", \"author\": \"paul@asd.de\"}, {\"text\": \"zweiter\", \"author\": \"maike@domain.com\"}]}, {\"name\": \"R0000206.JPG\", \"trash\": true, \"rating\": 0, \"thumbs\": false, \"comments\": [{\"text\": \"nur ein comment\", \"author\": \"fred@locke.io\"}]}, {\"name\": \"R0000208.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000209.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000212.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000213.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}], \"description\": \"Tischtennis auf dem Helmi\"}}'),(3,3,'{\"shooting\": {\"id\": 3, \"title\": \"Schliemannstr\", \"photos\": [{\"name\": \"R0000185.JPG\", \"trash\": false, \"rating\": 1, \"thumbs\": true, \"comments\": [{\"text\": \"erster\", \"author\": \"paul@asd.de\"}, {\"text\": \"zweiter\", \"author\": \"maike@domain.com\"}]}, {\"name\": \"R0000187.JPG\", \"trash\": true, \"rating\": 0, \"thumbs\": false, \"comments\": [{\"text\": \"nur ein comment\", \"author\": \"fred@locke.io\"}]}, {\"name\": \"R0000188.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000189.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000190.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000191.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000192.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000194.JPG\", \"trash\": true, \"rating\": 2, \"thumbs\": false, \"comments\": []}, {\"name\": \"R0000195.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000196.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000197.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000198.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000199.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000201.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000202.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000195.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}], \"description\": \"Fotos aus der Schliemannstr\"}, \"shootingid\": \"3\"}'),(4,4,'{\"shooting\": {\"id\": 4, \"title\": \"Brunch und Einkauf\", \"photos\": [{\"name\": \"R0000123.JPG\", \"trash\": false, \"rating\": 1, \"thumbs\": true, \"comments\": [{\"text\": \"erster\", \"author\": \"paul@asd.de\"}, {\"text\": \"zweiter\", \"author\": \"maike@domain.com\"}]}, {\"name\": \"R0000124.JPG\", \"trash\": true, \"rating\": 0, \"thumbs\": false, \"comments\": [{\"text\": \"nur ein comment\", \"author\": \"fred@locke.io\"}]}, {\"name\": \"R0000125.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000127.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000141.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000142.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000143.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000144.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000145.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000146.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000152.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000153.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}], \"description\": \"Details beim Brunch und Einkauf\"}}'),(5,5,'{\"shooting\": {\"id\": 5, \"title\": \"Night\", \"photos\": [{\"name\": \"R0000098.JPG\", \"trash\": false, \"rating\": 1, \"thumbs\": true, \"comments\": [{\"text\": \"erster\", \"author\": \"paul@asd.de\"}, {\"text\": \"zweiter\", \"author\": \"maike@domain.com\"}]}, {\"name\": \"R0000099.JPG\", \"trash\": true, \"rating\": 0, \"thumbs\": false, \"comments\": [{\"text\": \"nur ein comment\", \"author\": \"fred@locke.io\"}]}, {\"name\": \"R0000100.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000101.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000102.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000104.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000105.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000106.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000107.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000108.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000109.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000111.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000112.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000113.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000114.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000117.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000118.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}], \"description\": \"Pictures from Nightwalk\"}, \"shootingid\": \"5\"}'),(6,6,'{\"shooting\": {\"id\": 6, \"title\": \"Palmenshooting\", \"photos\": [{\"name\": \"R0000070.JPG\", \"trash\": false, \"rating\": 1, \"thumbs\": true, \"comments\": [{\"text\": \"erster\", \"author\": \"paul@asd.de\"}, {\"text\": \"zweiter\", \"author\": \"maike@domain.com\"}]}, {\"name\": \"R0000071.JPG\", \"trash\": true, \"rating\": 0, \"thumbs\": false, \"comments\": [{\"text\": \"nur ein comment\", \"author\": \"fred@locke.io\"}]}, {\"name\": \"R0000072.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000073.JPG\", \"trash\": true, \"rating\": 3, \"thumbs\": false, \"comments\": []}, {\"name\": \"R0000074.JPG\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000076.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000077.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000078.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000079.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000080.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"R0000081.JPG\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}], \"description\": \"Crazy Palmenshooting\"}, \"shootingid\": \"6\"}'),(7,7,'{\"shooting\": {\"id\": 7, \"title\": \"MTB Panke\", \"photos\": [{\"name\": \"IMG_5481.jpg\", \"trash\": false, \"rating\": 1, \"thumbs\": true, \"comments\": [{\"text\": \"erster\", \"author\": \"paul@asd.de\"}, {\"text\": \"zweiter\", \"author\": \"maike@domain.com\"}]}, {\"name\": \"IMG_5486.jpg\", \"trash\": true, \"rating\": 0, \"thumbs\": false, \"comments\": [{\"text\": \"nur ein comment\", \"author\": \"fred@locke.io\"}]}, {\"name\": \"IMG_5492.jpg\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5497.jpg\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5500.jpg\", \"trash\": false, \"rating\": 3, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5502.jpg\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5504.jpg\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5508.jpg\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5514.jpg\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5515.jpg\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5516.jpg\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5530.jpg\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5535.jpg\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}, {\"name\": \"IMG_5537.jpg\", \"trash\": false, \"rating\": 2, \"thumbs\": true, \"comments\": []}], \"description\": \"MTB Tour entlang der Panke\"}}');
/*!40000 ALTER TABLE `listing_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (4,'Brunch und Einkauf'),(1,'Lychie'),(7,'MTB Panke'),(5,'Night'),(6,'Palmenshooting'),(3,'Schliemannstr'),(2,'Tischtennis');
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

-- Dump completed on 2017-05-08 15:08:41
