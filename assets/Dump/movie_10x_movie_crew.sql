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
-- Table structure for table `movie_crew`
--

DROP TABLE IF EXISTS `movie_crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_crew` (
  `MovieID` int NOT NULL,
  `TechID` int NOT NULL,
  `Role` varchar(20) NOT NULL,
  PRIMARY KEY (`MovieID`,`TechID`),
  KEY `TechID` (`TechID`),
  CONSTRAINT `movie_crew_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`) ON UPDATE CASCADE,
  CONSTRAINT `movie_crew_ibfk_2` FOREIGN KEY (`TechID`) REFERENCES `technicians` (`TechID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_crew`
--

LOCK TABLES `movie_crew` WRITE;
/*!40000 ALTER TABLE `movie_crew` DISABLE KEYS */;
INSERT INTO `movie_crew` VALUES (501,301,'Director'),(501,302,'Cinematographer'),(502,303,'Director'),(502,304,'Editor'),(503,305,'Director'),(503,306,'Music Director'),(504,307,'Screenwriter'),(504,308,'Producer'),(505,309,'Director'),(505,310,'Editor'),(506,311,'Director'),(506,312,'Cinematographer'),(507,313,'Director'),(507,314,'Music Director'),(508,315,'Director'),(508,316,'Costume Designer'),(509,317,'Director'),(509,318,'Editor'),(510,319,'Director'),(510,320,'Screenwriter'),(511,301,'Director'),(511,302,'Cinematographer'),(512,303,'Director'),(512,304,'Editor'),(513,305,'Director'),(513,306,'Music Director'),(514,307,'Director'),(514,308,'Cinematographer'),(515,309,'Director'),(515,310,'Editor'),(516,311,'Director'),(516,312,'Music Director'),(517,313,'Director'),(517,314,'Editor'),(518,315,'Director'),(518,316,'Music Director'),(519,317,'Director'),(519,318,'Cinematographer'),(520,319,'Director'),(520,320,'Editor'),(521,301,'Director'),(521,302,'Music Director'),(522,303,'Director'),(522,304,'Cinematographer'),(523,305,'Director'),(523,306,'Editor'),(524,307,'Director'),(524,308,'Music Director'),(525,309,'Director'),(525,310,'Editor'),(526,311,'Director'),(526,312,'Music Director'),(527,313,'Director'),(527,314,'Cinematographer'),(528,315,'Director'),(528,316,'Editor'),(529,317,'Director'),(529,318,'Music Director'),(530,319,'Director'),(530,320,'Editor'),(531,301,'Director'),(531,302,'Cinematographer'),(532,303,'Director'),(532,304,'Editor'),(533,305,'Director'),(533,306,'Cinematographer'),(534,307,'Director'),(534,308,'Music Director'),(535,309,'Director'),(535,310,'Editor'),(536,311,'Director'),(536,312,'Cinematographer'),(537,313,'Director'),(537,314,'Music Director'),(538,315,'Music Director'),(538,316,'Music Director'),(539,317,'Music Director'),(539,318,'Music Director'),(539,319,'Music Director'),(540,314,'Music Director'),(540,320,'Music Director');
/*!40000 ALTER TABLE `movie_crew` ENABLE KEYS */;
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
