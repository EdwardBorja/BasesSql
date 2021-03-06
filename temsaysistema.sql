-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.12


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema temsa
--

CREATE DATABASE IF NOT EXISTS temsa;
USE temsa;

--
-- Definition of table `consignacion`
--

DROP TABLE IF EXISTS `consignacion`;
CREATE TABLE `consignacion` (
  `No_parte` varchar(45) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Entrada` varchar(45) NOT NULL,
  `Salida` varchar(45) NOT NULL,
  `Existencias` varchar(45) NOT NULL,
  `Fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`No_parte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consignacion`
--

/*!40000 ALTER TABLE `consignacion` DISABLE KEYS */;
INSERT INTO `consignacion` (`No_parte`,`Descripcion`,`Marca`,`Entrada`,`Salida`,`Existencias`,`Fecha`) VALUES 
 ('203','llanta','michelin','45','7','8','08/08');
/*!40000 ALTER TABLE `consignacion` ENABLE KEYS */;


--
-- Definition of table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
CREATE TABLE `cuentas` (
  `nombre` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuentas`
--

/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` (`nombre`,`password`,`tipo`,`imagen`) VALUES 
 ('eduardo','123','administrador','C:/Users/edward/Pictures/visera/Visera fomy personalizada.jpg'),
 ('temsa','123','administrador','C:/Users/edward/Desktop/camion.jpg');
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;


--
-- Definition of table `filtros`
--

DROP TABLE IF EXISTS `filtros`;
CREATE TABLE `filtros` (
  `No_filtro` varchar(45) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Entrada` varchar(45) NOT NULL,
  `Salida` varchar(45) NOT NULL,
  `Existencias` varchar(45) NOT NULL,
  `Fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`No_filtro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filtros`
--

/*!40000 ALTER TABLE `filtros` DISABLE KEYS */;
/*!40000 ALTER TABLE `filtros` ENABLE KEYS */;


--
-- Definition of table `focos`
--

DROP TABLE IF EXISTS `focos`;
CREATE TABLE `focos` (
  `Descripcion` varchar(45) NOT NULL,
  `Voltaje` varchar(45) NOT NULL,
  `Entrada` varchar(45) NOT NULL,
  `Salida` varchar(45) NOT NULL,
  `Existencias` varchar(45) NOT NULL,
  `Fecha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `focos`
--

/*!40000 ALTER TABLE `focos` DISABLE KEYS */;
INSERT INTO `focos` (`Descripcion`,`Voltaje`,`Entrada`,`Salida`,`Existencias`,`Fecha`) VALUES 
 ('lampara','7','6','5','4','6'),
 ('foco lamp','7','6','5','4','6');
/*!40000 ALTER TABLE `focos` ENABLE KEYS */;


--
-- Definition of table `herramientas`
--

DROP TABLE IF EXISTS `herramientas`;
CREATE TABLE `herramientas` (
  `Descripcion` varchar(45) NOT NULL,
  `Entrada` varchar(45) NOT NULL,
  `Salida` varchar(45) NOT NULL,
  `Existencias` varchar(45) NOT NULL,
  `Fecha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `herramientas`
--

/*!40000 ALTER TABLE `herramientas` DISABLE KEYS */;
/*!40000 ALTER TABLE `herramientas` ENABLE KEYS */;


--
-- Definition of table `llantas`
--

DROP TABLE IF EXISTS `llantas`;
CREATE TABLE `llantas` (
  `Rodado` varchar(45) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Entrada` varchar(45) NOT NULL,
  `Salida` varchar(45) NOT NULL,
  `Existencias` varchar(45) NOT NULL,
  `Fecha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llantas`
--

/*!40000 ALTER TABLE `llantas` DISABLE KEYS */;
INSERT INTO `llantas` (`Rodado`,`Marca`,`Tipo`,`Entrada`,`Salida`,`Existencias`,`Fecha`) VALUES 
 ('225','michelin','todo terreno','2','4','4','01/22/2014');
/*!40000 ALTER TABLE `llantas` ENABLE KEYS */;


--
-- Definition of table `refacciones`
--

DROP TABLE IF EXISTS `refacciones`;
CREATE TABLE `refacciones` (
  `No_refaccion` varchar(45) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Entrada` varchar(45) NOT NULL,
  `Salida` varchar(45) NOT NULL,
  `Existencias` varchar(45) NOT NULL,
  `Fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`No_refaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refacciones`
--

/*!40000 ALTER TABLE `refacciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `refacciones` ENABLE KEYS */;

--
-- Create schema sistema
--

CREATE DATABASE IF NOT EXISTS sistema;
USE sistema;

--
-- Definition of table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE `estudiantes` (
  `codigo_estudiante` varchar(30) NOT NULL DEFAULT '0',
  `nombre` varchar(45) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `carrera` varchar(45) DEFAULT NULL,
  `Turno` varchar(45) DEFAULT NULL,
  `Semestre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estudiantes`
--

/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` (`codigo_estudiante`,`nombre`,`telefono`,`carrera`,`Turno`,`Semestre`) VALUES 
 ('200','anahi','8888','administracion','matutino','5'),
 ('201','noe','2323222','administracion','matutino','2'),
 ('202','daniel','112343','artes','matutino','3'),
 ('203','eduardo','112343','computacion','vespertino','4'),
 ('204','jorge','9877','computacion','vespertino','6'),
 ('205','jose','354532','artes','vespertino','1'),
 ('206','alejandro','6756757','Estudios liberales','matutino','2');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;


--
-- Definition of table `laboratorios`
--

DROP TABLE IF EXISTS `laboratorios`;
CREATE TABLE `laboratorios` (
  `laboratorio` varchar(30) NOT NULL DEFAULT '0',
  `disponible` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratorios`
--

/*!40000 ALTER TABLE `laboratorios` DISABLE KEYS */;
INSERT INTO `laboratorios` (`laboratorio`,`disponible`) VALUES 
 ('3','si'),
 ('2','si'),
 ('6','si'),
 ('',''),
 ('3','si'),
 ('7','si');
/*!40000 ALTER TABLE `laboratorios` ENABLE KEYS */;


--
-- Definition of table `maestros`
--

DROP TABLE IF EXISTS `maestros`;
CREATE TABLE `maestros` (
  `codigo_maestro` varchar(30) NOT NULL DEFAULT '0',
  `nombre_maestro` varchar(45) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_maestro`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maestros`
--

/*!40000 ALTER TABLE `maestros` DISABLE KEYS */;
INSERT INTO `maestros` (`codigo_maestro`,`nombre_maestro`,`telefono`) VALUES 
 ('1','cesar','123'),
 ('10','Alejandra','83748'),
 ('11','juan jose','43564'),
 ('15','korkowski','456'),
 ('2','juan','1234'),
 ('2525','cesar','11871258'),
 ('3','cesar','3214'),
 ('4','noe','564757'),
 ('5','carmen','987667'),
 ('6','jonatan','76574'),
 ('7','marisela','9876543'),
 ('8','sergio','785676'),
 ('9','Tomas','343434');
/*!40000 ALTER TABLE `maestros` ENABLE KEYS */;


--
-- Definition of table `materias`
--

DROP TABLE IF EXISTS `materias`;
CREATE TABLE `materias` (
  `codigo_materia` varchar(30) NOT NULL DEFAULT '0',
  `materia` varchar(45) DEFAULT NULL,
  `horario_inicio` time DEFAULT NULL,
  `codigo_maestro` varchar(30) DEFAULT NULL,
  `horario_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materias`
--

/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` (`codigo_materia`,`materia`,`horario_inicio`,`codigo_maestro`,`horario_fin`) VALUES 
 ('100','Redes','07:00:00','2525','08:00:00'),
 ('101','Estructura de datos','08:00:00','2','09:00:00'),
 ('102','Graficos ','09:00:00','3','10:00:00'),
 ('103','Base de datos ','10:00:00','4','11:00:00'),
 ('104','Sistemas operativos','11:00:00','5','12:00:00'),
 ('105','Programacion web','12:00:00','6','13:00:00'),
 ('106','Programacion  java','13:00:00','7','14:00:00'),
 ('107','Economia','13:00:00','8','14:00:00'),
 ('108','Artesania 1','14:00:00','9','15:00:00'),
 ('109','Historia 1','14:00:00','10','15:00:00'),
 ('100','Redes','07:00:00','67','08:00:00'),
 ('107','economia','07:00:00','2525','08:00:00');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;


--
-- Definition of table `relacionem`
--

DROP TABLE IF EXISTS `relacionem`;
CREATE TABLE `relacionem` (
  `codigo_materia` varchar(30) DEFAULT '0',
  `codigo_estudiante` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relacionem`
--

/*!40000 ALTER TABLE `relacionem` DISABLE KEYS */;
INSERT INTO `relacionem` (`codigo_materia`,`codigo_estudiante`) VALUES 
 ('107','200'),
 ('109','201'),
 ('100','203'),
 ('107','206'),
 ('107','207'),
 ('108','208'),
 ('100','200');
/*!40000 ALTER TABLE `relacionem` ENABLE KEYS */;


--
-- Definition of table `remasterlab`
--

DROP TABLE IF EXISTS `remasterlab`;
CREATE TABLE `remasterlab` (
  `laboratorio` varchar(30) NOT NULL DEFAULT '0',
  `codigo_maestro` varchar(30) DEFAULT NULL,
  `entrada` time DEFAULT NULL,
  `salida` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remasterlab`
--

/*!40000 ALTER TABLE `remasterlab` DISABLE KEYS */;
INSERT INTO `remasterlab` (`laboratorio`,`codigo_maestro`,`entrada`,`salida`) VALUES 
 ('1','2','03:00:00','03:00:00'),
 ('4','1','07:00:00','08:00:00'),
 ('2','15','14:00:00','15:00:00'),
 ('1','1','07:00:00','08:00:00');
/*!40000 ALTER TABLE `remasterlab` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
