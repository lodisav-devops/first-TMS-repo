-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: testDB
-- ------------------------------------------------------
-- Server version       8.0.31-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Table1`
--

DROP TABLE IF EXISTS `Table1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Table1` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Table1`
--

LOCK TABLES `Table1` WRITE;
/*!40000 ALTER TABLE `Table1` DISABLE KEYS */;
INSERT INTO `Table1` VALUES (1,'ecce46','OpTr6345!','eugeniy_ecce46@gmail.com'),(2,'alexgus','gsY3jkk81_jdk','guskov_poland@yandex.ru'),(3,'guran_alex','LndPs91JnD538','guranchik.alex@21vek.by'),(4,'shamanalex','lslld92719HS','alexshaman@mail.ru'),(5,'rom_odin','lz,slds,d555','roman_odin13@ops.gov.by'),(6,'lod_tema','NaYDl;a23OO*jask','lodis.art@test.com');
/*!40000 ALTER TABLE `Table1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Table2`
--

DROP TABLE IF EXISTS `Table2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Table2` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Age` tinyint unsigned NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Table2`
--

LOCK TABLES `Table2` WRITE;
/*!40000 ALTER TABLE `Table2` DISABLE KEYS */;
INSERT INTO `Table2` VALUES (1,'roman_odin13@ops.gov.by','Roman','Odinichenko',30),(2,'guskov_poland@yandex.ru','Alexey','Guskov',35),(3,'lodis.art@test.com','Artyom','Lodis',30),(4,'guranchik.alex@21vek.by','Alexey','Guranchik',38),(5,'eugeniy_ecce46@gmail.com','Evgeniy','Bondar',39),(6,'alexshaman@mail.ru','Alex','Shamanov',24);
/*!40000 ALTER TABLE `Table2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04 12:39:56
