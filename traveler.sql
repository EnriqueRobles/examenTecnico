-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: traveler
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
-- Table structure for table `registro_job`
--

DROP TABLE IF EXISTS `registro_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_job` (
  `id` int(11) NOT NULL,
  `panel_numer` varchar(40) NOT NULL,
  `job_number` varchar(50) NOT NULL,
  `job_name` varchar(50) NOT NULL,
  `seal` varchar(1) DEFAULT NULL,
  `type_1` varchar(150) NOT NULL,
  `modbus_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `panel_numer` (`panel_numer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_job`
--

LOCK TABLES `registro_job` WRITE;
/*!40000 ALTER TABLE `registro_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_serial_number`
--

DROP TABLE IF EXISTS `registro_serial_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_serial_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_registro_job` int(11) NOT NULL,
  `serial_numer` varchar(50) NOT NULL,
  `meter_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_registro_job` (`id_registro_job`),
  CONSTRAINT `registro_serial_number_ibfk_1` FOREIGN KEY (`id_registro_job`) REFERENCES `registro_job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_serial_number`
--

LOCK TABLES `registro_serial_number` WRITE;
/*!40000 ALTER TABLE `registro_serial_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_serial_number` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-30 23:43:55
