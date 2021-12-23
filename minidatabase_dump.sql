-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: badoo
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `cts_nm_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (26,'Angusfurt'),(46,'Armandomouth'),(23,'Boganborough'),(14,'Carmellachester'),(18,'Charleneborough'),(16,'Christianville'),(66,'Deckowview'),(33,'East Alan'),(44,'East Art'),(49,'East Chandlerbury'),(55,'East Gunner'),(27,'East Keithfort'),(31,'East Oma'),(11,'East Riverborough'),(15,'East Seamuston'),(61,'Erafurt'),(29,'Fadelchester'),(12,'Fisherport'),(56,'Gottliebbury'),(39,'Grimeschester'),(54,'Johnathonshire'),(50,'Kirstenfurt'),(32,'Lake Elinorfurt'),(9,'Lake Korybury'),(35,'Lake Larissa'),(5,'Lake Verna'),(42,'Lubowitzberg'),(45,'Mohrview'),(62,'Monroeport'),(36,'Muellerhaven'),(22,'Napoleonview'),(52,'New Claudshire'),(41,'New Leanntown'),(48,'New Maribel'),(65,'New Mireille'),(53,'New Ramon'),(20,'North Clevelandtown'),(8,'North Dustyland'),(1,'North Emmy'),(57,'North Enoch'),(68,'North Irma'),(6,'North Isaacberg'),(4,'North Judy'),(67,'North Sigurdton'),(3,'North Tiannastad'),(25,'North Yoshiko'),(70,'Parkerville'),(7,'Port Angelica'),(37,'Port Chloehaven'),(21,'Port Ines'),(59,'Port Nashville'),(13,'Port Osbaldoside'),(43,'Port Roscoe'),(63,'Reillyhaven'),(60,'Runolfssonmouth'),(2,'Selmerport'),(47,'Sengershire'),(24,'Smithamfort'),(34,'South Dewittstad'),(40,'South Imanimouth'),(30,'South Keon'),(17,'South Terrancemouth'),(28,'Verdiestad'),(19,'Volkmanberg'),(64,'Watersstad'),(69,'Wehnerland'),(58,'West Akeem'),(10,'West Brendon'),(51,'West Jayceeborough'),(38,'Wizaport');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `cntrs_nm_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (46,'Albania'),(62,'Algeria'),(36,'Antarctica (the terr'),(60,'Argentina'),(34,'Aruba'),(51,'Belgium'),(33,'Benin'),(1,'Bosnia and Herzegovi'),(43,'Botswana'),(26,'Brazil'),(14,'Burkina Faso'),(17,'Cambodia'),(8,'Chile'),(7,'Christmas Island'),(50,'Cocos (Keeling) Isla'),(30,'Croatia'),(22,'Denmark'),(55,'Djibouti'),(65,'Dominican Republic'),(61,'Estonia'),(21,'Fiji'),(44,'Finland'),(6,'French Polynesia'),(47,'French Southern Terr'),(59,'Guatemala'),(45,'Heard Island and McD'),(56,'Hungary'),(4,'Iceland'),(39,'Iraq'),(63,'Isle of Man'),(53,'Israel'),(66,'Jamaica'),(69,'Jersey'),(48,'Jordan'),(2,'Kiribati'),(40,'Korea'),(15,'Kuwait'),(31,'Lao Peoples Democra'),(35,'Liechtenstein'),(9,'Luxembourg'),(42,'Malawi'),(24,'Maldives'),(28,'Marshall Islands'),(18,'Mauritania'),(29,'Mauritius'),(11,'Monaco'),(49,'Mongolia'),(38,'Namibia'),(19,'Nauru'),(64,'Netherlands Antilles'),(20,'New Zealand'),(37,'Palestinian Territor'),(10,'Paraguay'),(12,'Peru'),(54,'Saint Kitts and Nevi'),(16,'Saudi Arabia'),(13,'Seychelles'),(41,'Slovakia (Slovak Rep'),(32,'Svalbard & Jan Mayen'),(67,'Tajikistan'),(25,'Thailand'),(3,'Ukraine'),(68,'United Kingdom'),(70,'United States Minor '),(5,'United States Virgin'),(27,'Uzbekistan'),(23,'Vanuatu'),(57,'Vietnam'),(52,'Yemen'),(58,'Zambia');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint unsigned NOT NULL,
  `from_user_id` bigint unsigned NOT NULL,
  `to_user_id` bigint unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `lks_from_user_id_fk` (`from_user_id`),
  KEY `lks_to_user_id_fk` (`to_user_id`),
  CONSTRAINT `lks_from_user_id_fk` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `lks_to_user_id_fk` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,6,'1992-03-14 20:52:52','1970-09-20 13:03:32'),(2,3,2,'2011-08-23 14:41:46','2017-04-24 12:15:45'),(3,6,1,'2008-09-07 18:49:42','2011-10-21 03:19:09'),(4,2,3,'1987-01-11 07:55:56','1983-01-29 21:52:00'),(5,4,7,'1980-02-18 02:20:01','2002-10-29 14:44:53'),(6,8,9,'1986-06-11 16:47:22','1992-09-23 12:23:00'),(7,5,3,'1999-04-07 03:52:22','1971-02-04 15:21:23'),(8,2,6,'1993-05-04 00:23:44','1985-01-14 06:07:41'),(9,7,3,'2000-02-04 14:07:26','1988-04-11 01:43:36'),(10,4,1,'1999-09-14 04:27:04','1994-02-09 23:01:54'),(11,3,7,'2011-05-25 07:52:52','2012-12-28 22:52:57'),(12,8,9,'2019-07-17 20:07:17','1992-02-16 21:38:25'),(13,9,6,'1978-10-15 15:05:22','1971-03-09 08:20:58'),(14,10,6,'1992-11-30 18:31:11','1998-02-15 14:14:33'),(15,5,8,'2013-05-25 03:53:08','1974-02-04 21:18:57'),(16,7,3,'1980-09-20 09:36:06','2008-08-23 21:05:07'),(17,10,1,'1971-12-05 17:19:49','2005-11-26 16:12:59'),(18,5,6,'1978-01-30 23:54:21','2010-11-20 17:55:25'),(19,9,10,'2006-11-03 22:09:52','1974-05-20 21:05:31'),(20,6,5,'2005-01-06 14:47:02','1977-07-14 19:05:12'),(21,5,6,'1995-07-30 19:11:03','1986-06-11 06:46:47'),(22,7,10,'1973-05-29 18:24:32','2020-03-13 20:19:28'),(23,7,5,'1991-04-30 03:33:56','2000-07-06 04:47:29'),(24,7,6,'2002-08-16 14:12:09','1976-04-11 09:08:59'),(25,3,9,'1985-07-03 19:03:43','2007-01-20 23:29:20'),(26,2,1,'2017-12-21 23:28:37','1999-04-14 16:29:36'),(27,10,6,'2014-04-10 19:09:11','1980-03-14 10:13:59');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `msg` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `row_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'insert','2021-12-23 15:39:53',11);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `user_id` bigint unsigned NOT NULL,
  `media_type_id` bigint unsigned NOT NULL,
  `body` text,
  `filename` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `metadata` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `md_user_id_fk` (`user_id`),
  KEY `md_media_type_id_fk` (`media_type_id`),
  CONSTRAINT `md_media_type_id_fk` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `md_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,'Similique eveniet ratione sit saepe libero modi nisi. Qui qui et quisquam. Quibusdam voluptates nesciunt commodi blanditiis.','vel',650308,NULL,'2015-07-06 23:52:40','2018-06-01 00:25:58'),(2,2,'Dolores corrupti hic et velit. Fuga et dolores corrupti dolorem enim fugiat officiis. Eligendi mollitia velit adipisci quia aliquam expedita autem odio.','corporis',1,NULL,'2014-05-05 17:36:16','2009-01-29 09:58:19'),(3,3,'Rerum id id id. Veniam officiis aut veniam. Quas corrupti qui nulla consequatur aspernatur. Odio iusto quia aut nam sunt provident. Alias esse dolor et quas atque eum.','sit',976,NULL,'1993-05-18 23:33:37','1976-04-12 09:53:44'),(4,4,'Non voluptates hic optio ex fuga voluptatem fugit. Ut quam eos quos ratione. Aliquid quos quaerat dolores laudantium necessitatibus tenetur. Aut aut sed fugiat repellat cum.','in',64032,NULL,'2012-11-24 11:01:57','2015-03-05 10:11:43'),(5,5,'Ut qui quo commodi pariatur et. Voluptate qui iure non quis animi dolorem quisquam aut. Eius aperiam aut quibusdam blanditiis non.','molestiae',318070,NULL,'2007-01-26 05:04:58','1978-07-24 04:41:13'),(6,6,'Iusto et quae alias autem. Atque nostrum commodi necessitatibus fugit voluptates expedita dicta.','est',79051883,NULL,'2015-10-08 13:58:51','1980-11-28 23:07:16'),(1,1,'Similique eveniet ratione sit saepe libero modi nisi. Qui qui et quisquam. Quibusdam voluptates nesciunt commodi blanditiis.','vel',650308,NULL,'2015-07-06 23:52:40','2018-06-01 00:25:58'),(2,2,'Dolores corrupti hic et velit. Fuga et dolores corrupti dolorem enim fugiat officiis. Eligendi mollitia velit adipisci quia aliquam expedita autem odio.','corporis',1,NULL,'2014-05-05 17:36:16','2009-01-29 09:58:19'),(3,3,'Rerum id id id. Veniam officiis aut veniam. Quas corrupti qui nulla consequatur aspernatur. Odio iusto quia aut nam sunt provident. Alias esse dolor et quas atque eum.','sit',976,NULL,'1993-05-18 23:33:37','1976-04-12 09:53:44'),(4,4,'Non voluptates hic optio ex fuga voluptatem fugit. Ut quam eos quos ratione. Aliquid quos quaerat dolores laudantium necessitatibus tenetur. Aut aut sed fugiat repellat cum.','in',64032,NULL,'2012-11-24 11:01:57','2015-03-05 10:11:43'),(5,5,'Ut qui quo commodi pariatur et. Voluptate qui iure non quis animi dolorem quisquam aut. Eius aperiam aut quibusdam blanditiis non.','molestiae',318070,NULL,'2007-01-26 05:04:58','1978-07-24 04:41:13'),(6,6,'Iusto et quae alias autem. Atque nostrum commodi necessitatibus fugit voluptates expedita dicta.','est',79051883,NULL,'2015-10-08 13:58:51','1980-11-28 23:07:16'),(7,2,'Non minima tenetur eum maxime qui velit recusandae. Quia nostrum consequatur dolores aliquid praesentium velit. Autem quis dolorem voluptates et et. Nostrum doloremque amet voluptas eos itaque.','itaque',29071770,NULL,'2014-11-08 01:28:15','2018-06-02 17:46:53'),(8,6,'Voluptas reiciendis et at saepe fugit. Perspiciatis rerum qui est consectetur architecto excepturi sunt. Molestiae ratione et odit iste perspiciatis consequatur voluptatem minus.','quam',599171,NULL,'2020-06-06 23:40:53','1982-11-09 06:28:25'),(9,3,'Qui sit nemo aut inventore voluptas aperiam quam. Minus quasi quibusdam mollitia laborum qui tenetur nulla. Aut dolorem autem illo accusamus quos voluptatem et ipsum.','quis',400,NULL,'1991-02-15 11:50:22','1979-11-24 00:24:57'),(10,1,'Non est velit voluptas illo et repudiandae laudantium. Ducimus in quasi incidunt commodi. Ad commodi mollitia itaque quaerat ut velit accusantium. Minima consequatur reiciendis blanditiis fuga dolore.','atque',0,NULL,'2007-10-27 16:21:39','1998-10-24 05:15:29'),(1,1,'Maiores rem qui repudiandae est quia sunt molestiae. Consequatur aliquid maxime ipsam qui omnis doloribus similique reiciendis. Atque et ad harum ipsa nesciunt voluptatibus. Veniam porro architecto quia et qui natus. Qui repellendus culpa doloribus praesentium.','rem',763,NULL,'2003-07-13 02:19:56','1994-05-20 06:34:50'),(2,2,'Praesentium ullam dolorem tenetur adipisci at illo. Sint neque minima minus ut eveniet ut. Tempore aspernatur laudantium quam ipsam.','commodi',682744,NULL,'2010-10-23 08:18:02','1992-02-04 03:46:45'),(3,3,'Blanditiis sit quibusdam repudiandae et molestiae. Labore ad commodi odit. Sint tenetur voluptatem ea deleniti qui.','ut',0,NULL,'1977-02-09 14:54:58','1995-07-06 03:05:15'),(4,4,'Aliquid autem quasi eos modi doloribus. Quis nihil exercitationem provident quibusdam. Numquam quisquam molestiae autem voluptates.','doloribus',0,NULL,'1985-11-04 18:47:09','1989-04-04 22:39:45'),(5,5,'Rerum hic numquam a dolore ipsum dicta. Voluptatem facilis quidem ipsa. Doloribus dolorum et consequatur et sint ut consequuntur. Voluptates commodi consequatur dolor mollitia doloribus.','ipsum',220101109,NULL,'1980-02-02 00:15:52','1971-05-20 04:50:01'),(6,6,'Debitis labore provident numquam non. Delectus inventore aut quasi eius quasi eius dignissimos. Adipisci cumque laudantium quae velit non sit dignissimos. Labore quo quo et ut animi.','quo',5054681,NULL,'2000-04-11 18:33:01','2014-03-31 04:15:23'),(7,2,'Quos mollitia sed accusantium nobis. Perspiciatis nihil suscipit veniam libero non amet. Eum error voluptatum unde exercitationem unde.','exercitationem',11488,NULL,'1972-02-20 10:51:56','1986-03-20 09:55:31'),(8,1,'Dolor qui fugiat aliquam alias eum quis est. Aut molestias minus dolorum est. Atque eveniet repellendus reiciendis illo. Non fugiat quia ut aut omnis et.','explicabo',0,NULL,'1989-12-24 21:19:01','2019-11-08 08:49:51'),(9,5,'Atque qui est neque est odio. Autem id eius qui placeat alias. Reiciendis id facilis consectetur odio asperiores reprehenderit laudantium. Omnis sunt ut ut dicta veniam.','dolorem',7575,NULL,'2017-01-21 20:47:18','1975-01-24 20:05:12'),(10,4,'Delectus enim ipsum itaque atque fugit enim. Laboriosam maxime consequatur maxime fugit. Consectetur ea praesentium dolore harum quo autem rem provident.','sit',82,NULL,'2020-01-24 19:01:03','2011-05-12 20:18:14'),(1,1,'Similique eveniet ratione sit saepe libero modi nisi. Qui qui et quisquam. Quibusdam voluptates nesciunt commodi blanditiis.','vel',650308,NULL,'2015-07-06 23:52:40','2018-06-01 00:25:58'),(2,2,'Dolores corrupti hic et velit. Fuga et dolores corrupti dolorem enim fugiat officiis. Eligendi mollitia velit adipisci quia aliquam expedita autem odio.','corporis',1,NULL,'2014-05-05 17:36:16','2009-01-29 09:58:19'),(3,3,'Rerum id id id. Veniam officiis aut veniam. Quas corrupti qui nulla consequatur aspernatur. Odio iusto quia aut nam sunt provident. Alias esse dolor et quas atque eum.','sit',976,NULL,'1993-05-18 23:33:37','1976-04-12 09:53:44'),(4,4,'Non voluptates hic optio ex fuga voluptatem fugit. Ut quam eos quos ratione. Aliquid quos quaerat dolores laudantium necessitatibus tenetur. Aut aut sed fugiat repellat cum.','in',64032,NULL,'2012-11-24 11:01:57','2015-03-05 10:11:43'),(5,5,'Ut qui quo commodi pariatur et. Voluptate qui iure non quis animi dolorem quisquam aut. Eius aperiam aut quibusdam blanditiis non.','molestiae',318070,NULL,'2007-01-26 05:04:58','1978-07-24 04:41:13'),(6,6,'Iusto et quae alias autem. Atque nostrum commodi necessitatibus fugit voluptates expedita dicta.','est',79051883,NULL,'2015-10-08 13:58:51','1980-11-28 23:07:16'),(7,2,'Non minima tenetur eum maxime qui velit recusandae. Quia nostrum consequatur dolores aliquid praesentium velit. Autem quis dolorem voluptates et et. Nostrum doloremque amet voluptas eos itaque.','itaque',29071770,NULL,'2014-11-08 01:28:15','2018-06-02 17:46:53'),(8,6,'Voluptas reiciendis et at saepe fugit. Perspiciatis rerum qui est consectetur architecto excepturi sunt. Molestiae ratione et odit iste perspiciatis consequatur voluptatem minus.','quam',599171,NULL,'2020-06-06 23:40:53','1982-11-09 06:28:25'),(9,3,'Qui sit nemo aut inventore voluptas aperiam quam. Minus quasi quibusdam mollitia laborum qui tenetur nulla. Aut dolorem autem illo accusamus quos voluptatem et ipsum.','quis',400,NULL,'1991-02-15 11:50:22','1979-11-24 00:24:57'),(10,1,'Non est velit voluptas illo et repudiandae laudantium. Ducimus in quasi incidunt commodi. Ad commodi mollitia itaque quaerat ut velit accusantium. Minima consequatur reiciendis blanditiis fuga dolore.','atque',0,NULL,'2007-10-27 16:21:39','1998-10-24 05:15:29'),(1,1,'Maiores rem qui repudiandae est quia sunt molestiae. Consequatur aliquid maxime ipsam qui omnis doloribus similique reiciendis. Atque et ad harum ipsa nesciunt voluptatibus. Veniam porro architecto quia et qui natus. Qui repellendus culpa doloribus praesentium.','rem',763,NULL,'2003-07-13 02:19:56','1994-05-20 06:34:50'),(2,2,'Praesentium ullam dolorem tenetur adipisci at illo. Sint neque minima minus ut eveniet ut. Tempore aspernatur laudantium quam ipsam.','commodi',682744,NULL,'2010-10-23 08:18:02','1992-02-04 03:46:45'),(3,3,'Blanditiis sit quibusdam repudiandae et molestiae. Labore ad commodi odit. Sint tenetur voluptatem ea deleniti qui.','ut',0,NULL,'1977-02-09 14:54:58','1995-07-06 03:05:15'),(4,4,'Aliquid autem quasi eos modi doloribus. Quis nihil exercitationem provident quibusdam. Numquam quisquam molestiae autem voluptates.','doloribus',0,NULL,'1985-11-04 18:47:09','1989-04-04 22:39:45'),(5,5,'Rerum hic numquam a dolore ipsum dicta. Voluptatem facilis quidem ipsa. Doloribus dolorum et consequatur et sint ut consequuntur. Voluptates commodi consequatur dolor mollitia doloribus.','ipsum',220101109,NULL,'1980-02-02 00:15:52','1971-05-20 04:50:01'),(6,6,'Debitis labore provident numquam non. Delectus inventore aut quasi eius quasi eius dignissimos. Adipisci cumque laudantium quae velit non sit dignissimos. Labore quo quo et ut animi.','quo',5054681,NULL,'2000-04-11 18:33:01','2014-03-31 04:15:23'),(7,2,'Quos mollitia sed accusantium nobis. Perspiciatis nihil suscipit veniam libero non amet. Eum error voluptatum unde exercitationem unde.','exercitationem',11488,NULL,'1972-02-20 10:51:56','1986-03-20 09:55:31'),(8,1,'Dolor qui fugiat aliquam alias eum quis est. Aut molestias minus dolorum est. Atque eveniet repellendus reiciendis illo. Non fugiat quia ut aut omnis et.','explicabo',0,NULL,'1989-12-24 21:19:01','2019-11-08 08:49:51'),(9,5,'Atque qui est neque est odio. Autem id eius qui placeat alias. Reiciendis id facilis consectetur odio asperiores reprehenderit laudantium. Omnis sunt ut ut dicta veniam.','dolorem',7575,NULL,'2017-01-21 20:47:18','1975-01-24 20:05:12'),(10,4,'Delectus enim ipsum itaque atque fugit enim. Laboriosam maxime consequatur maxime fugit. Consectetur ea praesentium dolore harum quo autem rem provident.','sit',82,NULL,'2020-01-24 19:01:03','2011-05-12 20:18:14');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'jpg'),(2,'bmp'),(3,'gif'),(4,'png'),(5,'tiff'),(6,'ico');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premium_users`
--

DROP TABLE IF EXISTS `premium_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_users` (
  `user_id` bigint unsigned NOT NULL,
  `premium_status` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  KEY `prmm_user_id_fk` (`user_id`),
  CONSTRAINT `prmm_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premium_users`
--

LOCK TABLES `premium_users` WRITE;
/*!40000 ALTER TABLE `premium_users` DISABLE KEYS */;
INSERT INTO `premium_users` VALUES (1,1,'2020-05-25 09:41:28'),(2,1,'2005-05-29 15:27:59'),(3,0,'1979-01-24 10:25:45'),(4,0,'1976-02-04 09:59:24'),(5,0,'1982-12-27 16:14:36'),(6,1,'1992-03-06 06:05:52'),(7,1,'2010-12-28 20:55:11'),(8,1,'2010-10-12 01:15:14'),(9,1,'1974-06-14 13:32:26'),(10,0,'1979-01-27 00:37:53');
/*!40000 ALTER TABLE `premium_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` bigint unsigned NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned NOT NULL,
  `city_id` bigint unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `prfls_user_id_fk` (`user_id`),
  KEY `prfls_photo_id_fk` (`photo_id`),
  KEY `prfls_country_id_fk` (`country_id`),
  KEY `prfls_city_id_fk` (`city_id`),
  CONSTRAINT `prfls_city_id_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `prfls_country_id_fk` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `prfls_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','2006-04-24',13,21,50,'2010-12-02 00:04:34'),(2,'m','2002-12-11',50,12,1,'2020-08-08 02:35:50'),(3,'f','1992-07-30',54,23,7,'1989-02-11 11:40:55'),(4,'f','1989-01-18',34,14,8,'1985-04-26 17:01:56'),(5,'f','2005-11-27',55,22,5,'2002-04-21 08:23:08'),(6,'f','1974-11-20',46,6,6,'1975-10-11 22:19:10'),(7,'m','1978-11-18',23,10,7,'1978-05-07 05:43:01'),(8,'f','1981-01-19',30,9,10,'2012-08-07 19:03:54'),(9,'f','1993-11-06',50,7,3,'1977-04-08 23:35:10'),(10,'f','1995-06-13',18,5,6,'1991-09-16 04:46:21');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_anketas`
--

DROP TABLE IF EXISTS `profiles_anketas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles_anketas` (
  `user_id` bigint unsigned NOT NULL,
  `alco_relationship` tinyint(1) NOT NULL DEFAULT '0',
  `sex_orient` text,
  `family_status` text,
  `interests` text,
  `about` text,
  `growth` double unsigned DEFAULT NULL,
  `school` text,
  `workplace` text,
  `position_work` text,
  `smoking_relationship` tinyint(1) DEFAULT '0',
  `children` tinyint(1) DEFAULT '0',
  `zodiaq` text,
  `pets` text,
  `religion` text,
  KEY `prfls_ankts_user_id_fk` (`user_id`),
  CONSTRAINT `prfls_ankts_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_anketas`
--

LOCK TABLES `profiles_anketas` WRITE;
/*!40000 ALTER TABLE `profiles_anketas` DISABLE KEYS */;
INSERT INTO `profiles_anketas` VALUES (1,0,' metero','married','Pariatur eligendi eveniet assumenda dolorum magnam repellat iste. Et voluptas possimus et molestiae impedit.','Distinctio eos sit a et ullam adipisci corporis at. Nemo nobis ut quidem aperiam.',189999.32950883,'Deckow Causeway','Officia optio nulla corporis nemo aut quis. Nesciunt ut velit dolorum voluptatem modi.','Explicabo expedita dolores blanditiis facere et sit est.',1,1,'Capricorn','Quia aut dolorum quibusdam est qui consequuntur. Sequi delectus aut dolore aliquam reiciendis.','Catholicism'),(2,1,' bi',' single','Adipisci et reprehenderit doloribus ex perspiciatis. Libero nesciunt accusantium qui et aut nam laboriosam non. Fuga qui et quia est dolorum.','Dolor corporis tenetur doloribus nihil molestiae eveniet voluptatibus. Corrupti veritatis reiciendis qui odit rerum laborum.',91.211347324406,'Raynor Path','Delectus quia modi asperiores qui ipsum doloribus. Non consequuntur ab hic non possimus.','Tempora deserunt in autem ut molestiae. Ut quae fugit exercitationem iure quibusdam omnis labore.',0,0,'Libra','Aut saepe saepe voluptates reiciendis. Id incidunt voluptatem provident animi non.','Buddhism'),(3,0,' lesbian','married','Dolor et voluptatem enim ad quis eveniet enim possimus. Impedit rem temporibus et sit.','Maxime et ducimus voluptas dolores rerum possimus. Ut vero quam quia qui maiores. Et aliquid sit rerum vel architecto velit.',408072.84638771,'Justice Track','Possimus nesciunt nihil temporibus vel sequi quisquam dolor non.','Atque fugit non excepturi ut modi.',1,1,'Pisces','Officia quaerat sint quia earum distinctio.','Islam'),(4,0,' metero',' single','Consequatur eos quam error. Voluptas quae debitis mollitia. Harum illum error nobis sed voluptate molestiae ipsam.','Provident qui provident voluptatem iste et est consequuntur. Qui ut voluptatem blanditiis autem ut accusamus.',10141684.197293,'Frami Stravenue','Voluptatem dignissimos maiores quam et voluptas modi. Enim maxime ullam culpa dolor voluptas.','Consequuntur similique esse ipsa voluptas unde. Nihil aspernatur ut aut nihil.',0,0,'Aries','Et distinctio corrupti eius eum nihil.','Orthodoxy'),(5,0,'getero','married','Id alias sit ea iusto ex porro molestiae. Deleniti alias minima quis consequatur excepturi.','Dignissimos sed harum est ea. Iste minima deserunt qui impedit. Ipsum quis facilis ut quia ab.',137.53512634781,'Ruecker Points','Dignissimos odit repellat et quisquam id.','Magni at minima quia enim sed temporibus ut.',1,1,'Gemini','Velit et ea rerum hic expedita.','Islam'),(6,0,' metero',' single','Voluptates quos incidunt atque aut. Modi enim quibusdam beatae molestiae magni autem. Dolor a quisquam sed molestiae voluptatum suscipit.','Velit reiciendis atque et voluptates et. Natus modi voluptatem quia quas ut laborum molestias. Omnis ipsam sapiente quo amet.',230.80505668689,'Elsa River','Sed et corrupti et rem ea. Provident illo perferendis id.','Porro dignissimos omnis ea ea.',0,0,'Gemini','Nobis sit minima iure accusantium. Qui eaque architecto harum et neque.','Buddhism'),(7,0,' lesbian','married','Qui non facere nostrum molestiae nihil repellat. Quod magnam natus eum officia nobis repellendus.','Eius temporibus quia voluptatum est commodi at. Voluptatibus enim debitis quisquam sunt et est. Autem magnam id quis rerum quasi.',265789.4009233,'Greenfelder Ferry','Neque nisi ut voluptatem officia rerum eaque corrupti. Dolores maxime odio qui aut veritatis quos fuga.','Libero id tempora debitis porro placeat.',1,0,'Libra','Perspiciatis et et sapiente iure. Ullam est et sed aliquam.','Buddhism'),(8,1,' gay','married','Velit tempore enim asperiores enim aut deserunt. Aspernatur possimus consequatur libero expedita quia nisi excepturi. Corrupti voluptas tempora est.','Dolore cupiditate qui et maxime sed sed quidem iusto. Tempore rerum aperiam aliquid dolores consequuntur.',158.57092311772,'O\'Keefe Trail','Odio aliquam vel quae recusandae illo adipisci omnis. Sapiente alias voluptate doloremque assumenda.','Doloremque doloribus aliquam dolores dolorum in quae.',0,1,'Sagittarius','Ea qui maxime rerum architecto. Soluta fuga sunt aperiam dolorum et.','Catholicism'),(9,0,' lesbian',' single','Similique non velit nobis porro voluptas facilis modi tempora. Voluptatem quis magni vel quo voluptatem. Et nam voluptatem autem quos.','Doloribus illum distinctio dolorem sed. Debitis non voluptatum nostrum consequatur.',34603125.234682,'Jayne Hollow','Veniam ut dolorem omnis unde eius dolores optio sunt. Et rem dolorum et molestias dolor quo aut.','Quia itaque est mollitia vero nihil dicta et.',0,1,'Scorpio','Sint illo accusamus doloribus alias cum.','Catholicism'),(10,0,' pan',' single','Quae necessitatibus et laborum et voluptas. Repellendus veniam labore eos inventore minima nihil. Est vel praesentium qui.','Nobis voluptatem aut aspernatur dolor. Voluptatum omnis dolorum sint quas tempore. Illo ipsa hic repudiandae voluptatem.',115666.2951707,'Weimann Ridges','Mollitia nam ex cumque quos qui et itaque. Omnis quo qui consequatur repellendus.','Nemo laudantium cum illum ut.',0,0,'Aries','Qui fugit est tenetur repellendus tempore. Placeat reiciendis corrupti et illum sed et illum.','Islam');
/*!40000 ALTER TABLE `profiles_anketas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_credits`
--

DROP TABLE IF EXISTS `user_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_credits` (
  `user_id` bigint unsigned NOT NULL,
  `credits` bigint unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`credits`),
  KEY `usr_crdts_user_id_fk` (`user_id`),
  CONSTRAINT `usr_crdts_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_credits`
--

LOCK TABLES `user_credits` WRITE;
/*!40000 ALTER TABLE `user_credits` DISABLE KEYS */;
INSERT INTO `user_credits` VALUES (6,4,'2018-09-18 16:27:41','2016-08-13 05:52:49'),(8,30,'1998-08-03 19:24:15','1979-11-08 23:15:12'),(7,84,'1985-06-27 19:29:39','2006-10-30 11:46:28'),(4,446,'1994-05-14 10:49:29','1980-03-28 21:58:30'),(9,4030,'1980-09-13 00:36:00','2009-01-20 06:45:28'),(5,40996,'1997-06-18 21:08:51','1971-06-10 03:02:01'),(2,136963,'2021-06-23 04:54:39','1981-05-10 21:54:04'),(3,295128,'2014-11-29 05:51:59','1990-07-15 18:31:50'),(1,442345,'1989-01-18 07:04:16','1972-01-27 15:49:40'),(10,760223,'2013-12-04 23:32:40','1977-11-28 22:15:52');
/*!40000 ALTER TABLE `user_credits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_online_offline`
--

DROP TABLE IF EXISTS `user_online_offline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_online_offline` (
  `user_id` bigint unsigned NOT NULL,
  `conn_status` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `usr_onln_offln_user_id_fk` (`user_id`),
  CONSTRAINT `usr_onln_offln_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_online_offline`
--

LOCK TABLES `user_online_offline` WRITE;
/*!40000 ALTER TABLE `user_online_offline` DISABLE KEYS */;
INSERT INTO `user_online_offline` VALUES (1,0,'1988-03-13 14:30:02'),(2,0,'2018-03-28 04:31:02'),(3,1,'1994-03-03 16:04:56'),(4,0,'1993-06-01 18:05:34'),(5,0,'2007-04-12 08:37:25'),(6,1,'1975-01-25 10:04:59'),(7,0,'1988-07-04 09:36:30'),(8,0,'2009-06-22 16:05:28'),(9,0,'2001-12-20 12:23:27'),(10,0,'1976-04-03 11:18:50');
/*!40000 ALTER TABLE `user_online_offline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_frstnm_lstnm_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gwen','Daugherty','deanna91@example.com','2005-07-14 08:30:06'),(2,'Celestino','Herzog','maya.hane@example.ne','1978-03-10 10:48:41'),(3,'Louisa','Sanford','iwuckert@example.org','2012-06-04 04:36:56'),(4,'Rolando','Hayes','leonie.rutherford@ex','1980-01-06 07:33:45'),(5,'Alana','Doyle','uharris@example.com','1979-01-28 15:34:03'),(6,'Carmella','Fay','wehner.katelin@examp','1993-01-09 13:31:26'),(7,'Eloise','Roberts','gcole@example.com','1991-11-11 18:37:44'),(8,'Hillary','Schumm','emoore@example.net','2016-11-28 00:57:59'),(9,'Roman','Macejkovic','otorp@example.org','1971-02-14 16:04:08'),(10,'Loy','Keebler','easter.casper@exampl','1980-02-16 02:09:15'),(11,'Gwen','Daugherty','fa91@example.com','2005-07-14 08:30:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `users_tr_update_log` AFTER INSERT ON `users` FOR EACH ROW BEGIN
   INSERT INTO `log` SET msg = 'insert', row_id = NEW.id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `users_credits`
--

DROP TABLE IF EXISTS `users_credits`;
/*!50001 DROP VIEW IF EXISTS `users_credits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_credits` AS SELECT 
 1 AS `id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `email`,
 1 AS `credits`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `users_likes_get`
--

DROP TABLE IF EXISTS `users_likes_get`;
/*!50001 DROP VIEW IF EXISTS `users_likes_get`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_likes_get` AS SELECT 
 1 AS `id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `email`,
 1 AS `Count(l.to_user_id) - Count(DISTINCT l.to_user_id)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `users_profiles`
--

DROP TABLE IF EXISTS `users_profiles`;
/*!50001 DROP VIEW IF EXISTS `users_profiles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_profiles` AS SELECT 
 1 AS `id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `email`,
 1 AS `gender`,
 1 AS `birthday`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `users_credits`
--

/*!50001 DROP VIEW IF EXISTS `users_credits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_credits` AS select `u`.`id` AS `id`,`u`.`firstname` AS `firstname`,`u`.`lastname` AS `lastname`,`u`.`email` AS `email`,`uc`.`credits` AS `credits` from (`users` `u` join `user_credits` `uc`) where (`u`.`id` = `uc`.`user_id`) order by `uc`.`credits` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_likes_get`
--

/*!50001 DROP VIEW IF EXISTS `users_likes_get`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_likes_get` AS select distinct `u`.`id` AS `id`,`u`.`firstname` AS `firstname`,`u`.`lastname` AS `lastname`,`u`.`email` AS `email`,(count(`l`.`to_user_id`) - count(distinct `l`.`to_user_id`)) AS `Count(l.to_user_id) - Count(DISTINCT l.to_user_id)` from (`users` `u` join `likes` `l`) where (`l`.`to_user_id` = `u`.`id`) group by `l`.`to_user_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_profiles`
--

/*!50001 DROP VIEW IF EXISTS `users_profiles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_profiles` AS select `u`.`id` AS `id`,`u`.`firstname` AS `firstname`,`u`.`lastname` AS `lastname`,`u`.`email` AS `email`,`p`.`gender` AS `gender`,`p`.`birthday` AS `birthday` from (`users` `u` join `profiles` `p`) where (`u`.`id` = `p`.`user_id`) */;
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

-- Dump completed on 2021-12-23 19:00:07
