-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: crueger
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buses` (
  `busId` int NOT NULL,
  `busName` varchar(40) DEFAULT NULL,
  `numberOfSeats` int DEFAULT NULL,
  `source` varchar(40) DEFAULT NULL,
  `destination` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`busId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buses`
--

LOCK TABLES `buses` WRITE;
/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
INSERT INTO `buses` VALUES (2878,'abcd',40,'1','2');
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `busId` int NOT NULL,
  `seatNumber` int DEFAULT NULL,
  `customerName` varchar(40) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  KEY `busId` (`busId`),
  CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`busId`) REFERENCES `buses` (`busId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (2878,1,'lol','Not booked'),(2878,2,'lol','Not booked'),(2878,3,'lol','Not booked'),(2878,4,'lol','Not booked'),(2878,5,'lol','Not booked'),(2878,6,'lol','Not booked'),(2878,7,'lol','Not booked'),(2878,8,'lol','Not booked'),(2878,9,'lol','Not booked'),(2878,10,'lol','Not booked'),(2878,11,'lol','Not booked'),(2878,12,'lol','Not booked'),(2878,13,'lol','Not booked'),(2878,14,'vishwanath','booked'),(2878,15,'name','booked'),(2878,16,'lol','Not booked'),(2878,17,'lol','Not booked'),(2878,18,'lol','Not booked'),(2878,19,'ravi','booked'),(2878,20,'lol','Not booked'),(2878,21,'lol','Not booked'),(2878,22,'lol','Not booked'),(2878,23,'lol','Not booked'),(2878,24,'lol','Not booked'),(2878,25,'lol','Not booked'),(2878,26,'lol','Not booked'),(2878,27,'lol','Not booked'),(2878,28,'lol','Not booked'),(2878,29,'lol','Not booked'),(2878,30,'lol','Not booked'),(2878,31,'lol','Not booked'),(2878,32,'lol','Not booked'),(2878,33,'lol','Not booked'),(2878,34,'lol','Not booked'),(2878,35,'lol','Not booked'),(2878,36,'lol','Not booked'),(2878,37,'lol','Not booked'),(2878,38,'lol','Not booked'),(2878,39,'lol','Not booked'),(2878,40,'lol','Not booked');
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('crueger','12345','vishwanath5854@gmail.com'),('vani','12345','vani@gmail.com'),('vishwanath','12345','vishwanath5854@gmail.com'),('vishwanath2878','12345','vishwanath5854@outlook.com'),('zasper','12345','incognitoboy2020@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-16 14:26:37
