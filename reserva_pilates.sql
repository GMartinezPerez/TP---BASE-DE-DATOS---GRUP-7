-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-06-2026 a las 18:41:15
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
-- Base de datos: `reserva_pilates`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clases`
--

CREATE TABLE `Clases` (
  `Id_Clase` int(11) NOT NULL,
  `Id_Instructor` int(11) NOT NULL,
  `Nombre_Clase` varchar(30) DEFAULT NULL,
  `Dia_Semana` varchar(10) NOT NULL,
  `Hora_inicio` time NOT NULL,
  `Capacidad_Maxima` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Clases`
--

INSERT INTO `Clases` (`Id_Clase`, `Id_Instructor`, `Nombre_Clase`, `Dia_Semana`, `Hora_inicio`, `Capacidad_Maxima`) VALUES
(1, 1, 'Reformer Inicial', 'Lunes', '08:00:00', 4),
(2, 5, 'Reformer Avanzado', 'Lunes', '18:00:00', 4),
(3, 3, 'Mat Pilates', 'Martes', '09:00:00', 4),
(4, 2, 'Stretching Integral', 'Martes', '19:00:00', 4),
(5, 1, 'Reformer Intermedio', 'Miércoles', '10:00:00', 4),
(6, 8, 'Flexibilidad', 'Jueves', '08:00:00', 4),
(7, 9, 'Reformer Inicial', 'Viernes', '17:00:00', 4),
(8, 4, 'Postura y Control', 'Viernes', '18:30:00', 4),
(9, 1, 'Reformer Intensivo', 'Sábado', '09:00:00', 4),
(10, 3, 'Circuito Mat', 'Sábado', '10:30:00', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clientes`
--

CREATE TABLE `Clientes` (
  `Id_Cliente` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Whatsap` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Clientes`
--

INSERT INTO `Clientes` (`Id_Cliente`, `Nombre`, `Apellido`, `Telefono`, `Email`, `Whatsap`) VALUES
(1, 'Laura', 'Gómez', '1122334455', 'laura.gomez@email.com', '1122334455'),
(2, 'Martín', 'Pérez', '1133445566', 'martin.perez@email.com', '1133445566'),
(3, 'Sofía', 'Rodríguez', '1144556677', 'sofia.rod@email.com', '1144556677'),
(4, 'Diego', 'Fernández', '1155667788', 'diego.fer@email.com', '1155667788'),
(5, 'Ana', 'Martínez', '1166778899', 'ana.martinez@email.com', '1166778899'),
(6, 'Carlos', 'López', '1177889900', 'carlos.lopez@email.com', '1177889900'),
(7, 'Lucía', 'González', '1188990011', 'lucia.gonzalez@email.com', '1188990011'),
(8, 'Javier', 'Díaz', '1199001122', 'javier.diaz@email.com', '1199001122'),
(9, 'Micaela', 'Alvarez', '1100112233', 'micaela.alv@email.com', '1100112233'),
(10, 'Tomás', 'Romero', '1111223344', 'tomas.romero@email.com', '1111223344');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Instructores`
--

CREATE TABLE `Instructores` (
  `Id_Instructor` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Especialidad` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Instructores`
--

INSERT INTO `Instructores` (`Id_Instructor`, `Nombre`, `Especialidad`) VALUES
(1, 'Valeria', 'Pilates Reformer'),
(2, 'Andrés', 'Yoga y Stretching'),
(3, 'Julieta', 'Pilates Mat y Funcional'),
(4, 'Esteban', 'Rehabilitación Postural'),
(5, 'Camila', 'Pilates Reformer Avanzado'),
(6, 'Marcos', 'Entrenamiento Funcional'),
(7, 'Florencia', 'Pilates para Embarazadas'),
(8, 'Nicolás', 'Stretching y Flexibilidad'),
(9, 'Mariana', 'Pilates Reformer Básico'),
(10, 'Gonzalo', 'Hatha Yoga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reservas`
--

CREATE TABLE `Reservas` (
  `Id_Reserva` int(11) NOT NULL,
  `Id_Cliente` int(11) NOT NULL,
  `Id_Clase` int(11) NOT NULL,
  `Fecha_Reserva` date NOT NULL,
  `Estado` varchar(10) DEFAULT 'Pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Reservas`
--

INSERT INTO `Reservas` (`Id_Reserva`, `Id_Cliente`, `Id_Clase`, `Fecha_Reserva`, `Estado`) VALUES
(1, 1, 1, '2026-06-29', 'Confirmada'),
(2, 2, 1, '2026-06-29', 'Confirmada'),
(3, 3, 2, '2026-06-29', 'Pendiente'),
(4, 4, 3, '2026-06-30', 'Confirmada'),
(5, 5, 5, '2026-07-01', 'Cancelada'),
(6, 6, 5, '2026-07-01', 'Confirmada'),
(7, 7, 8, '2026-07-03', 'Confirmada'),
(8, 8, 9, '2026-07-04', 'Confirmada'),
(9, 9, 9, '2026-07-04', 'Pendiente'),
(10, 10, 10, '2026-07-04', 'Confirmada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Clases`
--
ALTER TABLE `Clases`
  ADD PRIMARY KEY (`Id_Clase`),
  ADD KEY `Id_Instructor` (`Id_Instructor`);

--
-- Indices de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indices de la tabla `Instructores`
--
ALTER TABLE `Instructores`
  ADD PRIMARY KEY (`Id_Instructor`);

--
-- Indices de la tabla `Reservas`
--
ALTER TABLE `Reservas`
  ADD PRIMARY KEY (`Id_Reserva`),
  ADD KEY `Id_Cliente` (`Id_Cliente`),
  ADD KEY `Id_Clase` (`Id_Clase`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Clases`
--
ALTER TABLE `Clases`
  MODIFY `Id_Clase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `Id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Instructores`
--
ALTER TABLE `Instructores`
  MODIFY `Id_Instructor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Reservas`
--
ALTER TABLE `Reservas`
  MODIFY `Id_Reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Clases`
--
ALTER TABLE `Clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`Id_Instructor`) REFERENCES `Instructores` (`Id_Instructor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Reservas`
--
ALTER TABLE `Reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`Id_Cliente`) REFERENCES `Clientes` (`Id_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`Id_Clase`) REFERENCES `Clases` (`Id_Clase`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
