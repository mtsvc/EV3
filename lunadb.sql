-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-12-2021 a las 01:42:49
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lunadb`
--

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `dcv`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `dcv`;
CREATE TABLE IF NOT EXISTS `dcv` (
`COUNT(votos)` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marvelcontent`
--

DROP TABLE IF EXISTS `marvelcontent`;
CREATE TABLE IF NOT EXISTS `marvelcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(300) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `autor` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marvelcontent`
--

INSERT INTO `marvelcontent` (`id`, `titulo`, `descripcion`, `autor`, `url`) VALUES
(1, 'Los vengadores', 'pepito', 'comic de los avengers en pdf', 'https://www.planetadelibros.com/libros_contenido_extra/41/40382_Los_Vengadores_Coleccion_de_aventuras%202.pdf');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `marvelv`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `marvelv`;
CREATE TABLE IF NOT EXISTS `marvelv` (
`COUNT(votos)` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `sentryv`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `sentryv`;
CREATE TABLE IF NOT EXISTS `sentryv` (
`COUNT(votos)` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

DROP TABLE IF EXISTS `temas`;
CREATE TABLE IF NOT EXISTS `temas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET latin1 NOT NULL,
  `descripcion` varchar(200) CHARACTER SET utf32 NOT NULL,
  `autor` varchar(200) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `nombre`, `descripcion`, `autor`) VALUES
(2, 'Marvel', 'Universo cinematográfico', 'Admin'),
(4, 'DC', 'Universo cinematográfico', 'Admin'),
(9, 'Sentry', 'pepito', 'Personaje de Marvel'),
(10, 'Elecciones ', 'Elecciones 2021 Chile', 'pipin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videosmarvel`
--

DROP TABLE IF EXISTS `videosmarvel`;
CREATE TABLE IF NOT EXISTS `videosmarvel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(300) NOT NULL,
  `autor` varchar(300) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videosmarvel`
--

INSERT INTO `videosmarvel` (`id`, `titulo`, `autor`, `descripcion`, `url`) VALUES
(1, 'test', 'admin', 'probanding', 'www.google.cl'),
(3, 'test3', 'pipin', 'trailer de otro pesonaje', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HjzATzdlN2A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votaciones`
--

DROP TABLE IF EXISTS `votaciones`;
CREATE TABLE IF NOT EXISTS `votaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `votos` varchar(300) NOT NULL,
  `estado` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `votaciones`
--

INSERT INTO `votaciones` (`id`, `nombre`, `votos`, `estado`) VALUES
(1, 'Marvel', '1', 'activo'),
(3, 'Marvel', '1', 'activo'),
(5, 'DC', '1', 'activo'),
(6, 'DC', '1', 'activo'),
(7, 'Sentry', '1', 'pendiente'),
(8, 'Sentry', '1', 'pendiente'),
(9, 'Sentry', '1', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura para la vista de `dcv` exportada como una tabla
--
DROP TABLE IF EXISTS `dcv`;
CREATE TABLE IF NOT EXISTS `dcv`(
    `COUNT(votos)` bigint(21) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Estructura para la vista de `marvelv` exportada como una tabla
--
DROP TABLE IF EXISTS `marvelv`;
CREATE TABLE IF NOT EXISTS `marvelv`(
    `COUNT(votos)` bigint(21) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Estructura para la vista de `sentryv` exportada como una tabla
--
DROP TABLE IF EXISTS `sentryv`;
CREATE TABLE IF NOT EXISTS `sentryv`(
    `COUNT(votos)` bigint(21) NOT NULL DEFAULT '0'
);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
