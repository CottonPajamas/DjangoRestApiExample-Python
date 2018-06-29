CREATE DATABASE  IF NOT EXISTS `bookreviews` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bookreviews`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bookreviews
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- ORDER BY:  `id`

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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--
-- ORDER BY:  `id`

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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--
-- ORDER BY:  `id`

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (1,'Can add django migrations',1,'add_djangomigrations'),(2,'Can change django migrations',1,'change_djangomigrations'),(3,'Can delete django migrations',1,'delete_djangomigrations'),(4,'Can add reviews',2,'add_reviews'),(5,'Can change reviews',2,'change_reviews'),(6,'Can delete reviews',2,'delete_reviews'),(7,'Can add users',3,'add_users'),(8,'Can change users',3,'change_users'),(9,'Can delete users',3,'delete_users'),(10,'Can add log entry',4,'add_logentry'),(11,'Can change log entry',4,'change_logentry'),(12,'Can delete log entry',4,'delete_logentry'),(13,'Can add permission',5,'add_permission'),(14,'Can change permission',5,'change_permission'),(15,'Can delete permission',5,'delete_permission'),(16,'Can add group',6,'add_group'),(17,'Can change group',6,'change_group'),(18,'Can delete group',6,'delete_group'),(19,'Can add user',7,'add_user'),(20,'Can change user',7,'change_user'),(21,'Can delete user',7,'delete_user'),(22,'Can add content type',8,'add_contenttype'),(23,'Can change content type',8,'change_contenttype'),(24,'Can delete content type',8,'delete_contenttype'),(25,'Can add session',9,'add_session'),(26,'Can change session',9,'change_session'),(27,'Can delete session',9,'delete_session'),(28,'Can add auth group',12,'add_authgroup'),(29,'Can change auth group',12,'change_authgroup'),(30,'Can delete auth group',12,'delete_authgroup'),(31,'Can add auth group permissions',13,'add_authgrouppermissions'),(32,'Can change auth group permissions',13,'change_authgrouppermissions'),(33,'Can delete auth group permissions',13,'delete_authgrouppermissions'),(34,'Can add auth permission',14,'add_authpermission'),(35,'Can change auth permission',14,'change_authpermission'),(36,'Can delete auth permission',14,'delete_authpermission'),(37,'Can add auth user',15,'add_authuser'),(38,'Can change auth user',15,'change_authuser'),(39,'Can delete auth user',15,'delete_authuser'),(40,'Can add auth user groups',16,'add_authusergroups'),(41,'Can change auth user groups',16,'change_authusergroups'),(42,'Can delete auth user groups',16,'delete_authusergroups'),(43,'Can add auth user user permissions',17,'add_authuseruserpermissions'),(44,'Can change auth user user permissions',17,'change_authuseruserpermissions'),(45,'Can delete auth user user permissions',17,'delete_authuseruserpermissions'),(46,'Can add client',11,'add_client'),(47,'Can change client',11,'change_client'),(48,'Can delete client',11,'delete_client'),(49,'Can add django admin log',18,'add_djangoadminlog'),(50,'Can change django admin log',18,'change_djangoadminlog'),(51,'Can delete django admin log',18,'delete_djangoadminlog'),(52,'Can add django content type',19,'add_djangocontenttype'),(53,'Can change django content type',19,'change_djangocontenttype'),(54,'Can delete django content type',19,'delete_djangocontenttype'),(55,'Can add django session',20,'add_djangosession'),(56,'Can change django session',20,'change_djangosession'),(57,'Can delete django session',20,'delete_djangosession'),(58,'Can add review',10,'add_review'),(59,'Can change review',10,'change_review'),(60,'Can delete review',10,'delete_review');
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
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--
-- ORDER BY:  `id`

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES (1,'pbkdf2_sha256$36000$QMjnRvV5Sta4$mfpQQL7EF6DknlenMK82fOVWnLR/JIpQggcqsD71STw=','2018-06-29 14:29:05.456763',1,'admin','','','',1,1,'2018-06-29 05:46:56.814218');
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--
-- ORDER BY:  `id`

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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--
-- ORDER BY:  `id`

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--
-- ORDER BY:  `id`

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`id`, `name`, `address`) VALUES (1,'Pete','Pasir Ris Drive 24'),(2,'Jacks','Hougang Ave 6');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--
-- ORDER BY:  `id`

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (1,'2018-06-29 06:14:56.424751','2','Client object',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',11,1);
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--
-- ORDER BY:  `id`

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (1,'quickstart','djangomigrations'),(2,'quickstart','reviews'),(3,'quickstart','users'),(4,'admin','logentry'),(5,'auth','permission'),(6,'auth','group'),(7,'auth','user'),(8,'contenttypes','contenttype'),(9,'sessions','session'),(10,'quickstart','review'),(11,'quickstart','client'),(12,'quickstart','authgroup'),(13,'quickstart','authgrouppermissions'),(14,'quickstart','authpermission'),(15,'quickstart','authuser'),(16,'quickstart','authusergroups'),(17,'quickstart','authuseruserpermissions'),(18,'quickstart','djangoadminlog'),(19,'quickstart','djangocontenttype'),(20,'quickstart','djangosession');
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
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--
-- ORDER BY:  `id`

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (1,'contenttypes','0001_initial','2018-06-29 05:46:13.373650'),(2,'auth','0001_initial','2018-06-29 05:46:14.369801'),(3,'admin','0001_initial','2018-06-29 05:46:14.580221'),(4,'admin','0002_logentry_remove_auto_add','2018-06-29 05:46:14.611831'),(5,'contenttypes','0002_remove_content_type_name','2018-06-29 05:46:14.835295'),(6,'auth','0002_alter_permission_name_max_length','2018-06-29 05:46:14.924162'),(7,'auth','0003_alter_user_email_max_length','2018-06-29 05:46:15.028588'),(8,'auth','0004_alter_user_username_opts','2018-06-29 05:46:15.044244'),(9,'auth','0005_alter_user_last_login_null','2018-06-29 05:46:15.133953'),(10,'auth','0006_require_contenttypes_0002','2018-06-29 05:46:15.149574'),(11,'auth','0007_alter_validators_add_error_messages','2018-06-29 05:46:15.174388'),(12,'auth','0008_alter_user_username_max_length','2018-06-29 05:46:15.277113'),(13,'sessions','0001_initial','2018-06-29 05:46:15.353521');
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--
-- ORDER BY:  `session_key`

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `review` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--
-- ORDER BY:  `id`

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`id`, `bookname`, `author`, `review`, `rating`) VALUES (1,'To Kill a Mockingbird','Harper Lee','Great book! Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris. Elitr ubique facilisis mea no, usu melius bonorum tibique in. Et has argumentum interesset. Ea modo primis alienum has, ea essent molestie maluisset mei. Has perfecto legendos ne. Id pri case disputationi, ne sea debet eripuit, eam ipsum salutandi persecuti ei.',5),(2,'Animal Farm','George Orwell','I love farm animals. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris.',4),(3,'Dictionary','Cambridge University','Lorem ipsum dolor sit amet, ex noster luptatum pro, has ei laudem appellantur. Ad ius ipsum quodsi, eu omnes periculis has, no sit mazim dignissim constituam. Eu mel sanctus conceptam, ad eius tation eirmod mel. Ius probo maluisset at, impetus laoreet offendit ei cum, at adipisci adversarium nam. Ei per adhuc utinam habemus, eu pro verear posidonium. Paulo definitionem mea ne.',1),(4,'Harry Potter and The Goblet of Fire','J.K. Rowling','Sea timeam feugiat no, eum cu unum oblique theophrastus, impedit eleifend vim et. Reque fierent has ut, has id iriure officiis, vitae accumsan consequuntur vis ea. Ad usu fugit democritum. Eam an case legendos, nec accusam conceptam scripserit et. His feugiat dolores no, eam dolor torquatos cu, ex mucius dissentiet nec. Et nam lorem consul. Falli suscipit vix id, mel atqui minimum similique ut.',5),(5,'Dracula','Bram Stoker','Labore nominati ei nec, has brute melius officiis ut, eu reque zril vis. Mei adolescens reformidans ad, id sed veri insolens delicata. Nec eu consetetur consectetuer definitiones, quo ne vitae voluptua. Ferri soleat everti ea vis, eam malis mollis invenire ne.',5),(6,'The Intelligent Investor','Benjamin Graham','Deleniti phaedrum duo id, putant expetenda evertitur in his. Dictas moderatius et sea, cu amet ludus detracto ius. Ut eos mundi saepe dicunt, ut eos duis signiferumque. Commodo philosophia et vix, odio latine eos no. Noster aperiri at quo.',3),(7,'Dreams from My Father','Barrack Obama','Nam detracto assentior no. Vitae volumus sea ad, vim odio erat ei. Mea in porro nominavi democritum, simul labore officiis no usu, eum fugit minim et. Te mollis feugait sea, vix reque denique temporibus ex, pro aliquid repudiandae in. Et accusamus salutatus qui, eros ipsum nonumes cu est.',5),(8,'Gone with the Wind','Margaret Mitchell','Mea similique intellegam et. Mel invidunt prodesset temporibus cu, ferri inani nemore et usu. Vix ne vitae volutpat incorrupte. Nisl unum vis ut, eu luptatum tractatos sea.',3),(9,'Angels & Demons','Dan Brown','Lorem ipsum dolor sit amet, ex noster luptatum pro, has ei laudem appellantur. Ad ius ipsum quodsi, eu omnes periculis has, no sit mazim dignissim constituam. Eu mel sanctus conceptam, ad eius tation eirmod mel. Ius probo maluisset at, impetus laoreet offendit ei cum, at adipisci adversarium nam. Ei per adhuc utinam habemus, eu pro verear posidonium. Paulo definitionem mea ne.',4),(10,'The Alchemist','Paulo Caelho','Labore nominati ei nec, has brute melius officiis ut, eu reque zril vis. Mei adolescens reformidans ad, id sed veri insolens delicata. Nec eu consetetur consectetuer definitiones, quo ne vitae voluptua. Ferri soleat everti ea vis, eam malis mollis invenire ne.',2);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bookreviews'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-29 22:52:37
