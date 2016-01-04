-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-01-2016 a las 17:36:46
-- Versión del servidor: 5.7.10-log
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `initekumenapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datadevices`
--

CREATE TABLE IF NOT EXISTS `datadevices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddevice` tinytext NOT NULL,
  `altitude` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Volcado de datos para la tabla `datadevices`
--

INSERT INTO `datadevices` (`id`, `iddevice`, `altitude`) VALUES
(1, 'SNR568478', 7.5),
(2, 'SNR058964', 15.6),
(3, 'SNR568478', 7.6),
(4, 'SNR568478', 8),
(5, 'SNR568478', 8.5),
(6, 'SNR568478', 8.6),
(7, 'SNR568478', 9.3),
(8, 'SNR568478', 10.1),
(9, 'SNR568478', 9.3),
(10, 'SNR568478', 8),
(11, 'SNR568478', 7.4),
(12, 'SNR568478', 7.2),
(13, 'SNR058964', 14),
(14, 'SNR058964', 13),
(15, 'SNR058964', 12),
(16, 'SNR058964', 11),
(17, 'SNR058964', 10),
(18, 'SNR058964', 9),
(19, 'SNR058964', 8),
(20, 'SNR058964', 7),
(21, 'SNR058964', 6),
(22, 'SNR058964', 6.5),
(23, 'SNR058964', 4),
(24, 'SNR058964', 4.3),
(25, 'SNR058964', 3.9),
(26, 'SNR568478', 8),
(27, 'SNR568478', 8.3),
(28, 'SNR568478', 9.4),
(29, 'SNR568478', 9.5),
(30, 'SNR568478', 8.5),
(31, 'SNR568478', 7.2),
(32, 'SNR578965', 6.6),
(33, 'SNR014528', 7.7),
(34, 'SNR014528', 5.6),
(35, 'SNR258469', 5.6),
(36, 'SNR258469', 2.5),
(37, 'SNR258469', 2.6),
(38, 'SNR748501', 2.2),
(39, 'SNR963023', 6.6),
(40, 'SNR014528', 3.5),
(41, 'SNR963023', 6.1),
(42, 'SNR058964', 4.2),
(43, 'SNR963023', 6.8),
(44, 'SNR963023', 6.4),
(45, 'SNR963023', 7.4),
(46, 'SNR963023', 6.3),
(47, 'SNR963023', 3.3),
(48, 'SNR963023', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infodevices`
--

CREATE TABLE IF NOT EXISTS `infodevices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddevice` tinytext NOT NULL,
  `name` tinytext NOT NULL,
  `description` tinytext NOT NULL,
  `limitup` float NOT NULL,
  `limitdown` float NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `address` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `infodevices`
--

INSERT INTO `infodevices` (`id`, `iddevice`, `name`, `description`, `limitup`, `limitdown`, `latitude`, `longitude`, `address`) VALUES
(1, 'SNR568478', 'Ramis', 'This river is dangerous because around of this there are a lot of people living, to pay attention the village near of this.', 10, 6, -15.2558, -69.870689, 'River Ramis, Province Puno'),
(2, 'SNR058964', 'Ucayali', 'This river is one of most important in Peru, its ports are: Atalaya, Pucalpa, Coronel.', 7, 3, -10.507042, -73.994584, 'River Ucayali, Province Ucayali'),
(3, 'SNR258469', 'Rimac', 'The river Rimac is the most important river in Lima, because it crosses all Lima, but this point in where start this river.', 5.6, 1.4, -11.736705, -76.273718, 'San Mateo,Huarochiri, Lima, Peru'),
(4, 'SNR963023', 'Junin', 'description', 6.5, 3.4, -10.932675, -76.215319, 'Junin, Junin, Peru'),
(5, 'SNR014528', 'Paron', 'description', 9.8, 3.6, -8.998028, -77.679928, 'Huaylas, Ancash, Peru'),
(6, 'SNR578965', 'Pacucha', 'Description', 8.3, 3.7, -13.600612, -73.317111, 'Andahualas, Apurimas, Peru'),
(7, 'SNR748501', 'Pomacanchi', 'Description', 5.6, 2.3, -14.022005, -71.545775, 'Apomayo, Cusco, Peru');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
