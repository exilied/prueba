-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-02-2017 a las 13:54:11
-- Versión del servidor: 5.5.43-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `steam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE IF NOT EXISTS `biblioteca` (
  `id_biblioteca` int(11) NOT NULL,
  `num_horas` int(11) NOT NULL,
  `capturas` text NOT NULL,
  `usuario` int(11) NOT NULL,
  `juego` int(11) NOT NULL,
  PRIMARY KEY (`id_biblioteca`),
  KEY `usuario` (`usuario`),
  KEY `juego` (`juego`),
  KEY `usuario_2` (`usuario`),
  KEY `juego_2` (`juego`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`id_biblioteca`, `num_horas`, `capturas`, `usuario`, `juego`) VALUES
(1, 523, 'Esto es un expositor donde puedes almacenar imagenes y comentarios ls usuarios. 11111', 1, 222),
(2, 678, 'Esto es un expositor donde puedes almacenar imagenes y comentarios ls usuarios. 2222222', 3, 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foro`
--

CREATE TABLE IF NOT EXISTS `foro` (
  `id_post` int(11) NOT NULL,
  `texto_post` text NOT NULL,
  `titulo_post` varchar(255) NOT NULL,
  `titulo_producto` varchar(255) NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_post`),
  KEY `usuario` (`usuario`),
  KEY `usuario_2` (`usuario`),
  KEY `usuario_3` (`usuario`),
  KEY `usuario_4` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `foro`
--

INSERT INTO `foro` (`id_post`, `texto_post`, `titulo_post`, `titulo_producto`, `usuario`) VALUES
(234, 'Esto es una prueba de que funciona el modo texto, es el segundo foro de discusiones de los usuarios.2222', 'Titulo aleatorio 2', 'Subnautica', 2),
(521, 'Esto es una prueba de que funciona el modo texto, es el primer foro de discusiones de los usuarios.111', 'Titulo aleatorio 1', 'For Honor ', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE IF NOT EXISTS `juegos` (
  `id_producto` int(11) NOT NULL,
  `titulo_producto` varchar(255) NOT NULL,
  `fecha_salida` date NOT NULL,
  `genero` varchar(255) NOT NULL,
  `desarrolladora` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id_producto`, `titulo_producto`, `fecha_salida`, `genero`, `desarrolladora`, `precio`) VALUES
(123, 'World of Warcraft', '2016-07-18', 'MMO-RPG', 'Blizzard', 60.78),
(133, 'World of Warcraft:Legion', '2016-07-02', 'MMO-RPG', 'Blizzard', 60.78),
(134, 'League Of Legends', '2017-02-14', 'MOBA', 'RIOT', 666.6),
(222, 'Counter Strike : Global Offensive', '2016-04-13', 'FPS', 'Valve', 25.54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `username` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `metodo_pago` text NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `fecha_registro`, `username`, `nombre`, `apellidos`, `metodo_pago`) VALUES
(1, '2017-02-01', 'exilied', 'juan', 'antonio', 'paypal'),
(2, '2017-02-02', 'cristiangm', 'cristian', 'gomez', 'paypal'),
(3, '2017-01-18', 'vanitas_war', 'roberto', 'perez', 'visa'),
(4, '2017-01-30', 'cloud', 'pepe', 'navarro', 'visa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
