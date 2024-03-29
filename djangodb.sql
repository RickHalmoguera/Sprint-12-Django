CREATE DATABASE  IF NOT EXISTS `djangodb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `djangodb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: djangodb
-- ------------------------------------------------------
-- Server version	8.0.35

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$F8ysNWUZAuIpAZxDwdU0ao$XaWITOQwbeDOuMIq2GnFpghJe8bGVr2PDNmzm2Gle7U=','2024-02-15 21:11:37.091204',1,'ricardo','','','halmoguerar@gmail.com',1,1,'2024-02-15 21:10:59.971142');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_booking`
--

DROP TABLE IF EXISTS `db_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int NOT NULL,
  `message` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `room_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `db_booking_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `db_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_booking`
--

LOCK TABLES `db_booking` WRITE;
/*!40000 ALTER TABLE `db_booking` DISABLE KEYS */;
INSERT INTO `db_booking` VALUES (1,'Mónica','Carlos.AguileraEspinosa65@hotmail.com',982455972,'Defero antea libero vicissitudo pax vado cura tibi ipsa aedificium. Basium comprehendo laborum placeat.','2024-02-06','2023-09-20','2023-09-21',11,'Check In'),(2,'Mariana','Marilu91@gmail.com',927584056,'Uter clam tui. Arguo adnuo corrigo trepide votum amoveo aureus caries.','2024-02-06','2023-10-10','2023-10-12',30,'Check In'),(3,'María del Carmen','Guillermina_SotoVerdugo30@gmail.com',958757228,'Suffoco ambulo umbra baiulus summisse versus denego coepi voluptates. Asper cornu acies illum coaegresco vetus cariosus.','2024-02-06','2023-06-07','2023-06-08',4,'Check In'),(4,'Maricarmen','JuanCarlos58@yahoo.com',913410714,'Termes accendo angelus cribro volubilis desparatus tener capio tui conitor. Canis nemo terreo amplitudo asperiores conculco ustilo toties victoria spoliatio.','2024-02-06','2023-04-07','2023-04-11',32,'Check In'),(5,'Mónica','Carla_CejaBorrego26@gmail.com',975357016,'Esse brevis optio ars commemoro. Communis concedo desolo.','2024-02-06','2023-07-23','2023-07-26',10,'Check In'),(6,'Felipe','Rebeca39@yahoo.com',937037799,'Contabesco socius clam. Non quaerat porro adduco universe paens circumvenio tamquam ut quidem.','2024-02-06','2024-01-28','2024-01-31',12,'Check In'),(7,'Gerardo','Rebeca52@hotmail.com',991462838,'Triduana suadeo alius aegrus atavus thorax coadunatio ventosus. Creo traho cicuta.','2024-02-06','2023-06-13','2023-06-16',6,'Check In'),(8,'Gabriela','Natalia_BenavidezCenteno6@yahoo.com',966526062,'Creo ocer verumtamen suggero victus suus balbus vehemens uxor. Pariatur speculum curo tui.','2024-02-06','2023-04-24','2023-04-27',39,'Check In'),(9,'Javier','Nicolas62@hotmail.com',987091746,'Turbo canis auditor dedico celebrer arma vociferor ipsum cauda auxilium. Urbanus catena curvo.','2024-02-06','2023-03-27','2023-03-30',27,'Check In'),(10,'Jorge','Soledad.CarrascoMarroquin@yahoo.com',981719823,'Defetiscor comptus crepusculum utrimque articulus compono tracto. Curriculum tondeo corpus aedificium carpo admoveo validus.','2024-02-06','2023-08-13','2023-08-18',29,'Check In'),(11,'Jerónimo','Federico_AlmanzaMendez95@yahoo.com',929815316,'Solitudo curriculum aliquid usque crudelis. Trado arx verumtamen.','2024-02-06','2023-02-18','2023-02-20',37,'Check In'),(12,'Cristóbal','Ana_BarajasLimon@hotmail.com',999823867,'Umerus vallum tergo defleo validus pel uredo cui denuncio. Sonitus conturbo acervus suffragium.','2024-02-06','2023-11-15','2023-11-18',12,'Check In'),(13,'Andrés','Marilu99@yahoo.com',934867330,'Validus astrum tribuo. Earum ex thermae vinculum nemo alo coma nobis.','2024-02-06','2023-04-08','2023-04-11',25,'Check In'),(14,'Catalina','Gerardo.PelayoMarquez50@yahoo.com',923924435,'Succedo theca aestas consuasor vehemens laudantium valens. Verecundia vulgivagus vinitor depono temptatio cupiditas.','2024-02-06','2023-05-15','2023-05-20',36,'Check In'),(15,'Catalina','Juan56@gmail.com',934009368,'Deserunt delicate delectus vergo conculco. Decens sui vicinus curatio tabgo viduo vigilo timor candidus.','2024-02-06','2024-01-04','2024-01-04',20,'Check In'),(43,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'weqweqwe','2024-02-15','2024-02-13','2024-02-09',27,'booked');
/*!40000 ALTER TABLE `db_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_contact`
--

DROP TABLE IF EXISTS `db_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int NOT NULL,
  `subject` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_contact`
--

LOCK TABLES `db_contact` WRITE;
/*!40000 ALTER TABLE `db_contact` DISABLE KEYS */;
INSERT INTO `db_contact` VALUES (1,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'asdasd','asdasdasd','2024-02-15'),(2,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'asdasd','asdasdasd','2024-02-15'),(3,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'dsfsdfsdf','sdfsdf','2024-02-15'),(4,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'wqaeqw','qweqwe','2024-02-15'),(5,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'wqaeqw','qweqwe','2024-02-15'),(6,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'qweqw','qweqwe','2024-02-15'),(7,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'qweqw','qweqwe','2024-02-15'),(8,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'asdasd','asdasdasdasdasd','2024-02-15'),(9,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'asdasdas','asdsdasd','2024-02-15'),(10,'Ricardo Halmoguera','halmoguerar@gmail.com',650258266,'asdasd','asdasd','2024-02-15'),(11,'Ricardo Halmoguera','halmoguerar@gmail.com',650258266,'asdasd','asdasd','2024-02-15'),(12,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'qweqw','qweqwe','2024-02-15'),(13,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'wqeqwe','qweqwe','2024-02-15'),(14,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'dasdasd','asdasd','2024-02-15'),(15,'Ricardo Halmoguera Garcia','halmoguerar@gmail.com',650258266,'asdasd','asdasd','2024-02-15'),(16,'Ricardo Halmoguera','halmoguerar@gmail.com',650258266,'a','sdasdsad','2024-02-15'),(17,'José Garcia','dich333@gmail.com',681228228,'asdasd','asdads','2024-02-15');
/*!40000 ALTER TABLE `db_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_room`
--

DROP TABLE IF EXISTS `db_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `room_number` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `offer` tinyint(1) NOT NULL,
  `price_night` int NOT NULL,
  `discount` int NOT NULL,
  `cancellation` varchar(255) NOT NULL,
  `is_booked` tinyint(1) NOT NULL,
  `amenities` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_room`
--

LOCK TABLES `db_room` WRITE;
/*!40000 ALTER TABLE `db_room` DISABLE KEYS */;
INSERT INTO `db_room` VALUES (1,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-223','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,250,15,'Subiungo curso natus agnitio. Bene currus id surculus vito colo.',1,'[\"24/7 Online Support\", \"Kitchen\", \"Smart Security\", \"High speed WiFi\", \"Towels\", \"Breakfast\", \"Grocery\", \"Air conditioner\", \"Strong Locker\", \"Shop near\", \"Shower\", \"Cleaning\", \"Expert Team\"]'),(2,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-316','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,100,0,'Somnus adulescens thermae conventus. Aestus aro ait.',1,'[\"Shop near\", \"24/7 Online Support\", \"Towels\", \"Cleaning\", \"Strong Locker\", \"Kitchen\", \"Grocery\", \"Shower\", \"Air conditioner\", \"Breakfast\", \"Expert Team\", \"High speed WiFi\", \"Smart Security\"]'),(3,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Double Bed-339','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,200,10,'Odio celer curvo aiunt. Aduro ager adicio accusator correptius amplitudo trucido usque cunabula adfero.',1,'[\"Air conditioner\", \"High speed WiFi\", \"Kitchen\", \"Expert Team\", \"Strong Locker\", \"Grocery\", \"Cleaning\", \"24/7 Online Support\", \"Towels\", \"Breakfast\", \"Shop near\", \"Shower\", \"Smart Security\"]'),(4,'https://plus.unsplash.com/premium_photo-1664303990705-f583f4677c0a?q=80&w=1295&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Suite-390','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,350,0,'Amita arguo sulum sono crapula canis adhuc tondeo cur. Ustilo civis arguo.',1,'[\"High speed WiFi\", \"Towels\", \"Breakfast\", \"Shop near\", \"Grocery\", \"Expert Team\", \"Cleaning\", \"Kitchen\", \"Shower\", \"Strong Locker\", \"Air conditioner\", \"24/7 Online Support\", \"Smart Security\"]'),(5,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-366','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,250,15,'Tempore quasi condico. Quisquam certe territo vere aufero voluptas sublime collum.',1,'[\"Shop near\", \"Cleaning\", \"Kitchen\", \"Towels\", \"Strong Locker\", \"Breakfast\", \"24/7 Online Support\", \"Shower\", \"High speed WiFi\", \"Air conditioner\", \"Grocery\", \"Smart Security\", \"Expert Team\"]'),(6,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-26','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,100,5,'Blanditiis sol cariosus suppono caritas non sint adsum. Ascisco deporto thymbra magni tametsi cura taedium aegrus calculus.',0,'[\"Towels\", \"Smart Security\", \"Kitchen\", \"High speed WiFi\", \"Grocery\", \"Air conditioner\", \"Breakfast\", \"Shop near\", \"24/7 Online Support\", \"Strong Locker\", \"Expert Team\", \"Shower\", \"Cleaning\"]'),(7,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-65','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,250,15,'Succedo temptatio conspergo sed uterque tribuo. Aptus appono supellex volup praesentium.',1,'[\"Shop near\", \"High speed WiFi\", \"Air conditioner\", \"Kitchen\", \"Shower\", \"Grocery\", \"Smart Security\", \"24/7 Online Support\", \"Expert Team\", \"Breakfast\", \"Cleaning\", \"Towels\", \"Strong Locker\"]'),(8,'https://plus.unsplash.com/premium_photo-1664303990705-f583f4677c0a?q=80&w=1295&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Suite-248','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,350,20,'Abutor coerceo creta adulescens ambitus. Tamen adficio ambulo crux spes.',1,'[\"Air conditioner\", \"Strong Locker\", \"High speed WiFi\", \"Breakfast\", \"Smart Security\", \"24/7 Online Support\", \"Kitchen\", \"Towels\", \"Expert Team\", \"Shop near\", \"Grocery\", \"Cleaning\", \"Shower\"]'),(9,'https://plus.unsplash.com/premium_photo-1664303990705-f583f4677c0a?q=80&w=1295&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Suite-32','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,350,0,'Adversus absum vorax stips aestus ratione. Arceo utpote aperte supellex vulgo sollers.',1,'[\"Kitchen\", \"Towels\", \"Expert Team\", \"24/7 Online Support\", \"Air conditioner\", \"Cleaning\", \"Shop near\", \"High speed WiFi\", \"Strong Locker\", \"Grocery\", \"Shower\", \"Breakfast\", \"Smart Security\"]'),(10,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Double Bed-191','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,200,0,'Eveniet adficio causa reiciendis decretum cum sub spectaculum teres arma. Aeternus cupiditas acquiro vigor acsi sopor.',1,'[\"24/7 Online Support\", \"Breakfast\", \"Shop near\", \"Kitchen\", \"Smart Security\", \"Shower\", \"Expert Team\", \"Cleaning\", \"Towels\", \"Grocery\", \"Air conditioner\", \"High speed WiFi\", \"Strong Locker\"]'),(11,'https://plus.unsplash.com/premium_photo-1664303990705-f583f4677c0a?q=80&w=1295&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Suite-200','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,350,20,'Patruus suggero vomito. Velit confero aestivus angelus crebro vilis.',0,'[\"Breakfast\", \"Cleaning\", \"Shop near\", \"Air conditioner\", \"Towels\", \"Expert Team\", \"Strong Locker\", \"Grocery\", \"Shower\", \"High speed WiFi\", \"Smart Security\", \"Kitchen\", \"24/7 Online Support\"]'),(12,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-388','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,250,15,'Coruscus vindico credo victus velociter deporto. Adsum repellat ventus talio celo ipsum.',1,'[\"Grocery\", \"Strong Locker\", \"Expert Team\", \"Kitchen\", \"Cleaning\", \"Breakfast\", \"Towels\", \"24/7 Online Support\", \"Shop near\", \"High speed WiFi\", \"Shower\", \"Smart Security\", \"Air conditioner\"]'),(13,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Double Bed-70','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,200,10,'Cogo dignissimos vapulus delectatio cuppedia cultura ab maxime claro sunt. Adsuesco ulciscor cetera harum comitatus cursus amaritudo voveo tot.',1,'[\"Smart Security\", \"Air conditioner\", \"Towels\", \"Strong Locker\", \"Breakfast\", \"24/7 Online Support\", \"Shop near\", \"Expert Team\", \"Grocery\", \"Kitchen\", \"Shower\", \"High speed WiFi\", \"Cleaning\"]'),(14,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-42','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,100,5,'Vulgo abutor defaeco velociter vestrum tener testimonium vespillo termes cado. Decumbo valeo occaecati degero tenax.',1,'[\"Cleaning\", \"High speed WiFi\", \"Grocery\", \"Shop near\", \"24/7 Online Support\", \"Strong Locker\", \"Shower\", \"Air conditioner\", \"Expert Team\", \"Kitchen\", \"Towels\", \"Breakfast\", \"Smart Security\"]'),(15,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-315','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,100,5,'Modi nobis tamisium aiunt caecus textilis sponte creo deduco. Delego terga adulescens condico tonsor virtus debitis.',1,'[\"Expert Team\", \"Smart Security\", \"Breakfast\", \"Strong Locker\", \"Shower\", \"High speed WiFi\", \"Towels\", \"Grocery\", \"Shop near\", \"24/7 Online Support\", \"Air conditioner\", \"Kitchen\", \"Cleaning\"]'),(16,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-243','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,100,0,'Articulus verumtamen sperno vicissitudo vehemens canto sub. Sequi clibanus officia custodia a ex copiose.',1,'[\"Shop near\", \"Breakfast\", \"Towels\", \"Smart Security\", \"High speed WiFi\", \"Kitchen\", \"Cleaning\", \"Shower\", \"Grocery\", \"24/7 Online Support\", \"Strong Locker\", \"Expert Team\", \"Air conditioner\"]'),(17,'https://plus.unsplash.com/premium_photo-1664303990705-f583f4677c0a?q=80&w=1295&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Suite-360','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,350,20,'Tremo soluta comprehendo coma corrupti asperiores arto cogito vulgus. Adsum creber charisma odio.',1,'[\"Cleaning\", \"Shower\", \"Air conditioner\", \"Kitchen\", \"Expert Team\", \"24/7 Online Support\", \"Grocery\", \"Smart Security\", \"High speed WiFi\", \"Strong Locker\", \"Towels\", \"Shop near\", \"Breakfast\"]'),(18,'https://plus.unsplash.com/premium_photo-1664303990705-f583f4677c0a?q=80&w=1295&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Suite-170','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,350,0,'Accusantium conforto architecto thorax natus. Cognomen tendo curiositas depopulo id approbo bestia umbra aperte amitto.',0,'[\"Smart Security\", \"Shower\", \"Strong Locker\", \"Kitchen\", \"Air conditioner\", \"Expert Team\", \"24/7 Online Support\", \"Towels\", \"Shop near\", \"High speed WiFi\", \"Grocery\", \"Cleaning\", \"Breakfast\"]'),(19,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-138','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,100,5,'Totus terra denique victus tergiversatio rem placeat cervus tunc itaque. Talis decor error averto dolorem.',0,'[\"Shop near\", \"Cleaning\", \"Breakfast\", \"24/7 Online Support\", \"Smart Security\", \"Kitchen\", \"Shower\", \"Towels\", \"Grocery\", \"Expert Team\", \"Air conditioner\", \"Strong Locker\", \"High speed WiFi\"]'),(20,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-101','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,250,15,'Commodi basium catena a cuius pecco adnuo. Atque terebro ultra taedium comminor eaque vestrum.',0,'[\"Kitchen\", \"Shop near\", \"Grocery\", \"Air conditioner\", \"Cleaning\", \"High speed WiFi\", \"Shower\", \"Towels\", \"Expert Team\", \"Smart Security\", \"Strong Locker\", \"Breakfast\", \"24/7 Online Support\"]'),(21,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-214','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,250,0,'Esse celer alo allatus. Degusto architecto apparatus animadverto vitiosus amo sit ventito verus sed.',1,'[\"Shop near\", \"High speed WiFi\", \"Smart Security\", \"Breakfast\", \"Air conditioner\", \"Towels\", \"Kitchen\", \"24/7 Online Support\", \"Expert Team\", \"Grocery\", \"Strong Locker\", \"Cleaning\", \"Shower\"]'),(22,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-295','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,250,0,'Consuasor demoror a contigo titulus adfectus clam autus. Vicinus spargo vulgo vinco spes.',1,'[\"Cleaning\", \"Smart Security\", \"24/7 Online Support\", \"Breakfast\", \"High speed WiFi\", \"Grocery\", \"Air conditioner\", \"Towels\", \"Shower\", \"Expert Team\", \"Kitchen\", \"Shop near\", \"Strong Locker\"]'),(23,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-355','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,250,15,'Considero tres sapiente allatus vulgaris vorago bibo ultra venia. Uterque quaerat quasi harum nostrum verus maxime aggero viridis tubineus.',1,'[\"Shop near\", \"Shower\", \"Smart Security\", \"Air conditioner\", \"Cleaning\", \"High speed WiFi\", \"Kitchen\", \"Towels\", \"Expert Team\", \"Breakfast\", \"Grocery\", \"24/7 Online Support\", \"Strong Locker\"]'),(24,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-389','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,100,0,'Spes decet vester ara cur ulterius ulterius conturbo tergum. Paulatim sursum dens currus.',1,'[\"Shop near\", \"Cleaning\", \"Smart Security\", \"Air conditioner\", \"Breakfast\", \"Shower\", \"Towels\", \"Grocery\", \"24/7 Online Support\", \"Strong Locker\", \"Expert Team\", \"Kitchen\", \"High speed WiFi\"]'),(25,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-407','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,100,5,'Amplus ipsa trans cresco creptio praesentium. Compono sophismata dens utrum degusto clementia absque debeo.',0,'[\"Air conditioner\", \"Cleaning\", \"High speed WiFi\", \"Smart Security\", \"Shower\", \"Strong Locker\", \"Grocery\", \"Shop near\", \"24/7 Online Support\", \"Towels\", \"Kitchen\", \"Breakfast\", \"Expert Team\"]'),(26,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Double Bed-75','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,200,0,'Suppono civis derelinquo ab charisma alias umquam. Alius enim tutamen.',0,'[\"Shower\", \"Kitchen\", \"Breakfast\", \"Shop near\", \"High speed WiFi\", \"Smart Security\", \"Grocery\", \"Air conditioner\", \"Cleaning\", \"Expert Team\", \"Towels\", \"24/7 Online Support\", \"Strong Locker\"]'),(27,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Double Bed-209','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,200,0,'Comitatus minima adfero provident antiquus eius theca virga aequitas. Defluo tutamen volup coadunatio aureus adeo aut.',0,'[\"Strong Locker\", \"High speed WiFi\", \"Breakfast\", \"Shower\", \"Kitchen\", \"24/7 Online Support\", \"Smart Security\", \"Cleaning\", \"Expert Team\", \"Towels\", \"Grocery\", \"Shop near\", \"Air conditioner\"]'),(28,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-354','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,100,5,'Aegrotatio ars taedium. Asper volva defaeco.',0,'[\"Air conditioner\", \"High speed WiFi\", \"Shop near\", \"Grocery\", \"Strong Locker\", \"24/7 Online Support\", \"Kitchen\", \"Expert Team\", \"Smart Security\", \"Breakfast\", \"Shower\", \"Cleaning\", \"Towels\"]'),(29,'https://plus.unsplash.com/premium_photo-1664303990705-f583f4677c0a?q=80&w=1295&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Suite-35','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,350,0,'Tibi bonus alienus admitto amissio attonbitus statim demum. Dignissimos canis esse tepidus thesis.',1,'[\"Shower\", \"Cleaning\", \"Shop near\", \"Smart Security\", \"Expert Team\", \"Towels\", \"Breakfast\", \"Kitchen\", \"Air conditioner\", \"Strong Locker\", \"24/7 Online Support\", \"High speed WiFi\", \"Grocery\"]'),(30,'https://plus.unsplash.com/premium_photo-1664303990705-f583f4677c0a?q=80&w=1295&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Suite-305','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,350,0,'Temporibus tonsor utpote ciminatio thalassinus temptatio comes officia. Articulus sordeo stillicidium.',1,'[\"Expert Team\", \"Strong Locker\", \"Shop near\", \"Towels\", \"Air conditioner\", \"Cleaning\", \"High speed WiFi\", \"Smart Security\", \"Grocery\", \"24/7 Online Support\", \"Breakfast\", \"Shower\", \"Kitchen\"]'),(31,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-87','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,250,15,'Labore repellat calco solum. Sponte chirographum accedo in tum speciosus.',1,'[\"Breakfast\", \"Towels\", \"Grocery\", \"Kitchen\", \"Strong Locker\", \"High speed WiFi\", \"Cleaning\", \"Smart Security\", \"Shower\", \"Expert Team\", \"Shop near\", \"Air conditioner\", \"24/7 Online Support\"]'),(32,'https://plus.unsplash.com/premium_photo-1664303990705-f583f4677c0a?q=80&w=1295&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Suite','Suite-245','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,350,20,'Curis vester culpo voluptatum dicta compono. Tero deleniti solus atrox.',1,'[\"Cleaning\", \"Kitchen\", \"High speed WiFi\", \"Breakfast\", \"Expert Team\", \"Air conditioner\", \"Strong Locker\", \"Towels\", \"24/7 Online Support\", \"Shop near\", \"Shower\", \"Grocery\", \"Smart Security\"]'),(33,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-329','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,250,15,'Custodia dapifer abutor aeger nobis adaugeo territo. Tergeo solium tenetur.',1,'[\"Shop near\", \"Shower\", \"Breakfast\", \"Grocery\", \"High speed WiFi\", \"Kitchen\", \"Expert Team\", \"Smart Security\", \"Strong Locker\", \"24/7 Online Support\", \"Towels\", \"Air conditioner\", \"Cleaning\"]'),(34,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-128','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,100,5,'Aeger tenuis animi. Inflammatio vox defluo adinventitias vox vulticulus territo bestia labore.',1,'[\"Kitchen\", \"Strong Locker\", \"Shower\", \"Grocery\", \"Air conditioner\", \"Smart Security\", \"24/7 Online Support\", \"Towels\", \"Expert Team\", \"Shop near\", \"Breakfast\", \"Cleaning\", \"High speed WiFi\"]'),(35,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-409','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,250,15,'Contego fuga desolo adduco nobis artificiose acerbitas. Perferendis at ago ea admiratio vae.',0,'[\"Strong Locker\", \"Breakfast\", \"24/7 Online Support\", \"Expert Team\", \"Air conditioner\", \"Shop near\", \"Cleaning\", \"Shower\", \"High speed WiFi\", \"Kitchen\", \"Grocery\", \"Towels\", \"Smart Security\"]'),(36,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Double Bed-283','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,200,0,'Tonsor sub articulus laudantium tempus asporto. Consectetur cur modi cognomen vulgivagus damnatio.',1,'[\"Smart Security\", \"Shower\", \"High speed WiFi\", \"Grocery\", \"Kitchen\", \"Expert Team\", \"Towels\", \"Breakfast\", \"24/7 Online Support\", \"Strong Locker\", \"Air conditioner\", \"Shop near\", \"Cleaning\"]'),(37,'https://images.unsplash.com/photo-1631049307485-2bfb23080676?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Single Bed','Single Bed-405','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,100,0,'Succurro adhaero demergo acerbitas alo tricesimus tametsi. Corroboro delibero conforto basium vulariter beatus absens tersus copia.',0,'[\"Expert Team\", \"Kitchen\", \"24/7 Online Support\", \"Grocery\", \"Breakfast\", \"High speed WiFi\", \"Towels\", \"Shower\", \"Smart Security\", \"Air conditioner\", \"Shop near\", \"Strong Locker\", \"Cleaning\"]'),(38,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Double Bed-470','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',1,200,10,'Caveo aspernatur crastinus ait subiungo adfero suspendo animi blanditiis. Abundans tabula rerum autus civitas summopere dolorem terga calco sequi.',1,'[\"High speed WiFi\", \"Strong Locker\", \"Grocery\", \"24/7 Online Support\", \"Cleaning\", \"Kitchen\", \"Air conditioner\", \"Expert Team\", \"Breakfast\", \"Shower\", \"Smart Security\", \"Shop near\", \"Towels\"]'),(39,'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Superior','Double Superior-52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,250,0,'Clibanus calamitas voluptatum esse circumvenio amplitudo et. Vergo hic depraedor cubicularis voluptatum.',0,'[\"High speed WiFi\", \"Breakfast\", \"24/7 Online Support\", \"Air conditioner\", \"Towels\", \"Strong Locker\", \"Shop near\", \"Cleaning\", \"Smart Security\", \"Expert Team\", \"Grocery\", \"Shower\", \"Kitchen\"]'),(40,'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Double Bed','Double Bed-497','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elit lectus, mattis sed volutpat a, gravida sit amet leo. Pellentesque id suscipit odio, id faucibus ante. Nullam posuere fringilla turpis.',0,200,0,'Veritatis vulnus versus laudantium benevolentia astrum admiratio aliqua vobis. Quam vilitas quod earum succedo alii titulus.',1,'[\"Expert Team\", \"Breakfast\", \"Strong Locker\", \"Kitchen\", \"Shower\", \"Grocery\", \"Cleaning\", \"High speed WiFi\", \"24/7 Online Support\", \"Air conditioner\", \"Towels\", \"Shop near\", \"Smart Security\"]');
/*!40000 ALTER TABLE `db_room` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-06 10:36:39.168372'),(2,'auth','0001_initial','2024-02-06 10:36:39.481629'),(3,'admin','0001_initial','2024-02-06 10:36:39.575838'),(4,'admin','0002_logentry_remove_auto_add','2024-02-06 10:36:39.580840'),(5,'admin','0003_logentry_add_action_flag_choices','2024-02-06 10:36:39.585150'),(6,'contenttypes','0002_remove_content_type_name','2024-02-06 10:36:39.635689'),(7,'auth','0002_alter_permission_name_max_length','2024-02-06 10:36:39.685487'),(8,'auth','0003_alter_user_email_max_length','2024-02-06 10:36:39.699599'),(9,'auth','0004_alter_user_username_opts','2024-02-06 10:36:39.704100'),(10,'auth','0005_alter_user_last_login_null','2024-02-06 10:36:39.741555'),(11,'auth','0006_require_contenttypes_0002','2024-02-06 10:36:39.743055'),(12,'auth','0007_alter_validators_add_error_messages','2024-02-06 10:36:39.747556'),(13,'auth','0008_alter_user_username_max_length','2024-02-06 10:36:39.787193'),(14,'auth','0009_alter_user_last_name_max_length','2024-02-06 10:36:39.830955'),(15,'auth','0010_alter_group_name_max_length','2024-02-06 10:36:39.842458'),(16,'auth','0011_update_proxy_permissions','2024-02-06 10:36:39.848458'),(17,'auth','0012_alter_user_first_name_max_length','2024-02-06 10:36:39.889305'),(18,'sessions','0001_initial','2024-02-06 10:36:39.910783'),(19,'db','0001_initial','2024-02-15 19:33:10.215213');
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
INSERT INTO `django_session` VALUES ('1wh8zu1kw9vozci1ay4luonlrkk3mczq','.eJxVjEEOwiAQRe_C2pACA0NduvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWSpx-t0jpwW0H-U7tNss0t3WZotwVedAur3Pm5-Vw_w4q9fqtdUkWNBrtrKdiygCDNYDgikvOeAalVUECIPY-IqE2NI6oXI6MiFm8P7YmNvc:1raj17:5vqaSjDy24UA2L74tAic2SiCoXYuk5zfemShRqcwKoo','2024-02-29 21:11:37.093203');
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

-- Dump completed on 2024-02-16  9:24:03
