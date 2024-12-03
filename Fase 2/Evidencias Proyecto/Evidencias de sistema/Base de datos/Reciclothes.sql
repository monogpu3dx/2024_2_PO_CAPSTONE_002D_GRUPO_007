CREATE DATABASE  IF NOT EXISTS "RECICLOTHES" /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `RECICLOTHES`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: servicioalochoro-prueba1631.l.aivencloud.com    Database: RECICLOTHES
-- ------------------------------------------------------
-- Server version	8.0.30

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '94980b0a-8651-11ef-ac7d-0eec40d50ebd:1-932';

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos` (
  `Id_Producto` bigint NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_Producto`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES (32,'Conjunto de niño','Conjunto de ropa de niños 1 ',2.00,10,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731337511/xs6nf3upr6ktwquukcmn.jpg','Ninos'),(33,'Camisa azul','Conjunto de ropa de niños 2',1.00,56,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731337528/hchq9wwodqped86eyd6r.jpg','Ninos'),(34,'Vestido de mujer','Conjunto de ropa de mujer 1',1.00,0,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731337810/donovtwy5p8tzxiyvzlf.jpg','Mujeres'),(35,'Camisa de mujer manga larga','Conjunto de ropa de mujer 1',1.00,10,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731337830/m4qryf7wbczia4n7h4pg.jpg','Mujeres'),(36,'Aretes','Aretes de alta calidad como los que le regale a ella :(',1.00,18,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731337993/svxvaxuzmreotfzwibam.jpg','Accesorios'),(37,'Zapatillas Deportivas','zapatillas de maipu centro',1.00,9,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731338035/rdaz4mhoxx8i3retprrf.jpg','Accesorios'),(38,'Zapatillas Deportivas','zapatillas de maipu centro 2',1.00,0,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731338087/zkkelyejy7yh8ngxqaxw.jpg','Accesorios'),(39,'Lentes','lentes de sol con polarizacion monocromatica y rayos gama',1.00,10,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731338115/gdezwahqc1owsrfj5p4h.jpg','Accesorios'),(40,'Conjunto elegante hombre','Conjunto para hombre sigma',1.00,0,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731338231/pstlou2qeogdpv2pisdk.png','Hombres'),(41,'Pantalon buso','Pantalon',1.00,10,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731338263/unb6dsggumwryztkvyjg.png','Hombres'),(42,'Camisas de hombre','Camisa de hombre para hombre',1.00,10,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731338285/xpstq8rkvnjz2ubop1hv.jpg','Hombres'),(50,'blusa mujer','holaa',1.00,0,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731424426/nbybodxwug706g5y6cjm.png','Mujeres'),(52,'Casaca','esta entera hermosa',5.00,1,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1733198976/azc39lwrfldyok5llw5b.png','Ninos'),(53,'camiseta','esta fresca',128000.00,1,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1733199112/cezwukdywloqokzroara.png','Mujeres'),(54,'pantalon','buen corte',3000.00,1,'https://res.cloudinary.com/dvyrnjwfi/image/upload/v1733199158/hnxulpzybyujhjpoor2f.png','Mujeres');
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `Id_Cliente` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `numero_casa` varchar(45) NOT NULL,
  `password_hash` text NOT NULL,
  `salt` text NOT NULL,
  PRIMARY KEY (`Id_Cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan Pérez','juan.perez@example.com','555-1234','123 Calle Falsa','','',''),(2,'María López','maria.lopez@example.com','555-5678','456 Avenida Siempre Viva','','',''),(3,'Carlos García','carlos.garcia@example.com','555-8765','789 Boulevard de los Sueños','','',''),(4,'Ana Torres','ana.torres@example.com','555-4321','321 Calle de la Luna','','',''),(5,'Luis Fernández','luis.fernandez@example.com','555-6789','654 Calle del Sol','','',''),(6,'Laura Martínez','laura.martinez@example.com','555-9876','987 Calle Estrella','','',''),(7,'Pedro Sánchez','pedro.sanchez@example.com','555-6543','654 Calle Luna','','',''),(8,'Sofía Ramírez','sofia.ramirez@example.com','555-3210','321 Calle Sol','','',''),(9,'Miguel Díaz','miguel.diaz@example.com','555-4321','432 Calle Mar','','',''),(10,'Lucía Gómez','lucia.gomez@example.com','555-5432','543 Calle Cielo','','',''),(18,'Jimena Arriagada','Jimena@admin.com','9274981274987','wpiepqiw2173981','','$2b$10$bMuZ5diozZ2LADH3z2o33.jTz2B1SX2uLoz0P.8HCUaZSwLJnYuyK','$2b$10$bMuZ5diozZ2LADH3z2o33.'),(43,'natzoclothes','ignacio.toledo.saravia6@gmail.com','984758620','quellon 1461','','$2a$10$5kfRc0NbmRXvevzz1j7Jj.t6iF6OfLxBFIrPitUG.mHyGm6iuyBWu','$2a$10$5kfRc0NbmRXvevzz1j7Jj.'),(44,'el tulon','tulita@inacap.es','959465859','el sucio poto','','$2a$10$lrRy.hJ3xu0ExUFiiwLhq.ZzxFE8syMCSpsaujAVmch8N8rl5oGEG','$2a$10$lrRy.hJ3xu0ExUFiiwLhq.'),(45,'joaquin','joaquin@kuko.cl','13131231','3123123123','','$2b$10$wzeQkAjVi2AP84PH0M5QA.sFLkrwciTj/LMbvUYwlITijdfwwAjN.','$2b$10$wzeQkAjVi2AP84PH0M5QA.'),(47,'Lucas secundaria','lucassecun@gmail.com','1281276','8912673489126','','$2a$10$63IkaJR7PPJdoR3MjEc1nOrRuaNEf4VvH76kf19UXIT/uF9IQcj2y','$2a$10$63IkaJR7PPJdoR3MjEc1nO'),(48,'nachitocompras','ignacio.toledo.saravia3@gmail.com','984758620','quellon1461','','$2a$10$W9MV/cjzFlqe8FDfLAqOheVOjjkXdCkr2KJV6tzNjRlfnHl7vV1Cm','$2a$10$W9MV/cjzFlqe8FDfLAqOhe'),(49,'el joaquin','joaquinsecso@gmail.com','9992345776','el secso sucio 23','','$2a$10$hfyhZuqH2iJH/zj2K9oO6eXhUmT76G8W0ed40nEiDtk.1i1CK14ha','$2a$10$hfyhZuqH2iJH/zj2K9oO6e'),(50,'mr compras','cocos@gmail.com','984758620','quellon 1461','','$2a$10$kz5clrum6of8m28jh881g.aIfA7PLrmIRfJjjlwW5V6i9mg0AzsxW','$2a$10$kz5clrum6of8m28jh881g.'),(52,'joaquin','joaquin@gmail.com','1321321','123213','','$2a$10$TXxAxysjLI5B3YYB.6kysuzTPb8eFyjHaI/7By2INweXH6YMki3Ce','$2a$10$TXxAxysjLI5B3YYB.6kysu'),(53,'el joaquin','joaquin12xxx@gmail.com','76566826','el secso sucio 23','','$2a$10$3poIcjQd49XPBk9ob7Old.YEhWKk2Z7XnDmGFQmKaWiCP4308zeeG','$2a$10$3poIcjQd49XPBk9ob7Old.'),(57,'joaquin','joaquuin@gmail.com','13213213','1232131321','','$2a$10$DSa8IjT0U8J1aX0hZ1R89eJLM3gTf5UFhG2ms487N06GjCQhCr9Ta','$2a$10$DSa8IjT0U8J1aX0hZ1R89e'),(59,'joaquin','joaquin22@gmail.com','13213213','1232131321','','$2a$10$5VfrarD5I6Y5a7Nec4FEqeLIHp6G1TE.diFr.yjeERPKBUZQdgaga','$2a$10$5VfrarD5I6Y5a7Nec4FEqe'),(60,'joaquin','jooaquin@gmail.com','13213213','1232131321','','$2a$10$o3dI8zL9NHJGPLW8Os.3NeoAqxWMMm5Chw5MYFghz7UNYne3yijb.','$2a$10$o3dI8zL9NHJGPLW8Os.3Ne'),(61,'joaquin','joaqquin@gmail.com','13213213','1232131321','','$2a$10$3lOIO3YhXAXAXXx/TmR/Tu.PfgOlf4yMi.X2afe7Gjpmmocf3YJyK','$2a$10$3lOIO3YhXAXAXXx/TmR/Tu'),(62,'joaquin','jjooaquin@gmail.com','13213213','1232131321','','$2a$10$p01pjvPglDfZZsFM9Q12jeEjAhCu1v8dop8derYzc.Q39mficSyDq','$2a$10$p01pjvPglDfZZsFM9Q12je'),(63,'2423','242343242@sdasd.adsada','423432432','4324324324','','$2a$10$Z9Ha.6ZbKJKV.BqbhSYvMevbIyjXuK/yiLL9GAiUl1jJb745swX0G','$2a$10$Z9Ha.6ZbKJKV.BqbhSYvMe'),(64,'joaquin','eljoaco@gmail.com','12313','1232131321','','$2a$10$faW7yBr4YwI6SWfjBPO.nOCwiDWF0EnUxm1GcZcH4je05InRveZ4y','$2a$10$faW7yBr4YwI6SWfjBPO.nO'),(65,'23213131','joakin@duocuc.cl','12313','1232131321','','$2a$10$a3A5VT28QFYh4pGzPooNcO1EX5eNpjqtvaL8u/3m4S5jDyVeD0vpC','$2a$10$a3A5VT28QFYh4pGzPooNcO'),(68,'joaquin','joaquinnn@gmail.com','13213213','1232131321','','$2a$10$HOF9IdmtZpsWPr88EZH5b.hhqmrpLx45i5Z.Lb6JjRIyfyegT5.ly','$2a$10$HOF9IdmtZpsWPr88EZH5b.'),(71,'joaquin','jjjjjjoaquin@gmail.com','13213213','1232131321','','$2a$10$NAp2hXIKkAPdloCA05a5ZuRhnzkNna7NRISzhjC3a/MP4kkwhD82i','$2a$10$NAp2hXIKkAPdloCA05a5Zu'),(72,'Nombre falso 123','emailfalso1234@gmail.com','+56977889900','pedro herrera 301, isla de mapo','','$2a$10$ypuyuFIG0biieq9SQ7QoNOIS6nXDpn0gBwJy2Z5sDXdpLltbP0XJ6','$2a$10$ypuyuFIG0biieq9SQ7QoNO'),(73,'Lucas Alejandro','lucasalejandro@gmail.com','123','pedro herrera','','$2a$10$zjyI8fxSu/XRdVxq.CFUreeOmxZkTE7n/nyzbDfLdaKvybaLII.gi','$2a$10$zjyI8fxSu/XRdVxq.CFUre'),(74,'ignacio','ignaciotoledo@gmail.com','6553258958','el abrazo 55478','','$2a$10$qFmr1VFBWyPuZwi7RNSI7OqFXVjQZOmjmDl.vgRuo9CFUm47d6C9S','$2a$10$qFmr1VFBWyPuZwi7RNSI7O'),(75,'Lucas direccion','lucasdireccion@gmail.com','9123921739','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','301','$2a$10$BtU7SmT3sutcGx.A0.lRneOkRd76eDCPPl9A/jgsZ3KCNF4JD97v.','$2a$10$BtU7SmT3sutcGx.A0.lRne'),(76,'Lucas direccion2','lucasdireccion2@gmail.com','999999999','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','209','$2a$10$4Fdnd4lFrmO3m/IAWZDZ5euzF7B6XJ01Jdb/S3VJ3pAoSCkJzV96G','$2a$10$4Fdnd4lFrmO3m/IAWZDZ5e'),(77,'fabian','fabian@gmail.com','984758620','Quellón, Provincia de Chiloé, Los Lagos Region','1461','$2a$10$2.T4i7Ku2nGPeaxCcgpLOuPrfLOXRzWH8X2bibTmozLAQVeDymQSG','$2a$10$2.T4i7Ku2nGPeaxCcgpLOu');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `Id_Orden` bigint NOT NULL AUTO_INCREMENT,
  `Id_Cliente` bigint NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `numero_casa` varchar(45) NOT NULL,
  `products` varchar(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` decimal(10,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_Orden`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (11,0,'Lucas Alejandro','lucasalejandro@gmail.com','+56977983861','','','[{\"id\":33,\"cantidad\":2},{\"id\":32,\"cantidad\":2}]','2024-11-19 14:34:40',4.00,'Pendiente',NULL),(12,0,'Lucas Alejandro','lucasalejandro@gmail.com','+56977983861','','','[{\"name\":\"Conjunto 1\",\"cantidad\":1}]','2024-11-19 14:45:31',1.00,'Pendiente',NULL),(13,0,'Lucas Alejandro','lucasalejandro@gmail.com','+56977983861','','','[{\"name\":\"Conjunto 1\",\"cantidad\":1}]','2024-11-19 14:45:57',1.00,'Pendiente',NULL),(14,0,'Lucas Alejandro k','lucasalejandro@gmail.com','+56977983861','','','[{\"name\":\"Conjunto 1\",\"cantidad\":1}]','2024-11-19 14:46:13',1.00,'Pendiente',NULL),(15,0,'Lucas Alejandro k','lucasalejandro@gmail.com','+56977983861','','','[{\"name\":\"Conjunto 1\",\"cantidad\":1}]','2024-11-19 14:47:43',1.00,'Pendiente',NULL),(16,0,'Lucas Alejandro','lucasalejandro@gmail.com','+56977983861','','','[{\"name\":\"Conjunto 1\",\"cantidad\":1}]','2024-11-19 14:47:53',1.00,'Pendiente',NULL),(17,0,'Lucas Alejandro','lucasalejandro@gmail.com','+56977983861','','','[{\"id\":32,\"cantidad\":1}]','2024-11-19 14:49:42',1.00,'Pendiente',NULL),(18,0,'el joaquin','joaquin12xxx@gmail.com','976566826','','','[{\"id\":36,\"cantidad\":1}]','2024-11-19 14:51:10',1.00,'Pendiente',NULL),(19,0,'Lucas Alejandro','lucasalejandro@gmail.com','+56977983861','','','[{\"id\":32,\"cantidad\":2}]','2024-11-19 14:52:26',2.00,'Pendiente',NULL),(20,0,'Lucas Alejandro','lucasalejandro@gmail.com','+56977983861','','','[{\"id\":36,\"cantidad\":1}]','2024-11-19 14:53:14',1.00,'Pendiente',NULL),(21,0,'el joaquin','joaquin12xxx@gmail.com','976566826','','','[{\"id\":32,\"cantidad\":5}]','2024-11-19 14:54:25',5.00,'Pendiente',NULL),(22,0,'Lucas Alejandro','lucasalejandro@gmail.com','+56977983861','','','[{\"id\":33,\"name\":\"conjunto 2 \",\"cantidad\":2}]','2024-11-19 14:55:46',2.00,'Pendiente',NULL),(23,0,'Jimena Arriagada','Jimena@admin.com','976566826','','','[{\"id\":37,\"name\":\"zapatillas 1\",\"cantidad\":1}]','2024-11-19 15:19:25',1.00,'Pendiente',NULL),(24,0,'Jimena Arriagada','Jimena@admin.com','976566826','','','[{\"id\":43,\"name\":\"gato culiao inutil\",\"cantidad\":4},{\"id\":50,\"name\":\"blusa mujer\",\"cantidad\":3}]','2024-11-19 15:23:53',7.00,'Pendiente','https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731338285/xpstq8rkvnjz2ubop1hv.jpg'),(25,0,'PENUDO','SECOALEMN@duocuc.cl','976566826','','','[{\"id\":38,\"name\":\"zapatillas 2\",\"cantidad\":1}]','2024-11-19 15:24:44',1.00,'Pendiente','https://res.cloudinary.com/dvyrnjwfi/image/upload/v1731338285/xpstq8rkvnjz2ubop1hv.jpg'),(26,0,'Lucas Alejandro','lucasalejandro@gmail.com','56977983861','Pedro Herrera','301','[{\"id\":34,\"name\":\"mujer conjunto 1\",\"cantidad\":1}]','2024-11-29 17:51:16',1.00,'Pendiente',NULL),(27,0,'Lucas Alejandro','lucasalejandro@gmail.com','56977983861','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','301','[{\"id\":32,\"name\":\"Conjunto 1\",\"cantidad\":1},{\"id\":34,\"name\":\"mujer conjunto 1\",\"cantidad\":1}]','2024-11-29 20:49:10',3.00,'Pendiente',NULL),(28,0,'Lucas Alejandro','lucasalejandro@gmail.com','+56977983861','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','301','[{\"id\":32,\"name\":\"Conjunto 1\",\"cantidad\":1},{\"id\":36,\"name\":\"aretes\",\"cantidad\":1}]','2024-11-29 20:53:21',3.00,'Pendiente',NULL),(29,0,'Lucas direccion','lucasdireccion@gmail.com','9123921739','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','301','[{\"id\":33,\"name\":\"conjunto 2\",\"cantidad\":1}]','2024-11-29 21:13:54',1.00,'Enviado',NULL),(30,75,'Lucas direccion','lucasdireccion@gmail.com','9123921739','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','301','[{\"id\":34,\"name\":\"mujer conjunto 1\",\"cantidad\":1}]','2024-11-29 21:17:29',1.00,'En Proceso','https://res.cloudinary.com/dvyrnjwfi/image/upload/v1732923316/j4kkhzr3guijf9rje7pt.jpg'),(31,75,'Lucas direccion','lucasdireccion@gmail.com','9123921739','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','301','[{\"id\":34,\"name\":\"mujer conjunto 1\",\"cantidad\":1}]','2024-11-29 22:47:17',1.00,'Pendiente','https://res.cloudinary.com/dvyrnjwfi/image/upload/v1732923431/nltualoz5v6gltdogk8h.jpg'),(32,76,'Lucas direccion2','lucasdireccion2@gmail.com','999999999','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','209','[{\"id\":33,\"name\":\"conjunto 2\",\"cantidad\":1},{\"id\":32,\"name\":\"Conjunto 1\",\"cantidad\":1}]','2024-11-29 23:06:16',3.00,'Pendiente','https://res.cloudinary.com/dvyrnjwfi/image/upload/v1732923139/jdekuae4o4p73wqfrrad.jpg'),(33,75,'Lucas direccion','lucasdireccion@gmail.com','9123921739','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','301','[{\"id\":32,\"name\":\"Conjunto 1\",\"cantidad\":1}]','2024-11-30 01:20:08',2.00,'Pendiente','https://res.cloudinary.com/dvyrnjwfi/image/upload/v1732929628/rmt5y6kassmcnoxhr4vs.jpg'),(34,18,'Jimena Arriagada','jimena@admin.com','9274981274987','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','209','[{\"id\":51,\"name\":\"Mono cpu\",\"cantidad\":1}]','2024-11-30 02:01:15',25.00,'Pendiente','https://res.cloudinary.com/dvyrnjwfi/image/upload/v1733149440/ai8jrxbjlswejwalkgvd.jpg'),(35,75,'Lucas direccion','lucasdireccion@gmail.com','9123921739','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','301','[{\"id\":33,\"name\":\"conjunto 2\",\"cantidad\":1}]','2024-12-02 14:27:28',1.00,'En Proceso','https://res.cloudinary.com/dvyrnjwfi/image/upload/v1733149707/jsmj4cnvqauvypjyelxa.png'),(36,18,'Jimena Arriagada','jimena@admin.com','9274981274987','wpiepqiw2173981','23','[{\"id\":34,\"name\":\"mujer conjunto 1\",\"cantidad\":1}]','2024-12-02 14:34:22',1.00,'Pendiente',NULL),(37,18,'Jimena Arriagada','jimena@admin.com','9274981274987','wpiepqiw2173981','666','[{\"id\":40,\"name\":\"Conjunto elegante hombre\",\"cantidad\":1},{\"id\":34,\"name\":\"mujer conjunto 1\",\"cantidad\":1}]','2024-12-02 18:41:21',2.00,'Pendiente',NULL),(38,18,'Jimena Arriagada','jimena@admin.com','9274981274987','wpiepqiw2173981','666','[{\"id\":34,\"name\":\"Vestido de mujer\",\"cantidad\":4}]','2024-12-02 18:42:47',4.00,'Pendiente',NULL),(39,75,'Lucas direccion','lucasdireccion@gmail.com','9123921739','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','301','[{\"id\":33,\"name\":\"Camisa azul\",\"cantidad\":1},{\"id\":36,\"name\":\"Aretes\",\"cantidad\":1}]','2024-12-02 20:37:23',2.00,'Pendiente',NULL),(40,75,'Lucas direccion','lucasdireccion@gmail.com','9123921739','Pedro Herrera, Villa Bicentenario, La Islita, Isla de Maipo, Provincia de Talagante, Región Metropolitana de Santiago,','301','[{\"id\":32,\"name\":\"Conjunto de niño\",\"cantidad\":1}]','2024-12-02 20:53:51',2.00,'Pendiente',NULL);
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 10:43:07
