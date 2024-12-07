-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2024 a las 22:27:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaventa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `dni` int(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`, `fecha`) VALUES
(1, 1234, 'jose miguel', 7895478, 'lima=peru', '2023-05-13 20:42:46'),
(2, 12345, 'carla muños', 7825687, 'buenosaires=argentina', '2023-05-13 20:43:34'),
(4, 123456, 'maria camila', 6789664, 'bolivia', '2024-11-13 19:41:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `rut` varchar(20) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `nombre`, `rut`, `telefono`, `direccion`, `razon`) VALUES
(10, 'tecnology global', '564897897', 7825687, 'Bogota=Colombia', 'tecnology global');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `cod_pro` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id`, `cod_pro`, `cantidad`, `precio`, `id_venta`) VALUES
(1, 566346, 2, 456456.00, 3),
(2, 1256, 3, 452.00, 4),
(3, 566346, 5, 456456.00, 4),
(4, 5641651, 2, 1000.00, 5),
(5, 6511651, 5, 1000.00, 5),
(6, 1256, 5, 452.00, 5),
(7, 566346, 5, 456456.00, 6),
(8, 6511651, 2, 1000.00, 6),
(9, 651616, 2, 50000.00, 6),
(10, 123, 2, 100000.00, 7),
(11, 1234, 5, 50000.00, 7),
(12, 12345, 6, 50000.00, 7),
(13, 1234, 5, 50000.00, 8),
(14, 123456, 5, 600000.00, 8),
(15, 123, 5, 100000.00, 9),
(16, 123456, 5, 600000.00, 9),
(17, 1234, 5, 50000.00, 9),
(18, 1234, 5, 50000.00, 10),
(19, 123, 1, 100000.00, 11),
(20, 1234, 4, 50000.00, 11),
(21, 123, 3, 100000.00, 12),
(22, 123, 3, 100000.00, 13),
(23, 1234, 5, 50000.00, 13),
(24, 1, 1, 20000.00, 14),
(25, 3, 1, 5000.00, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `proveedor`, `stock`, `precio`, `fecha`) VALUES
(1, '1', 'lavado agua jabon', 'carwash', 10000, 15000.00, '2024-12-07 16:23:45'),
(2, '2', 'lavado y desengrasante', 'carwash', 10000, 20000.00, '2024-12-07 16:25:12'),
(3, '3', 'lavado y polichada', 'carwash', 10000, 25000.00, '2024-12-07 16:25:12'),
(4, '4', 'lavado kit de arrastre', 'carwash', 10000, 30000.00, '2024-12-07 16:26:08'),
(5, '5', 'aspirado', 'carwash', 10000, 10000.00, '2024-12-07 16:26:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `rut` int(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `rut`, `nombre`, `telefono`, `direccion`, `fecha`) VALUES
(2, 564564, 'linio', 456456, 'peru', '2023-05-13 09:24:39'),
(3, 4042345, 'opensource', 546456456, 'chile', '2023-05-13 09:25:12'),
(5, 546464, 'editado', 564654, 'editado', '2023-05-12 15:31:00'),
(6, 12223, 'sponsor', 1235467, 'argentina', '2024-11-13 19:42:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `pass`, `rol`) VALUES
(1, 'cristian', 'cristian.rueda@gmail.com', '123', 'Administrador'),
(2, 'angela santamaria', 'santamariaang@gmail.com', '12345', 'Asistente'),
(3, 'prueba', 'prueba@gmail.com', '123', 'Asistente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `vendedor` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `cliente`, `vendedor`, `total`, `fecha`) VALUES
(14, 'jose miguel', 'cristian', 25000.00, '18/11/2024');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
