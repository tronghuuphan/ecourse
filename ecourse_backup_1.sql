-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: ecourse
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add lesson',9,'add_lesson'),(34,'Can change lesson',9,'change_lesson'),(35,'Can delete lesson',9,'delete_lesson'),(36,'Can view lesson',9,'view_lesson'),(37,'Can add tag',10,'add_tag'),(38,'Can change tag',10,'change_tag'),(39,'Can delete tag',10,'delete_tag'),(40,'Can view tag',10,'view_tag'),(41,'Can add user',11,'add_user'),(42,'Can change user',11,'change_user'),(43,'Can delete user',11,'delete_user'),(44,'Can view user',11,'view_user'),(45,'Can add comment',12,'add_comment'),(46,'Can change comment',12,'change_comment'),(47,'Can delete comment',12,'delete_comment'),(48,'Can view comment',12,'view_comment'),(49,'Can add rating',13,'add_rating'),(50,'Can change rating',13,'change_rating'),(51,'Can delete rating',13,'delete_rating'),(52,'Can view rating',13,'view_rating'),(53,'Can add action',14,'add_action'),(54,'Can change action',14,'change_action'),(55,'Can delete action',14,'delete_action'),(56,'Can view action',14,'view_action');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user`
--

DROP TABLE IF EXISTS `core_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user`
--

LOCK TABLES `core_user` WRITE;
/*!40000 ALTER TABLE `core_user` DISABLE KEYS */;
INSERT INTO `core_user` VALUES (1,'pbkdf2_sha256$260000$rGT6oMes8bE19O2AaCrpn1$63+GqW2QMD3c+6e4qF+tGVNwux43b7i4h9ZliMI5R74=','2021-11-05 10:27:06.678802',1,'admin','','',1,1,'2021-11-05 10:26:51.921814','admin@domain.com'),(2,'pbkdf2_sha256$260000$WDoGcG5l15SJOElAiPFXnM$RPiE6hvHABBScpijY7H6h6S3Ho0bN5EgvvZJLmTvY60=',NULL,0,'user1','User1','HP',0,1,'2021-11-08 18:55:58.000000','user1@domain.com'),(3,'pbkdf2_sha256$260000$YECrcdxrbRGzQ4t3upH5pc$m0CN6a4o2TehGZse/rPENBmaVL0Xh7aXM4NIVKw+SSo=',NULL,0,'user2','User2','HP',1,1,'2021-11-08 18:59:57.000000','user2@domain.con'),(4,'pbkdf2_sha256$260000$xSnEWFGSrsEgFpDZF16oQ9$5FrUkgysEaK8oaYEMReBirVtvi6/XT2WyPSPvBNBkSM=',NULL,0,'user3','fiewjo','ifjwf',0,1,'2021-11-08 19:10:17.248709','user3@domain.com'),(5,'pbkdf2_sha256$260000$cJtc0tE4jLJ8apeqv3kdfH$/xKKO+AoJKeNy1R/8dtnNCyu132Gwm1Ix5lbqWhTH0Q=',NULL,0,'user4','','',0,1,'2021-11-09 04:42:59.706122','user4@domain.com'),(6,'pbkdf2_sha256$260000$6cJ6whq0YABCerXjwvb6un$OgXEdBPYFcNhNaOBV7P85pM68ETA8fuhIBhS6DkaeDE=',NULL,0,'test','fe','fe',0,1,'2021-11-12 15:25:15.331264','gjh@jghnse.fe');
/*!40000 ALTER TABLE `core_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_groups`
--

DROP TABLE IF EXISTS `core_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_user_groups_user_id_group_id_c82fcad1_uniq` (`user_id`,`group_id`),
  KEY `core_user_groups_group_id_fe8c697f_fk_auth_group_id` (`group_id`),
  CONSTRAINT `core_user_groups_group_id_fe8c697f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `core_user_groups_user_id_70b4d9b8_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_groups`
--

LOCK TABLES `core_user_groups` WRITE;
/*!40000 ALTER TABLE `core_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_user_permissions`
--

DROP TABLE IF EXISTS `core_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_user_user_permissions_user_id_permission_id_73ea0daa_uniq` (`user_id`,`permission_id`),
  KEY `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` (`permission_id`),
  CONSTRAINT `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `core_user_user_permissions_user_id_085123d3_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_user_permissions`
--

LOCK TABLES `core_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `core_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_action`
--

DROP TABLE IF EXISTS `courses_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_action` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `type` smallint unsigned NOT NULL,
  `creator_id` bigint NOT NULL,
  `lesson_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_action_creator_id_lesson_id_7f416c53_uniq` (`creator_id`,`lesson_id`),
  KEY `courses_action_lesson_id_34714cd0_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_action_creator_id_0197e329_fk_core_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `courses_action_lesson_id_34714cd0_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`),
  CONSTRAINT `courses_action_chk_1` CHECK ((`type` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_action`
--

LOCK TABLES `courses_action` WRITE;
/*!40000 ALTER TABLE `courses_action` DISABLE KEYS */;
INSERT INTO `courses_action` VALUES (1,'2021-11-13 03:06:07.652468','2021-11-13 03:06:07.652552',1,2,1),(11,'2021-11-13 05:15:32.848029','2021-11-13 05:15:32.848099',1,2,3);
/*!40000 ALTER TABLE `courses_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_category`
--

DROP TABLE IF EXISTS `courses_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_category`
--

LOCK TABLES `courses_category` WRITE;
/*!40000 ALTER TABLE `courses_category` DISABLE KEYS */;
INSERT INTO `courses_category` VALUES (1,'Comunication Skills'),(2,'Sales & Marketing'),(3,'IT'),(4,'Language'),(5,'Management');
/*!40000 ALTER TABLE `courses_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_comment`
--

DROP TABLE IF EXISTS `courses_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `creator_id` bigint NOT NULL,
  `lesson_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_comment_lesson_id_ce88c0d1_fk_courses_lesson_id` (`lesson_id`),
  KEY `courses_comment_creator_id_0e4ef55d_fk_core_user_id` (`creator_id`),
  CONSTRAINT `courses_comment_creator_id_0e4ef55d_fk_core_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `courses_comment_lesson_id_ce88c0d1_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_comment`
--

LOCK TABLES `courses_comment` WRITE;
/*!40000 ALTER TABLE `courses_comment` DISABLE KEYS */;
INSERT INTO `courses_comment` VALUES (1,'grfgdrf','2021-11-12 16:57:03.919645','2021-11-12 16:57:03.919709',2,1),(2,'refer','2021-11-13 02:16:54.001597','2021-11-13 02:16:54.001678',2,1),(3,'refer','2021-11-13 02:17:01.859465','2021-11-13 02:17:01.859531',2,1),(4,'refer','2021-11-13 02:17:06.454987','2021-11-13 02:17:06.455070',2,1),(5,'fdadadasd','2021-11-13 02:18:59.178619','2021-11-13 02:18:59.178659',2,1),(6,'fdadadasd','2021-11-13 02:19:11.826340','2021-11-13 02:19:11.826377',2,1),(7,'fdadadasd','2021-11-13 02:19:14.199792','2021-11-13 02:19:14.199855',2,1);
/*!40000 ALTER TABLE `courses_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_course_subject_category_id_5351bae9_uniq` (`subject`,`category_id`),
  KEY `courses_course_category_id_d64b93bf_fk_courses_category_id` (`category_id`),
  CONSTRAINT `courses_course_category_id_d64b93bf_fk_courses_category_id` FOREIGN KEY (`category_id`) REFERENCES `courses_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (1,'RNA Biology','http://dummyimage.com/167x100.png/cc0000/ffffff','2021-08-15 00:00:00.000000','2021-06-03 00:00:00.000000',0,'Toxic effect of copper and its compounds, acc, sequela',5),(2,'Spring Framework','http://dummyimage.com/180x100.png/5fa2dd/ffffff','2021-09-22 00:00:00.000000','2021-04-24 00:00:00.000000',0,'Chronic giant papillary conjunctivitis',4),(3,'Generators','http://dummyimage.com/233x100.png/ff4444/ffffff','2021-08-12 00:00:00.000000','2021-08-04 00:00:00.000000',1,'Occup of dune buggy injured in traffic accident, init encntr',4),(4,'Zoom','http://dummyimage.com/167x100.png/5fa2dd/ffffff','2021-03-27 00:00:00.000000','2021-02-25 00:00:00.000000',0,'Unsp physl fx upper end rad, r arm, subs for fx w routn heal',5),(5,'Email Marketing','http://dummyimage.com/187x100.png/ff4444/ffffff','2021-08-09 00:00:00.000000','2021-08-14 00:00:00.000000',1,'Unsp comp of fb acc left in body fol surgical op, init',3),(6,'Substance Use Disorders','http://dummyimage.com/168x100.png/cc0000/ffffff','2020-11-26 00:00:00.000000','2021-03-04 00:00:00.000000',0,'Superficial frostbite of right arm',1),(7,'SQF','http://dummyimage.com/124x100.png/cc0000/ffffff','2020-11-13 00:00:00.000000','2021-10-17 00:00:00.000000',1,'Oth fx shaft of unsp ulna, subs for clos fx w routn heal',2),(8,'Epigenetics','http://dummyimage.com/180x100.png/cc0000/ffffff','2021-06-07 00:00:00.000000','2021-07-03 00:00:00.000000',1,'Cerebral infrc due to embolism of bi post cerebral arteries',5),(9,'Brochures','http://dummyimage.com/235x100.png/ff4444/ffffff','2021-03-21 00:00:00.000000','2021-08-31 00:00:00.000000',1,'Oth injury of plantar artery of left foot, init encntr',1),(10,'IABP','http://dummyimage.com/178x100.png/dddddd/000000','2021-07-10 00:00:00.000000','2021-01-18 00:00:00.000000',0,'Unsp fracture of first metacarpal bone, unsp hand, init',2),(11,'NSS','http://dummyimage.com/218x100.png/5fa2dd/ffffff','2021-06-16 00:00:00.000000','2020-11-12 00:00:00.000000',0,'Scleritis with corneal involvement, left eye',1),(12,'RELAX NG','http://dummyimage.com/149x100.png/cc0000/ffffff','2021-10-12 00:00:00.000000','2021-09-08 00:00:00.000000',0,'Toxic effect of oth substances, undetermined, init encntr',3),(13,'Ice Hockey','http://dummyimage.com/164x100.png/ff4444/ffffff','2021-10-22 00:00:00.000000','2021-03-12 00:00:00.000000',1,'Malignant neoplasm of left conjunctiva',1),(14,'Weapons','http://dummyimage.com/136x100.png/dddddd/000000','2021-02-07 00:00:00.000000','2020-12-07 00:00:00.000000',0,'Driver of 3-whl mv injured in clsn w oth mv nontraf, subs',4),(15,'Oracle Identity Manager','http://dummyimage.com/112x100.png/cc0000/ffffff','2021-05-03 00:00:00.000000','2021-04-26 00:00:00.000000',0,'Puncture wound w foreign body of right upper arm, init',5),(16,'SVG','http://dummyimage.com/234x100.png/dddddd/000000','2021-10-26 00:00:00.000000','2020-12-01 00:00:00.000000',1,'Path fx in oth disease, l shoulder, subs for fx w malunion',4),(17,'VLSM','http://dummyimage.com/196x100.png/dddddd/000000','2021-10-14 00:00:00.000000','2021-09-18 00:00:00.000000',0,'Other infective (teno)synovitis, left elbow',4),(18,'Quantitative Finance','http://dummyimage.com/211x100.png/dddddd/000000','2021-05-14 00:00:00.000000','2021-01-05 00:00:00.000000',0,'Contusion and laceration of left cerebrum',1),(19,'Wine Tasting','http://dummyimage.com/105x100.png/dddddd/000000','2021-09-14 00:00:00.000000','2021-10-24 00:00:00.000000',0,'Other fracture of left foot, 7thK',1),(20,'Aerial Silks','http://dummyimage.com/116x100.png/5fa2dd/ffffff','2020-12-29 00:00:00.000000','2021-05-14 00:00:00.000000',0,'Pnctr w foreign body of l rng fngr w damage to nail, init',4),(21,'Stakeholder Management','http://dummyimage.com/203x100.png/cc0000/ffffff','2021-05-03 00:00:00.000000','2021-07-14 00:00:00.000000',0,'Toxic effect of phosphorus and its compnd, self-harm, subs',4),(22,'KCS','http://dummyimage.com/169x100.png/cc0000/ffffff','2021-09-29 00:00:00.000000','2021-11-01 00:00:00.000000',0,'Anterior subluxation of left ulnohumeral joint',1),(23,'DST','http://dummyimage.com/246x100.png/cc0000/ffffff','2021-09-02 00:00:00.000000','2021-07-08 00:00:00.000000',1,'Disp fx of head of unsp rad, 7thH',3),(24,'PDS','http://dummyimage.com/170x100.png/cc0000/ffffff','2021-02-01 00:00:00.000000','2021-05-10 00:00:00.000000',0,'Fall, jump or pushed from a high place, undet intent, init',3),(25,'Xerox Printers','http://dummyimage.com/134x100.png/cc0000/ffffff','2021-01-31 00:00:00.000000','2021-01-18 00:00:00.000000',0,'Strain intrns musc/fasc/tend r mid fngr at wrs/hnd lv, sqla',2),(26,'Taleo','http://dummyimage.com/154x100.png/ff4444/ffffff','2021-07-02 00:00:00.000000','2021-08-23 00:00:00.000000',1,'Strain msl/tnd lng flxr msl of toe at ank/ft level, l foot',1),(27,'Water Quality','http://dummyimage.com/135x100.png/cc0000/ffffff','2020-11-28 00:00:00.000000','2021-08-11 00:00:00.000000',1,'Pnctr w/o fb of left lesser toe(s) w damage to nail, init',5),(28,'Nursing Process','http://dummyimage.com/131x100.png/dddddd/000000','2021-09-06 00:00:00.000000','2021-04-27 00:00:00.000000',1,'Pregnancy related renal disease, unspecified trimester',2),(29,'EGPRS','http://dummyimage.com/233x100.png/5fa2dd/ffffff','2021-09-03 00:00:00.000000','2021-03-06 00:00:00.000000',1,'Poisn by unsp prim systemic and hematolog agent, acc, init',1),(30,'NDT','http://dummyimage.com/211x100.png/dddddd/000000','2021-10-13 00:00:00.000000','2020-11-04 00:00:00.000000',1,'Oth fracture of shaft of left tibia, init for clos fx',4),(31,'CCIE R&amp;S','http://dummyimage.com/116x100.png/cc0000/ffffff','2021-05-21 00:00:00.000000','2021-03-29 00:00:00.000000',1,'Nondisp fx of acromial process, right shoulder, init',1),(32,'ITIL','http://dummyimage.com/128x100.png/dddddd/000000','2021-07-03 00:00:00.000000','2021-03-16 00:00:00.000000',0,'Mixed cellularity Hodgkin lymphoma, intrathorac lymph nodes',5),(33,'Applied Mathematics','http://dummyimage.com/127x100.png/cc0000/ffffff','2021-10-18 00:00:00.000000','2021-06-13 00:00:00.000000',1,'Displaced Rolando\'s fracture, right hand, init for clos fx',1),(34,'Career Development','http://dummyimage.com/196x100.png/5fa2dd/ffffff','2021-07-23 00:00:00.000000','2021-06-12 00:00:00.000000',0,'Contact with grain storage elevator, sequela',4),(35,'Medicine','http://dummyimage.com/138x100.png/5fa2dd/ffffff','2020-11-04 00:00:00.000000','2021-07-20 00:00:00.000000',0,'Acute hematogenous osteomyelitis, unspecified ankle and foot',2),(36,'LCSH','http://dummyimage.com/193x100.png/cc0000/ffffff','2020-12-19 00:00:00.000000','2021-09-29 00:00:00.000000',0,'Bitten by nonvenomous lizards, sequela',5),(37,'Surveillance','http://dummyimage.com/177x100.png/5fa2dd/ffffff','2021-08-06 00:00:00.000000','2021-03-26 00:00:00.000000',0,'Compression of vein',4),(38,'Www','http://dummyimage.com/180x100.png/ff4444/ffffff','2021-03-04 00:00:00.000000','2020-11-07 00:00:00.000000',1,'Inj msl/tnd lng flexor muscle of toe at ankle and foot level',2),(39,'OODBMS','http://dummyimage.com/171x100.png/dddddd/000000','2021-06-24 00:00:00.000000','2021-07-26 00:00:00.000000',1,'Dislocation of T2/T3 thoracic vertebra, initial encounter',4),(40,'Equipment Maintenance','http://dummyimage.com/220x100.png/5fa2dd/ffffff','2021-03-16 00:00:00.000000','2021-02-20 00:00:00.000000',1,'Sedative, hypnotic or anxiolytic abuse w psychotic disorder',4),(41,'EEO Reporting','http://dummyimage.com/213x100.png/ff4444/ffffff','2021-04-17 00:00:00.000000','2021-04-13 00:00:00.000000',1,'Unspecified reduction defect of unspecified upper limb',3),(42,'Wovens','http://dummyimage.com/154x100.png/ff4444/ffffff','2021-05-05 00:00:00.000000','2021-02-25 00:00:00.000000',0,'Unsp comp of fb acc left in body fol heart cath, sequela',3),(43,'European Union','http://dummyimage.com/119x100.png/dddddd/000000','2020-11-13 00:00:00.000000','2020-11-18 00:00:00.000000',0,'Unspecified injury of portal vein, sequela',3),(44,'IEF','http://dummyimage.com/235x100.png/cc0000/ffffff','2021-03-15 00:00:00.000000','2021-04-11 00:00:00.000000',0,'Strain of flexor musc/fasc/tend thmb at forearm level, subs',3),(45,'Pro-IV','http://dummyimage.com/143x100.png/5fa2dd/ffffff','2021-06-23 00:00:00.000000','2021-03-20 00:00:00.000000',1,'Displ oblique fx shaft of r femr, 7thD',5),(46,'National Security','http://dummyimage.com/186x100.png/dddddd/000000','2021-06-02 00:00:00.000000','2021-09-07 00:00:00.000000',1,'Path fx in neopltc dis, r humerus, subs for fx w routn heal',2),(47,'SOA','http://dummyimage.com/233x100.png/ff4444/ffffff','2020-12-29 00:00:00.000000','2020-11-10 00:00:00.000000',1,'Contusion of right little finger w damage to nail, init',1),(48,'Variance Analysis','http://dummyimage.com/114x100.png/5fa2dd/ffffff','2021-03-26 00:00:00.000000','2021-09-04 00:00:00.000000',0,'Poisn by succinimides and oxazolidinediones, assault, init',4),(49,'Zuora','http://dummyimage.com/224x100.png/cc0000/ffffff','2021-01-01 00:00:00.000000','2020-11-02 00:00:00.000000',1,'Toxic shock syndrome',1),(50,'XP Professional','http://dummyimage.com/129x100.png/5fa2dd/ffffff','2021-05-11 00:00:00.000000','2020-11-05 00:00:00.000000',1,'Oth fx upr & low end r fibula, 7thH',2),(51,'test','courses/2021/11/Screenshot_from_2021-09-26_10-02-31.png','2021-11-05 14:01:55.791416','2021-11-05 14:30:39.875918',1,'test',2);
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_lesson`
--

DROP TABLE IF EXISTS `courses_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_lesson` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `course_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_lesson_subject_course_id_f2a8d9de_uniq` (`subject`,`course_id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_lesson`
--

LOCK TABLES `courses_lesson` WRITE;
/*!40000 ALTER TABLE `courses_lesson` DISABLE KEYS */;
INSERT INTO `courses_lesson` VALUES (1,'Bai 1: abc','courses/2021/11/Screenshot_from_2021-10-09_00-27-38.png','2021-11-05 17:28:35.472931','2021-11-12 16:06:10.050857',1,'ef',51),(2,'Bai 2','courses/2021/11/Screenshot_from_2021-09-26_10-02-31_VyZHsBn.png','2021-11-05 17:28:57.742116','2021-11-07 14:11:24.888199',0,'dd',50),(3,'ded','courses/2021/11/Screenshot_from_2021-10-02_00-27-35.png','2021-11-05 17:29:13.354936','2021-11-09 03:25:35.246169',1,'fef',50);
/*!40000 ALTER TABLE `courses_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_lesson_tags`
--

DROP TABLE IF EXISTS `courses_lesson_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_lesson_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lesson_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_lesson_tags_lesson_id_tag_id_bae65f7d_uniq` (`lesson_id`,`tag_id`),
  KEY `courses_lesson_tags_tag_id_5f430326_fk_courses_tag_id` (`tag_id`),
  CONSTRAINT `courses_lesson_tags_lesson_id_0f6df217_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`),
  CONSTRAINT `courses_lesson_tags_tag_id_5f430326_fk_courses_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `courses_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_lesson_tags`
--

LOCK TABLES `courses_lesson_tags` WRITE;
/*!40000 ALTER TABLE `courses_lesson_tags` DISABLE KEYS */;
INSERT INTO `courses_lesson_tags` VALUES (1,1,1),(3,1,3),(5,1,6),(6,1,7),(2,2,1),(4,3,4);
/*!40000 ALTER TABLE `courses_lesson_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_rating`
--

DROP TABLE IF EXISTS `courses_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_rating` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `rating` smallint unsigned NOT NULL,
  `creator_id` bigint NOT NULL,
  `lesson_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_rating_creator_id_lesson_id_f40e7e96_uniq` (`creator_id`,`lesson_id`),
  KEY `courses_rating_lesson_id_373fa9b0_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_rating_creator_id_55ced52a_fk_core_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `courses_rating_lesson_id_373fa9b0_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`),
  CONSTRAINT `courses_rating_chk_1` CHECK ((`rating` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_rating`
--

LOCK TABLES `courses_rating` WRITE;
/*!40000 ALTER TABLE `courses_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_tag`
--

DROP TABLE IF EXISTS `courses_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_tag`
--

LOCK TABLES `courses_tag` WRITE;
/*!40000 ALTER TABLE `courses_tag` DISABLE KEYS */;
INSERT INTO `courses_tag` VALUES (1,'a','courses/2021/11/Screenshot_from_2021-10-09_00-27-38_NlKTE0Q.png','2021-11-07 13:53:38.750736','2021-11-07 13:53:38.750763',1,'tag1'),(2,'dde','courses/2021/11/Screenshot_from_2021-10-09_00-29-43.png','2021-11-08 16:31:21.093523','2021-11-08 16:31:21.093589',1,'tag2'),(3,'','','2021-11-08 17:46:45.320264','2021-11-08 17:46:45.320316',0,'test11'),(4,'','','2021-11-09 03:25:35.226534','2021-11-09 03:25:35.226615',0,'a'),(5,'','','2021-11-09 03:32:20.657304','2021-11-09 03:32:20.657401',0,'tag5'),(6,'','','2021-11-12 16:05:44.373963','2021-11-12 16:05:44.374018',0,'aaa'),(7,'','','2021-11-12 16:06:10.014139','2021-11-12 16:06:10.014207',0,'efe');
/*!40000 ALTER TABLE `courses_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_core_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-11-05 14:01:55.796238','51','test',1,'[{\"added\": {}}]',8,1),(2,'2021-11-05 14:30:39.889204','51','test',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(3,'2021-11-05 17:28:35.479297','1','Bai 1: abc',1,'[{\"added\": {}}]',9,1),(4,'2021-11-05 17:28:57.748334','2','Bai 2',1,'[{\"added\": {}}]',9,1),(5,'2021-11-05 17:29:13.360043','3','ded',1,'[{\"added\": {}}]',9,1),(6,'2021-11-07 13:53:38.755131','1','a',1,'[{\"added\": {}}]',10,1),(7,'2021-11-07 13:55:36.449157','1','Bai 1: abc',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',9,1),(8,'2021-11-08 16:31:21.098648','2','dde',1,'[{\"added\": {}}]',10,1),(9,'2021-11-08 18:55:58.725606','2','user1',1,'[{\"added\": {}}]',6,1),(10,'2021-11-08 18:59:27.505826','2','user1',2,'[]',6,1),(11,'2021-11-08 18:59:57.290511','3','user2',1,'[{\"added\": {}}]',6,1),(12,'2021-11-08 19:00:05.123987','3','user2',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(13,'2021-11-08 19:10:17.319451','4','user3',1,'[{\"added\": {}}]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'core','user'),(14,'courses','action'),(7,'courses','category'),(12,'courses','comment'),(8,'courses','course'),(9,'courses','lesson'),(13,'courses','rating'),(10,'courses','tag'),(11,'courses','user'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-01 18:55:46.960726'),(2,'contenttypes','0002_remove_content_type_name','2021-11-01 18:55:47.036382'),(3,'auth','0001_initial','2021-11-01 18:55:47.274603'),(4,'auth','0002_alter_permission_name_max_length','2021-11-01 18:55:47.319655'),(5,'auth','0003_alter_user_email_max_length','2021-11-01 18:55:47.327621'),(6,'auth','0004_alter_user_username_opts','2021-11-01 18:55:47.334603'),(7,'auth','0005_alter_user_last_login_null','2021-11-01 18:55:47.345849'),(8,'auth','0006_require_contenttypes_0002','2021-11-01 18:55:47.351319'),(9,'auth','0007_alter_validators_add_error_messages','2021-11-01 18:55:47.361538'),(10,'auth','0008_alter_user_username_max_length','2021-11-01 18:55:47.374392'),(11,'auth','0009_alter_user_last_name_max_length','2021-11-01 18:55:47.384642'),(12,'auth','0010_alter_group_name_max_length','2021-11-01 18:55:47.403489'),(13,'auth','0011_update_proxy_permissions','2021-11-01 18:55:47.415033'),(14,'auth','0012_alter_user_first_name_max_length','2021-11-01 18:55:47.424129'),(15,'core','0001_initial','2021-11-01 18:55:47.759109'),(16,'admin','0001_initial','2021-11-01 18:55:47.984463'),(17,'admin','0002_logentry_remove_auto_add','2021-11-01 18:55:47.991896'),(18,'admin','0003_logentry_add_action_flag_choices','2021-11-01 18:55:47.998979'),(19,'sessions','0001_initial','2021-11-01 18:55:48.042130'),(20,'courses','0001_initial','2021-11-01 19:04:07.631310'),(21,'courses','0002_course','2021-11-01 19:32:17.556584'),(22,'courses','0003_alter_course_image','2021-11-05 14:01:05.369748'),(23,'courses','0004_lesson','2021-11-05 16:46:53.899871'),(24,'courses','0005_auto_20211106_1445','2021-11-06 14:46:00.807256'),(25,'courses','0006_comment_user','2021-11-08 18:34:27.138563'),(26,'courses','0007_auto_20211108_1911','2021-11-08 19:11:29.948385'),(27,'courses','0008_action_rating','2021-11-13 02:52:56.578088'),(28,'courses','0009_auto_20211113_0436','2021-11-13 04:36:27.880725');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('fk3ei9spxhsnhs3bh5vuxjjdh3rl5o6x','.eJxVjEEOgjAQRe_StWlogXbGpXvOQKadqUVNSSisjHcXEha6_e-9_1YjbWsetyrLOLG6KqMuv1ug-JRyAH5Quc86zmVdpqAPRZ-06mFmed1O9-8gU817jc4l6A20FlEsdeSgTyF5A2hT0wklDNxKBJSGOcTe7wGJ6wAweu_V5wvcxDgQ:1miwR8:l3SPsW_vA5GVTlu-7E707Qa9vMmCIAbHQ6xDVOMT6wI','2021-11-19 10:27:06.688250');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-13 12:18:30
