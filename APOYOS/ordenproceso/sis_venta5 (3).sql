-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2022 a las 16:59:29
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis_venta5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `NIT` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `NIT`, `telefono`, `direccion`, `ciudad`, `correo`, `usuario_id`, `estado`) VALUES
(6, 'PRODUCTOS ALIMENTICIOS DORIA SAS', '1234', '82936000', 'KM 5.6 TRONCAL OCCIDENTE - MOSQUERA', 'MOSQUERASS', 'productosdoria@gmail.com', 1, 1),
(7, 'FLA ', '45678', '310399331', 'Sabanetas', 'Medellin', 'fla@gmail.com', 1, 1),
(8, 'FABRICATO', '3993939393', '4494844', 'BELLO', 'MEDELLIN', 'FRABICATO@GMAIL.COM', 1, 1),
(9, 'ALMACENES E INDUSTRIAS ROCA S.A', '890900293 2', '3501100', 'CALLE 30 # 55 -122', 'MEDELLIN', 'facturacion.electronica@roca.c', 1, 1),
(19, 'AAA', 'IN', '34343', 'IN223', '2323', 'FF', 1, 1),
(20, 'AAA', 'IN', '34343', 'IN223', '2323', 'FF', 1, 1),
(21, 'COLGATE', '1122334455', '301838382', 'Envigado', 'Medellin', 'colgate@hotmail.com', 1, 1),
(22, 'COLGATE', '1122334455', '301838382', 'Envigado', 'Medellin', 'colgate@hotmail.com', 1, 1),
(23, 'MARGARITA', '92929', '292929', 'medellin', 'medellin', 'marga@hotmail.com', 1, 1),
(24, 'MARGARITA', '92929', '292929', 'medellin', 'medellin', 'marga@hotmail.com', 1, 1),
(25, 'SPOCPOCON', 'ON', '323', 'NO', 'N', 'ON', 1, 1),
(26, 'CORONA SA', '282828', '228282', 'SABANETA', 'MEDELLIN', 'CORONA@HOTMAIL.COM', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `NIT` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `NIT`, `nombre`, `telefono`, `email`, `direccion`) VALUES
(1, '9004955684-6', 'Giravan Sas', '4448452', 'sistemas@giravan.com', 'Cra. 47D No. 78 C Sur-43 Sabaneta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_permisos`
--

CREATE TABLE `detalle_permisos` (
  `id` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_permisos`
--

INSERT INTO `detalle_permisos` (`id`, `id_permiso`, `id_usuario`) VALUES
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 6, 2),
(13, 1, 4),
(14, 2, 4),
(15, 3, 4),
(16, 4, 4),
(17, 5, 4),
(18, 6, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` int(11) NOT NULL,
  `id_usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id`, `id_producto`, `id_venta`, `cantidad`, `precio`) VALUES
(178, 45, 338, 1, '0.00'),
(179, 45, 339, 1, '0.00'),
(180, 46, 340, 1, '0.00'),
(181, 46, 341, 1, '0.00'),
(182, 46, 342, 1, '0.00'),
(183, 45, 343, 1, '0.00'),
(184, 46, 344, 1, '0.00'),
(185, 45, 345, 1, '0.00'),
(186, 46, 346, 1, '0.00'),
(187, 45, 347, 1, '0.00'),
(188, 45, 348, 1, '0.00'),
(189, 46, 349, 1, '0.00'),
(190, 46, 350, 1, '0.00'),
(191, 46, 351, 1, '0.00'),
(192, 45, 352, 1, '0.00'),
(193, 46, 354, 1, '0.00'),
(194, 46, 356, 2, '0.00'),
(195, 46, 357, 1, '0.00'),
(196, 46, 358, 1, '0.00'),
(197, 45, 359, 1, '0.00'),
(198, 46, 361, 1, '0.00'),
(199, 46, 362, 1, '0.00'),
(200, 45, 363, 1, '0.00'),
(201, 46, 364, 1, '0.00'),
(202, 45, 365, 1, '0.00'),
(203, 46, 366, 1, '0.00'),
(204, 46, 367, 1, '0.00'),
(205, 46, 373, 1, '0.00'),
(206, 46, 374, 1, '0.00'),
(207, 46, 377, 1, '0.00'),
(208, 46, 379, 1, '0.00'),
(209, 46, 380, 1, '0.00'),
(210, 45, 381, 1, '0.00'),
(211, 46, 382, 1, '0.00'),
(212, 46, 385, 1, '0.00'),
(213, 46, 386, 1, '0.00'),
(214, 46, 387, 2, '0.00'),
(215, 45, 387, 1, '0.00'),
(216, 46, 388, 1, '0.00'),
(217, 46, 389, 1, '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoorden`
--

CREATE TABLE `estadoorden` (
  `codestadoorden` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadoorden`
--

INSERT INTO `estadoorden` (`codestadoorden`, `estado`) VALUES
(1, 'IMPORTACION'),
(2, 'PENDIENTE DE PAGO'),
(3, 'COMPRA NACIONAL'),
(4, 'CANCELADA'),
(5, 'DESPACHADO SIN FACTURA'),
(6, 'DESPACHADO CON FACTURA'),
(7, 'FACTURADO PARCIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mododespacho`
--

CREATE TABLE `mododespacho` (
  `codmododespacho` int(11) NOT NULL,
  `despacho` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mododespacho`
--

INSERT INTO `mododespacho` (`codmododespacho`, `despacho`) VALUES
(1, 'LOCAL'),
(2, 'BUS A LUGAR DE DESTINO'),
(3, 'TCC'),
(4, 'RECOGIDO POR EL CLIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `nombre`) VALUES
(1, 'configuración'),
(2, 'usuarios'),
(3, 'clientes'),
(4, 'productos'),
(5, 'ventas'),
(6, 'nueva_venta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codproducto` int(11) NOT NULL,
  `codigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `existencia` int(11) NOT NULL,
  `potencia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `relacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `velocidad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `voltaje` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `alimentacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `capacidad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tipopolipasto` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `izaje` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `dimensiones` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `longitud` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `amperaje` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codproducto`, `codigo`, `descripcion`, `modelo`, `precio`, `existencia`, `potencia`, `relacion`, `velocidad`, `voltaje`, `usuario_id`, `estado`, `alimentacion`, `capacidad`, `tipopolipasto`, `izaje`, `dimensiones`, `longitud`, `amperaje`, `cantidad`) VALUES
(45, '001', '', 'CARRO TESTERO 001', '0.00', -14, '', '', '', '', 1, 1, '', '600 TONELADAS ', '', '', '', '', '', ''),
(46, '002', '', 'BOTONERA SIN CABLE', '0.00', -36, '', '', '', '', 1, 1, '', '', '', '', '', '', '', ''),
(47, '003', '', '', '0.00', 0, '', '', '', '', 1, 1, '', '', '', '', '', '9000 METROS', '2000 AMPERIOS', ''),
(48, '004', '', '', '0.00', 0, '', '', '', '', 1, 1, 'Alimentacion3', '', '', '', '', 'Longitud3', 'Amperaje4', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposervicio`
--

CREATE TABLE `tiposervicio` (
  `codtiposervicio` int(11) NOT NULL,
  `servicio` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tiposervicio`
--

INSERT INTO `tiposervicio` (`codtiposervicio`, `servicio`) VALUES
(1, 'ORDEN DE COMPRA'),
(2, 'PRESTAMO'),
(3, 'GARANTIA'),
(4, 'CAMBIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `correo`, `usuario`, `clave`, `estado`) VALUES
(1, 'Jhon Esteban Agualimpia', 'sistemas@giravan.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'Servio Aguilar', 'ventas1@giravan.com', 'tulio', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'Catalina Garro', 'ventas@giravan.com', 'catalina', '21232f297a57a5a743894a0e4a801fc3', 1),
(4, 'Maria del Mar', 'facturacion@giravan.com', 'facturacion', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tiposervicio` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tiempoentrega` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ordeno` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcionfacturar` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `formapago` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nordencompra` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estadoorden` varchar(30) NOT NULL DEFAULT 'Seleccionar Estado',
  `numerofactura` varchar(30) NOT NULL,
  `mododespacho` varchar(30) NOT NULL,
  `numeroguia` varchar(30) NOT NULL,
  `archivo` varchar(30) NOT NULL,
  `tipo_archivo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_cliente`, `total`, `id_usuario`, `fecha`, `tiposervicio`, `tiempoentrega`, `ordeno`, `descripcionfacturar`, `formapago`, `nordencompra`, `observaciones`, `estadoorden`, `numerofactura`, `mododespacho`, `numeroguia`, `archivo`, `tipo_archivo`) VALUES
(387, 7, '0.00', 1, '2022-10-27 18:25:50', '1', '2022-01-01', 'nd', 'wdo', 'ondo', 'ndo', 'fefe', 'Seleccionar Estado', '', '', '', '', ''),
(388, 23, '0.00', 1, '2022-10-27 18:42:09', '1', '0008-01-08', '88', '8282', '8', '', 'er', 'Seleccionar Estado', '', '', '', '', ''),
(389, 7, '0.00', 1, '2022-10-27 19:52:12', '1', '2022-02-01', 'NN', 'OFWO', 'fof', '', 'ib', 'Seleccionar Estado', '', '', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_permisos`
--
ALTER TABLE `detalle_permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadoorden`
--
ALTER TABLE `estadoorden`
  ADD PRIMARY KEY (`codestadoorden`);

--
-- Indices de la tabla `mododespacho`
--
ALTER TABLE `mododespacho`
  ADD PRIMARY KEY (`codmododespacho`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codproducto`);

--
-- Indices de la tabla `tiposervicio`
--
ALTER TABLE `tiposervicio`
  ADD PRIMARY KEY (`codtiposervicio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_permisos`
--
ALTER TABLE `detalle_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT de la tabla `estadoorden`
--
ALTER TABLE `estadoorden`
  MODIFY `codestadoorden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `mododespacho`
--
ALTER TABLE `mododespacho`
  MODIFY `codmododespacho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `codproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `tiposervicio`
--
ALTER TABLE `tiposervicio`
  MODIFY `codtiposervicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
