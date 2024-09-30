-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2024 a las 19:44:09
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nequi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia`
--

CREATE TABLE IF NOT EXISTS `guia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` char(35) NOT NULL,
  `apellido` char(35) NOT NULL,
  `fecha_nacimiento` time(6) NOT NULL,
  `num_documento` int(24) NOT NULL,
  `tipo_documento` int(10) NOT NULL,
  `direccion` char(90) NOT NULL,
  `celular` int(15) NOT NULL,
  `correo` int(60) NOT NULL,
  `estrato` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencia`
--

CREATE TABLE IF NOT EXISTS `transferencia` (
  `id` int(11) NOT NULL,
  `fecha_sys` datetime(6) NOT NULL,
  `num_origen` char(11) NOT NULL,
  `num_destino` char(11) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `transferencia`
--

INSERT INTO `transferencia` (`id`, `fecha_sys`, `num_origen`, `num_destino`, `valor`) VALUES
(0, '2024-09-30 12:08:12.000000', '3114558657', '3204456987', 75000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_de:_almuerzos`
--

CREATE TABLE IF NOT EXISTS `venta_de:_almuerzos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime(6) NOT NULL,
  `valor` int(11) NOT NULL,
  `documentos` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
