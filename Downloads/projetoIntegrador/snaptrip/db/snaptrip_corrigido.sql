CREATE DATABASE  IF NOT EXISTS `snaptrip` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `snaptrip`;
-- MySQL dump 10.13  Distrib 5.7.39, for osx10.17 (x86_64)
--
-- Host: 127.0.0.1    Database: snaptrip
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(2) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `rodoviaria` varchar(100) DEFAULT NULL,
  `lat_rodoviaria` decimal(10,8) DEFAULT NULL,
  `long_rodoviaria` decimal(10,8) DEFAULT NULL,
  `aeroporto` varchar(100) DEFAULT NULL,
  `lat_aeroporto` decimal(10,8) DEFAULT NULL,
  `long_aeroporto` decimal(10,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'RJ','Rio de Janeiro','dest/orig','Terminal Rodoviário Novo Rio',-22.89913232,-43.20876000,'SDU (Santos Dumont)',-22.91093625,-43.16496133),(2,'SP','São Paulo','dest/orig','Terminal Rodoviário Tietê',-23.51598885,-46.62477070,'CGH (Congonhas)',-23.62708868,-46.65664858),(3,'DF','Brasília','dest/orig','Terminal Rodoviário de Brasília',-15.83012892,-47.94955465,'BSB (Aeroporto Internacional de Brasília)',-15.86979881,-47.91736355),(4,'SC','Florianópolis','dest/orig','Terminal Rodoviário Rita Maria',-27.59691252,-48.55805915,'FLN (Aeroporto Internacional de Florianópolis)',-27.67007047,-48.54596570),(5,'BA','Salvador','dest/orig','Terminal Rodoviário de Salvador',-12.97748817,-38.46583927,'SSA (Aeroporto Internacional de Salvador)',-12.91097282,-38.33142570),(6,'AM','Manaus','dest/orig','Terminal Rodoviário de Manaus',-3.07441718,-60.02557561,'MAO (Aeroporto Internacional de Manaus)',-3.03583668,-60.04627126),(7,'ES','Vitória','orig','Terminal Rodoviária de Vitória Carlos Alberto V. Campos',-20.32149895,-40.35160927,'Aeroporto de Vitória - Eurico de Aguiar Salles',-20.25609295,-40.28135718),(8,'MG','Belo Horizonte','orig','Rodoviária de Belo Horizonte - Terminal Gov. Israel Pinheiro',-19.91394050,-43.94191574,'Aeroporto Carlos Drummond de Andrade - Pampulha',-19.84964566,-43.95491136),(9,'SP','Guarulhos','orig','Rodoviária de Guarulhos',-23.44893422,-46.49711047,'Aeroporto de Guarulhos',-23.42906724,-46.47248699),(10,'RS','Porto Alegre','orig','Estação Rodoviária de Porto Alegre',-30.02273345,-51.21904797,'Aeroporto Internacional Porto Alegre Salgado Filho',-29.99526845,-51.16639780),(11,'PR','Curitiba','orig','Rodoferroviária de Curitiba',-25.43602161,-49.25807476,'Afonso Pena International Airport',-25.53248084,-49.17245965),(12,'GO','Goiânia','orig','Terminal Rodoviário Goiânia',-16.65934572,-49.25969587,'Santa Genoveva International Airport',-16.63424065,-49.21556200),(13,'MT','Cuiabá','orig','Rodoviária de Cuiabá',-15.58031430,-56.08984073,'Cuiabá International Airport - Marechal Rondon',-15.65283831,-56.11729559),(14,'MS','Campo Grande','orig','Terminal Rodoviário Antônio Mendes Canale',-20.44990185,-54.69989469,'(CGR)Aeroporto Internacional De Campo Grande ',-20.45555117,-54.66867568),(15,'RR','Boa Vista','orig','Rodoviária Internacional de Boa Vista',2.80766662,-60.68860636,'Boa Vista International Airport',2.84139055,-60.69218180),(16,'PA','Belém','orig','Terminal Rodoviário de Belém',-1.44890097,-48.46621060,'Aeroporto de Belém/Val-de-Cans - Júlio Cezar Ribeiro',-1.37523661,-48.47858445),(17,'MA','São Luís','orig','Terminal Rodoviário de São Luís',-2.56377804,-44.24469565,'Aeroporto Internacional de São Luís - Marechal Cunha Machado',-2.58348845,-44.23618202),(18,'CE','Fortaleza','orig','Terminal Rodoviário Eng. João Thomé',-3.75053811,-38.53231348,'Aeroporto Internacional de Fortaleza - Pinto Martins',-3.77645772,-38.53272737),(19,'RN','Natal','orig','Rodoviária de Natal',-5.81946855,-35.23499563,'Aeroporto Internacional de Natal',-5.76623452,-35.36598617),(20,'PE','Recife','orig','Terminal Rodoviário do Recife',-8.04890104,-34.98112249,'Aeroporto Internacional do Recife/Guararapes - Gilberto Freyre',-8.12571907,-34.92401540),(21,'SE','Aracaju','orig','Terminal Rodoviário Gov. José Rollemberg Leite',-10.91637297,-37.08870146,'Aeroporto Internacional de Aracaju - Santa Maria',-10.98684114,-37.07263303);
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadias`
--

DROP TABLE IF EXISTS `estadias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `id_cidade` int DEFAULT NULL,
  `cep` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `latitude` decimal(10,2) DEFAULT NULL,
  `longitude` decimal(10,2) DEFAULT NULL,
  `avaliacao` decimal(2,1) DEFAULT NULL,
  `total_avaliacao` int DEFAULT NULL,
  `diaria` decimal(6,2) DEFAULT NULL,
  `tipoCama` varchar(50) DEFAULT NULL,
  `cafeDaManha` varchar(50) DEFAULT NULL,
  `tipo_estadia` varchar(50) DEFAULT NULL,
  `tipo_acomodacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `estadia_cidade_id_foreign` (`id_cidade`),
  CONSTRAINT `estadia_cidade_id_foreign` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadias`
--

LOCK TABLES `estadias` WRITE;
/*!40000 ALTER TABLE `estadias` DISABLE KEYS */;
INSERT INTO `estadias` VALUES (50,'KS Residence',5,NULL,NULL,NULL,NULL,-23.01,-43.31,9.0,198,388.00,'Solteiro','1\r','Apartamento','Apartamento inteiro'),(51,'Artístico Ipanema',5,NULL,NULL,NULL,NULL,-22.99,-43.20,9.0,125,603.00,'Casal','0\r','Apartamento','Apartamento inteiro'),(52,'iBIS Botafogo',5,NULL,NULL,NULL,NULL,-22.95,-43.19,8.0,3,359.00,'Casal','1\r','Hotel','Quarto duplo'),(53,'Villa Paranaguá Hotel & Spa',5,NULL,NULL,NULL,NULL,-22.92,-43.18,9.0,341,1.74,'Casal','1\r','Hotel','Quarto duplo'),(54,'Downtown Santana Hotel',5,NULL,NULL,NULL,NULL,-22.91,-43.19,7.0,2,112.00,'Solteiro','1\r','Hotel','Quarto individual'),(55,'Windsor Asturias Hotel ',5,NULL,NULL,NULL,NULL,-22.91,-43.18,8.0,790,267.00,'Solteiro','1\r','Hotel','Quarto individual'),(56,'Selina Copacabana',5,NULL,NULL,NULL,NULL,-22.98,-43.19,8.0,2,96.00,'Solteiro','0\r','Hostel','Dormitório coletivo'),(57,'Sangha Urbana',5,NULL,NULL,NULL,NULL,-22.90,-43.18,9.0,91,114.00,'Solteiro','0\r','Hostel','Dormitório individual'),(58,'Cinelandia HotelAbre numa nova janela',3,NULL,NULL,NULL,NULL,-23.54,-46.64,9.0,874,163.00,'Solteiro','1\r','Hotel','Apartamento inteiro'),(59,'Cardim Plaza HotelAbre numa nova janela',3,NULL,NULL,NULL,NULL,-23.57,-46.64,9.0,986,198.00,'Casal','0\r','Hotel','Apartamento inteiro'),(60,'Selina Aurora Sao PauloAbre numa nova janela',3,NULL,NULL,NULL,NULL,-23.54,-46.64,8.0,641,83.00,'Casal','1\r','Hotel','Quarto duplo'),(61,'Hotel Alvorada do SolAbre numa nova janela',3,NULL,NULL,NULL,NULL,-23.53,-46.61,9.0,257,125.00,'Casal','1\r','Hotel','Quarto duplo'),(62,'Quintal Hostel & Bar',3,NULL,NULL,NULL,NULL,-23.57,-46.64,8.0,973,55.00,'Solteiro','1\r','Hostel','Quarto individual'),(63,'Angatu HostelAbre numa nova janela',3,NULL,NULL,NULL,NULL,-23.61,-46.67,8.0,1,71.00,'Solteiro','1\r','Hostel','Quarto individual'),(64,'Nomah - Aptos por Temporada na LuzAbre numa nova janela',3,NULL,NULL,NULL,NULL,-23.52,-46.68,7.0,2,149.00,'Solteiro','0\r','Apartamento','Dormitório coletivo'),(65,'Sky S House',3,NULL,NULL,NULL,NULL,-23.52,-46.75,8.0,978,160.00,'Solteiro','0\r','Apartamento','Dormitório individual'),(66,'Athos Bulcão Hplus Executive',8,NULL,NULL,NULL,NULL,-15.79,-47.89,8.0,5,288.00,'Casal','1\r','Hotel','Quarto duplo'),(67,'Hotel Econotel',8,NULL,NULL,NULL,NULL,-15.79,-47.89,7.0,3,141.00,'Solteiro','1\r','Hotel','Quarto individual'),(68,'Grand Bittar Hotel',8,NULL,NULL,NULL,NULL,-15.79,-47.89,7.0,2,306.00,'Casal','1\r','Hotel','Quarto individual'),(69,'Executive Plaza Hotel',8,NULL,NULL,NULL,NULL,-15.87,-47.97,8.0,185,152.00,'Casal','1\r','Apartamento','Apartamento inteiro'),(70,'Elô Hostel',8,NULL,NULL,NULL,NULL,-15.84,-48.06,9.0,86,71.00,'Casal','0\r','Apartamento','Apartamento inteiro'),(71,'América Bittar Hotel',8,NULL,NULL,NULL,NULL,-15.79,-47.89,7.0,2,234.00,'Casal','1\r','Hotel','Quarto individual'),(72,'Phenícia Bittar Hotel',8,NULL,NULL,NULL,NULL,-15.79,-47.89,7.0,1,234.00,'Casal','1\r','Hotel','Quarto duplo'),(73,'Meliá Brasil 21',8,NULL,NULL,NULL,NULL,-15.79,-47.89,8.0,1,690.00,'Solteiro','1\r','Hotel','Quarto duplo'),(74,'Majestic Palace Hotel',7,NULL,NULL,NULL,NULL,-27.57,-48.55,9.0,4,718.00,'Casal','1\r','Hotel','Quarto duplo'),(75,'Hotel & Pousada Favareto',7,NULL,NULL,NULL,NULL,-27.44,-48.39,9.0,600,207.00,'Casal','1\r','Hotel','Quarto individual'),(76,'Rio Branco Hotel',7,NULL,NULL,NULL,NULL,-27.59,-48.55,8.0,2,197.00,'Casal','1\r','Hotel','Quarto duplo'),(77,'Intercity Florianopolis',7,NULL,NULL,NULL,NULL,-27.59,-48.56,8.0,2,314.00,'Solteiro','1\r','Hotel','Quarto individual'),(78,'Hotel Don Zepe',7,NULL,NULL,NULL,NULL,-27.61,-48.47,8.0,218,216.00,'Casal','1\r','Hotel','Quarto individual'),(79,'Iate Hotel Centro Florianopolis',7,NULL,NULL,NULL,NULL,-27.61,-48.55,7.0,1,262.00,'Casal','1\r','Hotel','Quarto duplo'),(80,'Pousada Pedra Rosa',7,NULL,NULL,NULL,NULL,-27.61,-48.44,8.0,184,257.00,'Casal','1\r','Pousada','Quarto duplo'),(81,'Pousada Quintal Verde Floripa',7,NULL,NULL,NULL,NULL,-27.61,-48.45,8.0,119,160.00,'Solteiro','1\r','Pousada','Quarto individual'),(82,'Hotel Piramide - Pituba II',6,NULL,NULL,NULL,NULL,-12.99,-38.46,7.0,1,88.00,'Solteiro','1\r','Hotel','Apartamento inteiro'),(83,'Absolutte Hotel',6,NULL,NULL,NULL,NULL,-13.00,-38.45,9.0,975,136.00,'Casal','0\r','Hotel','Apartamento inteiro'),(84,'Marano Hotel',6,NULL,NULL,NULL,NULL,-13.00,-38.45,8.0,634,192.00,'Casal','1\r','Hotel','Quarto duplo'),(85,'Golden Park Salvador',6,NULL,NULL,NULL,NULL,-13.01,-38.47,9.0,125,160.00,'Casal','1\r','Hotel','Quarto duplo'),(86,'Hostel Barra',6,NULL,NULL,NULL,NULL,-13.01,-38.52,9.0,879,40.00,'Solteiro','1\r','Hostel','Quarto individual'),(87,'Manhatã Hostel',6,NULL,NULL,NULL,NULL,-13.00,-38.53,8.0,2,59.00,'Solteiro','1\r','Hostel','Quarto individual'),(88,'Loft Morada do Porto',6,NULL,NULL,NULL,NULL,-13.00,-38.53,9.0,2,47.00,'Solteiro','0\r','Apartamento','Dormitório coletivo'),(89,'Apartamento em Salvador',6,NULL,NULL,NULL,NULL,-13.01,-38.53,8.0,745,151.00,'Solteiro','0\r','Apartamento','Dormitório individual'),(90,'Da Vinci Hotel & Conventions',2,NULL,NULL,NULL,NULL,-3.00,-60.02,8.0,179,202.00,'Solteiro','1\r','Hotel','Apartamento inteiro'),(91,'Tropical Executive Hotel',2,NULL,NULL,NULL,NULL,-3.01,-60.10,9.0,121,393.00,'Casal','0\r','Hotel','Apartamento inteiro'),(92,'Ramada by Wyndham Manaus Torres Center',2,NULL,NULL,NULL,NULL,-3.09,-59.99,8.0,469,215.00,'Casal','1\r','Hotel','Quarto duplo'),(93,'Hotel Villa Amazônia',2,NULL,NULL,NULL,NULL,-3.13,-60.02,9.0,741,865.00,'Casal','1\r','Hotel','Quarto duplo'),(94,'Hostel Manaus',2,NULL,NULL,NULL,NULL,-3.13,-60.02,8.0,863,61.00,'Solteiro','1\r','Hostel','Quarto individual'),(95,'Local Hostel Manaus',2,NULL,NULL,NULL,NULL,-3.13,-60.02,9.0,624,85.00,'Solteiro','1\r','Hostel','Quarto individual'),(96,'Apartamento no Lírio do Vale',2,NULL,NULL,NULL,NULL,-3.07,-60.07,8.0,548,114.00,'Solteiro','0\r','Apartamento','Dormitório coletivo'),(97,'Flat Tropical Executive',2,NULL,NULL,NULL,NULL,-3.06,-60.11,8.0,1,500.00,'Solteiro','0','Apartamento','Dormitório individual');
/*!40000 ALTER TABLE `estadias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Acre'),(2,'Alagoas'),(3,'Amapá'),(4,'Amazonas'),(5,'Bahia'),(6,'Ceará'),(7,'Distrito Federal'),(8,'Espírito Santo'),(9,'Goiás'),(10,'Luís	Maranhão'),(11,'Mato Grosso'),(12,'Mato Grosso do Sul'),(13,'Minas Gerais'),(14,'Pará'),(15,'Paraíba'),(16,'Paraná'),(17,'Pernambuco'),(18,'Piauí'),(19,'Rio de Janeiro'),(20,'Rio Grande do Norte'),(21,'Rio Grande do Sul'),(22,'Rondônia'),(23,'Roraima'),(24,'Santa Catarina'),(25,'São Paulo'),(26,'Sergipe'),(27,'Tocantins');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cidade` int DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cep` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `lat_evento` varchar(100) DEFAULT NULL,
  `long_evento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eventos_cidade_destino` (`id_cidade`),
  CONSTRAINT `eventos_cidade_destino` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passagens`
--

DROP TABLE IF EXISTS `passagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passagens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cidade_origem` int DEFAULT NULL,
  `id_cidade_destino` int DEFAULT NULL,
  `meio` varchar(50) DEFAULT NULL,
  `lugar` varchar(50) DEFAULT NULL,
  `tarifa` decimal(6,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `horario_saida` timestamp NULL DEFAULT NULL,
  `horario_chegada` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `passages_cidade_origem` (`id_cidade_origem`),
  KEY `passages_cidade_destino` (`id_cidade_destino`),
  CONSTRAINT `passages_cidade_destino` FOREIGN KEY (`id_cidade_destino`) REFERENCES `cidades` (`id`),
  CONSTRAINT `passages_cidade_origem` FOREIGN KEY (`id_cidade_origem`) REFERENCES `cidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passagens`
--

LOCK TABLES `passagens` WRITE;
/*!40000 ALTER TABLE `passagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `passagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_viagem`
--

DROP TABLE IF EXISTS `usuarios_viagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_viagem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_viagem` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuarios_viagens_id` (`id_usuario`),
  KEY `viagens_viagens_id` (`id_viagem`),
  CONSTRAINT `usuarios_viagens_id` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `viagens_viagens_id` FOREIGN KEY (`id_viagem`) REFERENCES `viagens` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_viagem`
--

LOCK TABLES `usuarios_viagem` WRITE;
/*!40000 ALTER TABLE `usuarios_viagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_viagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viagens`
--

DROP TABLE IF EXISTS `viagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viagens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cidade_origem` int DEFAULT NULL,
  `id_cidade_destino` int DEFAULT NULL,
  `id_evento` int DEFAULT NULL,
  `data_saida` timestamp NULL DEFAULT NULL,
  `Data_chegada` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `viagens_cidade_origem` (`id_cidade_origem`),
  KEY `viagens_cidade_destino` (`id_cidade_destino`),
  CONSTRAINT `viagens_cidade_destino` FOREIGN KEY (`id_cidade_destino`) REFERENCES `cidades` (`id`),
  CONSTRAINT `viagens_cidade_origem` FOREIGN KEY (`id_cidade_origem`) REFERENCES `cidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagens`
--

LOCK TABLES `viagens` WRITE;
/*!40000 ALTER TABLE `viagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `viagens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-17 19:10:49
