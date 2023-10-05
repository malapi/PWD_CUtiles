-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2022 a las 12:15:22
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pwd_tigredb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `idespecie` int(11) NOT NULL,
  `especie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`idespecie`, `especie`) VALUES
(1, 'Bengala'),
(2, 'Amur'),
(3, 'Panthera tigris'),
(4, 'Colmillo de Sable'),

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tigres`
--

CREATE TABLE `tigres` (
  `idtigre` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `idespecie` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `peso` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tigres`
--

INSERT INTO `tigres` (`idtigre`, `nombre`, `idespecie`, `edad`, `peso`) VALUES
(1, 'Tigger ', 2, 12, 10),
(2, 'Tigress ', 1, 3, 23),
(3, 'Diego', 1, 500, 50),
(5, 'Simon', 3, 24, 123);

-- --------------------------------------------------------

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`idespecie`);


--
-- Indices de la tabla `tigres`
--
ALTER TABLE `tigres`
  ADD PRIMARY KEY (`idtigre`),
  ADD KEY `FK__especies` (`idespecie`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `especies`
--
ALTER TABLE `especies`
  MODIFY `idespecie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tigres`
--
ALTER TABLE `tigres`
  MODIFY `idtigre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tigres`
--
ALTER TABLE `tigres`
  ADD CONSTRAINT `FK__especies` FOREIGN KEY (`idespecie`) REFERENCES `especies` (`idespecie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
