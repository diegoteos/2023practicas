-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2023 a las 17:11:56
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis_venta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `NIT`, `telefono`, `direccion`, `ciudad`, `correo`, `usuario_id`, `estado`) VALUES
(1, 'HRA UNIQUIMICA S.A.S.', '890910468 7', '3229848', 'CALLE 80 SUR # 54 -79', 'LA ESTRELLA', 'siesaferecepcion@siesa.com ', 3, 1),
(2, 'MEALS DE COLOMBIA S.A.S', '860008448 2', '6439120', 'CALLE 98 No. 70-90', 'BOGOTA', 'recepcion_fe@cremhelado.com.co', 3, 1),
(3, 'COMPAÑIA COLOMBIANA DE CERAMICA S A S', '860002536 5', '6446500', 'CL 100 8 A 55 TO C P 9', 'BOGOTA', 'rec_fact_cc@corona.com.co', 3, 1),
(4, 'DISENO Y FABRICACION DE MAQUINARIA S.A. S', '800096434-7', '4443327', 'CALLE 49 SUR No 43A- 85', 'ENVIGADO', 'facturacion@dyf.com.co', 3, 1),
(5, 'RAFAEL DEL CASTILLO & CIA. S.A.', '890400372 0', '6625027', 'BRR BOSQUE AV PEDRO VELEZ 20 65', 'CARTAGENA', '890400372@factureinbox.co', 3, 1),
(6, 'C.I TECNOLOGIA ALIMENTARIA S.A.S', '800027374 9', '3183705636', 'CRA 50 GG N°12 SUR 07', 'MEDELLIN', 'recepcionfe@citalsa.com', 3, 1),
(7, 'TAGHLEEF INDUSTRIES', '800048943-1', '3218011970', 'Calle 79A #18-41 Oficina 304', 'CARTAGENA - COLOMBIA', 'astrid.martinez@ti-films.com', 2, 1),
(8, 'AJOVER DARNEL S.A.S', '860013771-7', '5756930062', 'Calle 65 Bis No. 91-82', 'CARTAGENA-COLOMBIA', 'gdelavalle@ajover.com', 6, 1),
(9, 'K-C Internal Only', '8600157533', '6002854', 'Autopista Norte Km.5 Vereda Canavita Tocancipá, Colombia.', 'Tocancipa', 'cesar.c.montano@kcc.com ', 6, 1),
(10, 'TRAMEC S.A.S', '830109078 5', '8966121', 'PARQUE INDUSTRIAL LUTRANSA BODEGA 11 ENTRADA PARCELAS KM2', 'COTA-CUNDINAMARCA', 'auxcompras@tramecltda.com', 2, 1),
(11, 'IOMAS S.A.S', '900639856 6', '3116216979', 'Calle 9 # 1-5 LC VTE LA BADEA', 'Dos quebradas - Risaralda', 'aruiz@iomas.com.co', 2, 1),
(12, 'PLASTICOS Y RESINAS S.A.S', '900175318 2', '3709878', 'Calle 31 # 23-50', 'Barranquilla - Atlantico', 'plasticosyresinas2021@gmail.co', 2, 1),
(13, 'PRODUCTOS ALIMENTICIOS SEVILLA S.A', '811021097 6', '4412300', 'CL 71 # 67-46', 'Medellìn ', 'dfa@faizan.com.co', 2, 1),
(14, 'CORROSION Y PROTECCION S.A.S.', '900426722-3', '4236872', 'CL 32 41 24', 'ITAGUI', 'corroyprot@une.net.co', 7, 1),
(15, 'PERMODA LTDA', '860516806', '2948999', 'CL 17A # 68D-88', 'BOGOTA', 'ericalc@permoda.com.co', 2, 1),
(16, 'SULFOQUIMICA S.A', '890905893 4', '3701170', 'CL 55 #46-85', 'ITAGUI', 'psanchez@sulfoquimica.com', 2, 1),
(17, 'SERVIACEROS DE COLOMBIA S.A.S.', '900489429-1', '3183679442', 'CARRERA 5 ESTE #15-93 MOSQUERA', 'MOSQUERA', 'ingenieria@serviperfiles.com', 7, 1),
(18, 'MVM INDUSTRIES S.A.S', '9008422390', '3052303951', 'CL 75A #64B - 56', 'MEDELLIN ', 'contabilidad@mvmindustries.com', 2, 1),
(19, 'CLUB DE EQUITACION EQUUS', '811035736 5', '3171159', 'KM 13 VIA LAS PALMAS ', 'MEDELLIN ', 'administracion@equus.com.co', 2, 1),
(20, 'CASA SUECA S.A', '890301956 7', '3402751', 'CL 10Bis # 32-74', 'pereira', 'recepcionfe@casasueca.com', 2, 1),
(21, 'COOPERATIVA COLANTA', '890904478 6', '6044455555', 'CL 74 #64 A - 51', 'MEDELLIN', 'andresmh@colanta.com.co', 2, 1),
(22, 'LADRILLERA LA CLAY S.A.S.', '800025379', '6930167', 'MAMONAL CARRETERA A DOLORES POSTE 90', 'CARTAGENA', 'asistentecompras@laclay.com', 7, 1),
(23, 'Tecnopotencia SAS', '900602099-7', '3148285204', 'CALLE 46D SUR No 42D-80', 'CALI', 'gerencia@tecnopotencia.net', 6, 1),
(24, 'TECNOTRANSMISIONES MEDELLIN S.A.S', '811031834 0', '3127937740', 'CRA 43 # 34 SUR - 32', 'MEDELLIN', 'Facturacion@tecnotransmisiones', 2, 1),
(25, 'TEAM FOOD COLOMBIA S.A', '860000006 4', '3442689', 'VIA 40 # 53B-71', 'BARRANQUILLA', 'facturaelectronica@team.co', 2, 1),
(26, 'UMO S.A', '890906197 0', '6040990', 'PAR IND LA BRAZUELA KM 22 AUT MED BOG ', 'GUARNE - COLOMBIA ', 'facturacion@umo.com.co', 2, 1),
(27, 'TODO HERRAJES SOCIEDAD POR ACCIONES SIMPLIFICADA', '830503243 3', '3167554778', 'CL 103 # 46-393', 'COPACABANA', 'gerencia@todoherrajes.com', 2, 1),
(28, 'MAQUINADOS Y MONTAJES S.A.S', '800226501 1', '3153773866', 'CR 16 # 60-14', 'GIRON-SANTANDER ', 'maqymon@gmail.com', 2, 1),
(29, 'EQUIMACO LTDA', '830028457 5', '2519920', 'CRA 77 No 76-27 ', 'BOGOTA', 'facturacion@equimaco.com', 2, 1),
(30, 'ZONA FRANCA ARGOS S.A.S', '900164755-0', '18000527467', 'ZN INDSUTRIAL MAMONAL KM7', 'CARTAGENA', 'lsepulvedaa@argos.com.co', 7, 1),
(31, 'CHAKS PRODUCTOS ALIMENTICIOS S.A.S', '811034102 1 ', '3002036209', 'CL 78D SUR.  47F  86', 'SABANETA ', 'contabilidad@recolquim.com.co', 2, 1),
(32, 'GRANOS Y CEREALES DE COLOMBIA S.A.', '890106814 4 ', '3133975990', 'KM 11 VIA YOPAL AGUAZUL VEREDA EL CHARTE ', 'YOPAL ', 'Recepcionfacturas@granosycerea', 2, 1),
(33, 'CONSORCIO CONSTRUCTOR ATLANTICO STR SAS', '901418104', '2149185', 'CRA 9A # 113-52 Torres Unidas 2 OFI 1503', 'Bogota', 'monica.tabares@cca-epc.com', 7, 1),
(34, 'RODAMIENTOS RETENEDORES Y CADENAS S.A.S', '901337998-0', '3115522663', 'CR 51  38 21 SUR ', 'BOGOTA', 'facturacion@rodamiento.com', 2, 1),
(35, 'COMPANIA INDUSTRIAL DE PRODUCTOS AGROPECUARIOS S.A', '890907163-5', '5200950', 'CR 49A 23 45', 'BELLO ', 'recepcionfacturas@cipa.com.co', 2, 1),
(36, 'MTO SOLUCIONES INDUSTRIALES S.A.S', '900666339-4', '8924684', 'CL 43 5 10 AP 803 A ', 'MANIZALES ', 'ingenieria.mtosoluciones@gmail', 2, 1),
(37, 'IMPORTSOLUCIONES S.A.S', '830139893-1', '3174422786', 'CALLE 102 #70G- 45', 'BOGOTA', 'alexandra.acevedo@importsoluci', 2, 1),
(38, 'PRODUCTOS ALIMENTICIOS LAS CASERITAS S.A ', '900080654-3', '4440325', 'CR 43A # 61 SUR -75', 'SABANETA', 'compras@lascaseritas.com.co', 2, 1),
(39, 'ENKA DE COLOMBIA S.A ', '890903474-2', '3162027', 'CRA 37 A # 8-43', 'MEDELLIN', 'daniel.muneton@enka.com.co', 2, 1),
(40, 'ETEX COLOMBIA S.A', '890800148-3', '8745641', 'Parque Industrial Juanchito km14', 'Manizales ', 'valeria.toro@etexgroup.com', 7, 1),
(41, 'CEMEX COLOMBIA S.A', '860002523-1', '6039789', 'CRA 65B #18B-02', 'BOGOTA', 'ERIK.MONTANO@EXT.CEMEX.COM', 2, 1),
(42, 'PAPELES Y CARTONES S.A', '890925108-6', '5407200', 'TRONCAL DEL NORDESTE 999-18 ', 'BARBOSA', 'Carlos.gomez@papelsa.com', 2, 1),
(43, 'ENCERT INGENIERIA S.A.S', '901038783-1', '3023449080', 'CR 77 # 45B-67', 'MEDELLIN', 'Larssen.florez@encert.com.co', 2, 1),
(44, 'CORRUFLEX S.A.S', '901296548-2', '3006516969', 'CR 52# 9 SUR - 33', 'MEDELLIN', 'Cimesa2@gmail.com', 2, 1),
(45, 'PRODUCTORA ANDINA DE COLORANTES S.A.S', '800202080-9', '3222800', 'CR 51# 6SUR - 45', 'MEDELLIN ', 'facturacionelectronica@andicol.com.co', 2, 1),
(46, 'CARTON COLOMBIA S.A', '890300406-3', '3100000', 'VIA 40 # 85-695', 'BARRANQUILLA ', 'maritza.ochoa@smurfitkappa.com.co', 2, 1),
(47, 'EDUARDO BOTERO SOTO', '890901321-5', '3226764498', 'CR 42 No 75-63', 'itagui', 'umunoz@boterosoto.com.co', 7, 1),
(48, 'DEXCO ZONA FRANCA S.A.S.', '900338494-1', '4062555', 'VIA HATILLO BARBOSA KM 1 PUNTO 3 ANTES DE LA CABECERA MUNICIPAL', 'BARBOSA', 'facturacionelectronicamdf@dex.co', 7, 1),
(49, 'QUIMICA BASICA SAS', '800015603-9', '3176585078', 'LA VIRGINIA Km 2 VIA BALBOA INGENIO RISARALDA', 'BALBOA, RISARALDA', 'facturaelectronica@quimicabasica.com', 7, 1),
(50, 'NAVAR ASOCIADOS S.A.S', '9004510103', '6051266', 'CR 43 9 SUR 195 OF 83', 'MEDELLIN', 'compras@damasa.com.co', 7, 1),
(51, 'PRODUCTOS ALIMENTICIOS DORIA S.A.S', '860017055-1', '8293600', 'Km5,6 TRONCAL DE OCCIDENTE ', 'BOGOTA MOSQUERA', 'facturacion@pastasdoria.com', 2, 1),
(52, 'SOLPAK S.A', '811022489-4', '4486292', 'CL 98 SUR 48-225 VARIANTE CALDAS KM 3', 'CALDAS ', 'apino@solpak.com.co', 2, 1),
(53, 'LUBRIRETENES Y RODAMIENTOS S.A.S', '800215562-3', '7440007', 'CR 27 # 13-30', 'BOGOTA', 'daniel.romero@ftcia.com', 2, 1),
(54, 'JETROSOFT INTERNATIONAL LTDA', '900140417-2', '3165354888', 'CALLE 213 # 114-10', 'BOGOTA', 'carlosi@jetrosoft.com.co', 2, 1),
(55, 'ALICO S.A', '890928257-9', '3600030', 'CLL 10 SUR # 50FF-127', 'MEDELLIN', 'gestiondocumental@alico-sa.com ', 2, 1),
(56, 'INDUSTRIS DE ALIMENTOS ZENU S.A.S', '811035741-2', '4705222', 'CRA 64C # 104-03', 'MEDELLIN ', 'MZENU@ZENU.COM.CO', 2, 1),
(57, 'DIME DISEÑOS METALICOS SAS', '900495207-6', '3128604629', 'CL 73 72A B 47 IN 133', 'MEDELLIN', 'contabilidad@dimedm.com', 7, 1),
(58, 'TERNIUM DEL ATLANTICO S.A.S', '901131909-1', '4447799', 'RUTA 25 KM PR48+600 PALMAR DE VERELA ', 'ATLANTICO ', 'facturas.tatlantico@axesefactura.com', 2, 1),
(59, 'DITAR S.A ', '802005820-5', '3319001', 'KM 7 VIA JUAN MINA FT EDS TERPEL ', 'BARRANQUILLA ', '802005820@factureinbox.co', 2, 1),
(60, 'COLOMBIANA KIMBERLY COLPAPEL S.A.S', '860015753-3', '3117643280', 'CALLE 20# 21-602 INT 101', 'BARBOSA ', 'Aicardo.Diaz@kcc.com', 2, 1),
(61, 'CONTROL Y AUTOMATIZACION INDUSTRIAL CONTROLMATICA S.A.S', '900606828-8', '4488531', 'CALLE 73 # 72AB-85 BODEGA 10A', 'MEDELLIN', 'facturacion@controlmatica.com.co', 2, 1),
(62, 'HERMANOS TECNIPALMA INGENIERIA SAS', '900438414-1', '6086561085', 'CR 23 5 95 BRR PABLO EMILIO', 'ACACIAS META', 'hnostecnipalma@tecnipalma.net', 7, 1),
(63, 'ELECTRICIDAD Y PROYECTOS MJ S.A.S', '901101408-3', '3128867862', 'CALLE 52 # 1D - 32 ', 'CALI ', 'gerencia@eypmjsas.net', 2, 1),
(64, 'TECNAS S.A', '800011002-4', '3134775565', 'CARRERA 50G # 12 SUR - 29', 'MEDELLIN ', 'mantenimiento@tecnas.com.co', 2, 1),
(65, 'PPG INDUSTRIES COLOMBIA LTDA', '900007650-4', '4448452', 'ITAGUI', 'CALLE 51 # 40 - 13 ', 'recepcionfacturasppg@facturaenlinea.co', 2, 1),
(66, 'SOS SOLUCION INDUSTRIAL SAS', '900904532-1', '3146081983', 'TCC PPAL CALI ', 'CALI', 'comercial@solind.com.co', 2, 1),
(67, 'ARIS MINING SEGOVIA', '900306309', '3123354206', 'AV 10 # 52-80 BELLO - PARQUE EMPRESARIAL NORTIKO - BODEGA #6', 'BELLO', 'facturas.segovia@aris-mining.co', 7, 1),
(68, 'CORTAMOS Y DOBLAMOS SA', '900054514 - 0', '3043889687', 'CARRERA 48 No 78 C SUR 68', 'SABANETA', '_', 7, 1),
(69, 'GRUPO AGROPACK S.A.S', '901334974-0', '6074070', 'CALLE 33 # 41 - 66 ', 'ITAGUI ', 'contabilidad@grupoagropack.com', 2, 1),
(70, 'LUBRICARTE S.A.S', '900885180-1', '6022725', 'DG 58 # 42 - 29', 'MEDELLIN - LAS GRANJAS ', 'lubricarte.elartedelubricar@gmail.com', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `NIT`, `nombre`, `telefono`, `email`, `direccion`) VALUES
(1, '9004955684-6', 'Giravan Sas', '4448452', 'sistemas@giravan.com', 'Cra. 47D No. 78 C Sur-43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_permisos`
--

CREATE TABLE `detalle_permisos` (
  `id` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_permisos`
--

INSERT INTO `detalle_permisos` (`id`, `id_permiso`, `id_usuario`) VALUES
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 6, 2),
(19, 3, 3),
(20, 4, 3),
(21, 5, 3),
(22, 6, 3),
(23, 3, 6),
(24, 4, 6),
(25, 5, 6),
(26, 6, 6),
(27, 3, 7),
(28, 4, 7),
(29, 5, 7),
(30, 6, 7),
(31, 1, 5),
(32, 3, 5),
(33, 4, 5),
(34, 5, 5),
(35, 6, 5),
(37, 1, 4),
(38, 2, 4),
(39, 3, 4),
(40, 4, 4),
(41, 5, 4),
(42, 6, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` int(11) NOT NULL,
  `id_usuario` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `incluye` varchar(30) NOT NULL
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
  `precio` decimal(10,2) NOT NULL,
  `incluye` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id`, `id_producto`, `id_venta`, `cantidad`, `precio`, `incluye`) VALUES
(1, 1, 1, 1, '3490000.00', ''),
(2, 2, 2, 1, '4237200.00', ''),
(3, 3, 3, 1, '3528600.00', ''),
(4, 4, 4, 1, '4165600.00', ''),
(5, 1, 5, 1, '1000000.00', ''),
(6, 5, 6, 1, '0.00', ''),
(7, 6, 7, 1, '273700.00', ''),
(8, 7, 8, 1, '6008000.00', ''),
(9, 8, 9, 1, '4571600.00', ''),
(10, 8, 10, 2, '2285800.00', ''),
(11, 8, 11, 2, '2285800.00', ''),
(12, 10, 12, 1, '9163000.00', ''),
(13, 9, 12, 1, '4893000.00', ''),
(14, 11, 13, 3, '1159000.00', ''),
(15, 12, 13, 5, '1496000.00', ''),
(16, 13, 14, 1, '1340000.00', ''),
(17, 14, 15, 1, '2979000.00', ''),
(18, 15, 16, 1, '2592000.00', ''),
(19, 16, 17, 1, '2857000.00', ''),
(20, 16, 18, 1, '2857000.00', ''),
(21, 18, 19, 1, '400000.00', ''),
(22, 17, 19, 1, '4000000.00', ''),
(23, 21, 20, 1, '5500000.00', ''),
(24, 19, 20, 1, '7074000.00', ''),
(25, 20, 20, 1, '5209000.00', ''),
(26, 23, 21, 1, '2151000.00', ''),
(27, 24, 22, 1, '1748000.00', ''),
(28, 22, 23, 2, '950000.00', ''),
(29, 22, 24, 2, '950000.00', ''),
(30, 22, 25, 2, '0.00', ''),
(31, 22, 26, 2, '950000.00', ''),
(32, 22, 27, 2, '950000.00', ''),
(33, 23, 28, 2, '230000.00', ''),
(34, 26, 29, 1, '7860000.00', ''),
(35, 27, 30, 1, '2357200.00', ''),
(36, 28, 31, 20, '232000.00', ''),
(37, 29, 32, 1, '6750000.00', ''),
(38, 30, 33, 1, '2390000.00', ''),
(39, 31, 34, 1, '1963100.00', ''),
(40, 1, 34, 1, '3570000.00', ''),
(41, 32, 35, 1, '12480000.00', ''),
(42, 33, 37, 1, '4735000.00', ''),
(43, 23, 37, 1, '675000.00', ''),
(44, 33, 38, 1, '4735000.00', ''),
(45, 23, 38, 1, '675000.00', ''),
(46, 33, 39, 1, '4735000.00', ''),
(47, 23, 39, 1, '675000.00', ''),
(48, 34, 40, 1, '7430000.00', ''),
(49, 35, 41, 1, '3324000.00', ''),
(50, 36, 42, 1, '8730000.00', ''),
(51, 37, 42, 1, '1484000.00', ''),
(52, 37, 43, 1, '1484000.00', ''),
(53, 36, 43, 1, '8730000.00', ''),
(54, 38, 44, 1, '799000.00', ''),
(55, 40, 45, 1, '0.00', ''),
(56, 39, 45, 1, '12900000.00', ''),
(57, 41, 46, 1, '7904285.00', ''),
(58, 42, 47, 1, '4400000.00', ''),
(59, 43, 48, 3, '5280000.00', ''),
(60, 44, 49, 1, '1750000.00', ''),
(61, 45, 50, 1, '1100000.00', ''),
(62, 46, 51, 2, '7195000.00', ''),
(63, 48, 52, 1, '823000.00', ''),
(64, 47, 52, 1, '8527000.00', ''),
(65, 49, 53, 1, '2780000.00', ''),
(66, 50, 54, 1, '2900000.00', ''),
(67, 51, 55, 1, '4700000.00', ''),
(68, 54, 56, 1, '300000.00', ''),
(69, 55, 57, 1, '2050000.00', ''),
(70, 52, 58, 1, '2516000.00', ''),
(71, 53, 58, 1, '2516000.00', ''),
(72, 56, 59, 1, '2928600.00', ''),
(73, 6, 60, 1, '230000.00', ''),
(74, 57, 61, 3, '3980000.00', ''),
(75, 58, 62, 2, '185000.00', ''),
(76, 59, 63, 1, '19500000.00', ''),
(77, 60, 64, 1, '6360000.00', ''),
(78, 62, 65, 1, '3000000.00', ''),
(79, 61, 66, 1, '9700000.00', ''),
(80, 63, 67, 1, '130000.00', ''),
(81, 64, 68, 2, '7608000.00', ''),
(82, 63, 69, 3, '130000.00', ''),
(83, 65, 70, 1, '180000.00', ''),
(84, 66, 70, 1, '90000.00', ''),
(85, 67, 71, 1, '590000.00', ''),
(86, 23, 72, 1, '540000.00', ''),
(87, 68, 73, 1, '2000000.00', ''),
(88, 69, 74, 1, '12920000.00', ''),
(89, 45, 75, 1, '1100000.00', ''),
(90, 70, 76, 1, '1400000.00', ''),
(91, 71, 77, 1, '5204000.00', ''),
(92, 72, 78, 2, '3414300.00', ''),
(93, 73, 79, 1, '3015000.00', ''),
(94, 74, 80, 6, '1320000.00', ''),
(95, 75, 81, 1, '960000.00', ''),
(96, 76, 82, 1, '2420000.00', ''),
(97, 77, 83, 1, '5730000.00', ''),
(98, 69, 84, 1, '13540000.00', ''),
(99, 69, 85, 1, '13540000.00', ''),
(100, 78, 86, 1, '78479000.00', ''),
(101, 78, 87, 1, '78474900.00', ''),
(102, 80, 87, 2, '3980000.00', ''),
(103, 79, 87, 1, '14048571.00', ''),
(104, 78, 88, 1, '0.00', ''),
(105, 22, 89, 1, '1100000.00', ''),
(106, 78, 90, 1, '78474900.00', ''),
(107, 79, 90, 1, '14048571.00', ''),
(108, 80, 90, 2, '3980000.00', ''),
(109, 81, 90, 2, '10987000.00', ''),
(110, 79, 91, 1, '14048571.00', ''),
(111, 80, 91, 2, '3980000.00', ''),
(112, 81, 91, 2, '10987000.00', ''),
(113, 82, 92, 1, '5995000.00', ''),
(114, 78, 93, 1, '78474900.00', ''),
(115, 79, 93, 1, '14048571.00', ''),
(116, 80, 93, 2, '3980000.00', ''),
(117, 81, 93, 2, '10987000.00', ''),
(118, 49, 94, 1, '1537600.00', ''),
(119, 49, 95, 1, '2000000.00', ''),
(120, 84, 96, 1, '16806723.00', ''),
(121, 83, 100, 1, '5900000.00', ''),
(122, 85, 101, 3, '3980000.00', ''),
(123, 86, 102, 1, '3490000.00', ''),
(124, 87, 103, 1, '7866000.00', ''),
(125, 23, 104, 1, '650000.00', ''),
(126, 72, 105, 2, '3450000.00', ''),
(127, 89, 106, 2, '2100000.00', ''),
(128, 90, 107, 1, '4419000.00', ''),
(129, 91, 108, 2, '6115750.00', ''),
(130, 40, 109, 1, '0.00', ''),
(131, 39, 109, 1, '12900000.00', ''),
(132, 67, 109, 1, '0.00', ''),
(133, 92, 110, 1, '3380000.00', ''),
(134, 14, 111, 1, '0.00', ''),
(135, 93, 112, 1, '2700000.00', ''),
(136, 94, 112, 6, '236000.00', ''),
(137, 95, 113, 1, '5995000.00', ''),
(138, 93, 114, 1, '5693000.00', ''),
(139, 96, 115, 1, '12378500.00', ''),
(140, 65, 116, 1, '140000.00', ''),
(141, 18, 117, 1, '400000.00', ''),
(142, 97, 118, 1, '3150000.00', ''),
(143, 2, 119, 1, '0.00', ''),
(144, 36, 121, 1, '0.00', ''),
(145, 98, 122, 2, '3500000.00', ''),
(146, 93, 123, 1, '2700000.00', ''),
(147, 99, 123, 1, '600000.00', ''),
(148, 2, 125, 1, '0.00', ''),
(149, 5, 125, 1, '0.00', ''),
(150, 2, 126, 1, '0.00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoorden`
--

CREATE TABLE `estadoorden` (
  `codestadoorden` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `codigo` varchar(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `existencia` int(11) NOT NULL,
  `potencia` varchar(30) NOT NULL,
  `relacion` varchar(30) NOT NULL,
  `velocidad` varchar(30) NOT NULL,
  `voltaje` varchar(30) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `alimentacion` varchar(30) NOT NULL,
  `capacidad` varchar(30) NOT NULL,
  `tipopolipasto` varchar(30) NOT NULL,
  `izaje` varchar(30) NOT NULL,
  `dimensiones` varchar(30) NOT NULL,
  `longitud` varchar(30) NOT NULL,
  `amperaje` varchar(30) NOT NULL,
  `cantidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codproducto`, `codigo`, `descripcion`, `modelo`, `precio`, `existencia`, `potencia`, `relacion`, `velocidad`, `voltaje`, `usuario_id`, `estado`, `alimentacion`, `capacidad`, `tipopolipasto`, `izaje`, `dimensiones`, `longitud`, `amperaje`, `cantidad`) VALUES
(1, 'RBW', 'REDUCTOR', 'W63 UFC1 30 P90 B14 B3', '0.00', -3, '', '30 a 1', '', '', 3, 1, '', '', '', '', '', '', '', ''),
(2, 'MRBVF', 'MOTOREDUCTOR', 'VF44 F1 60 P63 B14 B3', '0.00', -4, '0,25 HP', '60 a 1', '29 RPM', '220V/440V', 3, 1, '', '', '', '', '', '', '', ''),
(3, 'RBVF', 'REDUCTOR', 'VF 49 F1 10 P80 B14 B3', '0.00', -1, '', '10 a 1', '', '', 3, 1, '', '', '', '', '', '', '', ''),
(4, 'MRGWC', 'MOTOREDUCTOR', 'WC63', '0.00', -1, '1 HP (1200 RPM)', '300 a 1 ', '3,7 RPM', '220V/440V', 3, 1, '', '', '', '', '', '', '', ''),
(5, 'MRGX', 'MOTOREDUCTOR', 'XW2 17 P80 B5', '0.00', -2, '1,5 HP', '17 a 1', '103 RPM', '220V/440V', 3, 1, '', '', '', '', '', '', '', ''),
(6, 'FLANCHE B5 ', 'ACCESORIO PARA MOTOR', 'FLANCHE B5 GIRAVAN ', '0.00', -2, '', '', '', '', 3, 1, '', '', '', '', '', '', '', ''),
(7, 'C 41 3 P 81.5 P80 B3', 'MOTOREDUCTOR', 'C 41 3 P 81.5 P80 B3', '0.00', -1, '1,2 HP a 1800 RPM', '81,5 a 1', '32 RPM a 96 Hz', '220V/440V ', 2, 1, '', '', '', '', '', '', '', ''),
(8, 'NA', 'REDUCTOR', 'VF30', '0.00', -5, '', '10 A 1', '', '', 6, 1, '', '', '', '', '', '', '', ''),
(9, 'W63 U B5', 'MOTOREDUCTOR', 'W63 U B5', '0.00', -1, '1,5 hp', '19 a 1 ', '92', '220v/440v', 2, 1, '', '', '', '', '', '', '', ''),
(10, 'WR86 U', 'MOTOREDUCTOR', 'WR86 U', '0.00', -1, '1 HP', '90 a 1 ', '19,4 RPM', '220v/440v', 2, 1, '', '', '', '', '', '', '', ''),
(11, 'IC5 1HP', 'VARIADOR', 'IC5 1HP', '0.00', -3, '1 HP', '', '', '220V', 2, 1, '', '', '', '', '', '', '', ''),
(12, 'IC5 3HP', 'VARIADOR', 'IC5 3HP', '0.00', -5, '3HP', '', '', '220V', 2, 1, '', '', '', '', '', '', '', ''),
(13, 'DISCO DE FRENO 90L', 'DISCO DE FRENO 90L', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(14, 'VF44 O,5HP', 'MOTOREDUCTOR', 'VF 44 0,5HP', '0.00', -2, '0,5', '20', '80', '220V / 440V', 2, 1, '', '', '', '', '', '', '', ''),
(15, 'VF 49 F1 P80', 'REDUCTOR', 'VF 49 F1 P80', '0.00', -1, '', '18 a 1 ', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(16, 'MRBA80 B2', 'MOTOR', 'BA80 B2', '0.00', -2, '0,75W', '55', '3600', '220V/440V', 6, 1, '', '', '', '', '', '', '', ''),
(17, 'TL-TR', 'TELEMANDO', 'PNT-R1521-T722', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', ''),
(18, 'LB', 'ACCESORIO', 'Carro Colector 40A', '0.00', -2, '', '', '', '', 7, 1, 'NA', '', '', '', '', 'NA', '40A', ''),
(19, 'MRB W63 i10', 'MOTOREDUCTOR', 'W63 i10 ', '0.00', -1, '2', '10', '1800', '220V/S440V', 2, 1, '', '', '', '', '', '', '', ''),
(20, 'MRB W63 i19', 'MOTOREDUCTOR', 'W63 i19', '0.00', -1, '2', '19', '3600', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(21, 'RB W86 i100', 'REDUCTOR', 'RB W86 i100', '0.00', -1, '', '100', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(22, 'GK90 90W P75', 'MOTOREDUCTOR', 'GK90 90W P75', '0.00', -11, '90 W', '75', '21', '220V', 2, 1, '', '', '', '', '', '', '', ''),
(23, 'ST', 'Servicio Tecnico', '', '0.00', -8, '', '', '', '', 0, 1, '', '', '', '', '', '', '', ''),
(24, 'LB', 'Linea Blindada Verde', '', '0.00', -1, '', '', '', '', 7, 1, 'Extrema', '', '', '', '', '16m', '35Amp', ''),
(25, 'TAPAS MOTOR BF', 'TAI80 B14-3A', '', '0.00', 0, '', '', '', '', 6, 1, '', '', '', '', '', '', '', ''),
(26, 'MRB VFR49', 'MOTOREDUCTOR', 'VFR49 108 A 1', '0.00', -1, '0,33 HP', '108 A 1', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(27, 'RB VF30 ', 'REDUCTOR', 'VF30 28 A 1', '0.00', -1, '', '28 A 1 ', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(28, 'LF-CI', 'CARRO INTERMEDIO ', 'RG 8005 METÁLICO', '0.00', -20, '', '', '', '', 7, 1, '', '', '', '', '', 'NA', 'NA', ''),
(29, 'MW', 'MOTOR', 'motor weg 75 Hp 1800 rpm', '0.00', -1, '75 HP', '', '1800', '220V/440V', 6, 1, '', '', '', '', '', '', '', ''),
(30, 'VF49 P7 P80 B14', 'REDUCTOR', 'VF49 P7 P80 B14', '0.00', -1, '', '7', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(31, 'MEW 2HP', 'MOTOR', 'WEG 2HP', '0.00', -1, '2HP', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(32, 'SA', 'Servicio de automatizacion', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', ''),
(33, 'MEW 7.5 HP', 'MOTOR', 'WEG 7.5 HP', '0.00', -3, '7.5', '', '1800', '220V/440', 2, 1, '', '', '', '', '', '', '', ''),
(34, 'VF44 FA1 P28 P71 B14', 'MOTORREDUCTOR', 'VF44 FA1 P28 P71 B14 RB ', '0.00', -1, '0,5 HP', '28', '', '220V / 440V', 2, 1, '', '', '', '', '', '', '', ''),
(35, 'WC86 P60 3HP', 'MOTOREDUCTOR', 'WC86 P60 3HP', '0.00', -1, '3 HP', '60', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(36, 'PEC1TN', 'POLI/ ELECTRICO A CADENA', 'ECH 0101S', '0.00', -3, '', '', '', '220V/440V', 7, 1, '', '1TN  ', 'A cadena', '6m', '', '', '', ''),
(37, 'RP', 'Guia de Cadena', 'Para polipasto de 1TN', '0.00', -2, '', '', '', '', 7, 1, '', '', '', '', '', '', '', ''),
(38, 'VFC49 P18 P80 B14', 'REDUCTOR', 'VFC49 P18 P80 B14', '0.00', -1, '', '18', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(39, 'XW6 P43 15HP', 'MOTOREDUCTOR', 'XW6 P43 15HP', '0.00', -2, '15HP', '43', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(40, 'IGA5 20HP 220V', 'VARIADOR', 'IGA5', '0.00', -2, '20HP', '', '', '220V', 2, 1, '', '', '', '', '', '', '', ''),
(41, 'W63 P30 2HP', 'MOTOREDUCTOR', 'W63 P30 2HP', '0.00', -1, '2HP', '30', '60', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(42, 'BN 27C 4 0,9 KW ', 'MOTOR', 'BN 27C 0,9KW ', '0.00', -1, '0,9 KW', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(43, 'SC', 'Servicio', '', '0.00', -3, '', '', '', '', 0, 1, '', '', '', '', '', '', '', ''),
(44, 'VFC 49 P20 1HP', 'MOTOREDUCTOR', 'VFC 49 P20 1HP', '0.00', -1, '1HP', '20', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(45, 'M 1HP 3600', 'MOTOR', 'WEG O SIMILAR ', '0.00', -2, '1HP', '', '3600', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(46, 'XL5 35 P112', 'MOTOREDUCTOR', 'XL5 35 P112', '0.00', -2, '7,5HP', '35 A 1', '50', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(47, 'MR NMRV 150 BA 100 L', 'MOTOREDUCTOR', 'NMRV 150 BA 100 LBA ', '0.00', -1, '5HP', '30 A 1 ', '58', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(48, 'ACOPLE', 'ACOPLE/CADENA ', 'PINON CADENA ', '0.00', -1, '', '6020', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(49, 'MT8102IP', 'PANTALLA', 'MT8102IP', '0.00', -3, '', '', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(50, 'WC75 2HP', 'MOTOREDUCTOR', 'WC75 2HP ', '0.00', -1, '2HP', '10 A 1 ', '50', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(51, 'TR 48 3HP P10 ', 'MOTOREDUCTOR', 'TR 48 3HP P10', '0.00', -1, '3HP', '10 A 1 ', '180', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(52, 'VF30 P30 0,15HP', 'MOTOREDUCTOR', 'VF30 P30 0,15HP ', '0.00', -1, '0,15 HP', '30 ', '45', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(53, 'VF30 P20 0,12HP', 'MOTOREDUCTOR', 'VF30 P20 0,12HP ', '0.00', -1, '0,12 HP ', '20', '70', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(54, 'M1,2 HP ', 'MOTOR', 'M1,2 HP', '0.00', -1, '1,2 HP', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(55, 'VF44 P14 P71 B14', 'REDUCTOR', 'VF44 P14 P71 B14', '0.00', -1, '', '14', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(56, 'VF44 F1 P10 P71 B14', 'REDUCTOR', 'VF44 F1 P10 P71 B14', '0.00', -1, '', '10', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(57, 'EJE SALIDA HUECO', 'EJE DE SALIDA HUECO ', 'F41', '0.00', -3, '', '', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(58, 'RPEC', 'Pestillo seguridad', 'para 2 TN', '0.00', -2, '', '', '', '', 7, 1, '', '2 ton  ', '', '', '', '', '', ''),
(59, 'X309 R2 i  23.5', 'REDUCTOR', 'X309 R2 i 23.5', '0.00', -1, '', '23.5', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(60, 'W63 P23 0,11KW ', 'MOTOREDUCTOR', 'W63 P23 0,11KW', '0.00', -1, '0,11 KW', '23', '69.4', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(61, 'MT8121XE', 'PANTALLA', 'MT8121XE', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(62, 'WC63 P80 3HP ', 'MOTOREDUCTOR', 'WC63 P80 3HP', '0.00', -1, '3HP', '80', '21', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(63, 'PROGRAMACION VARIADO', 'SERVICIO', 'PROGRAMACION VARIADOR ', '0.00', -4, '', '', '', '', 0, 1, '', '', '', '', '', '', '', ''),
(64, 'W63 P15 2HP ', 'MOTOREDUCTOR', 'W63 P15 2HP ', '0.00', -2, '2HP', '15', '115', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(65, 'SI-PG', 'INSPECCION', '', '0.00', -2, '', '', '', '', 0, 1, '', '', '', '', '', '', '', ''),
(66, 'AL-PG', 'ALQUILER ANDAMIO', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', ''),
(67, 'GABINETE ', 'GABINETE', 'GABINETE ', '0.00', -2, '', '', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(68, 'TL-2D', 'TELEMANDO', 'TELECRANE F21-2D', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', ''),
(69, 'PEC2TN', 'POLIPASTO ELECTRICO ', 'HKD0202S', '0.00', -3, '', '', '', '220V', 7, 1, '', '2TN ', 'A CADENA', '14m', '', '', '', ''),
(70, 'BONFIGLIOLI 0,75HP', 'MOTOR', 'BONFIGLIOLI 0,75HP', '0.00', -1, '0,75HP', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(71, 'SRPEC', 'Reparación de polipasto a cadena', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', ''),
(72, 'VF49 P1 10 P71 B14', 'REDUCTOR', 'VF49 P1 10 P71 B14', '0.00', -4, '', '10', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(73, 'VF44 FA2 P100 P63 B1', 'REDUCTOR', 'VF44 FA2 P100 P63 B14', '0.00', -1, '', '100', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(74, 'BM 63 C4', 'MOTOFRENO', 'BM 63 C4 ', '0.00', -6, '0,22/0,33 KW ', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(75, 'CAPACITACION ', 'CAPACITACION PG', 'SISTEMA DESPLAZAMIENTO ', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', ''),
(76, 'VFC 44 P40 0,2 KW', 'MOTOREDUCTOR', 'VFC 44 P40 0,2 KW ', '0.00', -1, '0,2 KW ', '40', '45', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(77, 'GIRAVAN 5HP 1720RPM', 'MOTOR', 'GIRAVAN 5HP 1720RPM', '0.00', -1, '5HP', '', '1720', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(78, '311 L3 191 PC 160 E ', 'REDUCTOR', '311 L3 191 PC 160 E ', '0.00', -5, '', '191 A 1 ', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(79, 'F603 H60 32,1 P1 32 ', 'REDUCTOR', 'F603 H60 32,1 P1 32 ', '0.00', -4, '', '32,1 A 1 ', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(80, 'RECAMBIO F70 3 H70  ', 'KIT REC. REDUCTOR ', 'F70 3 H70 62.5 P1 32 ', '0.00', -8, '', '62.5', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(81, 'F502 H50 S3 PV FL 24', 'REDUCTOR', 'F502 H50 S3 PV FL 24 A 1 ', '0.00', -6, '', '24 A 1 ', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(82, 'WEG 7,5HP 3600RPM', 'MOTOR', 'WEG 7,5HP 3600RPM', '0.00', -1, '7,5 HP ', '', '3600 RPM ', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(83, 'BONFIGLIOLI M3LA4 2,', 'MOTOR', 'BONFIGLIOLI M3LA42,2KW 1410 RP', '0.00', -1, '2,2 KW', '', '1410RPM', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(84, 'PEC5TN', 'POLIPASTO ELECTRICO A CADENA', 'HKD0502S', '0.00', -1, '', '', '', '220V', 7, 1, '', '5 ton ', 'A CADENA', '6m', '', '', '', ''),
(85, 'EPI', 'CAP EN HII DE 280mm/10mm PARA DISTRIBUIDOR', '', '0.00', -3, '', '', '', '', 0, 1, '', '', '', '', '', '', '', ''),
(86, 'W63 P23 P90 B14', 'REDUCTOR', 'W63 P23 P90 B14', '0.00', -1, '', '23 A 1 ', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(87, 'WEINTEK CMT3161X', 'PANTALLA', 'WEINTEK CMT3161X', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(88, 'VF 49 P10 P80 B14', 'REDUCTOR', 'VF 49 P10 P71 B14', '0.00', 0, '', '10', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(89, 'VF44 P7 P71 B14', 'REDUCTOR', 'VF44 P7 P71 B14', '0.00', -2, '', '7', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(90, 'W63 U B5 P100 0,5 HP', 'MOTOREDUCTOR', 'W63 U B5 P100 0,5 HP', '0.00', -1, '0,5 HP', '100', '18', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(91, 'XL5 P59 7,5 HP ', 'MOTOREDUCTOR', 'XL5 P59 7,5 HP ', '0.00', -2, '7,5 HP', '59', '31', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(92, 'VF49 P60 P71 B5 0,37', 'MOTOREDUCTOR', 'VF49 P60 P71 B5 0,37 KW 1800', '0.00', -1, '0,33 KW', '60', '30', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(93, 'MTTO-C', 'Servicio de mantenimiento correctivo', '', '0.00', -3, '', '', '', '', 0, 1, '', '', '', '', '', '', '', ''),
(94, 'Contactares', 'Contactor control', '', '0.00', -6, '', '', '', '', 7, 1, '', '', '', '', '', '', '', ''),
(95, '7,5HP 3600RPM', 'MOTOR', '7,5HP 3600RPM', '0.00', -1, '7,5HP', '', '3600RPM', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(96, 'PEC2TN - 3m', 'POLIPASTO ELECTRICO A CADENA', 'HKD 0202S', '0.00', -1, '', '', '', '220V', 7, 1, '', '2 ton', 'a cadena', '3 metros', '', '', '', ''),
(97, 'VFC44 i:20 0,75HP ', 'MOTOREDUCTOR', 'VFC44 i:20 0,75HP ', '0.00', -1, '0,75 HP', '20', '90', '220V/440V', 2, 1, '', '', '', '', '', '', '', ''),
(98, 'W75 P20 B5 ', 'REDUCTOR', 'W75 P20 B5 ', '0.00', -2, '', '20', '', '', 2, 1, '', '', '', '', '', '', '', ''),
(99, 'RP TRANS', 'TRANSFORMADOR PARA POLIPASTO VERLINDE', 'Potencia y control', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remision`
--

CREATE TABLE `remision` (
  `id_requisicion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecharequisicion` varchar(30) NOT NULL,
  `tiempoentregarequisicion` varchar(30) NOT NULL,
  `personaquesolicita` varchar(30) NOT NULL,
  `personaqueautoriza` varchar(30) NOT NULL,
  `item` varchar(30) NOT NULL,
  `numerorequisicion` int(11) NOT NULL,
  `numeroorden` int(11) NOT NULL,
  `nombrevendedor` varchar(30) NOT NULL,
  `fecha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `remision`
--

INSERT INTO `remision` (`id_requisicion`, `id_cliente`, `fecharequisicion`, `tiempoentregarequisicion`, `personaquesolicita`, `personaqueautoriza`, `item`, `numerorequisicion`, `numeroorden`, `nombrevendedor`, `fecha`) VALUES
(18, 13, '2023-02-17', '2023-02-22', 'YERALDIN SANCHEZ', 'JOHN GIRALDO', '', 2900, 2900, 'RAFAEL', '2023-02-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposervicio`
--

CREATE TABLE `tiposervicio` (
  `codtiposervicio` int(11) NOT NULL,
  `servicio` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `correo`, `usuario`, `clave`, `estado`) VALUES
(1, 'Esteban Agualimpia', 'sistemas@giravan.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'Julian Castañado', 'ventas3@giravan.com', 'julian', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'Catalina Garro', 'ventas@giravan.com', 'catalina', '21232f297a57a5a743894a0e4a801fc3', 1),
(4, 'Yeraldin Sanchez', 'facturacion@giravan.com', 'Yeraldin', '21232f297a57a5a743894a0e4a801fc3', 1),
(5, 'Adrian Muriel', 'pg@giravan.com', 'adrian', '21232f297a57a5a743894a0e4a801fc3', 1),
(6, 'Juan', 'ventas1@giravan.com', 'juan', '21232f297a57a5a743894a0e4a801fc3', 1),
(7, 'Sebastian Vanegas', 'ventas2@giravan.com', 'Sebastian', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `total` decimal(30,2) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tiposervicio` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `tiempoentrega` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ordeno` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcionfacturar` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombrevendedor` varchar(30) NOT NULL,
  `numeroorden` varchar(15) NOT NULL,
  `formapago` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nordencompra` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `incluye` varchar(300) NOT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estadoorden` varchar(30) NOT NULL DEFAULT 'Seleccionar Estado',
  `numerofactura` varchar(30) NOT NULL,
  `mododespacho` varchar(30) NOT NULL,
  `numeroguia` varchar(30) NOT NULL,
  `archivo` varchar(30) NOT NULL,
  `tipo_archivo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_cliente`, `total`, `id_usuario`, `tiposervicio`, `fecha`, `tiempoentrega`, `ordeno`, `descripcionfacturar`, `nombrevendedor`, `numeroorden`, `formapago`, `nordencompra`, `incluye`, `observaciones`, `estadoorden`, `numerofactura`, `mododespacho`, `numeroguia`, `archivo`, `tipo_archivo`) VALUES
(1, 1, '3490000.00', 3, '1', '2022-12-06', '2022-12-06', 'NORELLA RAMIREZ', 'REDUCTOR BONFIGLIOLI MODELO: W63 UFC1 30 P90 B14, TIPO SINFÍN CORONA', '', '28032', '30 Días', '001-FOS-00009210', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Eje hueco y flanche lateral corto', '1', '', '', '', '', ''),
(2, 2, '4237200.00', 3, '1', '2022-12-06', '2022-12-20', 'EVELIN TATIANA OSPINA', 'Motoreductor I:60 RF:vf44 f1 p63 b14 b3 -', '', '28033', '30 Días', '4502464514', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Eje hueco y flanche lateral corto', '1', '', '', '', '', ''),
(3, 3, '3528600.00', 3, '1', '2022-12-06', '2022-12-07', 'HERNANDO NOY FIGUEROA', 'REDUCTOR BONFIGLIOLI VF 49 F1 10 P80 B14', '', '28034', '30 Dias ', 'Por correo ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Eje macizo y flanche lateral largo\r\nDirección de entrega: AV 13 # 7 85 Funza Cundinamarca\r\nCTG 026859 (Diciembre)', '1', ' 18270 ', 'LOCAL', '', '', ''),
(4, 4, '4165600.00', 3, '1', '2022-12-07', '2022-12-07', 'JAZMIN ROBLES', 'Motorreductor Sinfín Corona a 90° WC63 Vel sal: 3,7 rpm, Rel: 300:1, 1 HP 220- 440 V Eje hueco 25 mm', '', '28035', '30 Días', '000019788', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTORREDUCTOR CON PREREDUCCION\r\ncorreo de facturación: facturacion@dyf.com.co\r\nCTG 026865 (Diciembre)', '3', '', '', '', '', ''),
(6, 5, '0.00', 0, '3', '2022-12-07', '2022-12-09', 'YENIFER TOVAR MONRROY', 'MOTORREDUCTOR CON FRENO WX2 17 P80 B5 1,5 HP (Motofreno)', '', '28037', 'Contado', '11093', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTORREDUCTOR CON FRENO WX2 17 P80 B5 1,5 HP (Motofreno)\r\nDirección de entrega: Planta 1 Cra. 43 N 6 - 89, Barranquilla, Recibe Roció Utria Cel. 320 828 2171', '1', '', '', '', '', ''),
(7, 6, '273700.00', 3, '1', '2023-01-26', '2022-12-16', 'DIANA PATRICIA MENA BLANDON', 'FLANCHE B5 PARA MOTOR GIRAVAN P80', '', '28038', '30 Días', '1008395', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CTG 026842 (Noviembre)', '6', ' 18316', 'TCC', ' 352347050', '', ''),
(8, 7, '6008000.00', 2, '1', '2022-12-10', '2023-06-10', 'ASTRID MARTINEZ', '', '', '28039', '45 DIAS ', '4500074841', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Patas y eje macizo', 'Seleccionar Estado', '', '', '', '', ''),
(11, 8, '4571600.00', 6, '1', '2022-12-13', '2022-12-21', 'Gabriel Andres de la Val', 'REDUCTOR REF: VF30 F1 P63 B14 CODE: 200350069 MOUNT. POS. : B 3 RELACION 10 a 1', '', '28041', 'A CONVENIR', '0000341836', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'REDUCTOR REF: VF30 F1 P63 B14\r\nCODE: 200350069 MOUNT. POS. : B\r\n3 RELACION 10 a 1\r\n', '7', ' 18266', 'TCC', ' 352194348', '', ''),
(12, 10, '14056000.00', 2, '1', '2022-12-15', '2023-01-05', 'TANIA DUARTE', '', '', '28044', 'CREDITO', 'TR 8882', '', 'W63 FLANCHE Y EJE HUECO \r\nWR86 FLANCHE Y EJE HUECO \r\ncorreo de facturación: auxcompras@tramecltda.com\r\ndireccion de entrega : parque industrial lutransa bodega 11 entrada parcelas km2 cota-cundinamarca', '6', ' 18325', 'LOCAL', '', '', ''),
(13, 11, '10957000.00', 2, '1', '2022-12-16', '2022-12-21', 'Manue Fernando Gallego Alzate ', 'Variador IC5 1HP / Variador IC5 3HP', 'SANTIAGO', '28045', 'Contado ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Dirección de entrega calle 9 # 1-05 Bodega 2 Variante la Badea Dos Quebradas Risaralda\r\nnumero de contacto 3232295269', '6', ' 18271 ', 'TCC', ' 352235044', '', ''),
(14, 12, '1340000.00', 2, '1', '2022-12-16', '', 'Yilmar Ruiz', 'Disco para freno reductor', 'SANTIAGO', '28047', 'Contado', '5711', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Direcciòn de entrega calle 31 # 23-50', '6', ' 18281', 'TCC', ' 352267312', '', ''),
(15, 13, '2979000.00', 2, '1', '2022-12-16', '2022-12-16', 'Orden verbal ', 'La confirmaciòn se hizo por whatsapp', 'SANTIAGO', '28048', 'Contado', 'Por whatsapp', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18273', 'TCC', ' 352237144', '', ''),
(16, 8, '2592000.00', 2, '1', '2022-12-17', '2022-12-19', 'ANDRES FELIPE ALCALÁ', 'REDUCTOR REF: VF49 F1 P80 B14 RELACION 18 a 1 B O N F I G L', 'SANTIAGO', '28049', 'CREDITO', '0000343987', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Flanche B14\r\n', '6', ' 18288  ', 'TCC', ' 352281939 ', '', ''),
(18, 9, '2857000.00', 6, '1', '2022-12-19', '2022-12-26', 'Cesar Camilo Montaño ', 'MOTOR CON FRENO', '', '28050', 'A CONVENIR', '6200247285', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTOR CON FRENO BA71 B2 P 0,75 VS 3600 V 220V/440V', '6', ' 18276 ', 'TCC', ' 352252637', '', ''),
(19, 14, '4400000.00', 7, '1', '2022-12-19', '2022-12-21', 'ALONSO GARCIA', '', 'SEBASTIAN', '28051', 'CONTADO', 'WPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Carro colector linea blindada verde (40Amperios)\r\nTelemando marca TELERADIO (con accesorios)', '6', ' 18289', 'LOCAL', '', '', ''),
(20, 15, '17783000.00', 2, '1', '2022-12-19', '2022-12-21', 'Erika Ivonne Leginz', 'Motorreductor sin fin corona bonfiglioli W63, relacion 10 con ', 'SANTIAGO', '28052', 'Credito', 'PED 00303915', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'W63 i10 Flanche P90 B14\r\nW63 i19. Flanche P90 B14\r\nw86 i100 flanche corto P80 B5', 'Seleccionar Estado', '', '', '', '', ''),
(21, 16, '2151000.00', 2, '1', '2022-12-19', '2022-12-22', 'Alejandro Botero', 'Servicio de mantenimiento ', 'SANTIAGO', '28053', 'Credito', 'Por whatsapp', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Modelo del equipo: XLD5\r\nKit de rodamientos \r\nKit de retenedores \r\nEmpaque tapa de salida \r\nAceite y pintura ', '6', ' 18305', 'LOCAL', '', '', ''),
(22, 17, '1748000.00', 7, '1', '2022-12-20', '2022-12-20', 'William Libre', '', 'SEBASTIAN', '28054', '30 días', '21122022-0001', '4 perfiles linea blindada HFP56-4-8/35A, 4 empalmes perfil, 16 empalmes conductor y 4 soportes regulables', 'Ver lista de despacho adjunta', '6', ' 18292', 'TCC', ' 352288009', '', ''),
(26, 18, '1900000.00', 2, '1', '2022-12-20', '2022-12-22', 'David Garcia ', 'Motorreductor Helicoidal', 'SANTIAGO', '28055', 'Contado ', '867', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Los equipos van con patas. ', '6', ' 18296 ', 'LOCAL', '', '', ''),
(27, 18, '1900000.00', 2, '1', '2022-12-20', '2022-12-22', 'David Garcia ', 'Motorreductor Helicoidal', 'SANTIAGO', '28056', 'Contado ', '868', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Los dos equipos van con patas.', '1', ' 18297', 'LOCAL', '', '', ''),
(29, 20, '7860000.00', 2, '1', '2022-12-20', '2022-12-27', 'Laura Aristizabal ', 'MOTORREDUCTOR SINFIN CORONA BONFIGLIOLI VFR49 P1 108 P63 B5', 'SANTIAGO', '28059', '30 Dias ', '4002642', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'El equipo va con Brazo de torque y eje hueco ', '6', ' 18336 ', 'LOCAL', ' 352386856', '', ''),
(30, 21, '2357200.00', 2, '1', '2022-12-21', '2022-12-24', 'Andres Montoya ', 'Reductor bonfiglioli 28:1 VF30- P63-B14 ', 'SANTIAGO', '28060', '45 Dias', 'A02-COC-00114431', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'El equipo lleva Flanche P63 B14', '6', ' 18290', 'LOCAL', '', '', ''),
(31, 22, '4640000.00', 7, '1', '2022-12-21', '2022-12-24', 'Idelso Pájaro', 'CARROS INTERMEDIOS', 'SEBASTIAN', '28061', '30 dias', '26127', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18287', 'TCC', ' 352281363', '', ''),
(32, 23, '6750000.00', 6, '1', '2022-12-22', '2022-12-22', 'carlos sierra', 'motor weg 75 Hp 1800 rpm', 'SANTIAGO', '28062', 'CONTADO', 'NA', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'motor weg 75 Hp 1800 rpm', '4', '', '', '', '', ''),
(33, 24, '2390000.00', 2, '1', '2022-12-22', '2022-12-22', 'William Restrepo Elorza', 'Reductor marca bonfiglioli VF49 P7 P80 B14', 'SANTIAGO', '28062', 'Contado', '0582', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '1', ' 18291', 'LOCAL', '', '', ''),
(34, 25, '5533100.00', 2, '1', '2022-12-22', '2022-12-27', 'MILTON POLO', 'MOTORRED BONFIGLIOLI W63 U D25', 'SANTIAGO', '28063', '45 DIAS ', '0472856', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '4', '', '', '', '', ''),
(35, 26, '12480000.00', 2, '1', '2022-12-22', '2022-12-30', 'Carlos Toro', 'Automatizacion de alimentador ', 'SANTIAGO', '28063', '30 DIAS', 'VERBAL', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18329', 'LOCAL', '', '', ''),
(39, 27, '5410000.00', 2, '1', '2022-12-23', '2022-12-24', 'LUISA ARTEAGA', 'REPARACION DE MOTORREDUCTOR XWD6 71:1  7.5 HP', 'SANTIAGO', '28064', 'CONTADO', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CAMBIO DE EMPAQUES/ REDUCTOR \r\nCAMBIO DE RETENEDORES / REDUCTOR \r\nACEITE Y PINTURA\r\nMOTOR NUEVO ', '6', ' 18304 ', 'LOCAL', '', '', ''),
(40, 28, '7430000.00', 2, '1', '2022-12-27', '2022-12-29', 'JEFFER CELIS ', 'MOTORREDUCTOR VF44 FA1 P28 P71 B14 B3 RB  MOTOR DE 0,5 HP', 'SANTIAGO', '28065', 'CONTADO ', '020-5482', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18311 ', 'LOCAL', '', '', ''),
(41, 29, '3324000.00', 2, '1', '2022-12-27', '2022-12-28', 'JOHN RODRIGUEZ', 'WC  86 60/1 3HP A 1800RPM, PROTECCION IP55, 220/440 EJE HUECO 35mm', 'SANTIAGO', '28066', 'CONTADO', 'POR WHATSAP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EJE HUECO 35mm', '6', ' 18303  ', 'LOCAL', '', '', ''),
(43, 30, '10214000.00', 7, '1', '2022-12-27', '', 'Leidy Solangie', 'Polipasto Electrico de 1TN con 6m de izaje, a gancho.', 'SEBASTIAN', '28067', '90 dias', '4501196006', 'Polipasto electrico a cadena (440V) de 6m de cadena SIN TROLLEY', 'Enviar a 440V, 6 metros de cadena, sin trolley', '6', '', '', '', '', ''),
(44, 31, '799000.00', 2, '1', '2022-12-28', '2022-12-27', 'DAVID RESTREPO ', 'VFC49 P18 P80 B14 BRAZO DE TORQUE Y EJE HUECO ', 'SANTIAGO', '28068', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON BRAZO DE TORQUE Y EJE HUECO \r\nCAMBIAR EL FLANCHE DEL EQUIPO QUE HAY MALO EL NMRV 50', '4', ' 18306', 'LOCAL', '', '', ''),
(45, 29, '12900000.00', 2, '1', '2022-12-27', '2022-12-29', 'JOHN RODRIGUEZ ', 'MOTOREDUCTOR CILOIDAL CON FRENO ELECTROMAGNETICO CON VARIADOR LS/LG EN GABINETE ', 'SANTIAGO', '28069', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '- LA REFERENCIA DEL MOTOFRENO ES BA 132 MBX4	Y EL REDUCTOR VA CON PATAS Y FLANCHE PARA PODER ADAPTARSELO AL MOTOR 	\r\n-SE FACTURA COMPLETO COMO SALE ARRIBA EN LA DESCRIPCION, POR LO TANTO ES UN SOLO VALOR PARA TODO EL EQUIPO ', '6', ' 18307', 'LOCAL', '', '', ''),
(46, 25, '7904285.00', 2, '1', '2022-12-28', '2022-12-30', 'YEINS VALDEZ', 'MOTORRED BONFIGLIOLI W63 U D25 P', 'SANTIAGO', '28070', 'CREDITO', '0472856', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON BRAZO DE TORQUE Y EJE HUECO ', '6', ' 18309', 'LOCAL', '', '', ''),
(47, 32, '4400000.00', 2, '1', '2022-12-28', '2023-01-03', 'WILSON GARAVITO', 'GC-MOTO BN27C 4 220/440-60 1800RPM 0,9KW', 'SANTIAGO', '28071', 'CREDITO', '6000250263', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTOR BONFIGLIOLI DE 0,9KW A 1800 CON FLANCHE B5 Y EJE HUECO ', '6', ' 18324', 'TCC', ' 352365011', '', ''),
(48, 33, '15840000.00', 7, '1', '2022-12-28', '', 'Hector Andrade', 'Certificación puente grúa', '', '28072', 'CONTADO', 'CCA-OS-702-2022', '', 'Inspección, certificación y pruebas de carga con 3.2TN en la ciudad de Barranquilla.\r\n(Documentos de SST)', 'Seleccionar Estado', '', '', '', '', ''),
(49, 31, '1750000.00', 2, '1', '2022-12-28', '2022-12-28', 'DAVID RESTREPO ', 'MOTORREDUCTOR VFC 49 P20 1HP ', 'SANTIAGO', '28068', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL MOTORREDUCTOR VA CON FLANCHE SE LE PONE EL QUE TENGA EL MOTOR Y EJE HUECO \r\nYA HICIERON UN ABONO AL TOTAL DE LA FACTURA ', '6', ' 18312', 'LOCAL', '', '', ''),
(50, 4, '1100000.00', 2, '1', '2022-12-29', '2022-12-29', 'JUAN RODRIGO GAVIRIA', 'MOTOR DE 1HP A 3600RPM CON BRIDA B5 ', 'SANTIAGO', '28073', '30 DIAS', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18314', 'LOCAL', '', '', ''),
(51, 34, '14390000.00', 2, '1', '2022-12-29', '2023-01-03', 'FERNEY YOBANY VALDIRI', 'MOTORREDCUTOR MODELO XL5 MOTOR 7,5 HP 50RPM SALIDA', 'SANTIAGO', '28074', 'CONTADO ', '0261', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18337', 'TCC', ' 352386734', '', ''),
(52, 35, '9350000.00', 2, '1', '2022-12-29', '2022-12-31', 'DIEGO HURTADO', 'MOTORREDUCTOR CON FRENO Y ACOPLE DE CADENA ', 'SANTIAGO', '28075', 'CONTADO ', 'BCM-AC-F-100', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18327', 'LOCAL', '', '', ''),
(53, 36, '2780000.00', 2, '1', '2022-12-29', '2022-12-31', 'DAVID CARDONA ', 'PANTALLA MT8102IP', 'SANTIAGO', '28076', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18317', 'TCC', ' 352352386', '', ''),
(54, 35, '2900000.00', 2, '1', '2022-12-30', '2022-12-31', 'DIEGO HURTADO ', 'MOTORREDUCTOR SIN FIN CORONA ', 'SANTIAGO', '28077', 'CREDITO', '2', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y CON EJE HUECO ', '6', ' 18326', 'LOCAL', '', '', ''),
(55, 35, '4700000.00', 2, '1', '2022-12-30', '2022-12-30', 'DIEGO HURTADO ', 'MOTOREDUCTOR PARALELO', 'SANTIAGO', '28078', 'CREDITO', '3', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y CON EJE DE SALIDA ', '6', ' 18328', 'LOCAL', '', '', ''),
(56, 38, '300000.00', 2, '1', '2022-12-31', '2022-12-31', 'SANTIAGO VELASQUEZ', 'MOTOR 1,2 HP A 1800', 'SANTIAGO', '28080', 'CONTADO', 'EN LA OFICINA ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18310', 'LOCAL', '', '', ''),
(57, 32, '2050000.00', 2, '1', '2023-01-02', '2023-01-03', 'OMAR MEDINA ', 'REDUSCTOR BONFIGLIOLI VF44 REL 14', '', '28079', 'CREDITO', '6000292834', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y EJE HUECO ', '6', ' 18320', 'TCC', '352357666', '', ''),
(58, 37, '5032000.00', 2, '1', '2023-01-02', '2023-01-03', 'ALEXANDRA ACEVEDO ', 'MOTOREDUCTOR VF30 P30 0,15HP / VF30 P20 0,12HP', 'SANTIAGO', '28081', 'CONTADO ', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18321', 'LOCAL', '', '', ''),
(59, 8, '2928600.00', 2, '1', '2023-01-02', '2023-01-04', 'ANDRES FELIPE ALCALA ', 'REDUCTOR VF44 F1 P71 B14 RELACION 10 A 1 ', 'SANTIAGO', '28082', 'CREDITO ', '344562', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18319', 'TCC', ' 352357553  ', '', ''),
(61, 39, '11940000.00', 2, '1', '2023-01-26', '2023-01-05', 'DANIEL MUÑETON', 'CAP EN MATERIAL HII DE 280 MM DIAMETRO / 10MM DE ESPESOR ', '', '28083', '30 DIAS ', '23000009', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '4', '', '', '', '', ''),
(62, 40, '370000.00', 7, '1', '2023-01-03', '2023-01-04', 'Valeria Toro', 'Pestillos de seguridad para polipasto 2TN', 'SEBASTIAN', '28084', '30 días', '4012022837', '', 'Pestillos de seguridad para polipasto de 2 TON', '6', ' 18322', 'TCC', '352363530', '', ''),
(63, 41, '19500000.00', 2, '1', '2023-01-04', '2023-03-21', 'ERIK MONTANO DUENAS ', 'REDUCTOR X309 R2 BONFIGLIOLI i 23.5 ', 'SANTIAGO', '28085', '35 DIAS ', '4522091344', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', ''),
(64, 42, '6360000.00', 2, '1', '2023-01-05', '2023-01-05', 'CARLOS GOMEZ ', 'MOTORREDUCTOR W63 P23 0,11KW ', 'SANTIAGO', '28086', 'CREDITO ', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Poner un w63 p45 0,5hp a 3600 \r\nEl equipo se despacha para papelsa de barbosa ', 'Seleccionar Estado', '', '', '', '', ''),
(65, 44, '3000000.00', 2, '1', '2023-01-05', '2023-01-05', 'JOHN GIRALDO ', 'MOTOREDUCTOR WC63 3HP 80 A 1 21RPM', 'SANTIAGO', '28088', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON PATAS Y EJE MACIZO A LA SALIDA  ', '6', ' 18323', 'LOCAL', '', '', ''),
(66, 43, '9700000.00', 2, '1', '2023-01-06', '2023-01-07', 'IVAN ROBLEDO', 'HMI WITH 12.1 TFT DISPLAY MT8121XE', 'SANTIAGO', '28089', 'CONTADO ', '1067', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', '', '', '', '', ''),
(67, 45, '130000.00', 2, '1', '2023-01-06', '2023-01-06', 'GISELA PORRAS ', 'SERVICIO DE PROGRAMACION DE VARIADOR ', 'SANTIAGO', '28090', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SE LES DEBE FACTURAR 1 HORA DE SERVICIO ', '6', ' 18332', 'LOCAL', '', '', ''),
(68, 46, '15216000.00', 2, '1', '2023-01-06', '2023-01-06', 'LUZ MARITZA OCHOA ', 'MOTOREDUCTOR BONFIGLIOLI W63 P15 2HP', 'SANTIAGO', '28091', 'CREDITO ', '44638986', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS EQUIPOS VAN CON EJE HUECO Y FLANCHES LATERALES ', '6', ' 18359     ', 'TCC', ' 352473839 ', '', ''),
(69, 45, '390000.00', 2, '1', '2023-01-06', '2023-01-06', 'GISELA PORRAS ', 'SERVICIO DE PROGRAMACION DE VARIADOR ', 'SANTIAGO', '28092', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ESTE ES EL PRECIO DE LAS 3 HORAS QUE SE DEBEN FACTURAR $390.000', '6', ' 18333', 'LOCAL', '', '', ''),
(70, 47, '270000.00', 7, '1', '2023-01-04', '', 'Uveimar Muñoz', 'Inspeccion Puente Grúa', 'SEBASTIAN', '28093', 'CONTADO', 'WPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18334', 'LOCAL', '', '', ''),
(71, 45, '590000.00', 2, '1', '2023-01-10', '2023-01-10', 'JHONATAN MORENO ', 'GABIENTE DE CONTROL', 'SANTIAGO', '28094', 'CONTADO ', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'INCLUYE :\r\nPULSADOR DE ARRANQUE \r\nPULSADOR DE PARADA \r\nPARADA DE EMERGENCIA \r\nPOTENCIOMETRO ', '6', ' 18335', 'LOCAL', '', '', ''),
(72, 35, '540000.00', 2, '1', '2023-01-18', '2023-01-13', 'DIEGO HURTADO', 'SERVICIO DE MANTENIMIENTO Y REPARACION DE MOTOR ', 'SANTIAGO', '28095', 'CREDITO', '4', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ENVIARON MOTOREDUCTOR THHK 613 3HP CTG 26989\r\nCAMBIO DE RODAMIENTOS DE MOTOR \r\nCAMBIO DE CAPERUSA MOTOR \r\nACEITE Y PINTURA PARA EL MOTORREDUCTOR ', '6', ' 18345', 'LOCAL', '', '', ''),
(73, 48, '2000000.00', 7, '1', '2023-01-10', '2023-01-11', 'Mauricio Valdes', 'Telemando TELECRANE F21 2D-2 BOTONES', 'SEBASTIAN', '28096', '30 dias', '00032994', '', 'TELEMANDO TELECRANE F21-2D (2 BOTONES)', '6', '', '', '', '', ''),
(74, 49, '12920000.00', 7, '1', '2023-01-10', '', 'Lina Arango', 'Polipasto eléctrico de 2TN sin trolley 12m de izaje.', 'SEBASTIAN', '28097', 'contado', '9887', 'Se debe enviar a 440V, la cadena a cortar son 24m ya que es de dos ramales. Enviar al INGENIO RISARALDA, La Virginia km2 vía balboa', 'Enviar factura proforma\r\n', '6', ' 18358  ', 'TCC', '352473946', '', ''),
(75, 4, '1100000.00', 7, '1', '2023-01-11', '2023-01-11', 'JUAN RODRIGO GAVIRIA', 'MOTOR DE 1HP A 3600 RPM Con brida B5', 'SANTIAGO', '28098', '30 DIAS', 'Por wpa', '', 'CON FLANCHE B5', '6', ' 18338', 'LOCAL', '', '', ''),
(76, 37, '1400000.00', 2, '1', '2023-01-12', '2023-01-19', 'ANGIE NUÑEZ', 'MOTOR ELECTRICO BONFIGLIOLI BN 71 C4', 'SANTIAGO', '28099', 'CONTADO', '10872N/2023', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON PATAS ', '6', ' 18349', 'TCC', ' 352450505', '', ''),
(77, 50, '5204000.00', 7, '1', '2023-01-13', '', 'Yeison Cuadros', 'Reparación polipasto a Cadena 3 ton', 'SEBASTIAN', '28100', 'contado', 'por correo', 'Piezas: Sellos caja reductora, botonera, carcaza sproket, guía de cadena, y pestillo de seguridad. Según informe de MTTO.', 'Ellos pasan a recoger en la empresa según el Ing Ramiro Sierra, enviar video del funcionamiento.', '6', ' 18348', 'LOCAL', '', '', ''),
(78, 51, '0.00', 2, '1', '2023-01-24', '2023-01-16', 'EVELIN TATIANA OSPINA MACIAS ', 'RED VF49 P1-10 P71 B14 B3 BONFIGLIOLI', 'SANTIAGO', '28101', '30 DIAS ', '4502431365', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'FLANCHE A LA ENTRADA ', '6', ' 18352   ', 'TCC', ' 352450045', '', ''),
(79, 52, '3015000.00', 2, '1', '2023-01-26', '2023-01-16', 'ALEXANDRA PINO ', 'CAJA REDUCTORA VF44 FA2 100 P63 B14', 'SANTIAGO', '28102', '30 DIAS ', '82099', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE LATERAL Y FLANCHE DE ENTRADA ', '6', ' 18347', 'LOCAL', '', '', ''),
(80, 53, '7920000.00', 2, '1', '2023-01-26', '2023-01-19', 'DANIEL RAMIREZ', 'MOTOFRENO MGM CF63C', 'SANTIAGO', '28103', 'CREDITO ', '2698', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18346', 'TCC', '352429682 ', '', ''),
(81, 54, '960000.00', 2, '1', '2023-01-26', '2023-01-18', 'CARLOS IMBACUAN ', 'CAPACITACION SISTEMA AGV DESPLAZAMIENTO AUTOMATICO POR BANDA MAGNETICA ', 'SANTIAGO', '28104', 'CONTADO ', '202318', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', '', '', '', '', ''),
(82, 55, '2420000.00', 2, '1', '2023-01-26', '2023-01-19', 'SANTIAGO JARAMILLO ', 'MOTORREDUCTOR SINFIN CORONA GIRAVAN VFC44', '', '28105', 'CREDITO ', '85233', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y EJE HUECO ', '6', ' 18350', 'LOCAL', '', '', ''),
(83, 56, '5730000.00', 2, '1', '2023-01-25', '2023-01-20', 'ANDRES EDUARDO SERRANO MELO ', 'MOTOR 5HP 1720 RPM 220V/440V 100L3 GIRAVAN ', '', '28106', 'CREDITO ', '4502489605', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'VA CON FLANCHE B5 ', '6', ' 18365', 'LOCAL', '', '', ''),
(85, 57, '13540000.00', 7, '1', '2023-01-17', '', 'Sebastian Silva', 'Polipasto electrico a cadena', 'SEBASTIAN', '28107', '50% contado y 50% + IVA 30 dia', '908', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Enviar a 220V, la cadena se debe cortar de 28 metros, es la de 7.1mm de diametro. \r\nIncluye gancho superior para anclaje.', '6', ' 18357', 'LOCAL', '', '', ''),
(89, 59, '1100000.00', 2, '1', '2023-01-26', '2023-01-20', 'FRANCISCO MESINO ', 'MOTORREDUCTOR HELICOIDAL 90W ', '', '28109', '30 DIAS ', '40135', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'El equipo se va a 220v/440v ellos no especifican en que voltaje lo requieren ', '6', ' 18351', 'TCC', '352450379', '', ''),
(92, 60, '5995000.00', 2, '1', '2023-01-19', '2023-01-20', 'AICARDO DIAZ ', 'MOTOR ELECTRICO WEG 7,5 HP 3600 RPM', '', '28110', '90 DIAS ', '6200245897', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EJE MACIZO Y PATAS ', 'Seleccionar Estado', '', '', '', '', ''),
(93, 58, '122457471.00', 2, '1', '2023-01-19', '2023-04-10', 'DANIELA MARTINEZ ', 'REDUCTORES BONFIGLIOLI', '', '28108', '30 DIAS ', '3702703327', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ITEM 1 campana de entrada p160, patas y eje macizo \r\nITEM 2 reductor \r\nITEM 3 piezas a cambiar 821-23-151 (holl.o/shaft f70 h70 )(reduccion pinon 70)(input shaft p132)\r\nITEM 4 eje hueco a la salida diametro del eje 50mm', 'Seleccionar Estado', '', '', '', '', ''),
(94, 61, '1573600.00', 2, '1', '2023-01-24', '2023-01-20', 'JOHN RESTREPO', 'PANEL WEINTEK 10 PULGADAS MT8102IP', '', '28111', 'CONTADO ', '20230020', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', '18355  ', 'LOCAL', ' ', '', ''),
(95, 63, '2000000.00', 2, '1', '2023-01-19', '2023-01-20', 'ANDRES VARELLA ', 'PANTALLA WEINTEK MT 8102IP', '', '28112', 'CONTADO ', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', ''),
(96, 62, '16806723.00', 7, '1', '2023-01-18', '', 'Jhon Silva', 'Polipasto de 5 ton a cadena', 'SEBASTIAN', '28113', 'Contado', '18822', '', 'Enviar a 220V.\r\nCortar 12 metros de cadena de 11.2mm de diametro.\r\nDireccion entrega: Tecnibalanceo carrera 31 7 - 96 Bogota ricaurte', '6', ' 18372', 'TCC', '352506407', '', ''),
(100, 58, '5900000.00', 2, '1', '2023-01-25', '2023-02-01', 'DANIELA MARTINEZ', 'BONFIGLIOLI M3LA4 2,2 KW 1410RPM', '', '28114', '30 DIAS ', '6601751671', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18364 ', 'TCC', '352484449', '', ''),
(101, 39, '11940000.00', 2, '1', '2023-01-19', '2023-01-27', 'DANIEL STIVEN MUNETON RIOS ', 'CAP EN MATERIAL HII DE 280MM DE DIAMETRO Y 10 MM DE ESPESOR', '', '28115', '30 DIAS', '23000009', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CAP EN MATERIAL HII DE 280MM DE DIAMETRO Y 10 MM DE ESPESOR PARA DISTRIBUIDOR DE THERMEX DE SECADOR BICONICO DE POLIMERIZACION.', 'Seleccionar Estado', '', '', '', '', ''),
(102, 64, '3490000.00', 2, '1', '2023-01-25', '2023-01-19', 'JULIAN SALAZAR ', 'REDUCTOR W63 P23 P90 B14 ', '', '28116', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18366 ', 'LOCAL', '', '', ''),
(103, 65, '7866000.00', 2, '1', '2023-01-26', '2023-01-23', 'RAMON ANTONIO HOLGUIN ', 'PANTALLA WEINTEK CMT3161X ', '', '28117', '30 DIAS ', '62329', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '1', '', '', '', '', ''),
(104, 54, '650000.00', 2, '1', '2023-01-26', '2023-01-20', 'JOHN JAIRO GIRALDO ', 'SERVICIO TECNICO REVISION AGV ', '', '28118', 'CONTADO', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'FACTUARAR POR FAVOR EL SERVICIO TECNICO DE REVISION DE ROBOT AGV', '6', ' 18354', 'LOCAL', '', '', ''),
(105, 51, '6900000.00', 2, '1', '2023-01-25', '2023-01-25', 'EVELIN TATIANA OSPINA MACIAS ', 'REDUCTOR BONFIGLIOLI VF49 P10 P71 B14 ', '', '28119', '30 DIAS', '4502493136', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18368 ', 'TCC', '352496829', '', ''),
(106, 66, '4200000.00', 2, '1', '2023-01-25', '2023-01-21', 'JHONIER VIDAL ', 'REDUCTOR BONFIGLIOLI VF44 P7 P71 B14', '', '28120', 'CONTADO ', '18-200123', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EJE HUECO A LA SALIDA ', '6', ' 18362 ', 'TCC', '352484615', '', ''),
(107, 10, '4419000.00', 2, '1', '2023-01-25', '2023-01-26', 'TANIA DUARTE ', 'MOTORREDUCTOR SIN FIN CORONA W63 U B5 P100 0,5HP ', '', '28121', 'CREDITO ', 'TR899B', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18369  ', 'LOCAL', '352496973', '', ''),
(108, 34, '12231500.00', 2, '1', '2023-01-23', '2023-01-25', 'FENEY YOBANY VALDIRI', 'MOTORREDUCTOR MODELO XL5 MOTOR 7,5HP RELACION 59', '', '28122', 'CONTADO ', '0284', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', ''),
(109, 29, '12900000.00', 2, '1', '2023-01-23', '2023-01-25', 'JOHN RODRIGUEZ ', 'MOTOREDUCTOR CON FRENO ELECTROMAGNICO CON VARIADOR Y GABINETE ', '', '28123', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '-LA REFERENCIA DEL MOTOFRENO ES BA 132 MBX4\r\n-SE FACTURA COMPLETO COMO SALE ARRIBA EN LA DESCRIPCION, POR LO TANTO ES UN SOLO VALOR PARA TODO EL EQUIPO \r\nGABINETE INCLUYE: Botonera inalámbrica   Start / Stop + paro emergencia, breakers, borneras, cableado interno, rieles omegas, marcaciones, pilotos de operación, resistencias de frenado (Para malacate)', 'Seleccionar Estado', '', '', '', '', ''),
(110, 20, '3380000.00', 2, '1', '2023-01-25', '2023-01-27', 'LAURA ARISTIZABAL', 'MOTORREDUCTOR VF49 P60 P71 B5 0,37 KW 1390RPM', '', '28124', '30 DIAS ', '4002687', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18370', 'TCC', '352496591', '', ''),
(112, 47, '4116000.00', 7, '1', '2023-01-25', '2023-01-26', 'Uveimar Muñoz', 'Mantenimiento correctivo Puente grua', 'ADRIAN', '28125', '30 dias', 'por correo', '', 'Servicio de instalacion proteccion y contactores. \r\nSuministro e instalacion de proteccion tipo reactancia en linea.\r\nContactares para equipo Verlinde', '4', '', '', '', '', ''),
(114, 67, '5693000.00', 7, '1', '2023-01-26', '2022-12-22', 'Antonio Rojas', 'Mantenimiento correctivo', 'SEBASTIAN', '28036', '45 dias', '100735', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Ver lista de partes adjunta', '1', '', '', '', '', ''),
(115, 40, '12378500.00', 7, '1', '2022-12-13', '2022-12-20', 'Valeria Toro', '', 'SEBASTIAN', '28040', '30 dias', '4012014494', '', '', '1', '', '', '', '', ''),
(116, 68, '140000.00', 7, '1', '2023-01-26', '2022-12-13', 'DANIEL RESTREPO', 'INSPECCION MALACATE', 'SEBASTIAN', '28042', 'CONTADO', 'NA', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Inspeccion Malacate', 'Seleccionar Estado', '', '', '', '', ''),
(117, 17, '400000.00', 7, '1', '2023-01-26', '2022-12-23', 'William Libre', 'Repuesto', 'SEBASTIAN', '28046', 'Contado', '16122022', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '1', ' 18274', 'LOCAL', '', '', ''),
(118, 69, '3150000.00', 2, '1', '2023-01-25', '2023-01-27', 'HENOC QUINTERO ', 'MOTORREDUCTOR SIN FIN CORONA GIRAVAN VFC44 ', 'SANTIAGO ', '28126', 'CONTADO ', '201', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE MACIZO A LA SALIDA ', 'Seleccionar Estado', '', '', '', '', ''),
(122, 70, '7000000.00', 2, '1', '2023-01-27', '2023-01-30', 'EDUARDO PEREZ ', 'REDUCTOR BONFIGLIOLI W75', 'SANTIAGO ', '28128', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'AMBOS REDUCTORES VAN EN B5', 'Seleccionar Estado', '', '', '', '', ''),
(123, 47, '3300000.00', 7, '1', '2023-01-27', '2023-01-27', 'Uveimar Muñoz', 'Mantenimiento correctivo ', 'ADRIAN', '28129', '30 dias', 'por correo', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Mantenimiento realizado en botero soto, ya se realizó\r\nFacturar en febrero', 'Seleccionar Estado', '', '', '', '', ''),
(125, 13, '0.00', 1, '1', '2023-02-10', '2023-02-16', 'ESTEBAN', 'MOTOR COMBINADAO', 'RAFAEL', '2900', 'CONTADO', '283923', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'WFWFWFW', '1', '', '', '', '', ''),
(126, 13, '0.00', 1, '1', '2023-02-06', '2023-02-16', 'alexis', 'wfwfwf', 'wfwf', 'wfwfwf', 'wfwfwf', 'wfwf', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'wdwd', 'Seleccionar Estado', '', '', '', '', '');

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
-- Indices de la tabla `remision`
--
ALTER TABLE `remision`
  ADD PRIMARY KEY (`id_requisicion`);

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
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_permisos`
--
ALTER TABLE `detalle_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
  MODIFY `codproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `remision`
--
ALTER TABLE `remision`
  MODIFY `id_requisicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tiposervicio`
--
ALTER TABLE `tiposervicio`
  MODIFY `codtiposervicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
