-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para mascotas
CREATE DATABASE IF NOT EXISTS `mascotas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `mascotas`;

-- Volcando estructura para tabla mascotas.mascota
CREATE TABLE IF NOT EXISTS `mascota` (
  `idmascota` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL DEFAULT '',
  `tipo_mascota` int(11) NOT NULL DEFAULT 0,
  `propietario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmascota`),
  KEY `FK_mascota_propietario` (`propietario`),
  KEY `FK_mascota_tipo_mascota` (`tipo_mascota`),
  CONSTRAINT `FK_mascota_propietario` FOREIGN KEY (`propietario`) REFERENCES `propietario` (`idpropietario`),
  CONSTRAINT `FK_mascota_tipo_mascota` FOREIGN KEY (`tipo_mascota`) REFERENCES `tipo_mascota` (`idtipo_mascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla mascotas.mascota: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
REPLACE INTO `mascota` (`idmascota`, `nombre`, `tipo_mascota`, `propietario`) VALUES
	(1, 'firulais', 1, 1),
	(2, 'lulu', 2, 2),
	(3, 'fifi', 2, 2),
	(4, 'das', 1, 2);
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;

-- Volcando estructura para tabla mascotas.propietario
CREATE TABLE IF NOT EXISTS `propietario` (
  `idpropietario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `comentarios` text DEFAULT NULL,
  PRIMARY KEY (`idpropietario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla mascotas.propietario: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
REPLACE INTO `propietario` (`idpropietario`, `nombre`, `direccion`, `telefono`, `correo`, `comentarios`) VALUES
	(1, 'Daniel', 'm 40 c 25', '7123456', 'daniel@mail.com', 'abc'),
	(2, 'pepito', 'cra40 c 45', '3124545757', 'pepito@mail.com', 'asdasda'),
	(3, 'usuario', 'asdas', '131231', 'asdasd', 'asdas'),
	(4, 'rerer', 'rerwwewe', 'wewew', 'wwww', 'ffff');
/*!40000 ALTER TABLE `propietario` ENABLE KEYS */;

-- Volcando estructura para tabla mascotas.tipo_mascota
CREATE TABLE IF NOT EXISTS `tipo_mascota` (
  `idtipo_mascota` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`idtipo_mascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla mascotas.tipo_mascota: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_mascota` DISABLE KEYS */;
REPLACE INTO `tipo_mascota` (`idtipo_mascota`, `descripcion`) VALUES
	(1, 'poddle'),
	(2, 'labrador');
/*!40000 ALTER TABLE `tipo_mascota` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
