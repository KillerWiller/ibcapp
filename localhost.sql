-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2022 a las 03:56:07
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ibcccecl_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Alu_Id` int(11) NOT NULL,
  `Alu_Rut` varchar(10) DEFAULT NULL,
  `Alu_Don` varchar(4) DEFAULT NULL,
  `Alu_Nombres` varchar(60) NOT NULL,
  `Alu_ApePaterno` varchar(60) NOT NULL,
  `Alu_ApeMaterno` varchar(60) DEFAULT NULL,
  `Alu_Telefono` varchar(12) DEFAULT NULL,
  `Alu_Email` varchar(60) DEFAULT NULL,
  `Alu_Direccion` varchar(200) DEFAULT NULL,
  `Alu_Comuna` varchar(60) DEFAULT NULL,
  `Alu_FecNacimiento` date NOT NULL,
  `Alu_Congregacion` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_curso`
--

CREATE TABLE `alumno_curso` (
  `AluCurId` int(11) NOT NULL,
  `Alu_Id` int(11) NOT NULL,
  `Cur_Id` int(11) NOT NULL,
  `Anio` int(11) NOT NULL,
  `Cur_Sede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credencial`
--

CREATE TABLE `credencial` (
  `Crd_Id` int(11) NOT NULL,
  `Crd_IdAlu` int(11) NOT NULL,
  `Crd_Anio` int(11) NOT NULL,
  `Crd_Vigencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `Cur_Id` int(11) NOT NULL,
  `Cur_Nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`Cur_Id`, `Cur_Nombre`) VALUES
(8, 'I PENTATEUCO'),
(9, 'II LIBROS HISTORICOS'),
(10, 'III PROFETAS'),
(11, 'IV TEOLOGIA'),
(12, 'V EVANGELIOS SINOPTICOS'),
(13, 'VI EPISTOLAS'),
(14, 'BACHILLER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `Sde_Id` int(11) NOT NULL,
  `Sde_Nombre` varchar(60) NOT NULL,
  `Sde_Direccion` varchar(100) NOT NULL,
  `Sde_Comuna` varchar(60) NOT NULL,
  `Sde_Region` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`Sde_Id`, `Sde_Nombre`, `Sde_Direccion`, `Sde_Comuna`, `Sde_Region`) VALUES
(1, 'Casa Central', 'Teresa Vial 1141', 'SAN MIGUEL', 'METROPOLINATA'),
(2, 'Cerro Navia', '', 'CERRO NAVIA', 'METROPOLINATA'),
(3, 'Copiapó', '', 'COPIAPO', 'ATACAMA'),
(4, 'Est. Central', '', 'EST. CENTRAL', 'METROPOLINATA'),
(5, 'Lo Prado', '', 'LO PRADO', 'METROPOLINATA'),
(6, 'Maipú', '', 'MAIPU', 'METROPOLINATA'),
(7, 'Paine', '', 'Paine', 'METROPOLINATA'),
(8, 'Parral', '', 'PARRAL', 'DEL MAULE'),
(9, 'Pudahuel', '', 'PUDAHUEL', 'METROPOLINATA'),
(10, 'Cerro Navia', '', 'CERRO NAVIA', 'METROPOLINATA'),
(11, 'Pte. Alto - Jireh', '', 'PUENTE ALTO', 'METROPOLINATA'),
(12, 'Pte. Alto - Primavera', '', 'PUENTE ALTO', 'METROPOLINATA'),
(13, 'Pte. Alto - Camino Internacional', '', 'PUENTE ALTO', 'METROPOLINATA'),
(19, 'On Line', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Alu_Id`),
  ADD KEY `Alu_Comuna` (`Alu_Comuna`),
  ADD KEY `Alu_Id` (`Alu_Id`);

--
-- Indices de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD PRIMARY KEY (`AluCurId`),
  ADD UNIQUE KEY `AluCurId` (`AluCurId`);

--
-- Indices de la tabla `credencial`
--
ALTER TABLE `credencial`
  ADD PRIMARY KEY (`Crd_Id`),
  ADD UNIQUE KEY `Crd_AluId` (`Crd_Id`),
  ADD KEY `Crd_IdAlu` (`Crd_IdAlu`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`Cur_Id`),
  ADD KEY `Cur_Id` (`Cur_Id`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`Sde_Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `Alu_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  MODIFY `AluCurId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `credencial`
--
ALTER TABLE `credencial`
  MODIFY `Crd_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `Cur_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `Sde_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD CONSTRAINT `alumno_curso_ibfk_2` FOREIGN KEY (`Cur_Sede`) REFERENCES `sedes` (`Sde_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_curso_ibfk_3` FOREIGN KEY (`Cur_Id`) REFERENCES `cursos` (`Cur_Id`);

--
-- Filtros para la tabla `credencial`
--
ALTER TABLE `credencial`
  ADD CONSTRAINT `credencial_ibfk_1` FOREIGN KEY (`Crd_IdAlu`) REFERENCES `alumnos` (`Alu_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
