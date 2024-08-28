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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `ActorID` int NOT NULL,
  `First_name` varchar(30) DEFAULT NULL,
  `Last_name` varchar(30) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`ActorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (101,'Amitabh','Bachchan','1942-10-11'),(102,'Shah Rukh','Khan','1965-11-02'),(103,'Deepika','Padukone','1986-01-05'),(104,'Rajinikanth','Chandrashekar','1950-12-12'),(105,'Priyanka','Chopra','1982-07-18'),(106,'Kamal','Haasan','1954-11-07'),(107,'Hrithik','Roshan','1974-01-10'),(108,'Kareena','Kapoor','1980-09-21'),(109,'Ranbir','Kapoor','1982-09-28'),(110,'Alia','Bhatt','1993-03-15'),(111,'Salman','Khan','1965-12-27'),(112,'Akshay','Kumar','1967-09-09'),(113,'Sridevi','Kapoor','1963-08-13'),(114,'Juhi','Chawla','1967-11-13'),(115,'Madhuri','Dixit','1967-05-15'),(116,'Naseeruddin','Shah','1949-07-20'),(117,'Manoj','Bajpayee','1969-04-23'),(118,'Tabu','Hashmi','1971-11-04'),(119,'Irrfan','Khan','1967-01-07'),(120,'Vidya','Balan','1978-01-01'),(121,'Anushka','Sharma','1988-05-01'),(122,'Ranveer','Singh','1985-07-06'),(123,'Sonam','Kapoor','1985-06-09'),(124,'Arjun','Kapoor','1985-06-26'),(125,'Rani','Mukerji','1978-03-21'),(126,'John','Abraham','1972-12-17'),(127,'Bipasha','Basu','1979-01-07'),(128,'Huma','Qureshi','1986-07-28'),(129,'Shilpa','Shetty','1975-06-08'),(130,'Jacqueline','Fernandez','1985-08-11');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
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
