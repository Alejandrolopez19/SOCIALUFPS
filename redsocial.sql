-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2020 a las 21:25:07
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `redsocial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `imagen` varchar(255) COLLATE utf32_spanish2_ci NOT NULL,
  `codigo` int(255) NOT NULL,
  `texto` varchar(255) COLLATE utf32_spanish2_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf32_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf32_spanish2_ci NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`imagen`, `codigo`, `texto`, `titulo`, `fecha`, `id`) VALUES
('https://upload.wikimedia.org/wikipedia/commons/6/6f/White_Pitbull.jpg', 1234, 'Prueba en base de datos local', 'WELCOME TO UFPS', 'a', 1),
('https://i.imgur.com/OW1MsbC.jpg', 1234, 'prueba', 'Primero', 'a', 2),
('https://www.petclic.es/wikipets/wp-content/uploads/2013/04/bulldog-ingles.jpg', 1234567, 'perrito', 'ffaff', 'a', 3),
('https://ufpso.edu.co/images/simbolos/bandera_ufpso17.png', 1234567, 'Hoy no vamos a la u', 'SOCIAL UFPS', '9/3/2020', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codigo` int(255) NOT NULL,
  `nombre` varchar(25) COLLATE utf32_spanish2_ci NOT NULL,
  `correo` varchar(30) COLLATE utf32_spanish2_ci NOT NULL,
  `contrasena` varchar(10) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codigo`, `nombre`, `correo`, `contrasena`) VALUES
(1234, 'reinaldo', 'reinldo@gmail.com', '1234'),
(1234567, 'alejandro', 'ale@gm.com', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
