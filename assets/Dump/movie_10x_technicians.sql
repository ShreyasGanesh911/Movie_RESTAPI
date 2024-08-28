-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movie_10x
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
-- Table structure for table `technicians`
--

DROP TABLE IF EXISTS `technicians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technicians` (
  `TechID` int NOT NULL,
  `First_name` varchar(30) NOT NULL,
  `Last_name` varchar(30) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`TechID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technicians`
--

LOCK TABLES `technicians` WRITE;
/*!40000 ALTER TABLE `technicians` DISABLE KEYS */;
INSERT INTO `technicians` VALUES (301,'Roger','Deakins','1949-05-24'),(302,'Emmanuel','Lubezki','1964-12-19'),(303,'Haskell','Wexler','1922-02-06'),(304,'Walt','Huth','1960-03-15'),(305,'Janusz','Kamiński','1959-08-27'),(306,'Ed','Lutnick','1967-11-30'),(307,'Satyajit','Ray','1921-05-02'),(308,'John','Williams','1932-02-08'),(309,'Hans','Zimmer','1957-09-12'),(310,'Ravi','Shankar','1920-04-07'),(311,'Walter','Murch','1943-07-12'),(312,'Michael','Kahn','1935-12-08'),(313,'Lloyd','Kraft','1966-09-19'),(314,'Gordon','Willis','1931-11-28'),(315,'K.K.','Senthil','1960-02-14'),(316,'Bob','Fosse','1927-06-23'),(317,'George','Jenkins','1955-07-21'),(318,'Vikram','Bhatt','1969-01-27'),(319,'Paul','Thomas','1958-06-26'),(320,'Raja','Sivakumar','1944-09-18');
/*!40000 ALTER TABLE `technicians` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-28 13:55:48
