CREATE DATABASE  IF NOT EXISTS `Devoy15201361` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Devoy15201361`;
-- MySQL dump 10.13  Distrib 5.6.24, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: Devoy15201361
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `Candidate`
--

DROP TABLE IF EXISTS `Candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate` (
  `CandidateID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Telephone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CandidateID`)
) ENGINE=InnoDB AUTO_INCREMENT=1017 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate`
--

LOCK TABLES `Candidate` WRITE;
/*!40000 ALTER TABLE `Candidate` DISABLE KEYS */;
INSERT INTO `Candidate` VALUES (1001,'David','Boyle','Lucan, Dublin','016287146'),(1002,'Peter','McCarthy','Leixlip, Kildare','015674328'),(1003,'Eoghan','Reagan','Swords, Dublin','016439876'),(1004,'Paul','James','Dingle, Kerry','09445786'),(1005,'Cathy','Dillon','Dundalk, Louth','065345782'),(1006,'Ffion','Edwards','Sligo Town, Sligo','098327654'),(1007,'Catherine','O\'Dowd','Bundoran, Donegal','065234322'),(1008,'Tony','Mannion','Ballyshannon, Leitrim','075437333'),(1009,'Ciara','Davis','Trim, Meath','054367442'),(1010,'Conchita','Guillermo',NULL,NULL),(1011,'David','Dunne','Clontarf, Dublin','0872233324'),(1012,'Caoimhe','Carroll','Glasnevin, Dublin',NULL),(1013,'Thomas','McCabe','Trim, Meath',NULL),(1014,'John','Dunnion','Belfield, Dublin','0876535678'),(1015,'Claire','Mannion','Ballygawley, Sligo','016287325'),(1016,'Daithi','Burke','Drumcondra, Dublin','0856543331');
/*!40000 ALTER TABLE `Candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CandidatewithSkills`
--

DROP TABLE IF EXISTS `CandidatewithSkills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidatewithSkills` (
  `CandidateID` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL,
  PRIMARY KEY (`CandidateID`,`SkillID`),
  KEY `SkillsFK_idx` (`SkillID`),
  CONSTRAINT `CandidatesFK` FOREIGN KEY (`CandidateID`) REFERENCES `Candidate` (`CandidateID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SkillsFK` FOREIGN KEY (`SkillID`) REFERENCES `Skills` (`SkillID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CandidatewithSkills`
--

LOCK TABLES `CandidatewithSkills` WRITE;
/*!40000 ALTER TABLE `CandidatewithSkills` DISABLE KEYS */;
INSERT INTO `CandidatewithSkills` VALUES (1001,100),(1002,100),(1003,100),(1004,100),(1005,100),(1007,100),(1009,100),(1013,100),(1001,101),(1004,101),(1007,101),(1010,101),(1011,101),(1012,101),(1014,101),(1001,102),(1006,102),(1004,103),(1006,103),(1008,103),(1011,103),(1013,103),(1001,104),(1006,104),(1009,104),(1012,104),(1004,105),(1013,105),(1001,106),(1002,106),(1003,106),(1007,106),(1008,106),(1010,106),(1011,106),(1012,106),(1013,106),(1004,107),(1008,107),(1016,107),(1001,108),(1007,108),(1013,108),(1001,109),(1002,109),(1003,109),(1004,109),(1005,109),(1006,109),(1007,109),(1008,109),(1009,109),(1010,109),(1011,109),(1012,109),(1013,109),(1015,109),(1003,110),(1007,110),(1014,111),(1015,111);
/*!40000 ALTER TABLE `CandidatewithSkills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `CompanyID` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(45) NOT NULL,
  `RefPersonName` varchar(45) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Telephone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CompanyID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (1,'Aeon Solutions','Bob','Blanchardstown, Dublin','016548976'),(2,'Microsoft','Dennis','Sandyford, Dublin','016548966'),(3,'IBM','Yuri','Mullhuddard, Dublin','015674377'),(4,'Facebook','Gordon','Docklands, Dublin','016329876'),(5,'Google','Vivian','IFSC, Dublin','016997436'),(6,'Apple','Donald','Industrial Center, Cork','097564443'),(7,'Dynamic Technologies','David','IFSC, Dublin','0876543857'),(8,'CartoDB','Jaochin','Athlone, Westmeath','054678553'),(9,'Mapbox','Liz','City Center, Dublin','016345687'),(10,'Marstel-Day','Meera','Lucan, Dublin','016219549'),(11,'Hewlett Packard','Rob','Leixlip, Kildare','014569322'),(12,'Yahoo','Johnny','Bagnelstown, Dublin','098765435');
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hired`
--

DROP TABLE IF EXISTS `Hired`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hired` (
  `CandidateID` int(11) NOT NULL,
  `PositionID` int(11) NOT NULL,
  PRIMARY KEY (`CandidateID`,`PositionID`),
  UNIQUE KEY `CandidateID_UNIQUE` (`CandidateID`),
  KEY `PositFK_idx` (`PositionID`),
  CONSTRAINT `CandFK` FOREIGN KEY (`CandidateID`) REFERENCES `Candidate` (`CandidateID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PositFK` FOREIGN KEY (`PositionID`) REFERENCES `Positions` (`PositionID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hired`
--

LOCK TABLES `Hired` WRITE;
/*!40000 ALTER TABLE `Hired` DISABLE KEYS */;
INSERT INTO `Hired` VALUES (1001,4),(1002,6),(1003,4),(1004,14),(1005,1),(1007,5),(1008,9),(1009,3),(1010,7),(1012,12),(1013,8),(1016,16);
/*!40000 ALTER TABLE `Hired` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interview`
--

DROP TABLE IF EXISTS `Interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Interview` (
  `InterviewID` int(11) NOT NULL AUTO_INCREMENT,
  `CandidateID` int(11) NOT NULL,
  `PositionID` int(11) NOT NULL,
  `InterviewDate` date NOT NULL,
  `Outcome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`InterviewID`),
  KEY `Candidate_idx` (`CandidateID`),
  KEY `PositionFK_idx` (`PositionID`),
  CONSTRAINT `CandidateFK` FOREIGN KEY (`CandidateID`) REFERENCES `Candidate` (`CandidateID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PositionFK` FOREIGN KEY (`PositionID`) REFERENCES `Positions` (`PositionID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interview`
--

LOCK TABLES `Interview` WRITE;
/*!40000 ALTER TABLE `Interview` DISABLE KEYS */;
INSERT INTO `Interview` VALUES (101,1001,2,'2015-11-20','Fail'),(102,1004,1,'2015-10-01','Success'),(103,1007,1,'2015-10-02','Fail'),(104,1010,2,'2015-11-20','Offer'),(105,1002,3,'2015-11-24','Fail'),(106,1009,3,'2015-11-24','Offer'),(133,1007,5,'2015-12-09','Success'),(154,1001,4,'2015-12-12','Success'),(188,1001,4,'2015-12-20','Offer'),(189,1004,1,'2015-12-20','Offer'),(190,1004,14,'2015-12-24','Offer'),(191,1007,5,'2015-12-27','Offer'),(192,1009,9,'2015-12-19','Fail'),(193,1006,9,'2015-12-12','Success'),(194,1006,9,'2015-12-27','Offer'),(195,1002,6,'2016-01-01','Offer'),(196,1010,7,'2016-01-01','Offer'),(197,1013,8,'2015-01-19','Offer'),(198,1008,9,'2015-01-11','Offer'),(199,1005,1,'2015-01-15','Offer'),(200,1012,12,'2015-01-20','Offer'),(201,1016,16,'2016-02-12','Offer');
/*!40000 ALTER TABLE `Interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Positions`
--

DROP TABLE IF EXISTS `Positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Positions` (
  `PositionID` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyID` int(11) NOT NULL,
  `TypeofPosition` varchar(45) NOT NULL,
  PRIMARY KEY (`PositionID`),
  KEY `CompKey_idx` (`CompanyID`),
  CONSTRAINT `CompKey` FOREIGN KEY (`CompanyID`) REFERENCES `Company` (`CompanyID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Positions`
--

LOCK TABLES `Positions` WRITE;
/*!40000 ALTER TABLE `Positions` DISABLE KEYS */;
INSERT INTO `Positions` VALUES (1,1,'Manager'),(2,2,'IT Technician'),(3,2,'Technical Manager'),(4,2,'Executive'),(5,3,'Programmer'),(6,3,'Manager'),(7,4,'Database Administrator'),(8,5,'Marketing Executive'),(9,5,'Web Developer'),(10,5,'Intern'),(11,6,'Manager'),(12,6,'IT Technician'),(13,1,'Regional Manager'),(14,7,'Programmer'),(15,8,'Analyst'),(16,9,'Web Designer'),(17,10,'Technician'),(18,1,'Intern'),(19,12,'Web Developer'),(20,6,'Materials Technician'),(21,12,'Web Developer');
/*!40000 ALTER TABLE `Positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PositionwithSkills`
--

DROP TABLE IF EXISTS `PositionwithSkills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PositionwithSkills` (
  `PositionID` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL,
  PRIMARY KEY (`PositionID`,`SkillID`),
  KEY `SkillsID_idx` (`SkillID`),
  CONSTRAINT `PositionFKey` FOREIGN KEY (`PositionID`) REFERENCES `Positions` (`PositionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SkillFK` FOREIGN KEY (`SkillID`) REFERENCES `Skills` (`SkillID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PositionwithSkills`
--

LOCK TABLES `PositionwithSkills` WRITE;
/*!40000 ALTER TABLE `PositionwithSkills` DISABLE KEYS */;
INSERT INTO `PositionwithSkills` VALUES (1,100),(2,100),(3,100),(4,100),(6,100),(8,100),(11,100),(13,100),(2,101),(3,101),(5,101),(6,101),(7,101),(9,101),(10,101),(12,101),(14,101),(16,101),(17,101),(2,102),(3,102),(5,102),(7,102),(12,102),(7,103),(10,103),(13,103),(15,103),(1,104),(3,104),(4,104),(6,104),(11,104),(13,104),(4,105),(6,105),(13,105),(15,105),(14,106),(17,106),(9,107),(16,107),(19,107),(5,108),(9,108),(14,108),(16,108),(19,108),(8,109),(10,109),(17,109),(1,110),(4,110),(8,110),(11,110),(15,110),(18,111);
/*!40000 ALTER TABLE `PositionwithSkills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Skills`
--

DROP TABLE IF EXISTS `Skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Skills` (
  `SkillID` int(11) NOT NULL AUTO_INCREMENT,
  `SkillName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SkillID`),
  UNIQUE KEY `SkillName_UNIQUE` (`SkillName`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skills`
--

LOCK TABLES `Skills` WRITE;
/*!40000 ALTER TABLE `Skills` DISABLE KEYS */;
INSERT INTO `Skills` VALUES (100,'Administrative'),(103,'Analysis'),(106,'Applications'),(112,'Bar Tending'),(102,'Databases'),(111,'Knitting'),(104,'Management'),(101,'Programming'),(110,'Qualitative Analysis'),(113,'Quantitative Analysis'),(105,'Technical Writing'),(107,'Web Design'),(108,'Web Development'),(109,'Word Processing');
/*!40000 ALTER TABLE `Skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Devoy15201361'
--

--
-- Dumping routines for database 'Devoy15201361'
--
/*!50003 DROP PROCEDURE IF EXISTS `Candidates_Interviewed_atleast_Twice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Candidates_Interviewed_atleast_Twice`()
BEGIN
select C.CandidateID, C.FirstName, C.LastName
from Candidate C, Interview I
where I.CandidateID = C.CandidateID 
group by I.CandidateID
having count(*) > 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Candidates_with_a_given_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Candidates_with_a_given_ID`(IN `Enter a Candidate ID (XXXX)` INT(11))
BEGIN
SELECT *
FROM Candidate
WHERE CandidateID =  `Enter a Candidate ID (XXXX)`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Candidates_with_a_given_Name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Candidates_with_a_given_Name`(IN `Enter Candidates First Name` VARCHAR(45))
BEGIN
SELECT *
FROM Candidate
WHERE FirstName = `Enter Candidates First Name`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Candidate_with_Skill_required_by_Position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Candidate_with_Skill_required_by_Position`(IN `Enter a Position ID` INT(11))
BEGIN
select distinct(C.CandidateID), C.FirstName, C.LastName
from Candidate C JOIN CandidatewithSkills CwS on C.CandidateID = CwS.CandidateID JOIN PositionwithSkills PwS on CwS.SkillID = PwS.SkillID
where PwS.PositionID = `Enter a Position ID`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Companies_with_a_given_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Companies_with_a_given_ID`(IN `Enter Company ID` INT(11))
BEGIN
SELECT *
FROM Company
WHERE CompanyID = `Enter Company ID`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Companies_with_a_given_Name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Companies_with_a_given_Name`(IN `Enter Company Name` VARCHAR(45))
BEGIN
SELECT *
FROM Company
WHERE CompanyName = `Enter Company Name`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Interview_that_occurred_on_Date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Interview_that_occurred_on_Date`(IN `Enter a Date (YYYY-MM-DD)` DATE)
BEGIN
select *
from Interview
where InterviewDate = `Enter a Date (YYYY-MM-DD)`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `New_Candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `New_Candidate`(IN `Enter First Name` VARCHAR(45), IN `Enter Last Name` VARCHAR(45), IN `Enter Address` VARCHAR(45), IN `Enter Telephone Number` VARCHAR(45))
BEGIN
INSERT INTO Candidate(FirstName, LastName, Address, Telephone)
VALUES(`Enter First Name`, `Enter Last Name`, `Enter Address`, `Enter Telephone Number`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `New_CandidatewithSkills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `New_CandidatewithSkills`(IN `Enter Candidate ID` INT(11), IN `Enter Skill ID` INT(11))
BEGIN
INSERT INTO CandidatewithSkills(CandidateID, SkillID)
VALUES(`Enter Candidate ID`, `Enter Skill ID`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `New_Company` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `New_Company`(IN `Enter Company Name` VARCHAR(45), IN `Enter Reference Person Name` VARCHAR(45), IN `Enter Address` VARCHAR(45), IN `Enter Telephone` VARCHAR(45))
BEGIN
INSERT INTO Company(CompanyName, RefPersonName, Address, Telephone)
VALUES(`Enter Company Name`, `Enter Reference Person Name`, `Enter Address`, `Enter Telephone`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `New_Hire` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `New_Hire`(IN `Enter Candidate ID` INT(11), IN `Enter Position ID` INT(11))
BEGIN
INSERT INTO Hired(CandidateID, PositionID)
VALUES(`Enter Candidate ID`, `Enter Position ID`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `New_Interview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `New_Interview`(IN `Enter Candidate ID` INT(11), IN `Enter Position ID` INT(11), IN `Enter Interview Date (YYYY-MM-DD)` DATE, IN `Enter Outcome` VARCHAR(45))
BEGIN
INSERT INTO Interview(CandidateID, PositionID, InterviewDate, Outcome)
VALUES(`Enter Candidate ID`, `Enter Position ID`, `Enter Interview Date (YYYY-MM-DD)`, `Enter Outcome`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `New_Position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `New_Position`(IN `Enter Company ID` INT(11), IN `Enter Type of Position` VARCHAR(45))
BEGIN
INSERT INTO Positions(CompanyID, TypeofPosition)
VALUES (`Enter Company ID`, `Enter Type of Position`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `New_PositionwithSkills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `New_PositionwithSkills`(IN `Enter Position ID` INT(11), IN `Enter Skill ID` INT(11))
BEGIN
INSERT INTO PositionwithSkills(PositionID, SkillID)
VALUES(`Enter Position ID`, `Enter Skill ID`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `New_Skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `New_Skill`(IN `Enter Skill Name` VARCHAR(45))
BEGIN
INSERT INTO Skills(SkillName)
VALUES(`Enter Skill Name`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Number_of_Positions_requiring_Administrative_Skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Number_of_Positions_requiring_Administrative_Skill`()
BEGIN
SELECT count(*) as 'No. of Positions requiring Administrative skill'
FROM Positions P JOIN PositionwithSkills PwS on P.PositionID = PwS.PositionID JOIN Skills S on PwS.SkillID = S.SkillID
WHERE S.SkillName = 'Administrative';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Position_requiring_a_given_Skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Position_requiring_a_given_Skill`(IN `Enter a Skill` VARCHAR(45))
BEGIN
SELECT P.PositionID, P.TypeofPosition, C.CompanyName
FROM Company C JOIN Positions P on C.CompanyID = P.CompanyID JOIN PositionwithSkills PwS on P.PositionID = PwS.PositionID JOIN Skills S on PwS.SkillID = S.SkillID
WHERE S.SkillName = `Enter a Skill`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Position_with_a_given_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Position_with_a_given_ID`(IN `Enter a Position ID` INT(11))
BEGIN
select P.PositionID, P.TypeofPosition, C.CompanyName
from Positions P JOIN Company C on P.CompanyID = C.CompanyID
where PositionID = `Enter a Position ID`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Remove_Hire` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Remove_Hire`(IN `Enter Candidate ID` INT(11))
BEGIN
DELETE FROM Hired
WHERE CandidateID = `Enter Candidate ID`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sort_Positions_by_Companies_Offering` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sort_Positions_by_Companies_Offering`()
BEGIN
SELECT P.TypeofPosition, C.CompanyName 
FROM Positions P JOIN Company C on P.CompanyID = C.CompanyID
ORDER BY C.CompanyName ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-16 10:01:53
