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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user`
--

LOCK TABLES `core_user` WRITE;
/*!40000 ALTER TABLE `core_user` DISABLE KEYS */;
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
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_course_subject_category_id_5351bae9_uniq` (`subject`,`category_id`),
  KEY `courses_course_category_id_d64b93bf_fk_courses_category_id` (`category_id`),
  CONSTRAINT `courses_course_category_id_d64b93bf_fk_courses_category_id` FOREIGN KEY (`category_id`) REFERENCES `courses_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (1,'RNA Biology','http://dummyimage.com/167x100.png/cc0000/ffffff','2021-08-15 00:00:00.000000','2021-06-03 00:00:00.000000',0,'Toxic effect of copper and its compounds, acc, sequela',5),(2,'Spring Framework','http://dummyimage.com/180x100.png/5fa2dd/ffffff','2021-09-22 00:00:00.000000','2021-04-24 00:00:00.000000',0,'Chronic giant papillary conjunctivitis',4),(3,'Generators','http://dummyimage.com/233x100.png/ff4444/ffffff','2021-08-12 00:00:00.000000','2021-08-04 00:00:00.000000',1,'Occup of dune buggy injured in traffic accident, init encntr',4),(4,'Zoom','http://dummyimage.com/167x100.png/5fa2dd/ffffff','2021-03-27 00:00:00.000000','2021-02-25 00:00:00.000000',0,'Unsp physl fx upper end rad, r arm, subs for fx w routn heal',5),(5,'Email Marketing','http://dummyimage.com/187x100.png/ff4444/ffffff','2021-08-09 00:00:00.000000','2021-08-14 00:00:00.000000',1,'Unsp comp of fb acc left in body fol surgical op, init',3),(6,'Substance Use Disorders','http://dummyimage.com/168x100.png/cc0000/ffffff','2020-11-26 00:00:00.000000','2021-03-04 00:00:00.000000',0,'Superficial frostbite of right arm',1),(7,'SQF','http://dummyimage.com/124x100.png/cc0000/ffffff','2020-11-13 00:00:00.000000','2021-10-17 00:00:00.000000',1,'Oth fx shaft of unsp ulna, subs for clos fx w routn heal',2),(8,'Epigenetics','http://dummyimage.com/180x100.png/cc0000/ffffff','2021-06-07 00:00:00.000000','2021-07-03 00:00:00.000000',1,'Cerebral infrc due to embolism of bi post cerebral arteries',5),(9,'Brochures','http://dummyimage.com/235x100.png/ff4444/ffffff','2021-03-21 00:00:00.000000','2021-08-31 00:00:00.000000',1,'Oth injury of plantar artery of left foot, init encntr',1),(10,'IABP','http://dummyimage.com/178x100.png/dddddd/000000','2021-07-10 00:00:00.000000','2021-01-18 00:00:00.000000',0,'Unsp fracture of first metacarpal bone, unsp hand, init',2),(11,'NSS','http://dummyimage.com/218x100.png/5fa2dd/ffffff','2021-06-16 00:00:00.000000','2020-11-12 00:00:00.000000',0,'Scleritis with corneal involvement, left eye',1),(12,'RELAX NG','http://dummyimage.com/149x100.png/cc0000/ffffff','2021-10-12 00:00:00.000000','2021-09-08 00:00:00.000000',0,'Toxic effect of oth substances, undetermined, init encntr',3),(13,'Ice Hockey','http://dummyimage.com/164x100.png/ff4444/ffffff','2021-10-22 00:00:00.000000','2021-03-12 00:00:00.000000',1,'Malignant neoplasm of left conjunctiva',1),(14,'Weapons','http://dummyimage.com/136x100.png/dddddd/000000','2021-02-07 00:00:00.000000','2020-12-07 00:00:00.000000',0,'Driver of 3-whl mv injured in clsn w oth mv nontraf, subs',4),(15,'Oracle Identity Manager','http://dummyimage.com/112x100.png/cc0000/ffffff','2021-05-03 00:00:00.000000','2021-04-26 00:00:00.000000',0,'Puncture wound w foreign body of right upper arm, init',5),(16,'SVG','http://dummyimage.com/234x100.png/dddddd/000000','2021-10-26 00:00:00.000000','2020-12-01 00:00:00.000000',1,'Path fx in oth disease, l shoulder, subs for fx w malunion',4),(17,'VLSM','http://dummyimage.com/196x100.png/dddddd/000000','2021-10-14 00:00:00.000000','2021-09-18 00:00:00.000000',0,'Other infective (teno)synovitis, left elbow',4),(18,'Quantitative Finance','http://dummyimage.com/211x100.png/dddddd/000000','2021-05-14 00:00:00.000000','2021-01-05 00:00:00.000000',0,'Contusion and laceration of left cerebrum',1),(19,'Wine Tasting','http://dummyimage.com/105x100.png/dddddd/000000','2021-09-14 00:00:00.000000','2021-10-24 00:00:00.000000',0,'Other fracture of left foot, 7thK',1),(20,'Aerial Silks','http://dummyimage.com/116x100.png/5fa2dd/ffffff','2020-12-29 00:00:00.000000','2021-05-14 00:00:00.000000',0,'Pnctr w foreign body of l rng fngr w damage to nail, init',4),(21,'Stakeholder Management','http://dummyimage.com/203x100.png/cc0000/ffffff','2021-05-03 00:00:00.000000','2021-07-14 00:00:00.000000',0,'Toxic effect of phosphorus and its compnd, self-harm, subs',4),(22,'KCS','http://dummyimage.com/169x100.png/cc0000/ffffff','2021-09-29 00:00:00.000000','2021-11-01 00:00:00.000000',0,'Anterior subluxation of left ulnohumeral joint',1),(23,'DST','http://dummyimage.com/246x100.png/cc0000/ffffff','2021-09-02 00:00:00.000000','2021-07-08 00:00:00.000000',1,'Disp fx of head of unsp rad, 7thH',3),(24,'PDS','http://dummyimage.com/170x100.png/cc0000/ffffff','2021-02-01 00:00:00.000000','2021-05-10 00:00:00.000000',0,'Fall, jump or pushed from a high place, undet intent, init',3),(25,'Xerox Printers','http://dummyimage.com/134x100.png/cc0000/ffffff','2021-01-31 00:00:00.000000','2021-01-18 00:00:00.000000',0,'Strain intrns musc/fasc/tend r mid fngr at wrs/hnd lv, sqla',2),(26,'Taleo','http://dummyimage.com/154x100.png/ff4444/ffffff','2021-07-02 00:00:00.000000','2021-08-23 00:00:00.000000',1,'Strain msl/tnd lng flxr msl of toe at ank/ft level, l foot',1),(27,'Water Quality','http://dummyimage.com/135x100.png/cc0000/ffffff','2020-11-28 00:00:00.000000','2021-08-11 00:00:00.000000',1,'Pnctr w/o fb of left lesser toe(s) w damage to nail, init',5),(28,'Nursing Process','http://dummyimage.com/131x100.png/dddddd/000000','2021-09-06 00:00:00.000000','2021-04-27 00:00:00.000000',1,'Pregnancy related renal disease, unspecified trimester',2),(29,'EGPRS','http://dummyimage.com/233x100.png/5fa2dd/ffffff','2021-09-03 00:00:00.000000','2021-03-06 00:00:00.000000',1,'Poisn by unsp prim systemic and hematolog agent, acc, init',1),(30,'NDT','http://dummyimage.com/211x100.png/dddddd/000000','2021-10-13 00:00:00.000000','2020-11-04 00:00:00.000000',1,'Oth fracture of shaft of left tibia, init for clos fx',4),(31,'CCIE R&amp;S','http://dummyimage.com/116x100.png/cc0000/ffffff','2021-05-21 00:00:00.000000','2021-03-29 00:00:00.000000',1,'Nondisp fx of acromial process, right shoulder, init',1),(32,'ITIL','http://dummyimage.com/128x100.png/dddddd/000000','2021-07-03 00:00:00.000000','2021-03-16 00:00:00.000000',0,'Mixed cellularity Hodgkin lymphoma, intrathorac lymph nodes',5),(33,'Applied Mathematics','http://dummyimage.com/127x100.png/cc0000/ffffff','2021-10-18 00:00:00.000000','2021-06-13 00:00:00.000000',1,'Displaced Rolando\'s fracture, right hand, init for clos fx',1),(34,'Career Development','http://dummyimage.com/196x100.png/5fa2dd/ffffff','2021-07-23 00:00:00.000000','2021-06-12 00:00:00.000000',0,'Contact with grain storage elevator, sequela',4),(35,'Medicine','http://dummyimage.com/138x100.png/5fa2dd/ffffff','2020-11-04 00:00:00.000000','2021-07-20 00:00:00.000000',0,'Acute hematogenous osteomyelitis, unspecified ankle and foot',2),(36,'LCSH','http://dummyimage.com/193x100.png/cc0000/ffffff','2020-12-19 00:00:00.000000','2021-09-29 00:00:00.000000',0,'Bitten by nonvenomous lizards, sequela',5),(37,'Surveillance','http://dummyimage.com/177x100.png/5fa2dd/ffffff','2021-08-06 00:00:00.000000','2021-03-26 00:00:00.000000',0,'Compression of vein',4),(38,'Www','http://dummyimage.com/180x100.png/ff4444/ffffff','2021-03-04 00:00:00.000000','2020-11-07 00:00:00.000000',1,'Inj msl/tnd lng flexor muscle of toe at ankle and foot level',2),(39,'OODBMS','http://dummyimage.com/171x100.png/dddddd/000000','2021-06-24 00:00:00.000000','2021-07-26 00:00:00.000000',1,'Dislocation of T2/T3 thoracic vertebra, initial encounter',4),(40,'Equipment Maintenance','http://dummyimage.com/220x100.png/5fa2dd/ffffff','2021-03-16 00:00:00.000000','2021-02-20 00:00:00.000000',1,'Sedative, hypnotic or anxiolytic abuse w psychotic disorder',4),(41,'EEO Reporting','http://dummyimage.com/213x100.png/ff4444/ffffff','2021-04-17 00:00:00.000000','2021-04-13 00:00:00.000000',1,'Unspecified reduction defect of unspecified upper limb',3),(42,'Wovens','http://dummyimage.com/154x100.png/ff4444/ffffff','2021-05-05 00:00:00.000000','2021-02-25 00:00:00.000000',0,'Unsp comp of fb acc left in body fol heart cath, sequela',3),(43,'European Union','http://dummyimage.com/119x100.png/dddddd/000000','2020-11-13 00:00:00.000000','2020-11-18 00:00:00.000000',0,'Unspecified injury of portal vein, sequela',3),(44,'IEF','http://dummyimage.com/235x100.png/cc0000/ffffff','2021-03-15 00:00:00.000000','2021-04-11 00:00:00.000000',0,'Strain of flexor musc/fasc/tend thmb at forearm level, subs',3),(45,'Pro-IV','http://dummyimage.com/143x100.png/5fa2dd/ffffff','2021-06-23 00:00:00.000000','2021-03-20 00:00:00.000000',1,'Displ oblique fx shaft of r femr, 7thD',5),(46,'National Security','http://dummyimage.com/186x100.png/dddddd/000000','2021-06-02 00:00:00.000000','2021-09-07 00:00:00.000000',1,'Path fx in neopltc dis, r humerus, subs for fx w routn heal',2),(47,'SOA','http://dummyimage.com/233x100.png/ff4444/ffffff','2020-12-29 00:00:00.000000','2020-11-10 00:00:00.000000',1,'Contusion of right little finger w damage to nail, init',1),(48,'Variance Analysis','http://dummyimage.com/114x100.png/5fa2dd/ffffff','2021-03-26 00:00:00.000000','2021-09-04 00:00:00.000000',0,'Poisn by succinimides and oxazolidinediones, assault, init',4),(49,'Zuora','http://dummyimage.com/224x100.png/cc0000/ffffff','2021-01-01 00:00:00.000000','2020-11-02 00:00:00.000000',1,'Toxic shock syndrome',1),(50,'XP Professional','http://dummyimage.com/129x100.png/5fa2dd/ffffff','2021-05-11 00:00:00.000000','2020-11-05 00:00:00.000000',1,'Oth fx upr & low end r fibula, 7thH',2);
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'core','user'),(7,'courses','category'),(8,'courses','course'),(5,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-01 18:55:46.960726'),(2,'contenttypes','0002_remove_content_type_name','2021-11-01 18:55:47.036382'),(3,'auth','0001_initial','2021-11-01 18:55:47.274603'),(4,'auth','0002_alter_permission_name_max_length','2021-11-01 18:55:47.319655'),(5,'auth','0003_alter_user_email_max_length','2021-11-01 18:55:47.327621'),(6,'auth','0004_alter_user_username_opts','2021-11-01 18:55:47.334603'),(7,'auth','0005_alter_user_last_login_null','2021-11-01 18:55:47.345849'),(8,'auth','0006_require_contenttypes_0002','2021-11-01 18:55:47.351319'),(9,'auth','0007_alter_validators_add_error_messages','2021-11-01 18:55:47.361538'),(10,'auth','0008_alter_user_username_max_length','2021-11-01 18:55:47.374392'),(11,'auth','0009_alter_user_last_name_max_length','2021-11-01 18:55:47.384642'),(12,'auth','0010_alter_group_name_max_length','2021-11-01 18:55:47.403489'),(13,'auth','0011_update_proxy_permissions','2021-11-01 18:55:47.415033'),(14,'auth','0012_alter_user_first_name_max_length','2021-11-01 18:55:47.424129'),(15,'core','0001_initial','2021-11-01 18:55:47.759109'),(16,'admin','0001_initial','2021-11-01 18:55:47.984463'),(17,'admin','0002_logentry_remove_auto_add','2021-11-01 18:55:47.991896'),(18,'admin','0003_logentry_add_action_flag_choices','2021-11-01 18:55:47.998979'),(19,'sessions','0001_initial','2021-11-01 18:55:48.042130'),(20,'courses','0001_initial','2021-11-01 19:04:07.631310'),(21,'courses','0002_course','2021-11-01 19:32:17.556584');
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

-- Dump completed on 2021-11-05 11:38:17
