CREATE DATABASE  IF NOT EXISTS `siscontrol` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `siscontrol`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: siscontrol
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(255) DEFAULT NULL,
  `id_categoria_pai` int(11) DEFAULT NULL,
  `dt_criacao` datetime DEFAULT NULL,
  `dt_alteracao` datetime DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Jóias e Semijóias',NULL,NULL,NULL),(2,'Prata 925',1,NULL,NULL);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fabricante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_fabricante` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `inscricao_estadual` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `data_alteracao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_fornecedor` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `incricao_estadual` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `data_alteracao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor_has_insumos`
--

DROP TABLE IF EXISTS `fornecedor_has_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fornecedor_has_insumos` (
  `fornecedor_id` int(11) NOT NULL,
  `insumos_id` int(11) NOT NULL,
  `insumos_tipos_quantidade_id` int(11) NOT NULL,
  `insumos_tipos_insumos_id` int(11) NOT NULL,
  PRIMARY KEY (`fornecedor_id`,`insumos_id`,`insumos_tipos_quantidade_id`,`insumos_tipos_insumos_id`),
  KEY `fk_fornecedor_has_insumos_insumos1_idx` (`insumos_id`,`insumos_tipos_quantidade_id`,`insumos_tipos_insumos_id`),
  KEY `fk_fornecedor_has_insumos_fornecedor1_idx` (`fornecedor_id`),
  CONSTRAINT `fk_fornecedor_has_insumos_fornecedor1` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`id`),
  CONSTRAINT `fk_fornecedor_has_insumos_insumos1` FOREIGN KEY (`insumos_id`, `insumos_tipos_quantidade_id`, `insumos_tipos_insumos_id`) REFERENCES `insumos` (`id`, `tipos_quantidade_id`, `tipos_insumos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor_has_insumos`
--

LOCK TABLES `fornecedor_has_insumos` WRITE;
/*!40000 ALTER TABLE `fornecedor_has_insumos` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor_has_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumos`
--

DROP TABLE IF EXISTS `insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `insumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `data_alteracao` datetime DEFAULT NULL,
  `tipos_quantidade_id` int(11) NOT NULL,
  `tipos_insumos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`tipos_quantidade_id`,`tipos_insumos_id`),
  KEY `fk_insumos_tipos_quantidade_idx` (`tipos_quantidade_id`),
  KEY `fk_insumos_tipos_insumos1_idx` (`tipos_insumos_id`),
  CONSTRAINT `fk_insumos_tipos_insumos1` FOREIGN KEY (`tipos_insumos_id`) REFERENCES `tipos_insumos` (`id`),
  CONSTRAINT `fk_insumos_tipos_quantidade` FOREIGN KEY (`tipos_quantidade_id`) REFERENCES `tipos_quantidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumos`
--

LOCK TABLES `insumos` WRITE;
/*!40000 ALTER TABLE `insumos` DISABLE KEYS */;
INSERT INTO `insumos` VALUES (1,'teste',1,NULL,NULL,1,1);
/*!40000 ALTER TABLE `insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumos_has_fabricante`
--

DROP TABLE IF EXISTS `insumos_has_fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `insumos_has_fabricante` (
  `insumos_id` int(11) NOT NULL,
  `insumos_tipos_quantidade_id` int(11) NOT NULL,
  `insumos_tipos_insumos_id` int(11) NOT NULL,
  `fabricante_id` int(11) NOT NULL,
  PRIMARY KEY (`insumos_id`,`insumos_tipos_quantidade_id`,`insumos_tipos_insumos_id`,`fabricante_id`),
  KEY `fk_insumos_has_fabricante_fabricante1_idx` (`fabricante_id`),
  KEY `fk_insumos_has_fabricante_insumos1_idx` (`insumos_id`,`insumos_tipos_quantidade_id`,`insumos_tipos_insumos_id`),
  CONSTRAINT `fk_insumos_has_fabricante_fabricante1` FOREIGN KEY (`fabricante_id`) REFERENCES `fabricante` (`id`),
  CONSTRAINT `fk_insumos_has_fabricante_insumos1` FOREIGN KEY (`insumos_id`, `insumos_tipos_quantidade_id`, `insumos_tipos_insumos_id`) REFERENCES `insumos` (`id`, `tipos_quantidade_id`, `tipos_insumos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumos_has_fabricante`
--

LOCK TABLES `insumos_has_fabricante` WRITE;
/*!40000 ALTER TABLE `insumos_has_fabricante` DISABLE KEYS */;
/*!40000 ALTER TABLE `insumos_has_fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20190912130729-create-users.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_insumos`
--

DROP TABLE IF EXISTS `tipos_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipos_insumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipos_insumos` varchar(255) DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `data_alteracao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_insumos`
--

LOCK TABLES `tipos_insumos` WRITE;
/*!40000 ALTER TABLE `tipos_insumos` DISABLE KEYS */;
INSERT INTO `tipos_insumos` VALUES (1,'lã',NULL,NULL);
/*!40000 ALTER TABLE `tipos_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_quantidade`
--

DROP TABLE IF EXISTS `tipos_quantidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipos_quantidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_quantidade` varchar(255) DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `data_alteracao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_quantidade`
--

LOCK TABLES `tipos_quantidade` WRITE;
/*!40000 ALTER TABLE `tipos_quantidade` DISABLE KEYS */;
INSERT INTO `tipos_quantidade` VALUES (1,'unidade',NULL,NULL),(2,'metro',NULL,NULL),(3,'grama',NULL,NULL),(4,'cm',NULL,NULL),(5,'kg',NULL,NULL);
/*!40000 ALTER TABLE `tipos_quantidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '0',
  `endereco` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `uf` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `data_de_aniversario` datetime NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `identidade` varchar(255) NOT NULL,
  `orgao_expedidor` varchar(255) NOT NULL,
  `data_expedicao` datetime NOT NULL,
  `criado_em` datetime NOT NULL,
  `alterado_em` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'siscontrol'
--

--
-- Dumping routines for database 'siscontrol'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-20 15:34:37
