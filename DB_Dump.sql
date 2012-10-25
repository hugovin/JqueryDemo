CREATE DATABASE  IF NOT EXISTS `pso_demo_jquery` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pso_demo_jquery`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: pso_demo_jquery
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Table structure for table `pso_checks`
--

DROP TABLE IF EXISTS `pso_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pso_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_payment_id` int(11) NOT NULL,
  `check_number` varchar(45) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_payment_id_idx` (`user_payment_id`),
  CONSTRAINT `fk_payment_id` FOREIGN KEY (`user_payment_id`) REFERENCES `pso_user_payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pso_checks`
--

LOCK TABLES `pso_checks` WRITE;
/*!40000 ALTER TABLE `pso_checks` DISABLE KEYS */;
/*!40000 ALTER TABLE `pso_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pso_credit_cards`
--

DROP TABLE IF EXISTS `pso_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pso_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_payment_id` int(11) NOT NULL,
  `card_number` varchar(45) DEFAULT NULL,
  `name_on_card` varchar(45) DEFAULT NULL,
  `exp_month` varchar(45) DEFAULT NULL,
  `exp_year` varchar(45) DEFAULT NULL,
  `ccv` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_user_payment_idx` (`user_payment_id`),
  CONSTRAINT `fk_user_payment` FOREIGN KEY (`user_payment_id`) REFERENCES `pso_user_payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pso_credit_cards`
--

LOCK TABLES `pso_credit_cards` WRITE;
/*!40000 ALTER TABLE `pso_credit_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `pso_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pso_login`
--

DROP TABLE IF EXISTS `pso_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pso_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `passwword` varchar(45) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_log_status_idx` (`status`),
  CONSTRAINT `fk_log_status` FOREIGN KEY (`status`) REFERENCES `pso_login_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pso_login`
--

LOCK TABLES `pso_login` WRITE;
/*!40000 ALTER TABLE `pso_login` DISABLE KEYS */;
INSERT INTO `pso_login` VALUES (6,'john@doe.com','1234',2);
/*!40000 ALTER TABLE `pso_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pso_login_status`
--

DROP TABLE IF EXISTS `pso_login_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pso_login_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pso_login_status`
--

LOCK TABLES `pso_login_status` WRITE;
/*!40000 ALTER TABLE `pso_login_status` DISABLE KEYS */;
INSERT INTO `pso_login_status` VALUES (1,'complete_reg','Go to Go'),(2,'uncomplete_reg','Missing Steps');
/*!40000 ALTER TABLE `pso_login_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pso_payment_type`
--

DROP TABLE IF EXISTS `pso_payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pso_payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pso_payment_type`
--

LOCK TABLES `pso_payment_type` WRITE;
/*!40000 ALTER TABLE `pso_payment_type` DISABLE KEYS */;
INSERT INTO `pso_payment_type` VALUES (1,'Credit Card',NULL),(2,'Check',NULL);
/*!40000 ALTER TABLE `pso_payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pso_reg_steps`
--

DROP TABLE IF EXISTS `pso_reg_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pso_reg_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pso_reg_steps`
--

LOCK TABLES `pso_reg_steps` WRITE;
/*!40000 ALTER TABLE `pso_reg_steps` DISABLE KEYS */;
INSERT INTO `pso_reg_steps` VALUES (1,'Registration','Dealer Information'),(2,'Payment','choose payment Method'),(3,'Confirm','E-sign');
/*!40000 ALTER TABLE `pso_reg_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pso_user_confirm`
--

DROP TABLE IF EXISTS `pso_user_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pso_user_confirm` (
  `id` int(11) NOT NULL,
  `e_sign` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pso_user_confirm`
--

LOCK TABLES `pso_user_confirm` WRITE;
/*!40000 ALTER TABLE `pso_user_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `pso_user_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pso_user_membership`
--

DROP TABLE IF EXISTS `pso_user_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pso_user_membership` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `login_id` int(10) NOT NULL,
  `user` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `website` varchar(60) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `street` varchar(70) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `reg_step` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `login_id_UNIQUE` (`login_id`),
  KEY `fk_login_idx` (`login_id`),
  KEY `fk_reg_steps_idx` (`reg_step`),
  CONSTRAINT `fk_login` FOREIGN KEY (`login_id`) REFERENCES `pso_login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reg_steps` FOREIGN KEY (`reg_step`) REFERENCES `pso_reg_steps` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pso_user_membership`
--

LOCK TABLES `pso_user_membership` WRITE;
/*!40000 ALTER TABLE `pso_user_membership` DISABLE KEYS */;
INSERT INTO `pso_user_membership` VALUES (3,6,'john','Company','www.gmail.com','1231231234','miami','home','33122','US','Hello',2);
/*!40000 ALTER TABLE `pso_user_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pso_user_payment`
--

DROP TABLE IF EXISTS `pso_user_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pso_user_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(10) NOT NULL,
  `payment_type` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pso_user_payment`
--

LOCK TABLES `pso_user_payment` WRITE;
/*!40000 ALTER TABLE `pso_user_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `pso_user_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-25  1:05:22
