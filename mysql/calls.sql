CREATE DATABASE  IF NOT EXISTS `calls` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `calls`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: calls
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `file_url` varchar(250) CHARACTER SET utf8 NOT NULL,
  `jobTitle` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeNumber`)
) ENGINE=MyISAM AUTO_INCREMENT=1703 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1002,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com','1','','President'),(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1','','VP Sales'),(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1','','VP Marketing'),(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6','','Sales Manager (APAC)'),(1102,'Bondur','Gerard','x5408','gbondur@classicmodelcars.com','4','pdftest.pdf','Sale Manager (EMEA)'),(1143,'Bow','Anthony','x5428','abow@classicmodelcars.com','1','','Sales Manager (NA)'),(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1','','Sales Rep'),(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1','','Sales Rep'),(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2','test-2.pdf','Sales Rep'),(1216,'Patterson','Steve','x4334','spatterson@classicmodelcars.com','2','','Sales Rep'),(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3','','Sales Rep'),(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3','','Sales Rep'),(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com','4','','Sales Rep'),(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com','4','','Sales Rep'),(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com','4','','Sales Rep'),(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com','7','','Sales Rep'),(1504,'Jones','Barry','x102','bjones@classicmodelcars.com','7','','Sales Rep'),(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com','6','','Sales Rep'),(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com','6','','Sales Rep'),(1619,'King','Tom','x103','tking@classicmodelcars.com','6','','Sales Rep'),(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com','5','','Sales Rep'),(1625,'Kato','Yoshimi','x102','ykato@classicmodelcars.com','5','','Sales Rep'),(1702,'Gerard','Martin','x2312','mgerard@classicmodelcars.com','4','','Sales Rep');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `last_login` varchar(10) NOT NULL,
  `avatar` varchar(250) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'rafaelpalau','passwordTest','rafaelpalau@gmail.com','2014-05-23','none');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'calls'
--

--
-- Dumping routines for database 'calls'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-25 22:17:48
