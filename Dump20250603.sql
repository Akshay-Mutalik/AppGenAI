CREATE DATABASE  IF NOT EXISTS `prompt_framework_new` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `prompt_framework_new`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: prompt_framework_new
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `command` (
  `commandID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`commandID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command`
--

LOCK TABLES `command` WRITE;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
INSERT INTO `command` VALUES ('Empty','Empty',' '),('Test case','Test case generation','Generate test cases ');
/*!40000 ALTER TABLE `command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_items`
--

DROP TABLE IF EXISTS `configuration_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_items` (
  `command` varchar(30) DEFAULT NULL,
  `contextfilter` varchar(30) DEFAULT NULL,
  `inputfilter` varchar(30) DEFAULT NULL,
  `llm` varchar(30) DEFAULT NULL,
  `outputfilter` varchar(30) DEFAULT NULL,
  `outputformat` varchar(30) DEFAULT NULL,
  `outputquality` varchar(30) DEFAULT NULL,
  `outputstructure` varchar(30) DEFAULT NULL,
  `project` varchar(30) DEFAULT NULL,
  `promptinstance` varchar(30) DEFAULT NULL,
  `recipe` varchar(30) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  `targetaudience` varchar(30) DEFAULT NULL,
  `topic` varchar(30) DEFAULT NULL,
  `usecase` varchar(30) DEFAULT NULL,
  `usecasecategory` varchar(30) DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  `userprompts` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_items`
--

LOCK TABLES `configuration_items` WRITE;
/*!40000 ALTER TABLE `configuration_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `context`
--

DROP TABLE IF EXISTS `context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `context` (
  `contextID` varchar(30) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`contextID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `context`
--

LOCK TABLES `context` WRITE;
/*!40000 ALTER TABLE `context` DISABLE KEYS */;
INSERT INTO `context` VALUES ('1','text','empty');
/*!40000 ALTER TABLE `context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contextfilter`
--

DROP TABLE IF EXISTS `contextfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contextfilter` (
  `contextfilterID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`contextfilterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contextfilter`
--

LOCK TABLES `contextfilter` WRITE;
/*!40000 ALTER TABLE `contextfilter` DISABLE KEYS */;
INSERT INTO `contextfilter` VALUES ('1','Empty','Empty'),('Empty','Empty',' ');
/*!40000 ALTER TABLE `contextfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inputfilter`
--

DROP TABLE IF EXISTS `inputfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inputfilter` (
  `inputfilterID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`inputfilterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inputfilter`
--

LOCK TABLES `inputfilter` WRITE;
/*!40000 ALTER TABLE `inputfilter` DISABLE KEYS */;
INSERT INTO `inputfilter` VALUES ('1','Empty','Empty'),('Empty','Empty',' ');
/*!40000 ALTER TABLE `inputfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llm`
--

DROP TABLE IF EXISTS `llm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llm` (
  `llmID` varchar(30) NOT NULL,
  `temperature` decimal(3,2) DEFAULT NULL,
  `apikey` varchar(255) DEFAULT NULL,
  `topN` int DEFAULT NULL,
  `topP` decimal(3,2) DEFAULT NULL,
  `userID` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`llmID`),
  KEY `userID` (`userID`),
  CONSTRAINT `llm_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llm`
--

LOCK TABLES `llm` WRITE;
/*!40000 ALTER TABLE `llm` DISABLE KEYS */;
INSERT INTO `llm` VALUES ('Azure OpenAI',0.80,'padnaibs',1,0.80,'Akshaya',' '),('Azure OpenAI-1',0.80,'dummy',1,0.80,'2','Description');
/*!40000 ALTER TABLE `llm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outputfilter`
--

DROP TABLE IF EXISTS `outputfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outputfilter` (
  `outputfilterID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`outputfilterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outputfilter`
--

LOCK TABLES `outputfilter` WRITE;
/*!40000 ALTER TABLE `outputfilter` DISABLE KEYS */;
INSERT INTO `outputfilter` VALUES ('1','Empty','Empty'),('Empty','Empty',' ');
/*!40000 ALTER TABLE `outputfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outputformat`
--

DROP TABLE IF EXISTS `outputformat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outputformat` (
  `outputformatID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`outputformatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outputformat`
--

LOCK TABLES `outputformat` WRITE;
/*!40000 ALTER TABLE `outputformat` DISABLE KEYS */;
INSERT INTO `outputformat` VALUES ('Empty','Empty',' '),('Excel','Hue Project Excel','in excel format, Display column names as well in output');
/*!40000 ALTER TABLE `outputformat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outputquality`
--

DROP TABLE IF EXISTS `outputquality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outputquality` (
  `outputqualityID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`outputqualityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outputquality`
--

LOCK TABLES `outputquality` WRITE;
/*!40000 ALTER TABLE `outputquality` DISABLE KEYS */;
INSERT INTO `outputquality` VALUES ('1','Excel','Generate output in single table only\nDon\'t generate any header and footer explanations'),('Empty','Empty',' ');
/*!40000 ALTER TABLE `outputquality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outputstructure`
--

DROP TABLE IF EXISTS `outputstructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outputstructure` (
  `outputstructureID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`outputstructureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outputstructure`
--

LOCK TABLES `outputstructure` WRITE;
/*!40000 ALTER TABLE `outputstructure` DISABLE KEYS */;
INSERT INTO `outputstructure` VALUES ('Empty','Empty',' '),('Excel','Excel Format','Test Case id, User Story, Test Case summary, Test Case description, Test Steps to reproduce, expected results columns in tabular format');
/*!40000 ALTER TABLE `outputstructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `projectID` varchar(30) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `text` text,
  `description` longtext,
  PRIMARY KEY (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('Constillation','Constellation Project','Constellation Project','Constellation Project'),('Hue','Hue Project','Hue Modified',NULL),('Paragon','Paragon','Paragon Project','None');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promptinstance`
--

DROP TABLE IF EXISTS `promptinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promptinstance` (
  `promptinstanceID` varchar(30) NOT NULL,
  `projectID` varchar(30) DEFAULT NULL,
  `useCaseID` varchar(30) DEFAULT NULL,
  `recipeID` varchar(30) DEFAULT NULL,
  `llmID` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`promptinstanceID`),
  UNIQUE KEY `unique_project_usecase_recipe` (`projectID`,`useCaseID`,`recipeID`),
  KEY `useCaseID` (`useCaseID`),
  KEY `recipeID` (`recipeID`),
  KEY `llmID` (`llmID`),
  CONSTRAINT `promptinstance_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `project` (`projectID`),
  CONSTRAINT `promptinstance_ibfk_2` FOREIGN KEY (`useCaseID`) REFERENCES `usecase` (`usecaseID`),
  CONSTRAINT `promptinstance_ibfk_3` FOREIGN KEY (`recipeID`) REFERENCES `recipe` (`recipeID`),
  CONSTRAINT `promptinstance_ibfk_4` FOREIGN KEY (`llmID`) REFERENCES `llm` (`llmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promptinstance`
--

LOCK TABLES `promptinstance` WRITE;
/*!40000 ALTER TABLE `promptinstance` DISABLE KEYS */;
INSERT INTO `promptinstance` VALUES ('Generic','Paragon','Generic','Empty','Azure OpenAI',' '),('Test case','Hue','Test case','Test Cases','Azure OpenAI-1','Dummy Test case Generation');
/*!40000 ALTER TABLE `promptinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `recipeID` varchar(30) NOT NULL,
  `roleID` varchar(30) DEFAULT NULL,
  `commandID` varchar(30) DEFAULT NULL,
  `topicID` varchar(30) DEFAULT NULL,
  `contextID` varchar(30) DEFAULT NULL,
  `targetaudienceID` varchar(30) DEFAULT NULL,
  `outputformatID` varchar(30) DEFAULT NULL,
  `outputstructureID` varchar(30) DEFAULT NULL,
  `outputqualityID` varchar(30) DEFAULT NULL,
  `inputfilterID` varchar(30) DEFAULT NULL,
  `outputfilterID` varchar(30) DEFAULT NULL,
  `contextfilterID` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`recipeID`),
  KEY `roleID` (`roleID`),
  KEY `commandID` (`commandID`),
  KEY `topicID` (`topicID`),
  KEY `contextID` (`contextID`),
  KEY `targetaudienceID` (`targetaudienceID`),
  KEY `outputformatID` (`outputformatID`),
  KEY `outputstructureID` (`outputstructureID`),
  KEY `outputqualityID` (`outputqualityID`),
  KEY `inputfilterID` (`inputfilterID`),
  KEY `outputfilterID` (`outputfilterID`),
  KEY `contextfilterID` (`contextfilterID`),
  CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleID`),
  CONSTRAINT `recipe_ibfk_10` FOREIGN KEY (`outputfilterID`) REFERENCES `outputfilter` (`outputfilterID`),
  CONSTRAINT `recipe_ibfk_11` FOREIGN KEY (`contextfilterID`) REFERENCES `contextfilter` (`contextfilterID`),
  CONSTRAINT `recipe_ibfk_2` FOREIGN KEY (`commandID`) REFERENCES `command` (`commandID`),
  CONSTRAINT `recipe_ibfk_3` FOREIGN KEY (`topicID`) REFERENCES `topic` (`topicID`),
  CONSTRAINT `recipe_ibfk_4` FOREIGN KEY (`contextID`) REFERENCES `contextfilter` (`contextfilterID`),
  CONSTRAINT `recipe_ibfk_5` FOREIGN KEY (`targetaudienceID`) REFERENCES `targetaudience` (`targetaudienceID`),
  CONSTRAINT `recipe_ibfk_6` FOREIGN KEY (`outputformatID`) REFERENCES `outputformat` (`outputformatID`),
  CONSTRAINT `recipe_ibfk_7` FOREIGN KEY (`outputstructureID`) REFERENCES `outputstructure` (`outputstructureID`),
  CONSTRAINT `recipe_ibfk_8` FOREIGN KEY (`outputqualityID`) REFERENCES `outputquality` (`outputqualityID`),
  CONSTRAINT `recipe_ibfk_9` FOREIGN KEY (`inputfilterID`) REFERENCES `inputfilter` (`inputfilterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES ('Empty','Empty','Empty','Empty','Empty','Empty','Empty','Empty','Empty','Empty','Empty','Empty',' '),('Test Cases','Test Engineer','Test case','Hue','1','Tester','Excel','Excel','1','1','1','1',' Test case generation');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `roleID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('Empty','Empty',' '),('Test Engineer','Tester','Tester');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targetaudience`
--

DROP TABLE IF EXISTS `targetaudience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targetaudience` (
  `targetaudienceID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`targetaudienceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targetaudience`
--

LOCK TABLES `targetaudience` WRITE;
/*!40000 ALTER TABLE `targetaudience` DISABLE KEYS */;
INSERT INTO `targetaudience` VALUES ('Empty','Empty',' '),('Tester','Hue Tester','for a testing team');
/*!40000 ALTER TABLE `targetaudience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `topicID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`topicID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES ('Empty','Empty',' '),('Hue','Hue Project','to generate test cases');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usecase`
--

DROP TABLE IF EXISTS `usecase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usecase` (
  `usecaseID` varchar(30) NOT NULL,
  `usecasecategoryID` varchar(30) DEFAULT NULL,
  `text` longtext,
  `description` longtext,
  PRIMARY KEY (`usecaseID`),
  KEY `usecasecategoryID` (`usecasecategoryID`),
  CONSTRAINT `usecase_ibfk_1` FOREIGN KEY (`usecasecategoryID`) REFERENCES `usecasecategory` (`usecasecategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usecase`
--

LOCK TABLES `usecase` WRITE;
/*!40000 ALTER TABLE `usecase` DISABLE KEYS */;
INSERT INTO `usecase` VALUES ('Generic','Generic',' ',' '),('Test case','Test case','Test case generation','Test case generation');
/*!40000 ALTER TABLE `usecase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usecasecategory`
--

DROP TABLE IF EXISTS `usecasecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usecasecategory` (
  `usecasecategoryID` varchar(30) NOT NULL,
  `usecasecategoryName` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`usecasecategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usecasecategory`
--

LOCK TABLES `usecasecategory` WRITE;
/*!40000 ALTER TABLE `usecasecategory` DISABLE KEYS */;
INSERT INTO `usecasecategory` VALUES ('Generic','Generic',' '),('Test case','Test case','Test case generation');
/*!40000 ALTER TABLE `usecasecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` varchar(30) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `projectID` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `unique_username` (`username`),
  KEY `projectID` (`projectID`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `project` (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1','admin','admin','admin',NULL,NULL),('2','bot','akshay','akshay','Hue',NULL),('Akshaya','bot','akshaya','akshaya','Paragon',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprompts`
--

DROP TABLE IF EXISTS `userprompts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userprompts` (
  `userID` varchar(30) NOT NULL,
  `promptinstanceID` varchar(30) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`userID`,`promptinstanceID`),
  KEY `promptinstanceID` (`promptinstanceID`),
  CONSTRAINT `userprompts_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  CONSTRAINT `userprompts_ibfk_2` FOREIGN KEY (`promptinstanceID`) REFERENCES `promptinstance` (`promptinstanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprompts`
--

LOCK TABLES `userprompts` WRITE;
/*!40000 ALTER TABLE `userprompts` DISABLE KEYS */;
INSERT INTO `userprompts` VALUES ('2','Test case','Test Case for Hue'),('Akshaya','Generic','Generate functional test cases for'),('Akshaya','Test case','Test case for Paragon');
/*!40000 ALTER TABLE `userprompts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-03  7:29:06
