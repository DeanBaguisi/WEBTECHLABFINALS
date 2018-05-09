-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: transient
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activity_date` datetime NOT NULL,
  `activity_description` varchar(200) NOT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `user_idx` (`user_id`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `house_name` varchar(45) NOT NULL,
  `house_style` varchar(45) DEFAULT NULL,
  `house_capacity` int(3) NOT NULL,
  `house_description` varchar(200) DEFAULT NULL,
  `house_address` varchar(200) NOT NULL,
  `rental_type` enum('per house','per head') NOT NULL,
  `current_rental_fee` decimal(15,0) NOT NULL,
  `current_reservation_fee` decimal(15,0) NOT NULL,
  `house_status` enum('available','unavailable','reserved') NOT NULL,
  PRIMARY KEY (`house_id`),
  UNIQUE KEY `house_id_UNIQUE` (`house_id`),
  KEY `provider_idx` (`user_id`),
  CONSTRAINT `provider` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house`
--

LOCK TABLES `house` WRITE;
/*!40000 ALTER TABLE `house` DISABLE KEYS */;
INSERT INTO `house` VALUES (111,1,'Lyn\'s Baguio Transient Homes','Guest House',2,'Lyn\'s Baguio Transient Homes is a nice place with good ambiance that is good for big family.','79-B, City Camp Alley, Baguio, 2600 Benguet','per head',2500,500,'available'),(112,2,'Baguio Transient House',NULL,15,'Baguio Transient House serves a wide space with parking lot.','300 Elizabeth Court, Suello Village, Baguio, 2600 Benguet','per house',8000,2500,'reserved'),(113,4,'Baguio Transient','Lodge',10,'Baguio Transient is known for the best home in town.','214 Mission Rd, Crystal Cave, Baguio','per house',7000,2500,'unavailable'),(114,3,'Babsplace Baguio Transient Room','Bed space',1,'Band looking for comfortable day and night stay.\r\n','508 Hillside Rd, Baguio','per head',1500,500,'reserved'),(115,3,'Kaleen\'s Baguio Transient House','3-Star Hotel',5,'This place is less expensive compared to hotel accommodations.','1354 Asin Rd, Baguio','per house',8960,3500,'available'),(116,2,'Baguio Affordable Transient House','Guest House',6,'Good for 5-6 person, free Wi-Fi and semi-furnished house, clean and affordable.','Valenzuela St, Baguio, Benguet','per head',600,250,'reserved'),(117,1,'Nice n\' Cozy Transient House','Family space',10,'Semi furnished house and elegant décor.','104 Upper East, Purok-1 Kalinga Pelota, Camp 7, Baguio','per house',6000,2000,'unavailable'),(118,4,'Pam\'s Transient House','Guest House',4,'2-Storey House with free wi-fi.','23 R. Villalon St, Baguio, 2600 Benguet','per house',3000,1500,'reserved'),(119,4,'Monzon\'s Transient Homes',NULL,6,'15 mins walking to town. Free Wi-Fi and CCTV access.','65 Everlasting St, Baguio, 2600 Benguet','per house',3500,1500,'unavailable'),(120,4,'God\'s Love Baguio Transient House','3 Star Hotel',2,NULL,'Sandico St, Salud Mitra, Baguio, 2600 Benguet','per head',500,250,'unavailable'),(121,2,'Zeb\'s Transient House','Family space',8,'Fully furnished house with hot and cold water. Wi-Fi free and parking lot.','Green Ln, Baguio, Benguet','per house',4500,1300,'unavailable'),(122,2,'Joann Transient House','Bachelors Pad',2,NULL,'18 Laubach Rd, Baguio, 2600 Benguet','per head',2500,850,'reserved'),(123,3,'VMSunga Transient House',NULL,10,'Semi furnished house and free Wi-Fi with parking lot.','282 Elizabeth Court Suello Village, Baguio City, Elisabeth Ct, Baguio, Benguet','per house',5500,2500,'available'),(124,1,'Transient House Baguio','Lodge',10,'Fully furnished house, CCTV and Wi-Fi free.','Loakan Liwanag Barangay Hall, 233 2 Upper, Loakan Rd, Baguio, Benguet','per house',6500,3000,'available'),(125,1,'Woodsgate Transient House',NULL,15,'Wide space and can accommodate 15 person. 4 rooms with 3 beds.','139 Purok 1 Upper East Camp 7 Binay-an Compound, Baguio, 2600 Binay-an Compound, Baguio, 2600 Benguet','per head',650,200,'reserved'),(126,3,'Colorful Transient House',NULL,5,NULL,'224 Purok 1, Upper East Woodsgate Square, Camp 7, Baguio, 2600','per house',3500,1800,'reserved'),(127,4,'Maine Line Transient House',NULL,8,NULL,'Baguio, Benguet','per house',4500,2800,'reserved'),(128,4,'Mj Transient House',NULL,4,'Free Wi-Fi access','San Carlos Heights, Baguio, Benguet','per house',3500,1000,'reserved'),(129,3,'Peter\'s Baguio Transient House','Bachelors Pad',7,'Fully furnished transient house with free Wi-Fi access.','2602, 163 Military Cutoff Rd, Baguio, Benguet','per head',500,150,'unavailable'),(130,3,'Jabbitos Transient House','Bachelors Pad',2,NULL,'C. Arellano St, Baguio, Benguet','per head',500,250,'unavailable'),(131,4,'Breezy Hill Transient House','Family size',8,'Semi furnished transient house, hot and cold water, free Wi-Fi and free parking lot.','18 V. Martinez St, Brgy. Engineers Hill, Baguio, 2600 Benguet','per house',4500,2500,'reserved'),(132,2,'Tonyen\'s Transient House','4 storey house ',6,'Quiet place, good for relaxation and unwind.','Bakakeng Road, 13c Western Link Circumferential Rd, Baguio, 2600\r\n','per house',3500,1000,'available'),(133,4,'Sagun\'s Transient House','Apartment/Boarding',2,NULL,'65 M. Roxas Street, Imelda Village, Baguio, 2600 Benguet','per house',3800,1500,'reserved'),(134,1,'Outlook Transient House','Guest House',5,'24/7 CCTV access with free Wi-Fi and hot and cold water.','#11, Maryhurst Rd. Brgy. Outlook Drive Subd., Baguio, 2600 Benguet','per house',4500,2000,'unavailable'),(135,1,'Faes Transient House',NULL,10,'3 Storey house with parking lot.','2 himalaya St. Shangrila village, Baguio, 2600 Benguet','per house',5500,2800,'reserved'),(136,2,'Gutierrez Transient House','American Architecture',12,'Free Wi-Fi and CCTV secured. Near Grotto Lourdes.','#61, Dominican Road, Brgy. Dominican Mirador, Baguio, 2600 Benguet','per house',6500,3000,'available'),(137,6,'Gutierrez Transient House',NULL,5,NULL,'#61, Dominican Road, Brgy. Dominican Mirador, Baguio, 2600 Benguet','per house',3800,1200,'unavailable'),(138,6,'Royale Seven Transient House','Family Size',12,NULL,'Ace Villa Royale 7, Green Valley Village,, Santo Tomas Road,, Dontogan, Baguio, 2600 Benguet','per house',5200,2300,'reserved'),(139,5,'Zya Transient House','Bachelors Pad',8,NULL,'Alphaville St, Baguio, Benguet','per head',500,250,'unavailable'),(140,5,'LuPris Baguio Transient House',NULL,4,'Near the town.','Lower Brookside, Baguio, Benguet','per house',3500,1200,'available'),(141,5,'Kiyomi\'s Transient House','Guest House',8,NULL,'12, Badihoy, Baguio, Benguet','per house',5500,2000,'available');
/*!40000 ALTER TABLE `house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) NOT NULL,
  `house_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `house_idx` (`house_id`),
  CONSTRAINT `house` FOREIGN KEY (`house_id`) REFERENCES `house` (`house_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rental_id` int(11) NOT NULL,
  `payment_date` datetime NOT NULL,
  `payment_amount` decimal(15,0) NOT NULL,
  `payment_remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `user_id` (`user_id`),
  KEY `rental_idx` (`rental_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `rental` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`rental_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental` (
  `rental_id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_id` int(11) NOT NULL,
  `rental_startdate` datetime NOT NULL,
  `rental_enddate` datetime DEFAULT NULL,
  `rental_fee` decimal(15,0) NOT NULL,
  `fee_to_provider` decimal(15,0) NOT NULL,
  `rental_status` enum('pending','ongoing','completed') NOT NULL,
  PRIMARY KEY (`rental_id`),
  KEY `reservaation_id_idx` (`reservation_id`),
  CONSTRAINT `reservation_id` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `reservation_startdate` datetime NOT NULL,
  `reservation_enddate` datetime DEFAULT NULL,
  `reservation_fee` decimal(15,0) NOT NULL,
  `reservation_status` enum('pending','cancelled','accepted','rejected') NOT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `house_id_idx` (`house_id`),
  CONSTRAINT `house_id` FOREIGN KEY (`house_id`) REFERENCES `house` (`house_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,3,119,'2018-05-10 10:00:00','2018-05-11 00:00:00',1500,'pending');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `given_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` enum('female','male') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `display_picture` varchar(200) DEFAULT NULL,
  `user_type` enum('user','provider','admin') NOT NULL,
  `account_status` enum('pending','accepted','declined','deactivated') NOT NULL,
  `account_balance` decimal(15,0) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Angel','Elegado','female','1998-12-02','09556070339','2165184@slu.edu.ph','user2','user2',NULL,'user','accepted','active',0),(2,'Samantha','Garcia','female','1998-05-07','09752584862','2165511@slu.edu.ph','user3','user3',NULL,'user','accepted','active',0),(3,'Vea','Hufana','female','1998-05-09','09095067895','2161274@slu.edu.ph','user1','user1',NULL,'user','accepted','active',0),(4,'Mitch','Galatcha','male','1998-01-02','09559054321','2195589@slu.edu.ph','user4','user4',NULL,'user','accepted','active',0),(5,'Dean Christian','Baguisi','male','1999-05-17','0975256754',NULL,'user5','user5',NULL,'admin','accepted','active',0),(6,'Kenneth','Mabanglo','male','1998-04-18',NULL,NULL,'use6','user6',NULL,'admin','accepted','active',0);
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

-- Dump completed on 2018-05-08 19:19:43