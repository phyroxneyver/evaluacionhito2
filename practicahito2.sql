-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.31 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test`;

-- Volcando estructura para tabla test.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla test.users: ~54 rows (aproximadamente)
INSERT INTO `users` (`id`, `name`) VALUES
	(24, 'Abby Ward'),
	(21, 'Aleksandra Devine'),
	(43, 'Aston Simmonds'),
	(47, 'Aston Simmonds'),
	(15, 'Beth Skywalker'),
	(26, 'Bridget Wooten'),
	(10, 'Coby Kelleigh'),
	(20, 'Darrah Shadow'),
	(9, 'Drake Adelaide'),
	(12, 'Elizabeth Stewart'),
	(19, 'Gareth Solderini'),
	(42, 'Gregor Bryant'),
	(46, 'Gregor Bryant'),
	(13, 'Hannah Strickland'),
	(52, 'Harvey Frame'),
	(7, 'Imogene Thad'),
	(53, 'Ismaeel Carty Loco'),
	(41, 'Issac Calderon'),
	(45, 'Issac Calderon'),
	(2, 'Jane Doe'),
	(5, 'Jaslyn Keely'),
	(40, 'Jax Howe'),
	(39, 'Joey Whyte'),
	(1, 'John Doe'),
	(17, 'Joseph Stewart'),
	(34, 'Julia Greaves'),
	(31, 'Junior Douglas'),
	(32, 'Kaiden Bentley'),
	(16, 'Kenneth Sanders'),
	(30, 'Keziah Knapp'),
	(28, 'Kirstie Thomas'),
	(33, 'Lawrence Murphy'),
	(14, 'Leah Shan'),
	(51, 'Marcus Best'),
	(29, 'Maya Paine'),
	(23, 'Myla Bostock'),
	(50, 'Nathaniel Khan'),
	(4, 'Peers Sera'),
	(6, 'Richard Breann'),
	(3, 'Rusty Terry'),
	(37, 'Sacha Gross'),
	(27, 'Sally Castillo'),
	(11, 'Sarah Sanders'),
	(18, 'Seth Sonnel'),
	(38, 'Shannon Peterson'),
	(25, 'Shayan Clements'),
	(49, 'Shoaib Vickers'),
	(35, 'Sulaiman Gilmour'),
	(44, 'Taran Morin'),
	(48, 'Taran Morin'),
	(22, 'Thelma Kim'),
	(8, 'Tillie Sharalyn'),
	(36, 'Virgil Collier');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
