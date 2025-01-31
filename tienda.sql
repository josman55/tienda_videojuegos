CREATE DATABASE  IF NOT EXISTS `tienda` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tienda`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tienda
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `precio` float DEFAULT NULL,
  `iva` int DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `CategoriaId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CategoriaId` (`CategoriaId`),
  CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`CategoriaId`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Fernando Martín Basket',12,21,'Fernando Martín Basket Master es un videojuego de baloncesto, uno contra uno, publicado por Dinamic Software en 1987','basket.jpeg',6,1),(2,'Hyper Soccer',20,21,'Konami Hyper Soccer fue el primer videojuego de fútbol de Konami para una consola Nintendo, y considerado la semilla de las posteriores sagas International Superstar Soccer y Winning Eleven.','soccer.jpeg',10,1),(3,'Arkanoid',16,21,'Arkanoid es un videojuego de arcade desarrollado por Taito en 1986. Está basado en los Breakout de Atari de los años 70.','arkanoid.jpeg',3,2),(4,'Tetris',6,21,'Tetris es un videojuego de puzzle originalmente diseñado y programado por Alekséi Pázhitnov en la Unión Soviética.','tetris.jpeg',5,2),(5,'Road Fighter',15,21,'Road Fighter es un videojuego de carreras producido por Konami y lanzado en los arcades en 1984. Fue el primer juego de carreras desarrollado por esta compañía.','road.jpeg',6,3),(6,'Out Run',10,21,'Out Run es un videojuego de carreras creado en 1986 por Yū Suzuki y Sega-AM2, y publicado inicialmente para máquinas recreativas.','outrun.jpeg',3,3),(7,'Army Moves',8,21,'Army Moves es un arcade y primera parte de la trilogía Moves diseñado por Víctor Ruiz, de Dinamic Software para Commodore Amiga, Amstrad CPC, Atari ST, Commodore 64, MSX y ZX Spectrum en 1986.','army.jpeg',8,4),(8,'La Abadia del Crimen',4,21,'La Abadía del Crimen es un videojuego desarrollado inicialmente de forma freelance y publicado por la Academia Mister Chip en noviembre de 1987, posteriormente se publica bajo el sello de Opera Soft ya entrado 1988.','abadia.jpeg',10,4);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Deportes'),(2,'Arcade'),(3,'Carreras'),(4,'Acción');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Luis','scrypt:32768:8:1$Gn7NC6M6OjRelXjN$a5474886823910e9b82c30b8bfb9c924140445054f2a257c8fd3abca4866a1dc532ff501acc274ed5f487a9086c475392edd77ac52308560aa70295dec7173b6','Luis Martín Basket ','l@gmail.com',0),(2,'Ana','scrypt:32768:8:1$ADeZYphVmrucl6MZ$a38cb7825a945cc824f72b6028649c417e77bbb77d3a2c27e0e22eee146feed11856240a1a0138f476e7c2294829d848bdd328e1058ee80d81b1f6d1626d312b','Ana Martín Basket ','a@gmail.com',0),(3,'Maria','scrypt:32768:8:1$IkcEs76X8Lyc3pWy$1d0fa8b28b3b43c3f07b9edc8a1b141d6743f0267105b99bdaed4a1939a89f9bb01753685500ed08e8f6674c5f550c1ee746f333ead3f4defb6a80acb8d28906','Maria Martín Basket ','m@gmail.com',0),(4,'admin','scrypt:32768:8:1$pnzM9xFvRe4U7C8t$306ccb1d0e9fe0c00f610caac8a57c1e6a53658ac659c205cb386c1de4339cea586c96bfe466438dbf24d6b603970b17f0058217c9c9e3bf5f347c5abd046989','Administrador ','admin@miapp.com',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-31  1:39:22
