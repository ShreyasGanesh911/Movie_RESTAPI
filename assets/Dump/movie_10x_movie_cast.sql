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
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_cast` (
  `MovieID` int NOT NULL,
  `ActorID` int NOT NULL,
  `Role` varchar(20) NOT NULL,
  PRIMARY KEY (`MovieID`,`ActorID`),
  KEY `ActorID` (`ActorID`),
  CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`) ON UPDATE CASCADE,
  CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`ActorID`) REFERENCES `actor` (`ActorID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_cast`
--

LOCK TABLES `movie_cast` WRITE;
/*!40000 ALTER TABLE `movie_cast` DISABLE KEYS */;
INSERT INTO `movie_cast` VALUES (501,101,'Jai'),(501,102,'Veeru'),(502,103,'Raj'),(502,104,'Simran'),(503,105,'Bhuvan'),(503,106,'Elizabeth'),(504,107,'Rancho'),(504,108,'Raju'),(505,109,'Pavan'),(505,110,'Munni'),(506,111,'Mahavir'),(506,112,'Geeta'),(507,113,'Yashwardhan'),(507,114,'Naina'),(508,115,'Salim'),(508,116,'Anarkali'),(509,117,'Bauji'),(509,118,'Piku'),(510,119,'Rani Mehra'),(510,120,'Vikram'),(511,121,'Aakash'),(511,122,'Simi'),(512,123,'Barfi'),(512,124,'Jhilmil'),(513,125,'Mohan'),(513,126,'Gita'),(514,127,'Ishaan'),(514,128,'Ram Shankar'),(515,129,'Raghavan'),(515,130,'Geetha'),(516,101,'Imraan'),(516,102,'Arjun'),(517,103,'Rahul'),(517,104,'Tina'),(518,105,'Aditya'),(518,106,'Geet'),(519,107,'Murad'),(519,108,'Safeena'),(520,109,'Kabir Khan'),(520,110,'Vidya'),(521,111,'Sultan'),(521,112,'Arfa'),(522,113,'Chulbul Pandey'),(522,114,'Rajo'),(523,115,'Vidya Bagchi'),(523,116,'Mohan'),(524,117,'Pavan'),(524,118,'Munni'),(525,119,'Murad'),(525,120,'Safeena'),(526,121,'Jeet'),(526,122,'Priyamvada'),(527,123,'Rohit'),(527,124,'Jadoo'),(528,125,'Paan Singh Tomar'),(528,126,'Chambal'),(529,127,'Ravi'),(529,128,'Malini'),(530,129,'Prem'),(530,130,'Suman'),(531,101,'Raju'),(531,102,'Shyam'),(532,103,'Ravi'),(532,104,'Chandini'),(533,105,'Ravi'),(533,106,'Suman'),(534,107,'Ratan'),(534,108,'Pooja'),(535,109,'Shivani'),(535,110,'Jagan'),(536,111,'Kabir Khan'),(536,112,'Vidya Sharma'),(537,113,'Devdas'),(537,114,'Paro'),(538,115,'Om'),(539,116,'Om'),(539,117,'Om'),(540,118,'Om'),(540,119,'Om');
/*!40000 ALTER TABLE `movie_cast` ENABLE KEYS */;
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
