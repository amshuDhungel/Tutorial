-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: tech_academy
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `courseID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `instructor` int(11) DEFAULT NULL,
  PRIMARY KEY (`courseID`),
  KEY `instructor` (`instructor`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`instructor`) REFERENCES `instructors` (`instructorID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Intro to IS','2022-01-24','2022-06-24',10000,1),(2,'Programming','2018-01-24','2018-06-24',12000,2),(3,'Network and  OS','2022-01-10','2022-04-10',8000,3),(4,'Basics of UNIX','2022-01-24','2023-01-24',15000,4),(5,'Programming Techniques','2021-03-24','2021-09-24',18000,5),(6,'Database','2022-01-24','2022-06-24',5000,3);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollments` (
  `enrollmentID` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) DEFAULT NULL,
  `student` int(11) DEFAULT NULL,
  `paid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`enrollmentID`),
  KEY `course` (`course`),
  KEY `student` (`student`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`course`) REFERENCES `courses` (`courseID`),
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`student`) REFERENCES `students` (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,1,1,'yes'),(2,1,2,'no'),(3,1,3,'yes'),(4,2,4,'yes'),(5,2,5,'yes'),(6,2,6,'yes'),(7,3,1,'no'),(8,3,2,'yes'),(9,3,7,'no'),(10,4,4,'yes'),(11,4,3,'yes'),(12,4,8,'no'),(13,5,1,'yes'),(14,5,2,'yes'),(15,5,4,'no'),(16,6,7,'no'),(17,6,8,'yes'),(18,6,4,'no');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructors` (
  `instructorID` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`instructorID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (1,'Ravi','Shankar','Tutor'),(2,'Priya','Rai','Lecturer'),(3,'Lis','Anand','Lecturer'),(4,'Shanti','Saxena','Tutor'),(5,'J K','Sharma','Tutor');
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `studentID` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `dateJoined` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Sophia','Jackson','2021-05-09','Dharan'),(2,'Emma','Aiden','2020-05-09','Itahari'),(3,'Olivia','Lucas','2022-01-01','Dulari'),(4,'Ava','Liam','2019-09-09','Dhankuta'),(5,'Mina','Noah','2021-12-13','Bhedetar'),(6,'Nicol','Green','2020-11-13','Hile'),(7,'Tom','Taylor','2021-10-09','Damak'),(8,'Lucy','White','2022-01-20','Duhabi');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-24 13:59:22
