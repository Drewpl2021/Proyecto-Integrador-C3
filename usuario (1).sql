-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-07-2023 a las 03:34:38
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_bolsa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `us_id` int NOT NULL,
  `us_usuario` varchar(50) NOT NULL,
  `us_password` varchar(25) NOT NULL,
  `us_rol` varchar(1) DEFAULT NULL COMMENT '1=administrador,2=empresa,3=egresado,4=docente,5=institucion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`us_id`, `us_usuario`, `us_password`, `us_rol`) VALUES
(1, 'La molina', 'Molina Tu Papá', '2'),
(2, 'San Isidro', 'Isidro123', '2'),
(3, 'Miraflores', 'MiRaflores2023', '2'),
(4, 'Barranco', 'Barranco456', '2'),
(5, 'San Borja', 'BorjaPass789', '2'),
(6, 'Lince', 'Lince123', '2'),
(7, 'Surco', 'SurcoPass2023', '2'),
(8, 'San Miguel', 'SanMiguel789', '2'),
(9, 'Chorrillos', 'Chorrillos123', '2'),
(10, 'Magdalena', 'Magdalena456', '2'),
(11, 'Callao', 'CallaoPass2023', '2'),
(12, 'Breña', 'Breña789', '2'),
(13, 'Surquillo', 'Surquillo123', '2'),
(14, 'Pastorino', 'Waracino', '3'),
(15, 'Juanito78', 'MiClaveSecreta', '3'),
(16, 'Luisa21', 'LuisaPassword', '3'),
(17, 'Pedrito12', 'Pedro123', '3'),
(18, 'Maria34', 'MariaPassword', '3'),
(19, 'Carlos99', 'Carlos2023', '3'),
(20, 'Sofia45', 'SofiaPass789', '3'),
(21, 'Andres67', 'Andres2023', '3'),
(22, 'Laura23', 'Laura789', '3'),
(23, 'Ana56', 'AnaPassword', '3'),
(24, 'Roberto87', 'Roberto2023', '3'),
(25, 'Carolina10', 'Carolina123', '3'),
(26, 'David76', 'DavidPassword', '3'),
(27, 'Patricia29', 'Patricia789', '3'),
(28, 'Alejandro43', 'Alejandro2023', '3'),
(29, 'Marcela51', 'MarcelaPass789', '3'),
(30, 'ProfMamalon', 'Profito', '4'),
(31, 'Tiznado', 'Tiznado159', '4'),
(32, 'Rosendo', 'Rosendo456', '4'),
(33, 'Carlos', 'Carlos123', '4'),
(34, 'Admin', 'admin123', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`us_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `us_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
