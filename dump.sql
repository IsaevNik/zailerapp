-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: zailerdb
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.12.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add portfolio item',1,'add_portfolioitem'),(2,'Can change portfolio item',1,'change_portfolioitem'),(3,'Can delete portfolio item',1,'delete_portfolioitem'),(4,'Can add log entry',2,'add_logentry'),(5,'Can change log entry',2,'change_logentry'),(6,'Can delete log entry',2,'delete_logentry'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add user',5,'add_user'),(14,'Can change user',5,'change_user'),(15,'Can delete user',5,'delete_user'),(16,'Can add content type',6,'add_contenttype'),(17,'Can change content type',6,'change_contenttype'),(18,'Can delete content type',6,'delete_contenttype'),(19,'Can add session',7,'add_session'),(20,'Can change session',7,'change_session'),(21,'Can delete session',7,'delete_session'),(22,'Can add project',8,'add_project'),(23,'Can change project',8,'change_project'),(24,'Can delete project',8,'delete_project'),(25,'Can add project image',9,'add_projectimage'),(26,'Can change project image',9,'change_projectimage'),(27,'Can delete project image',9,'delete_projectimage'),(28,'Can add service',10,'add_service'),(29,'Can change service',10,'change_service'),(30,'Can delete service',10,'delete_service'),(31,'Can add home page slider item',11,'add_homepageslideritem'),(32,'Can change home page slider item',11,'change_homepageslideritem'),(33,'Can delete home page slider item',11,'delete_homepageslideritem'),(34,'Can add car for sale',12,'add_carforsale'),(35,'Can change car for sale',12,'change_carforsale'),(36,'Can delete car for sale',12,'delete_carforsale'),(37,'Can add car for sale image',13,'add_carforsaleimage'),(38,'Can change car for sale image',13,'change_carforsaleimage'),(39,'Can delete car for sale image',13,'delete_carforsaleimage');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$TuJHlbZOejuJ$p8FoXRjFZJLee7Vxv72VfolnQKcdi73kOf1GbBjRJK8=','2016-06-22 00:26:10',1,'admin','','','asd@mail.ru',1,1,'2016-06-22 00:25:35');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-06-22 00:31:40','1','Range Rover Sport 2013-н.в.',1,'Added.',1,1),(2,'2016-06-22 00:48:37','1','Range Rover Sport 2013-н.в.',2,'Changed img_url.',1,1),(3,'2016-06-22 00:51:07','2','Range Rover Sport 2009-2013',1,'Added.',1,1),(4,'2016-06-22 00:53:30','3','Range Rover Vogue 2016-2017 рестайлинг',1,'Added.',1,1),(5,'2016-06-22 00:55:35','4','Range Rover Vogue 2012-н.в. IV рестайлинг',1,'Added.',1,1),(6,'2016-06-22 00:57:16','5','Range Rover Vogue 2009-2012 III рестайлинг',1,'Added.',1,1),(7,'2016-06-22 01:02:59','6','maybach',1,'Added.',1,1),(8,'2016-06-22 01:03:50','7','maybach',1,'Added.',1,1),(9,'2016-06-22 01:04:34','8','maybach',1,'Added.',1,1),(10,'2016-06-22 01:12:19','9','Range Rover Discovery',1,'Added.',1,1),(11,'2016-06-22 01:12:55','8','maybach',2,'Changed img_url.',1,1),(12,'2016-06-22 01:13:08','6','maybach',2,'Changed img_url.',1,1),(13,'2016-06-22 01:13:36','7','maybach',2,'Changed img_url.',1,1),(14,'2016-06-22 01:16:15','10','Range Rover Discovery 2',1,'Added.',1,1),(15,'2016-06-22 01:18:06','11','Mercedes-Benz',1,'Added.',1,1),(16,'2016-06-22 01:18:54','12','Mercedes-Benz 2',1,'Added.',1,1),(17,'2016-06-22 01:20:47','13','Mercedes-Benz3',1,'Added.',1,1),(18,'2016-06-22 01:21:37','12','Mercedes-Benz 2',2,'Changed img_url.',1,1),(19,'2016-06-22 01:22:18','14','Mercedes-Benz 4',1,'Added.',1,1),(20,'2016-06-22 01:23:50','15','Mercedes-Benz 5',1,'Added.',1,1),(21,'2016-06-22 01:24:02','13','Mercedes-Benz 3',2,'Changed name.',1,1),(22,'2016-06-22 01:24:52','16','Mercedes-Benz 6',1,'Added.',1,1),(23,'2016-06-22 01:26:25','17','Mercedes-Benz 7',1,'Added.',1,1),(24,'2016-06-22 01:27:14','18','Mercedes-Benz 8',1,'Added.',1,1),(25,'2016-06-22 01:29:43','19','Mercedes-Benz 9',1,'Added.',1,1),(26,'2016-06-22 01:30:30','20','Toyota 1',1,'Added.',1,1),(27,'2016-06-22 01:31:08','21','Toyota 2',1,'Added.',1,1),(28,'2016-06-22 01:31:58','22','Toyota 3',1,'Added.',1,1),(29,'2016-06-22 01:32:54','23','Lexus 1',1,'Added.',1,1),(30,'2016-06-22 01:33:39','24','Lexus 2',1,'Added.',1,1),(31,'2016-06-22 01:49:28','9','Range Rover Discovery',2,'No fields changed.',1,1),(32,'2016-06-22 07:09:11','10','Range Rover Discovery 2',2,'Changed model.',1,1),(33,'2016-06-22 07:09:21','9','Range Rover Discovery',2,'Changed model.',1,1),(34,'2016-06-22 07:09:37','5','Range Rover Vogue 2009-2012 III рестайлинг',2,'Changed model.',1,1),(35,'2016-06-22 07:09:48','4','Range Rover Vogue 2012-н.в. IV рестайлинг',2,'Changed model.',1,1),(36,'2016-06-22 07:09:59','3','Range Rover Vogue 2016-2017 рестайлинг',2,'Changed model.',1,1),(37,'2016-06-22 07:10:09','3','Range Rover Vogue 2016-2017 рестайлинг',2,'No fields changed.',1,1),(38,'2016-06-22 07:10:20','2','Range Rover Sport 2009-2013',2,'Changed model.',1,1),(39,'2016-06-22 07:10:30','1','Range Rover Sport 2013-н.в.',2,'Changed model.',1,1),(40,'2016-06-22 14:43:35','1','Range Rover Sport 2013-н.в.',1,'Added. Added project image \"zailer/img/portfolio/rover/sport/1/1.jpg\". Added project image \"zailer/img/portfolio/rover/sport/1/2.jpg\". Added project image \"zailer/img/portfolio/rover/sport/1/2.jpg\".',8,1),(41,'2016-06-22 20:18:21','1','Подбор дисков и резины',1,'Added.',10,1),(42,'2016-06-22 20:19:14','2','Индивидуальные проекты',1,'Added.',10,1),(43,'2016-06-22 20:19:46','3','Перешивка салона',1,'Added.',10,1),(44,'2016-06-22 20:20:06','4','Шумоизоляция',1,'Added.',10,1),(45,'2016-06-22 20:20:38','5','Карбон',1,'Added.',10,1),(46,'2016-06-22 20:20:54','6','Сервис',1,'Added.',10,1),(47,'2016-06-22 20:21:24','7','Перекраска автомобиля',1,'Added.',10,1),(48,'2016-06-22 20:21:42','8','Тонировка',1,'Added.',10,1),(49,'2016-06-22 20:22:03','9','Кузовной ремонт',1,'Added.',10,1),(50,'2016-06-22 20:22:18','10','Обтяжка пленкой автомобиля',1,'Added.',10,1),(51,'2016-06-22 20:22:33','11','Содействие в приобретении автомобиля',1,'Added.',10,1),(52,'2016-06-22 20:22:53','12','Установка звукового воздушного сигнала',1,'Added.',10,1),(53,'2016-06-22 20:23:20','13','Чип-тюнинг (Увеличение мощности двигателя)',1,'Added.',10,1),(54,'2016-06-23 06:58:34','1','ПРЕМЬЕРА ОТ ZAILER',1,'Added.',11,1),(55,'2016-06-23 07:16:16','2','Range Rover Vogue',1,'Added.',11,1),(56,'2016-06-23 07:17:30','3','ИНДИВИДУАЛЬНО',1,'Added.',11,1),(57,'2016-06-23 07:23:43','24','Lexus 2',2,'Changed pub_date.',1,1),(58,'2016-06-23 07:24:48','3','Range Rover Vogue 2016-2017 рестайлинг',2,'Changed pub_date.',1,1),(59,'2016-06-23 08:12:10','1','ПРЕМЬЕРА ОТ ZAILER',2,'Changed button_url.',11,1),(60,'2016-06-23 08:24:28','2','Range Rover Vogue',2,'Changed button_url.',11,1),(61,'2016-06-23 08:24:37','3','ИНДИВИДУАЛЬНО',2,'Changed button_url.',11,1),(62,'2016-06-23 09:22:58','1','BMV X6 M',1,'Added.',12,1),(63,'2016-06-23 09:39:01','1','BMV X6 M',2,'Changed img_preview.',12,1),(64,'2016-06-23 09:39:27','1','BMV X6 M',3,'',12,1),(65,'2016-06-23 10:10:43','3','ИНДИВИДУАЛЬНО',3,'',11,1),(66,'2016-06-23 10:10:44','2','Range Rover Vogue',3,'',11,1),(67,'2016-06-23 10:10:44','1','ПРЕМЬЕРА ОТ ZAILER',3,'',11,1),(68,'2016-06-23 10:17:46','2','BMW X6 M',1,'Added. Added car for sale image \"zailer/img/car_for_sale/1.jpg\". Added car for sale image \"zailer/img/car_for_sale/1.jpg\".',12,1),(69,'2016-06-23 10:54:42','2','BMW X6 M',2,'Changed img_url for car for sale image \"zailer/img/car_for_sale/1/1.jpg\". Changed img_url for car for sale image \"zailer/img/car_for_sale/1/2.jpg\".',12,1),(70,'2016-06-23 11:58:45','4','ПРЕМЬЕРА ОТ ZAILER',1,'Added.',11,1),(71,'2016-06-23 12:00:19','5','Range Rover Vogue',1,'Added.',11,1),(72,'2016-06-23 12:01:17','6','ИНДИВИДУАЛЬНО',1,'Added.',11,1),(73,'2016-06-23 12:04:34','1','Range Rover Sport 2013-н.в.',2,'Changed model and mark.',8,1),(74,'2016-06-23 12:05:20','1','Range Rover Sport 2013-н.в.',2,'Changed mark.',8,1),(75,'2016-06-23 15:13:59','14','Ntcn',1,'Added.',10,1),(76,'2016-06-23 15:14:33','14','Ntcn',3,'',10,1),(77,'2016-06-23 15:17:33','1','Range Rover Sport 2013-н.в.',3,'',1,1),(78,'2016-06-23 15:19:05','25','Range Rover Sport 2013-н.в.',1,'Added.',1,1),(79,'2016-06-23 15:23:07','25','Range Rover Sport 2013-н.в.',1,'Added. Added project image \"zailer/img/portfolio/rover/sport/1/1.jpg\". Added project image \"zailer/img/portfolio/rover/sport/1/2.jpg\". Added project image \"zailer/img/portfolio/rover/sport/1/3.jpg\". Added project image \"zailer/img/portfolio/rover/sport/1/4.jpg\".',8,1),(80,'2016-06-23 15:23:49','6','ИНДИВИДУАЛЬНО',2,'Changed button_url.',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(7,'sessions','session'),(12,'zailer','carforsale'),(13,'zailer','carforsaleimage'),(11,'zailer','homepageslideritem'),(1,'zailer','portfolioitem'),(8,'zailer','project'),(9,'zailer','projectimage'),(10,'zailer','service');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-06-22 00:23:55'),(2,'auth','0001_initial','2016-06-22 00:24:06'),(3,'admin','0001_initial','2016-06-22 00:24:07'),(4,'admin','0002_logentry_remove_auto_add','2016-06-22 00:24:08'),(5,'contenttypes','0002_remove_content_type_name','2016-06-22 00:24:09'),(6,'auth','0002_alter_permission_name_max_length','2016-06-22 00:24:09'),(7,'auth','0003_alter_user_email_max_length','2016-06-22 00:24:10'),(8,'auth','0004_alter_user_username_opts','2016-06-22 00:24:10'),(9,'auth','0005_alter_user_last_login_null','2016-06-22 00:24:11'),(10,'auth','0006_require_contenttypes_0002','2016-06-22 00:24:11'),(11,'auth','0007_alter_validators_add_error_messages','2016-06-22 00:24:11'),(12,'sessions','0001_initial','2016-06-22 00:24:13'),(13,'zailer','0001_initial','2016-06-22 00:24:14'),(14,'zailer','0002_auto_20160622_0330','2016-06-22 00:30:38'),(15,'zailer','0003_auto_20160622_0401','2016-06-22 01:01:58'),(16,'zailer','0004_auto_20160622_1734','2016-06-22 14:35:20'),(17,'zailer','0005_service','2016-06-22 20:14:20'),(18,'zailer','0006_auto_20160623_0951','2016-06-23 06:52:31'),(19,'zailer','0007_carforsale','2016-06-23 09:18:26'),(20,'zailer','0008_auto_20160623_1311','2016-06-23 10:11:48');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0bykim0y5rdyd7r4usui5h9pqee8hnsi','NmUyZWJhMzI0NTQ1ZTU0MTJjYTJlMWRhMDdmZTE0MjQ0MjZlZWNiMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAwNTdjYjVmMmMzMjk0MTE2NGE3MjA2OGNjZTcyOWEwZmVlZTE3NWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-06 00:26:10');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zailer_carforsale`
--

DROP TABLE IF EXISTS `zailer_carforsale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zailer_carforsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark` varchar(40) NOT NULL,
  `model` varchar(40) NOT NULL,
  `modification` varchar(40) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `contact` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zailer_carforsale`
--

LOCK TABLES `zailer_carforsale` WRITE;
/*!40000 ALTER TABLE `zailer_carforsale` DISABLE KEYS */;
INSERT INTO `zailer_carforsale` VALUES (2,'BMW','X6','M','Захватывающий, динамичный, волнующий - именно так можно охарактеризовать облик нового BMW X6 M. Этот премиальный кроссовер расширяет грани воображения своим притягательным дизайном с мощными двойными воздухозаборниками, указывающими на властный характер. Мускулистая боковая линия эффектно завершается в привлекательный спойлер. Оптимизированные для обеспечения выдающихся качеств сцепления, стильные колеса с двойными спицами подчеркивают атлетичность и неуемную силу нового BMW X6 M. Внутри кроссовера все спроектировано для максимально эффективного взаимодействия водителя и автомобиля. Удобный 3-сципевый руль, анатомичные сиденья-ковши с потрясающей поддержкой тела, высококачественные отделочные материалы - все ориентировано на комфорт.',6680000,'+72221234556 Name');
/*!40000 ALTER TABLE `zailer_carforsale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zailer_carforsaleimage`
--

DROP TABLE IF EXISTS `zailer_carforsaleimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zailer_carforsaleimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(200) NOT NULL,
  `is_preview` tinyint(1) NOT NULL,
  `car_for_sale_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zailer_carforsaleimage_6498b456` (`car_for_sale_id`),
  CONSTRAINT `zailer_carforsa_car_for_sale_id_834af755_fk_zailer_carforsale_id` FOREIGN KEY (`car_for_sale_id`) REFERENCES `zailer_carforsale` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zailer_carforsaleimage`
--

LOCK TABLES `zailer_carforsaleimage` WRITE;
/*!40000 ALTER TABLE `zailer_carforsaleimage` DISABLE KEYS */;
INSERT INTO `zailer_carforsaleimage` VALUES (1,'zailer/img/car_for_sale/1/1.jpg',1,2),(2,'zailer/img/car_for_sale/1/2.jpg',0,2);
/*!40000 ALTER TABLE `zailer_carforsaleimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zailer_homepageslideritem`
--

DROP TABLE IF EXISTS `zailer_homepageslideritem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zailer_homepageslideritem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `button_url` varchar(200) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `slide_title` varchar(50) NOT NULL,
  `order_number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number` (`order_number`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zailer_homepageslideritem`
--

LOCK TABLES `zailer_homepageslideritem` WRITE;
/*!40000 ALTER TABLE `zailer_homepageslideritem` DISABLE KEYS */;
INSERT INTO `zailer_homepageslideritem` VALUES (4,'ПРЕМЬЕРА ОТ ZAILER','Рейстайлинг Range Rover Vogue 2016-2017','Range Rover Vogue','/project/1','zailer/img/backgrounds/bg-home-fullscreen.jpg','Range Rover Vogue',1),(5,'Range Rover Vogue','AUTOBIOGRAPHY 2016','Range Rover','/project/1','zailer/img/backgrounds/bg-1.jpg','Range Rover Vogue',2),(6,'ИНДИВИДУАЛЬНО','RANGE ROVER SPORT SVR-AUTOBIOGRAPHY 2015–2016','Range Rover Sport','/project/25','zailer/img/backgrounds/bg-3.jpg','Range Rover Sport',3);
/*!40000 ALTER TABLE `zailer_homepageslideritem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zailer_portfolioitem`
--

DROP TABLE IF EXISTS `zailer_portfolioitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zailer_portfolioitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `mark_name` varchar(50) NOT NULL,
  `model` varchar(20) NOT NULL,
  `years` varchar(20) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zailer_portfolioitem`
--

LOCK TABLES `zailer_portfolioitem` WRITE;
/*!40000 ALTER TABLE `zailer_portfolioitem` DISABLE KEYS */;
INSERT INTO `zailer_portfolioitem` VALUES (2,'Range Rover Sport 2009-2013','rover','sport','rrs09-13IR','Текст #2','zailer/img/portfolio/rover/sport/2/1.jpg','2016-06-23 06:52:30'),(3,'Range Rover Vogue 2016-2017 рестайлинг','rover','vogue','rrv16-17R','Текст #5','zailer/img/portfolio/rover/vogue/1/1.jpg','2016-06-23 07:24:46'),(4,'Range Rover Vogue 2012-н.в. IV рестайлинг','rover','vogue','rrv12IVR','Текст #5','zailer/img/portfolio/rover/vogue/2/1.jpg','2016-06-23 06:52:30'),(5,'Range Rover Vogue 2009-2012 III рестайлинг','rover','vogue','rrv09-12IIIR','Текст #5','zailer/img/portfolio/rover/vogue/2/1.jpg','2016-06-23 06:52:30'),(6,'maybach','maybach','','','Текст #1','zailer/img/portfolio/1.jpg','2016-06-23 06:52:30'),(7,'maybach','maybach','','','Текст #1','zailer/img/portfolio/2.jpg','2016-06-23 06:52:30'),(8,'maybach','maybach','','','Текст #1','zailer/img/portfolio/2.jpg','2016-06-23 06:52:30'),(9,'Range Rover Discovery','rover','discovery','','Текст #1','zailer/img/portfolio/8.jpg','2016-06-23 06:52:30'),(10,'Range Rover Discovery 2','rover','discovery','','Текст #1','zailer/img/portfolio/9.jpg','2016-06-23 06:52:30'),(11,'Mercedes-Benz','mercedes','','','Текст #21','zailer/img/portfolio/21.jpg','2016-06-23 06:52:30'),(12,'Mercedes-Benz 2','mercedes','','','Текст #22','zailer/img/portfolio/22.jpg','2016-06-23 06:52:30'),(13,'Mercedes-Benz 3','mercedes','','','Текст #23','zailer/img/portfolio/23.jpg','2016-06-23 06:52:30'),(14,'Mercedes-Benz 4','mercedes','','','Текст #24','zailer/img/portfolio/24.jpg','2016-06-23 06:52:30'),(15,'Mercedes-Benz 5','mercedes','','','Текст #25','zailer/img/portfolio/25.jpg','2016-06-23 06:52:30'),(16,'Mercedes-Benz 6','mercedes','','','Текст #26','zailer/img/portfolio/26.jpg','2016-06-23 06:52:30'),(17,'Mercedes-Benz 7','mercedes','','','Текст #27','zailer/img/portfolio/27.jpg','2016-06-23 06:52:30'),(18,'Mercedes-Benz 8','mercedes','','','Текст #28','zailer/img/portfolio/28.jpg','2016-06-23 06:52:30'),(19,'Mercedes-Benz 9','mercedes','','','Текст #29','zailer/img/portfolio/29.jpg','2016-06-23 06:52:30'),(20,'Toyota 1','toyota','','','Текст #230','zailer/img/portfolio/30.jpg','2016-06-23 06:52:30'),(21,'Toyota 2','toyota','','','Текст #231','zailer/img/portfolio/31.jpg','2016-06-23 06:52:30'),(22,'Toyota 3','toyota','','','Текст #32','zailer/img/portfolio/32.jpg','2016-06-23 06:52:30'),(23,'Lexus 1','lexus','','','Текст #33','zailer/img/portfolio/33.jpg','2016-06-23 06:52:30'),(24,'Lexus 2','lexus','','','Текст #34','zailer/img/portfolio/34.jpg','2016-06-22 06:52:30'),(25,'Range Rover Sport 2013-н.в.','rover','sport','rrs13IIR','Текст','zailer/img/portfolio/rover/sport/1/1.jpg','2016-06-23 15:18:03');
/*!40000 ALTER TABLE `zailer_portfolioitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zailer_project`
--

DROP TABLE IF EXISTS `zailer_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zailer_project` (
  `portfolio_item_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mark` varchar(40) NOT NULL,
  `model` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`portfolio_item_id`),
  CONSTRAINT `zailer_pro_portfolio_item_id_5779dd12_fk_zailer_portfolioitem_id` FOREIGN KEY (`portfolio_item_id`) REFERENCES `zailer_portfolioitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zailer_project`
--

LOCK TABLES `zailer_project` WRITE;
/*!40000 ALTER TABLE `zailer_project` DISABLE KEYS */;
INSERT INTO `zailer_project` VALUES (25,'Range Rover Sport 2013-н.в.','Range Rover','Sport','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).');
/*!40000 ALTER TABLE `zailer_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zailer_projectimage`
--

DROP TABLE IF EXISTS `zailer_projectimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zailer_projectimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(200) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zailer_p_project_id_832217f0_fk_zailer_project_portfolio_item_id` (`project_id`),
  CONSTRAINT `zailer_p_project_id_832217f0_fk_zailer_project_portfolio_item_id` FOREIGN KEY (`project_id`) REFERENCES `zailer_project` (`portfolio_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zailer_projectimage`
--

LOCK TABLES `zailer_projectimage` WRITE;
/*!40000 ALTER TABLE `zailer_projectimage` DISABLE KEYS */;
INSERT INTO `zailer_projectimage` VALUES (4,'zailer/img/portfolio/rover/sport/1/1.jpg',25),(5,'zailer/img/portfolio/rover/sport/1/2.jpg',25),(6,'zailer/img/portfolio/rover/sport/1/3.jpg',25),(7,'zailer/img/portfolio/rover/sport/1/4.jpg',25);
/*!40000 ALTER TABLE `zailer_projectimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zailer_service`
--

DROP TABLE IF EXISTS `zailer_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zailer_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `img_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zailer_service`
--

LOCK TABLES `zailer_service` WRITE;
/*!40000 ALTER TABLE `zailer_service` DISABLE KEYS */;
INSERT INTO `zailer_service` VALUES (1,'Подбор дисков и резины','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(2,'Индивидуальные проекты','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(3,'Перешивка салона','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(4,'Шумоизоляция','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(5,'Карбон','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(6,'Сервис','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(7,'Перекраска автомобиля','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(8,'Тонировка','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(9,'Кузовной ремонт','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(10,'Обтяжка пленкой автомобиля','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(11,'Содействие в приобретении автомобиля','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(12,'Установка звукового воздушного сигнала','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg'),(13,'Чип-тюнинг (Увеличение мощности двигателя)','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','zailer/img/services/1.jpg');
/*!40000 ALTER TABLE `zailer_service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-23 19:43:52
