CREATE DATABASE  IF NOT EXISTS `sena` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sena`;
-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: sena
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nomCategoria` varchar(30) NOT NULL,
  `descripcionCategoria` varchar(255) NOT NULL,
  `estadoCategoria` varchar(10) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Escolares','Utiles escolares','Activo'),(2,'Oficina','Utiles de oficina','Activo'),(3,'Navidad','Materiales de navidad','Inactivo'),(4,'Halloween','Materiales de Halloween','Inactivo'),(5,'Decoraciones','Material de decoracion','Activo'),(6,'Regalos','Papeles y moños de regalo','Activo'),(7,'RegalosCosas','Rogalos ','Activo'),(8,'Electronicos','Materiales electronicos','Activo'),(9,'Pinturas','Pinturas y latas','Activo'),(10,'Dulces','Dulces para la venta','Activo'),(11,'Maquetas','Materiales de maquetas','Activo'),(12,'Impresora','Hojas de impresora y tintas','Activo'),(13,'No a la venta','Materiales de uso propio','Activo'),(14,'Celulares','Tarjetas sim y carcasas','Activo'),(15,'Carton','Cajas y demas de carton','Activo'),(16,'Proteccion','Tapabocas y guantes','Activo'),(17,'ProteccionOtros','Antibacterial y jabon','Activo'),(18,'Ferreteria','Clavos y etc','Activo'),(19,'Herramientas','Herramientas de ferreteria','Activo'),(20,'Marcadores','Marcadores distintos a escolares','Activo'),(21,'Envoltorios','Envoltorios cartas etc','Activo'),(22,'Digitales','Usb y cds','Activo'),(23,'Cables','Cables y etc','Activo'),(24,'Niños','Cosas para niños como juguetes','Activo'),(25,'Otros','Otros que no se incluyan','Activo');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `noDocumentoCliente` varchar(15) NOT NULL,
  `tipoDocCliente` varchar(20) NOT NULL,
  `nombreCliente` varchar(40) NOT NULL,
  `apellidoCliente` varchar(40) NOT NULL,
  `direccionCliente` varchar(40) NOT NULL,
  `telefonoCliente` varchar(12) NOT NULL,
  `generoCliente` varchar(10) NOT NULL,
  `emailCliente` varchar(50) DEFAULT NULL,
  `estadoCliente` varchar(10) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'1000213567','Cedula','David','Correa','calle 34 sur # 23 a 82','1334528','Masculino','DavidCorrea@gmail.com','Activo'),(2,'3992465383','Cedula','Jose','Arrieta','calle 23 sur # 50','8777463','Masculino','JoseArrieta@gmail.com','Activo'),(3,'3994728477','Cedula','Blanca','Jimenez','calle 43 sur # 72 b 62','2377723','Femenino','BlancaJimenez@gmail.com','Inactivo'),(4,'1003746286','TIdentidad','Miguel','Sanchez','carrera 34 sur # 82','3888482','Masculino','MiguelSanchez@gmail.com','Activo'),(5,'1002847395','Cedula','Celcilia','Quijano','calle 23 sur # 23 trasversal 4','3777482','Femenino','CeciliaQuijano@gmail.com','Activo'),(6,'1992837484','Tidentidad','Camilo','Castiblanco','calle 56 sur #67 a 81','4773742','Masculino','CamiloCastiblanco@gmail.com','Inactivo'),(7,'7228237123','Cedula','Sandra','Rodriguez','carrera sur # 54 b 72','1992381','Femenino','SandraRodriguez@gmail.com','Activo'),(8,'3882731342','Cedula','Hernesto','Hoyos','calle 10 trasversal 74','3664721','Masculino','HernestoHoyos@gmail.com','Activo'),(9,'3888294121','Cedula','Ignacio','Pintos','calle 3 sur # 34  ','7444518','Masculino','IgnacioPintos@gmail.com','Activo'),(10,'8444738246','Tidentidad','Mohamed','Maya','calle 65 norte # 70 a 82','4777318','Masculino','MohamedMaya@gmail.com','Activo'),(11,'1000237213','Cedula','Ana','Palomar','calle 34 sur # 43 a 56','83334920','Femenino','AnaPalomar@gmail.com','Activo'),(12,'1288347234','Cedula','Francisco','Fuentes','calle 23 norte # 12 ','3444345','Masculino','FranFuentes@gmail.com','Inactivo'),(13,'1999234812','Cedula','Jose','Ferrnandez','calle 34 sur # 23','2445323','Masculino','JoseFerrnandez@gmail.com','Activo'),(14,'4773482475','Cedula','Juan','Gamiz','carrera 56sur # 55 a 34','4888572','Masculino','DavidCorrea@gmail.com','Activo'),(15,'1993482475','Tidentidad','Gabriel','Montenegro','calle 45 sur # 55 a 72','4486068','Masculino','GabrielMontenegro@gmail.com','Activo'),(16,'4888349173','Cedula','Maria','Molto','calle 45 sur # 73','7031005','Femenino','MariaMolto@gmail.com','Activo'),(17,'1834827484','Cedula','Marcos','Raya','carrera 34 trasversal 34','9572905','Masculino','MarcosRaya@gmail.com','Inactivo'),(18,'3726482485','Tidentidad','Natalia','Pose','calle 47 # 34 sur','8891338','Femenino','NataliaPose@gmail.com','Activo'),(19,'3847184683','Cedula','Jose','Sureda','calle 43 sur # 45 b 72','5630546','Masculino','JoseSureda@gmail.com','Activo'),(20,'1838462849','Tidentidad','Salvador','Suarez','carrera 34 # 42 ','9185731','Masculino','SalvadorSuarez@gmail.com','Inactivo'),(21,'3847627463','Cedula','Vicente','Robledo','calle 84 sur # 34 a 81','5498053','Masculino','VicenteRobledo@gmail.com','Activo'),(22,'1847263515','Cedula','Silvia','Moratalla','calle 44 norte# 13 a 45','8842870','Femenino','SilviaMoratalla@gmail.com','Activo'),(23,'2736173642','Tidentidad','Luisa','Llanos','calle 23 # 3 trasversal 8','9640529','Femenino','SilviaLlanos@gmail.com','Activo'),(24,'1847364763','Cedula','Jose','Hortelano','carrera 34 # 13','6244698','Masculino','JoseHortelano@gmail.com','Inactivo'),(25,'4836374627','Cedula','Felipe','Rivera','carrera 34 # 54 b 12','8861376','Masculino','FelipeRivera@gmail.com','Activo');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!50001 DROP VIEW IF EXISTS `clientes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `clientes` (
  `idCliente` tinyint NOT NULL,
  `noDocumentoCliente` tinyint NOT NULL,
  `tipoDocCliente` tinyint NOT NULL,
  `nombreCliente` tinyint NOT NULL,
  `apellidoCliente` tinyint NOT NULL,
  `direccionCliente` tinyint NOT NULL,
  `telefonoCliente` tinyint NOT NULL,
  `generoCliente` tinyint NOT NULL,
  `emailCliente` tinyint NOT NULL,
  `estadoCliente` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuarioFK` int(11) DEFAULT NULL,
  `fechaCompra` date NOT NULL,
  `subtotalCompra` double NOT NULL,
  `ivaCompra` double NOT NULL,
  `totalCompra` double NOT NULL,
  `estadoCompra` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `FK_idUsuarioFK_compra_idx` (`idUsuarioFK`),
  CONSTRAINT `FK_idUsuarioFK_compra` FOREIGN KEY (`idUsuarioFK`) REFERENCES `usuario` (`idUsuario`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (2,1,'2020-05-03',1274,0.09,1400,'Generado'),(3,2,'2020-05-03',9100,0.09,10000,'Generado'),(4,3,'2020-05-03',2730,0.09,3000,'Generado'),(5,4,'2020-05-03',10920,0.09,12000,'Generado'),(6,5,'2020-05-03',10920,0.09,12000,'Generado'),(7,6,'2020-05-03',9100,0.09,10000,'Generado'),(8,7,'2020-05-03',16380,0.09,18000,'Generado'),(9,8,'2020-05-03',910,0.09,1000,'Generado'),(10,9,'2020-05-03',13650,0.09,15000,'Generado'),(11,10,'2020-05-03',8190,0.09,9000,'Generado'),(12,11,'2020-05-03',2730,0.09,3000,'Generado'),(13,12,'2020-05-03',910,0.09,1000,'Generado'),(14,13,'2020-05-03',10920,0.09,12000,'Generado'),(15,14,'2020-05-03',5642,0.09,6200,'Generado'),(16,15,'2020-05-03',4550,0.09,5000,'Generado'),(17,16,'2020-05-03',6370,0.09,7000,'Generado'),(18,17,'2020-05-03',14560,0.09,16000,'Generado'),(19,18,'2020-05-03',10010,0.09,11000,'Generado'),(20,19,'2020-05-03',5269,0.09,5900,'Generado'),(21,20,'2020-05-03',1365,0.09,1500,'Generado'),(22,21,'2020-05-03',15470,0.09,17000,'Generado'),(23,22,'2020-05-03',10010,0.09,11000,'Generado'),(24,23,'2020-05-03',11830,0.09,13000,'Generado'),(25,24,'2020-05-03',6188,0.09,6800,'Generado'),(26,25,'2020-05-03',6188,0.09,6800,'Generado');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallecompra`
--

DROP TABLE IF EXISTS `detallecompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallecompra` (
  `idCompraFK` int(11) DEFAULT NULL,
  `idProductoFK` int(11) DEFAULT NULL,
  `cantidadDetCompra` int(11) DEFAULT NULL,
  `precioDetCompra` double NOT NULL,
  `subtotalDetCompra` double NOT NULL,
  `ivaDetCompra` double NOT NULL,
  KEY `FK_idCompraFK_detallecompra_idx` (`idCompraFK`),
  KEY `FK_idProductoFk_detallecompra_idx` (`idProductoFK`),
  CONSTRAINT `FK_idCompraFK_detallecompra` FOREIGN KEY (`idCompraFK`) REFERENCES `compra` (`idCompra`) ON UPDATE CASCADE,
  CONSTRAINT `FK_idProductoFk_detallecompra` FOREIGN KEY (`idProductoFK`) REFERENCES `producto` (`idProducto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallecompra`
--

LOCK TABLES `detallecompra` WRITE;
/*!40000 ALTER TABLE `detallecompra` DISABLE KEYS */;
INSERT INTO `detallecompra` VALUES (2,1,2,1400,1274,0.09),(3,2,2,10000,9100,0.09),(4,3,2,3000,2730,0.09),(5,4,2,12000,10920,0.09),(6,5,2,12000,10920,0.09),(7,6,2,10000,9100,0.09),(8,7,2,18000,16380,0.09),(9,8,2,1000,910,0.09),(10,9,2,15000,13650,0.09),(11,10,2,9000,8190,0.09),(12,11,2,3000,2730,0.09),(13,12,2,1000,910,0.09),(14,13,2,120000,10920,0.09),(15,14,2,6200,5642,0.09),(16,15,2,5000,4550,0.09),(17,16,2,7000,6370,0.09),(18,17,2,16000,14560,0.09),(19,18,2,11000,10010,0.09),(20,19,2,5900,5269,0.09),(21,20,2,1500,1365,0.09),(22,21,2,17000,15470,0.09),(23,22,2,11000,10010,0.09),(24,23,2,13000,11830,0.09),(25,24,2,6800,6188,0.09),(26,25,2,6800,6188,0.09);
/*!40000 ALTER TABLE `detallecompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleventa`
--

DROP TABLE IF EXISTS `detalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleventa` (
  `idVentaFK` int(11) NOT NULL,
  `idProductoFK` int(11) NOT NULL,
  `cantidadDetVenta` int(11) NOT NULL,
  `descripcionDetVenta` varchar(100) NOT NULL,
  `precioDetVenta` double NOT NULL,
  `descuentoDetVenta` double NOT NULL,
  `subtotalDetVenta` double NOT NULL,
  `ivaDetVenta` double NOT NULL,
  KEY `FK_idProductoFK_detalleventa_idx` (`idProductoFK`),
  KEY `FK_idVentaFK_detalleventa_idx` (`idVentaFK`),
  CONSTRAINT `FK_idProductoFK_detalleventa` FOREIGN KEY (`idProductoFK`) REFERENCES `producto` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_idVentaFK_detalleventa` FOREIGN KEY (`idVentaFK`) REFERENCES `venta` (`idVenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventa`
--

LOCK TABLES `detalleventa` WRITE;
/*!40000 ALTER TABLE `detalleventa` DISABLE KEYS */;
INSERT INTO `detalleventa` VALUES (1,25,1,'Ningunas',50000,0,50000,0.19),(2,1,1,'Ningunas',14476,0,14476,0),(3,2,1,'Ningunas',11091,0,11091,0),(4,3,1,'Ningunas',3404,0,3404,0),(5,4,1,'Ningunas',13932,0,13932,0),(6,5,1,'Ningunas',14126,0,14126,0),(7,6,1,'Ningunas',7098,0,7098,0),(8,7,1,'Ningunas',19106,0,19106,0),(9,8,1,'Ningunas',1238,0,1238,0),(10,9,1,'Ningunas',16529,0,16529,0),(11,10,1,'Ningunas',9800,0,9800,0),(12,11,1,'Ningunas',3490,0,3490,0),(13,12,1,'Ningunas',1374,0,1374,0),(14,13,1,'Ningunas',13917,0,13917,0),(15,14,1,'Ningunas',6395,0,6395,0),(16,15,1,'Ningunas',6001,0,6001,0),(17,16,1,'Ningunas',7341,0,7341,0),(18,17,1,'Ningunas',17646,0,17646,0),(19,18,1,'Ningunas',12801,0,12801,0),(20,19,1,'Ningunas',6048,0,6048,0),(21,20,1,'Ningunas',2077,0,2077,0),(22,21,1,'Ningunas',18005,0,18005,0),(23,22,1,'Ningunas',12909,0,12909,0),(24,23,1,'Ningunas',14570,0,14570,0),(25,24,1,'Ningunas',6931,0,6931,0);
/*!40000 ALTER TABLE `detalleventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `idCategoriaFK` int(11) DEFAULT NULL,
  `descripcionProducto` varchar(45) NOT NULL,
  `stockProducto` int(11) NOT NULL,
  `precioProducto` double NOT NULL,
  `tipoivaFK` int(11) DEFAULT NULL,
  `estadoProducto` varchar(10) NOT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `FK_TipoIva_producto_idx` (`tipoivaFK`),
  KEY `FK:idCategoria_producto_idx` (`idCategoriaFK`),
  CONSTRAINT `FK:idCategoria_producto` FOREIGN KEY (`idCategoriaFK`) REFERENCES `categoria` (`idCategoria`) ON UPDATE CASCADE,
  CONSTRAINT `FK_TipoIva_producto` FOREIGN KEY (`tipoivaFK`) REFERENCES `tipoiva` (`idTipoIva`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,1,'Carpeta',2,14476,1,'Activo'),(2,2,'Grapadora',2,11091,1,'Activo'),(3,3,'Adorno',2,3404,1,'Activo'),(4,4,'Mascara',2,13932,1,'Activo'),(5,5,'Serpentina x12',2,14126,1,'Activo'),(6,6,'EnvoltorioVerde x10',2,19106,1,'Activo'),(7,7,'OsoMediano',2,1238,1,'Activo'),(8,8,'BateriasDuracel',2,16529,1,'Activo'),(9,9,'PinturaPequeña',2,9800,1,'Activo'),(10,10,'GomasPaqueteGrande',2,3490,1,'Activo'),(11,11,'CasaMaqueta',2,1374,1,'Activo'),(12,12,'TintaImpresora',2,13917,1,'Activo'),(13,13,'PapelFotocopia',2,6395,1,'Activo'),(14,14,'Carcasa',2,6001,1,'Activo'),(15,15,'CajaGrande',2,7341,1,'Activo'),(16,16,'CajaTapaboca',2,17646,1,'Activo'),(17,17,'AntibacterialGrande',2,12801,1,'Activo'),(18,18,'CajaClavos',2,6048,1,'Activo'),(19,19,'DestornilladorPequeño',2,2077,1,'Activo'),(20,20,'MarcadoresGraficos',2,18005,1,'Activo'),(21,21,'PaqueteCartas',2,12909,1,'Activo'),(22,22,'Usb16',2,14570,1,'Activo'),(23,23,'HdmiLargo',2,6931,1,'Activo'),(24,24,'Maxsteel',2,7098,1,'Activo'),(25,25,'Maquillaje',2,50000,2,'Activo');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!50001 DROP VIEW IF EXISTS `productos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `productos` (
  `idProducto` tinyint NOT NULL,
  `idCategoriaFK` tinyint NOT NULL,
  `descripcionProducto` tinyint NOT NULL,
  `stockProducto` tinyint NOT NULL,
  `precioProducto` tinyint NOT NULL,
  `tipoivaFK` tinyint NOT NULL,
  `estadoProducto` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipoiva`
--

DROP TABLE IF EXISTS `tipoiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoiva` (
  `idTipoIva` int(11) NOT NULL,
  `descripcionTipoiva` varchar(30) NOT NULL,
  `porcentajeIva` double NOT NULL,
  `estadoTipoIva` varchar(10) NOT NULL,
  PRIMARY KEY (`idTipoIva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoiva`
--

LOCK TABLES `tipoiva` WRITE;
/*!40000 ALTER TABLE `tipoiva` DISABLE KEYS */;
INSERT INTO `tipoiva` VALUES (1,'Tipo1',0,'Activo'),(2,'Tipo2',5,'Activo'),(3,'Tipo3',19,'Activo');
/*!40000 ALTER TABLE `tipoiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `noDocumentoUsuario` varchar(15) CHARACTER SET latin1 NOT NULL,
  `tipoDocUsuario` varchar(20) CHARACTER SET latin1 NOT NULL,
  `nombreUsuario` varchar(40) CHARACTER SET latin1 NOT NULL,
  `apellidoUsuario` varchar(40) CHARACTER SET latin1 NOT NULL,
  `direccionUsuario` varchar(40) CHARACTER SET latin1 NOT NULL,
  `telefonoUsuario` varchar(12) CHARACTER SET latin1 NOT NULL,
  `generoUsuario` varchar(10) CHARACTER SET latin1 NOT NULL,
  `nickNameUsuario` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `claveUsuario` varchar(20) CHARACTER SET latin1 NOT NULL,
  `emailUsuario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `fechaCreaUsuario` date NOT NULL,
  `fotoUsuario` blob NOT NULL,
  `tipoUsuario` varchar(15) CHARACTER SET latin1 NOT NULL,
  `estadoUsuario` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `nickNameUsuario` (`nickNameUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'5300921882','Cedula','Andres','Reverte','calle 23 sur','5881953','Masculino','AndreReve','5300921882','AndresReverte@gmail.com','2020-05-03','','Vendedor','Activo'),(2,'6503881456','Cedula','Albert','Tejedo','Carrera 3 # ','5642839','Masculino','AlbeTeje','6503881456','AlbertTejedo@gmail.com','2020-05-03','','Vendedor','Activo'),(3,'9577616544','Cedula','Josep','Ballesta','Carrera 7 # ','2569596','Masculino','JoseBall','9577616544','JosepBallesta@gmail.com','2020-05-03','','Vendedor','Activo'),(4,'3726291882','Cedula','Jose','Cardona','Calle 4 No. ','5409402','Masculino','JoseCar','3726291882','JoseCardona@gmail.com','2020-05-03','','Vendedor','Activo'),(5,'7507215026','Cedula','Alejandro','Negrin','Calle 11 No.','3667290','Masculino','AleNegr','7507215026','AlejandroNegrin@gmail.com','2020-05-03','','Vendedor','Activo'),(6,'5933705695','Cedula','Luis','Heredia','Calle 24 N° ','9904077','Masculino','LuHered','5933705695','LuisHeredia@gmail.com','2020-05-03','','Vendedor','Activo'),(7,'7076308991','Cedula','Francisca','Casado','Av. Ciudad d','2241079','Femenino','FranCasa','7076308991','FranciscaCasado@gmail.com','2020-05-03','','Vendedor','Activo'),(8,'5762443003','Cedula','Concepcion','Rodrigues','Calle 48b su','2978388','Femenino','ConceRo','5762443003','ConcepcionRodrigues@gmail.com','2020-05-03','','Vendedor','Activo'),(9,'6843151015','Cedula','Pilar','Ferrado','Avenida Cra.','4189890','Femenino','PilFer','6843151015','PilarFerrado@gmail.com','2020-05-03','','Vendedor','Activo'),(10,'3738882452','Cedula','Santiago','Vicent','Calle 11 No.','9527236','Masculino','SantiVicen','3738882452','SantiagoVicent@gmail.com','2020-05-03','','Vendedor','Activo'),(11,'1453035684','Cedula','Jose','Solera','Calle 10 No.','8272941','Masculino','JosSole','1453035684','JoseSolera@gmail.com','2020-05-03','','Vendedor','Activo'),(12,'6791720847','Cedula','Juan','Gomariz','Carrera 20 N','5904684','Masculino','JuanGo','6791720847','JuanGomariz@gmail.com','2020-05-03','','Vendedor','Activo'),(13,'8428676161','Cedula','Daniel','Mondejar','Av. Calle 19','6167167','Masculino','DaniMonde','8428676161','DanielMondejar@gmail.com','2020-05-03','','Vendedor','Activo'),(14,'9535243852','Cedula','Maria','Holgado','Calle 109a N','3689113','Femenino','MariHol','9535243852','MariaHolgado@gmail.com','2020-05-03','','Vendedor','Activo'),(15,'2837247123','Cedula','Eva','Cañellas','Cr.8a # 15-6','3939666','Femenino','EvaCañe','2107778994','EvaCañellas@gmail.com','2020-05-03','','Vendedor','Activo'),(16,'5784300538','Cedula','Monica','Valenciano','Cr.9 # 74-99','2299567','Femenino','MoniValen','5784300538','MonicaValenciano@gmail.com','2020-05-03','','Vendedor','Activo'),(17,'9196660449','Cedula','Francisco','Maza','Carrera 1 Es','2164958','Masculino','FranMaz','9196660449','FranciscoMaza@gmail.com','2020-05-03','','Vendedor','Activo'),(18,'4551364782','Cedula','Felix','Sevillano','Cr.6 # 17-12','3259673','Masculino','FelSevill','4551364782','FelixSevillano@gmail.com','2020-05-03','','Vendedor','Activo'),(19,'5185499769','Cedula','Miguel','Alcalde','Carrera 7 Ca','6269353','Masculino','MigueAlca','5185499769','MiguelAlcalde@gmail.com','2020-05-03','','Vendedor','Activo'),(20,'8796974547','Cedula','Francisco','Armas','Av.19 #152-4','8449787','Masculino','FranArma','8796974547','FranciscoArmas@gmail.com','2020-05-03','','Vendedor','Activo'),(21,'4711511895','Cedula','Marc','Barea','Carrera 13 #','4506133','Masculino','MarBare','4711511895','MarcBarea@gmail.com','2020-05-03','','Vendedor','Activo'),(22,'9616102103','Cedula','Francisco','Palacios','Carrera 7 No','7147976','Masculino','FranPala','9616102103','FranciscoPalacios@gmail.com','2020-05-03','','Vendedor','Activo'),(23,'3186806224','Cedula','Alejandro','Portilla','Cl.90 # 11a-','1264829','Masculino','AlePort','3186806224','AlejandroPortilla@gmail.com','2020-05-03','','Vendedor','Activo'),(24,'4327447388','Cedula','Victor','Arranz','Calle 12# 2-','5679407','Masculino','VicArra','4327447388','VictorArranz@gmail.com','2020-05-03','','Vendedor','Activo'),(25,'9861884926','Cedula','Francisco','Cano','Calle 45A No','6539485','Masculino','FranCano','9861884926','FranciscoCano@gmail.com','2020-05-03','','Vendedor','Activo'),(27,'200364765','Cedula','Esteban','Pulido','calle 31 sur #23-82','3014899831','Masculino','Monzis','1000215349','dpulido59@gmail.com','2020-08-21','','Administrador','Activo'),(28,'1007320000','Cedula','Jhonny','Gil','calle 31 sur # 23 a 82','3192549100','Masculino','FreezerV18','lolxd','jhonnygilp2014@gmail.com','2020-08-21','','Administrador','Activo');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!50001 DROP VIEW IF EXISTS `usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `usuarios` (
  `idUsuario` tinyint NOT NULL,
  `noDocumentoUsuario` tinyint NOT NULL,
  `tipoDocUsuario` tinyint NOT NULL,
  `nombreUsuario` tinyint NOT NULL,
  `apellidoUsuario` tinyint NOT NULL,
  `direccionUsuario` tinyint NOT NULL,
  `telefonoUsuario` tinyint NOT NULL,
  `generoUsuario` tinyint NOT NULL,
  `nickNameUsuario` tinyint NOT NULL,
  `claveUsuario` tinyint NOT NULL,
  `emailUsuario` tinyint NOT NULL,
  `fechaCreaUsuario` tinyint NOT NULL,
  `fotoUsuario` tinyint NOT NULL,
  `tipoUsuario` tinyint NOT NULL,
  `estadoUsuario` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `idClienteFK` int(11) NOT NULL,
  `idUsuarioFK` int(11) NOT NULL,
  `fechaVenta` date NOT NULL,
  `subtotalVenta` double NOT NULL,
  `ivaVenta` double NOT NULL,
  `totalVenta` double NOT NULL,
  `estadoVenta` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `FK_idClienteFK_venta_idx` (`idClienteFK`),
  KEY `FK_idUsuarioFK_venta_idx` (`idUsuarioFK`),
  CONSTRAINT `FK_idClienteFK_venta` FOREIGN KEY (`idClienteFK`) REFERENCES `cliente` (`idCliente`) ON UPDATE CASCADE,
  CONSTRAINT `FK_idUsuarioFK_venta` FOREIGN KEY (`idUsuarioFK`) REFERENCES `usuario` (`idUsuario`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,4,3,'2020-05-03',50000,0.19,59500,'Activa'),(2,5,11,'2020-05-03',14476,0,14476,'Activa'),(3,6,23,'2020-05-03',11091,0,11091,'Activa'),(4,24,25,'2020-05-03',3404,0,3404,'Activa'),(5,5,21,'2020-05-03',13932,0,13932,'Activa'),(6,17,9,'2020-05-03',14126,0,14126,'Activa'),(7,21,5,'2020-05-03',7098,0,7098,'Activa'),(8,11,2,'2020-05-03',19106,0,19106,'Activa'),(9,2,23,'2020-05-03',1238,0,1238,'Activa'),(10,23,18,'2020-05-03',16529,0,16529,'Activa'),(11,18,1,'2020-05-03',9800,0,9800,'Activa'),(12,1,6,'2020-05-03',3490,0,3490,'Activa'),(13,6,10,'2020-05-03',1374,0,1374,'Activa'),(14,10,18,'2020-05-03',13917,0,13917,'Activa'),(15,18,23,'2020-05-03',6395,0,6395,'Activa'),(16,23,4,'2020-05-03',6001,0,6001,'Activa'),(17,4,6,'2020-05-03',7341,0,7341,'Activa'),(18,6,5,'2020-05-03',17646,0,17646,'Activa'),(19,5,11,'2020-05-03',12801,0,12801,'Activa'),(20,11,5,'2020-05-03',6048,0,6048,'Activa'),(21,5,22,'2020-05-03',2077,0,2077,'Activa'),(22,22,23,'2020-05-03',18005,0,18005,'Activa'),(23,23,21,'2020-05-03',12909,0,12909,'Activa'),(24,21,11,'2020-05-03',14570,0,14570,'Activa'),(25,13,10,'2020-05-03',6931,0,6931,'Activa');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `venta_usuario_cliente`
--

DROP TABLE IF EXISTS `venta_usuario_cliente`;
/*!50001 DROP VIEW IF EXISTS `venta_usuario_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `venta_usuario_cliente` (
  `venta` tinyint NOT NULL,
  `cliente` tinyint NOT NULL,
  `usuario` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'sena'
--
/*!50003 DROP PROCEDURE IF EXISTS `inacUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inacUsuario`(
in _idUsuario int(11)
)
begin 
				update sena.usuario set 
                estadoUsuario = 'Inactivo'
                where idUsuario = _idUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserUsuario`(
in _idUsuario int(11), 
in _noDocumentoUsuario varchar(15) , 
in _tipoDocUsuario varchar(20), 
in _nombreUsuario varchar(40), 
in _apellidoUsuario varchar(40),
in _direccionUsuario varchar (40),
in _telefonoUsuario varchar(12),
in _generoUsuario varchar(10),
in _nickNameUsuario varchar(15),
in _claveUsuario varchar(20),
in _emailUsuario varchar(50),
in _fechaCreaUsuario date,
in _tipoUsuario varchar(15),
in _estadoUsuario varchar(10)
)
begin
 insert into sena.usuario (idUsuario, noDocumentoUsuario, tipoDocUsuario, nombreUsuario, apellidoUsuario, direccionUsuario, telefonoUsuario, generoUsuario,
 nickNameUsuario, claveUsuario, emailUsuario, fechaCreaUsuario, tipoUsuario, estadoUsuario) values (_idUsuario, _noDocumentoUsuario, _tipoDocUsuario,
 _nombreUsuario, _apellidoUsuario, _direccionUsuario, _telefonoUsuario, _generoUsuario, _nickNameUsuario, _claveUsuario, _emailUsuario, 
 _fechaCreaUsuario, _tipoUsuario, _estadoUsuario);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `selectUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectUsuario`(
in _noDocumentoUsuario varchar(15)
)
begin 
				select * from usuario where noDocumentoUsuario = _noDocumentoUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updaUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updaUsuario`(
in _idUsuario int(11), 
in _noDocumentoUsuario varchar(15) , 
in _tipoDocUsuario varchar(20), 
in _nombreUsuario varchar(40), 
in _apellidoUsuario varchar(40),
in _direccionUsuario varchar (40),
in _telefonoUsuario varchar(12),
in _generoUsuario varchar(10),
in _nickNameUsuario varchar(15),
in _claveUsuario varchar(20),
in _emailUsuario varchar(50)
)
begin 
				update sena.usuario set 
                noDocumentoUsuario=_noDocumentoUsuario,
                tipoDocUsuario=_tipoDocUsuario,
                nombreUsuario=_nombreUsuario,
                apellidoUsuario=_apellidoUsuario,
                direccionUsuario=_direccionUsuario,
                telefonoUsuario=_telefonoUsuario,
                generoUsuario=_generoUsuario,
				nickNameUsuario=_nickNameUsuario,
                claveUsuario=_claveUsuario,
                emailUsuario=_emailUsuario
                where idUsuario = _idUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `clientes`
--

/*!50001 DROP TABLE IF EXISTS `clientes`*/;
/*!50001 DROP VIEW IF EXISTS `clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes` AS select `cliente`.`idCliente` AS `idCliente`,`cliente`.`noDocumentoCliente` AS `noDocumentoCliente`,`cliente`.`tipoDocCliente` AS `tipoDocCliente`,`cliente`.`nombreCliente` AS `nombreCliente`,`cliente`.`apellidoCliente` AS `apellidoCliente`,`cliente`.`direccionCliente` AS `direccionCliente`,`cliente`.`telefonoCliente` AS `telefonoCliente`,`cliente`.`generoCliente` AS `generoCliente`,`cliente`.`emailCliente` AS `emailCliente`,`cliente`.`estadoCliente` AS `estadoCliente` from `cliente` group by `cliente`.`idCliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productos`
--

/*!50001 DROP TABLE IF EXISTS `productos`*/;
/*!50001 DROP VIEW IF EXISTS `productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos` AS select `producto`.`idProducto` AS `idProducto`,`producto`.`idCategoriaFK` AS `idCategoriaFK`,`producto`.`descripcionProducto` AS `descripcionProducto`,`producto`.`stockProducto` AS `stockProducto`,`producto`.`precioProducto` AS `precioProducto`,`producto`.`tipoivaFK` AS `tipoivaFK`,`producto`.`estadoProducto` AS `estadoProducto` from `producto` group by `producto`.`idProducto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuarios`
--

/*!50001 DROP TABLE IF EXISTS `usuarios`*/;
/*!50001 DROP VIEW IF EXISTS `usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuarios` AS select `usuario`.`idUsuario` AS `idUsuario`,`usuario`.`noDocumentoUsuario` AS `noDocumentoUsuario`,`usuario`.`tipoDocUsuario` AS `tipoDocUsuario`,`usuario`.`nombreUsuario` AS `nombreUsuario`,`usuario`.`apellidoUsuario` AS `apellidoUsuario`,`usuario`.`direccionUsuario` AS `direccionUsuario`,`usuario`.`telefonoUsuario` AS `telefonoUsuario`,`usuario`.`generoUsuario` AS `generoUsuario`,`usuario`.`nickNameUsuario` AS `nickNameUsuario`,`usuario`.`claveUsuario` AS `claveUsuario`,`usuario`.`emailUsuario` AS `emailUsuario`,`usuario`.`fechaCreaUsuario` AS `fechaCreaUsuario`,`usuario`.`fotoUsuario` AS `fotoUsuario`,`usuario`.`tipoUsuario` AS `tipoUsuario`,`usuario`.`estadoUsuario` AS `estadoUsuario` from `usuario` group by `usuario`.`idUsuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `venta_usuario_cliente`
--

/*!50001 DROP TABLE IF EXISTS `venta_usuario_cliente`*/;
/*!50001 DROP VIEW IF EXISTS `venta_usuario_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `venta_usuario_cliente` AS select `venta`.`idVenta` AS `venta`,`cliente`.`nombreCliente` AS `cliente`,`usuario`.`nombreUsuario` AS `usuario` from ((`venta` join `cliente` on(`cliente`.`idCliente` = `venta`.`idClienteFK`)) join `usuario` on(`usuario`.`idUsuario` = `venta`.`idUsuarioFK`)) order by `venta`.`idVenta` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-23 11:09:39
