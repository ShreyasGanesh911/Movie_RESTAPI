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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `MovieID` int NOT NULL,
  `RatingID` int DEFAULT NULL,
  `Movie_title` varchar(50) DEFAULT NULL,
  `Release_date` date NOT NULL,
  `OverView` varchar(300) NOT NULL,
  `DirID` int NOT NULL,
  PRIMARY KEY (`MovieID`),
  KEY `RatingID` (`RatingID`),
  KEY `DirID` (`DirID`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`RatingID`) REFERENCES `ratings` (`RatingID`) ON UPDATE CASCADE,
  CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`DirID`) REFERENCES `director` (`DirID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (501,1,'Sholay','1975-08-15','Two criminals are hired by a retired police officer to bring down a notorious bandit leader.',204),(502,2,'Dilwale Dulhania Le Jayenge','1995-10-20','A young couple fall in love during a trip to Europe but face obstacles from their families.',201),(503,3,'Lagaan','2001-06-15','Villagers challenge British colonizers to a game of cricket to avoid paying taxes.',202),(504,4,'3 Idiots','2009-12-25','Three friends embark on a quest to find their missing college friend and reflect on their time at university.',203),(505,5,'Bajrangi Bhaijaan','2015-07-17','A devout Hanuman devotee helps a mute Pakistani girl return to her homeland.',203),(506,6,'Dangal','2016-12-23','A former wrestler trains his daughters to become world-class wrestlers.',201),(507,7,'Kabhi Khushi Kabhie Gham','2001-12-14','A wealthy family is torn apart when the eldest son marries a woman from a lower socio-economic background.',201),(508,8,'Mughal-e-Azam','1960-08-05','A timeless epic about the love affair between Prince Salim and the courtesan Anarkali.',204),(509,9,'Piku','2015-05-08','A woman tries to balance her professional life with caring for her aging father who has a chronic condition.',218),(510,10,'Queen','2013-03-07','A young woman embarks on a solo honeymoon trip to Europe after her fiancé calls off their wedding.',211),(511,11,'Andhadhun','2018-10-05','A blind pianist becomes entangled in a series of mysterious deaths and crimes.',220),(512,12,'Barfi!','2012-09-14','A charming but mute man has a complex love triangle involving two women with different challenges.',219),(513,13,'Swades','2004-12-17','An NRI returns to India and works to improve the lives of the villagers in his ancestral home.',216),(514,14,'Taare Zameen Par','2007-12-21','A dyslexic child struggles in school until an empathetic teacher helps him discover his true potential.',211),(515,15,'Drishyam','2013-12-19','A man goes to great lengths to protect his family from the law after an incident involving his daughter.',204),(516,1,'Zindagi Na Milegi Dobara','2011-07-15','Three friends reunite for a road trip in Spain and rediscover themselves along the way.',210),(517,2,'Kuch Kuch Hota Hai','1998-10-16','A widower’s young daughter tries to bring him and his best friend together, discovering love in the process.',213),(518,3,'Jab We Met','2007-10-26','A chance meeting between two people on a train leads to an unexpected and transformative journey.',209),(519,9,'Gully Boy','2019-02-14','An aspiring rapper from Mumbai’s slums rises to fame while navigating challenges in his personal life.',212),(520,4,'Chakde! India','2007-08-10','A former hockey player coaches the Indian women’s hockey team to victory in the World Cup.',205),(521,5,'Sultan','2016-07-06','A wrestler’s journey from rural India to the international stage, including personal and professional challenges.',217),(522,6,'Dabangg','2010-09-10','A fearless police officer takes on corruption and crime while navigating personal dilemmas.',202),(523,7,'Kahaani','2012-03-09','A pregnant woman searches for her missing husband in Kolkata, uncovering unexpected secrets.',209),(524,8,'Bajrangi Bhaijaan','2015-07-17','A devout Hanuman devotee helps a mute Pakistani girl return to her homeland.',204),(525,10,'Gully Boy','2019-02-14','An aspiring rapper from Mumbai’s slums rises to fame while navigating challenges in his personal life.',217),(526,11,'Badhaai Ho','2018-10-18','A middle-aged couple’s surprise pregnancy causes upheaval in their family’s lives.',215),(527,12,'Koi... Mil Gaya','2003-08-08','A developmentally challenged young man befriends an extraterrestrial being and helps him return home.',211),(528,13,'Paan Singh Tomar','2012-03-02','The true story of a national steeplechase champion who becomes a notorious bandit.',204),(529,14,'Shree 420','1955-12-01','A young man arrives in Mumbai with dreams of becoming rich, only to find himself caught in a web of deceit.',204),(530,15,'Maine Pyar Kiya','1989-12-29','A classic love story where two young people overcome family opposition to be together.',205),(531,16,'Hera Pheri','2000-03-31','Three hapless individuals get involved in a kidnapping and ransom scheme, leading to comedic situations.',209),(532,17,'Pati Patni Aur Woh','1978-12-09','A comedy about a man’s extramarital affair and its impact on his marriage and personal life.',204),(533,18,'Chupke Chupke','1975-12-11','A comedic caper about a couple who play a prank on their family using an elaborate hoax.',211),(534,19,'Jo Jeeta Wohi Sikandar','1992-05-22','A young man competes in a school competition to win back his love and restore his family’s honor.',220),(535,20,'Mardaani','2014-08-22','A tough cop takes on a dangerous human trafficking syndicate to save a young girl.',219),(536,9,'Chakde! India','2007-08-10','A former hockey player coaches the Indian women’s hockey team to victory in the World Cup.',207),(537,17,'Devdas','2002-07-12','The tragic love story of a man whose life spirals out of control after losing the woman he loves.',215),(538,18,'Om Shanti Om','2007-11-09','A reincarnation drama about a junior artist who seeks revenge against those who wronged him in his previous life.',216),(539,9,'Jab Tak Hai Jaan','2012-11-13','A love triangle unfolds involving a war hero, his lover, and a woman he meets years later.',217),(540,10,'Bajrangi Bhaijaan','2015-07-17','A devout Hanuman devotee helps a mute Pakistani girl return to her homeland.',218),(609,NULL,'Some title here','2024-04-24','Some over here',203),(691,NULL,'TEST','2003-04-24','Some data here',201),(699,NULL,'Some title here','2024-04-24','Some over here',203),(6991,NULL,'Far from bank title here','2024-04-24','Try movie style',203);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
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
