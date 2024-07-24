-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2024 a las 16:31:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `roomstandproyectdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciontb`
--

CREATE TABLE `habitaciontb` (
  `num_habit` int(3) NOT NULL,
  `ubic_habit` varchar(30) DEFAULT NULL,
  `descripcion` int(100) DEFAULT NULL,
  `disponib` tinyint(4) DEFAULT NULL,
  `capacidad` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoteltb`
--

CREATE TABLE `hoteltb` (
  `id_hotel` int(10) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `telefono` int(10) DEFAULT NULL,
  `direc` varchar(30) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huespedtb`
--

CREATE TABLE `huespedtb` (
  `num_id` int(12) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `tel_clie` int(10) DEFAULT NULL,
  `nacionalidad` varchar(15) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietariotb`
--

CREATE TABLE `propietariotb` (
  `id_propiet` int(10) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_habitacion`
--

CREATE TABLE `registro_habitacion` (
  `id_registro` int(10) NOT NULL,
  `habitfk` int(3) DEFAULT NULL,
  `hotelfk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_hotel`
--

CREATE TABLE `registro_hotel` (
  `id_registro` int(10) NOT NULL,
  `propietfk` int(10) DEFAULT NULL,
  `hotelfk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciontb`
--

CREATE TABLE `reservaciontb` (
  `id_reservacion` int(10) NOT NULL,
  `hotelfk` int(10) DEFAULT NULL,
  `habitfk` int(3) DEFAULT NULL,
  `huespedfk` int(12) DEFAULT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time NOT NULL,
  `valor_habitacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciostb`
--

CREATE TABLE `serviciostb` (
  `nombre_servicio` varchar(15) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `habitaciontb`
--
ALTER TABLE `habitaciontb`
  ADD PRIMARY KEY (`num_habit`);

--
-- Indices de la tabla `hoteltb`
--
ALTER TABLE `hoteltb`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indices de la tabla `huespedtb`
--
ALTER TABLE `huespedtb`
  ADD PRIMARY KEY (`num_id`);

--
-- Indices de la tabla `propietariotb`
--
ALTER TABLE `propietariotb`
  ADD PRIMARY KEY (`id_propiet`);

--
-- Indices de la tabla `registro_habitacion`
--
ALTER TABLE `registro_habitacion`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `habitfk` (`habitfk`),
  ADD KEY `hotelfk` (`hotelfk`);

--
-- Indices de la tabla `registro_hotel`
--
ALTER TABLE `registro_hotel`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `propietfk` (`propietfk`),
  ADD KEY `hotelfk` (`hotelfk`);

--
-- Indices de la tabla `reservaciontb`
--
ALTER TABLE `reservaciontb`
  ADD PRIMARY KEY (`id_reservacion`),
  ADD KEY `hotelfk` (`hotelfk`),
  ADD KEY `habitfk` (`habitfk`),
  ADD KEY `huespedfk` (`huespedfk`);

--
-- Indices de la tabla `serviciostb`
--
ALTER TABLE `serviciostb`
  ADD PRIMARY KEY (`nombre_servicio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registro_habitacion`
--
ALTER TABLE `registro_habitacion`
  ADD CONSTRAINT `registro_habitacion_ibfk_2` FOREIGN KEY (`hotelfk`) REFERENCES `hoteltb` (`id_hotel`);

--
-- Filtros para la tabla `registro_hotel`
--
ALTER TABLE `registro_hotel`
  ADD CONSTRAINT `registro_hotel_ibfk_1` FOREIGN KEY (`propietfk`) REFERENCES `propietariotb` (`id_propiet`),
  ADD CONSTRAINT `registro_hotel_ibfk_2` FOREIGN KEY (`hotelfk`) REFERENCES `hoteltb` (`id_hotel`);

--
-- Filtros para la tabla `reservaciontb`
--
ALTER TABLE `reservaciontb`
  ADD CONSTRAINT `reservaciontb_ibfk_1` FOREIGN KEY (`hotelfk`) REFERENCES `hoteltb` (`id_hotel`),
  ADD CONSTRAINT `reservaciontb_ibfk_3` FOREIGN KEY (`huespedfk`) REFERENCES `huespedtb` (`num_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
