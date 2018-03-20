-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-03-2018 a las 21:21:25
-- Versión del servidor: 5.7.21-0ubuntu0.17.10.1
-- Versión de PHP: 7.1.15-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Animal`
--

CREATE TABLE `Animal` (
  `CodAnimal` int(11) NOT NULL,
  `TipoAnimal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Animal`
--

INSERT INTO `Animal` (`CodAnimal`, `TipoAnimal`) VALUES
(1, 'Perro'),
(2, 'Gato'),
(3, 'Caballo'),
(4, 'Pajaro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Mascota`
--

CREATE TABLE `Mascota` (
  `CodMascota` int(11) NOT NULL,
  `NomMascota` varchar(50) NOT NULL,
  `NumHabitacion` int(11) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `CodAnimal` int(11) NOT NULL,
  `CodRaza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Mascota`
--

INSERT INTO `Mascota` (`CodMascota`, `NomMascota`, `NumHabitacion`, `Sexo`, `CodAnimal`, `CodRaza`) VALUES
(1, 'Leonida', 12, 'Macho', 1, 1),
(2, 'Micho', 1, 'Macho', 2, 11),
(3, 'Minis', 2, 'Hembra', 1, 1),
(4, 'Perri', 3, 'Macho', 1, 5),
(5, 'Carboncillo', 5, 'Macho', 3, 16),
(6, 'Blanquita', 9, 'Hembra', 3, 18),
(7, 'Valinder', 6, 'Hembra', 3, 18),
(8, 'Leona', 10, 'Hembra', 2, 5),
(10, 'Cerbero', 7, 'Macho', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Raza`
--

CREATE TABLE `Raza` (
  `CodRaza` int(11) NOT NULL,
  `NomRaza` varchar(50) NOT NULL,
  `CodAnimal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Raza`
--

INSERT INTO `Raza` (`CodRaza`, `NomRaza`, `CodAnimal`) VALUES
(1, 'Galgo', 1),
(2, 'Mastin', 1),
(3, 'Pastor Aleman', 1),
(4, 'Pastor Belga', 1),
(5, 'Doverman', 1),
(6, 'Dogo', 1),
(7, 'Pequines', 1),
(9, 'Romano', 2),
(10, 'Siames', 2),
(11, 'Maincoon', 2),
(12, 'Bengalí', 2),
(13, 'Persa', 2),
(15, 'Pinto', 3),
(16, 'Percheron', 3),
(17, 'Andaluz', 3),
(18, 'Arabe', 3),
(19, 'Tordo', 3),
(21, 'Verderon', 4),
(22, 'Jilguero', 4),
(23, 'Agapornis', 4),
(24, 'Guacamayo', 4),
(25, 'Ninfa', 4),
(26, 'Canario', 4),
(27, 'Periquito', 4),
(28, 'Otros', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Animal`
--
ALTER TABLE `Animal`
  ADD PRIMARY KEY (`CodAnimal`);

--
-- Indices de la tabla `Mascota`
--
ALTER TABLE `Mascota`
  ADD PRIMARY KEY (`CodMascota`),
  ADD KEY `CodAnimal` (`CodAnimal`),
  ADD KEY `CodRaza` (`CodRaza`);

--
-- Indices de la tabla `Raza`
--
ALTER TABLE `Raza`
  ADD PRIMARY KEY (`CodRaza`),
  ADD KEY `CodAnimal` (`CodAnimal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Animal`
--
ALTER TABLE `Animal`
  MODIFY `CodAnimal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Mascota`
--
ALTER TABLE `Mascota`
  MODIFY `CodMascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `Raza`
--
ALTER TABLE `Raza`
  MODIFY `CodRaza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Mascota`
--
ALTER TABLE `Mascota`
  ADD CONSTRAINT `Mascota_ibfk_1` FOREIGN KEY (`CodAnimal`) REFERENCES `Animal` (`CodAnimal`) ON DELETE CASCADE,
  ADD CONSTRAINT `Mascota_ibfk_2` FOREIGN KEY (`CodRaza`) REFERENCES `Raza` (`CodRaza`);

--
-- Filtros para la tabla `Raza`
--
ALTER TABLE `Raza`
  ADD CONSTRAINT `Raza_ibfk_1` FOREIGN KEY (`CodAnimal`) REFERENCES `Animal` (`CodAnimal`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
