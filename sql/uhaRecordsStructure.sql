-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: uha
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
-- Table structure for table `uhaRecords`
--

DROP TABLE IF EXISTS `uhaRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uhaRecords` (
  `SOURCEID` int(11) NOT NULL,
  `OBJECTID` int(11) DEFAULT NULL,
  `REPORT` int(11) DEFAULT NULL,
  `DATE` text,
  `YEAR` int(11) DEFAULT NULL,
  `Day` text,
  `MONTH` text,
  `TIME` text,
  `HOUR` int(11) DEFAULT NULL,
  `AGENCY` text,
  `COUNTY` text,
  `CITY` text,
  `ASTREET` text,
  `BSTREET` text,
  `ROUTE` text,
  `MILE` int(11) DEFAULT NULL,
  `NVEH` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `KILLED` int(11) DEFAULT NULL,
  `CLASSA` int(11) DEFAULT NULL,
  `CLASSB` int(11) DEFAULT NULL,
  `CLASSC` int(11) DEFAULT NULL,
  `UNHURT` int(11) DEFAULT NULL,
  `SEVERITY` text,
  `CLASS` text,
  `ANALYSIS` text,
  `TOPCFACC` text,
  `WEATHER` text,
  `LIGHTING` text,
  `ALCINV` text,
  `DRUGINV` text,
  `PEDINV` text,
  `MCINV` text,
  `PECINV` text,
  `TRKINV` text,
  `HZINV` text,
  `HITRUN` text,
  `SYSTEM` text,
  `ROADREL` text,
  `CHARACTER` text,
  `GRADE` text,
  `DIRECT` text,
  `UTM_X` double DEFAULT NULL,
  `UTM_Y` double DEFAULT NULL,
  `GIS_LAT` double DEFAULT NULL,
  `GIS_LONG` double DEFAULT NULL,
  KEY `SOURCEID` (`SOURCEID`),
  CONSTRAINT `uhaRecords_ibfk_1` FOREIGN KEY (`SOURCEID`) REFERENCES `dataSources` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
