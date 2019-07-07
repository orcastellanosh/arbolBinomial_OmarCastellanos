-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2019 a las 00:04:24
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `binomial_db`
--
CREATE DATABASE IF NOT EXISTS `binomial_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `binomial_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nodos`
--

CREATE TABLE `nodos` (
  `id` int(100) NOT NULL,
  `padre` int(10) NOT NULL,
  `hijo` int(10) NOT NULL,
  `estado` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nodos`
--

INSERT INTO `nodos` (`id`, `padre`, `hijo`, `estado`) VALUES
(2, 45, 23, NULL),
(3, 45, 12, NULL),
(4, 23, 41, NULL),
(5, 23, 87, NULL),
(6, 41, 5, NULL),
(7, 41, 67, NULL),
(8, 67, 52, NULL),
(9, 67, 8, NULL),
(10, 87, 15, NULL),
(11, 87, 90, NULL),
(12, 12, 78, NULL),
(13, 12, 40, NULL),
(14, 78, 38, NULL),
(15, 40, 11, NULL),
(16, 11, 20, NULL),
(17, 11, 71, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `nodos`
--
ALTER TABLE `nodos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `nodos`
--
ALTER TABLE `nodos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
