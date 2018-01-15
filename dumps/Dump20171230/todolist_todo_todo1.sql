CREATE DATABASE  IF NOT EXISTS `todolist` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `todolist`;
-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: todolist
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `todo_todo1`
--

DROP TABLE IF EXISTS `todo_todo1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo_todo1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_todo1`
--

LOCK TABLES `todo_todo1` WRITE;
/*!40000 ALTER TABLE `todo_todo1` DISABLE KEYS */;
INSERT INTO `todo_todo1` VALUES (8,'start project','django-admin start website'),(9,'Go to project','cd website'),(10,'Start app','python startapp Todo'),(11,'change db in setting.py','DATABASES = {\r\n\'ENGINE\': \'django.db.backends.mysql\',\r\n\'NAME\': \'todolist\',\r\n\'USER\': \'root\',\r\n\'PASSWORD\': \'123\',\r\n\'HOST\':\'\',\r\n\'PORT\':\'\',\r\n}'),(12,'create superuser','python manage.py createsuperuser'),(13,'Run database','python manage.py migrate'),(14,'run server','python manage.py runserver'),(15,'create class in model','python manage.py createmigration'),(16,'create database','create database manually in mysql as same name that use in setting.py'),(17,'flow digram','manage.py > project_urls > app_views.py > (checking db in setting.py and move to templates)');
/*!40000 ALTER TABLE `todo_todo1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-30 16:37:45
