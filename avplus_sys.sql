-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-01-2020 a las 15:59:31
-- Versión del servidor: 10.2.27-MariaDB
-- Versión de PHP: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u579024306_avplu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abonos`
--

CREATE TABLE `abonos` (
  `id_abono` int(11) NOT NULL,
  `monto_abono` varchar(10) DEFAULT NULL,
  `forma_pago` varchar(45) DEFAULT NULL,
  `fecha_abono` date NOT NULL,
  `proximo_abono` date NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_credito` int(11) NOT NULL,
  `n_recibo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `abonos`
--

INSERT INTO `abonos` (`id_abono`, `monto_abono`, `forma_pago`, `fecha_abono`, `proximo_abono`, `id_paciente`, `id_usuario`, `id_credito`, `n_recibo`) VALUES
(115, '0', 'Efectivo', '2019-12-04', '2019-12-18', 23, 5, 64, 'R0134'),
(116, '50', 'Efectivo', '2019-12-04', '2019-12-18', 23, 5, 64, 'R0134');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_registro` int(11) NOT NULL,
  `fecha` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_registro` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_empleado` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Empleado` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_server` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_client` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id_registro`, `fecha`, `hora`, `tipo_registro`, `cod_empleado`, `Empleado`, `date_server`, `ip_client`) VALUES
(1, '', '17:20', 'salida', 'MT04', '', '2019-12-06 19:42:28', ''),
(2, '', '17:57', 'salida', 'MT06', '', '2019-12-06 19:42:28', ''),
(8, '3/12/2019', '9:1:4', 'Entrada', 'MT07', '', '2019-12-06 19:42:28', ''),
(9, '3/12/2019', '9:3:15', 'Entrada', 'MT08', '', '2019-12-06 19:42:28', ''),
(10, '3/12/2019', '9:25:4', 'Entrada', 'MT06', '', '2019-12-06 19:42:28', ''),
(11, '3/12/2019', '10:00:00', 'Entrada', 'MT04', '', '2019-12-06 19:42:28', ''),
(12, '3/12/2019', '10:30:41', 'Entrada', 'Mt05', '', '2019-12-06 19:42:28', ''),
(14, '3/12/2019', '17:12:24', 'Salida', 'MT06', '', '2019-12-06 19:42:28', ''),
(15, '3/12/2019', '17:18:18', 'Salida', 'MT04', '', '2019-12-06 19:42:28', ''),
(16, '3/12/2019', '17:34:56', 'Salida', 'MT07', '', '2019-12-06 19:42:28', ''),
(17, '3/12/2019', '18:54:2', 'Salida', 'MT08', '', '2019-12-06 19:42:28', ''),
(18, '3/12/2019', '19:27:22', 'Salida', 'MT05', '', '2019-12-06 19:42:28', ''),
(19, '4/12/2019', '9:3:4', 'Entrada', 'MT007', '', '2019-12-06 19:42:28', ''),
(20, '4/12/2019', '9:18:49', 'Entrada', 'MT02', '', '2019-12-06 19:42:28', ''),
(21, '4/12/2019', '9:20:10', 'Entrada', 'MT06', '', '2019-12-06 19:42:28', ''),
(22, '4/12/2019', '19:20:33', 'Entrada', 'MT007', '', '2019-12-06 19:42:28', ''),
(23, '5/12/2019', '8:45:36', 'Entrada', 'MT05', '', '2019-12-06 19:42:28', ''),
(24, '5/12/2019', '9:3:41', 'Entrada', 'MT007', '', '2019-12-06 19:42:28', ''),
(25, '5/12/2019', '9:24:29', 'Entrada', 'MT06', '', '2019-12-06 19:42:28', ''),
(30, '5/12/2019', '19:1:13', 'Salida', 'MT06', 'JANET CRUZ', '2019-12-06 19:42:28', ''),
(31, '5/12/2019', '19:26:48', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-06 19:42:28', ''),
(32, '6/12/2019', '8:58:50', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-06 19:42:28', ''),
(33, '6/12/2019', '9:1:25', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-06 19:42:28', ''),
(34, '6/12/2019', '9:33:13', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-06 19:42:28', ''),
(35, '5/12/2019', '19:20:13', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-06 19:42:28', ''),
(36, '4/12/2019', '15:00:00', 'Salida', 'MT06', 'JANET CRUZ', '2019-12-06 19:42:28', ''),
(37, '6/12/2019', '14:54:4', 'Salida', 'MT03', 'empleado no existe', '2019-12-06 19:54:39', '190.62.167.189'),
(38, '6/12/2019', '13:57:50', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-06 19:58:05', '190.62.167.189'),
(39, '6/12/2019', '19:10:56', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-07 01:11:24', '190.62.160.9'),
(40, '6/12/2019', '20:18:44', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-07 02:18:56', '190.62.160.9'),
(41, '7/12/2019', '9:4:12', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-07 15:04:24', '190.62.160.9'),
(42, '7/12/2019', '9:4:12', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-07 15:04:27', '190.62.160.9'),
(43, '7/12/2019', '9:35:8', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-07 15:35:28', '190.62.160.9'),
(44, '7/12/2019', '19:7:1', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-08 01:07:22', '190.62.160.9'),
(45, '7/12/2019', '19:39:22', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-08 01:39:34', '190.62.160.9'),
(46, '8/12/2019', '8:38:47', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-08 14:39:02', '190.62.160.9'),
(47, '8/12/2019', '8:38:47', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-08 14:39:02', '190.62.160.9'),
(48, '9/12/2019', '8:59:42', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-09 14:59:54', '190.62.160.9'),
(49, '9/12/2019', '9:0:8', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-09 15:00:18', '190.62.160.9'),
(50, '9/12/2019', '9:19:50', 'Entrada', 'MT06', 'JANET CRUZ', '2019-12-09 15:20:19', '190.62.251.51'),
(51, '9/12/2019', '9:35:1', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-09 15:35:21', '190.62.160.9'),
(52, '9/12/2019', '9:35:1', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-09 15:35:23', '190.62.160.9'),
(53, '8/12/2019', '15:00:00', 'SALIDA', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-09 16:14:07', '2019-12-09'),
(54, '9/12/2019', '17:47:36', 'Salida', 'MT06', 'JANET CRUZ', '2019-12-09 23:48:08', '190.62.251.51'),
(55, '9/12/2019', '18:12:20', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-10 00:12:33', '190.62.160.9'),
(56, '9/12/2019', '19:3:27', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-10 01:03:37', '190.62.160.9'),
(57, '10/12/2019', '8:54:38', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-10 14:54:52', '190.62.160.9'),
(58, '10/12/2019', '9:5:26', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-10 15:05:36', '190.62.160.9'),
(59, '10/12/2019', '9:14:55', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-10 15:15:06', '190.62.160.9'),
(60, '10/12/2019', '17:45:26', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-10 23:45:54', '190.62.249.0'),
(61, '11/12/2019', '8:59:5', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-11 14:59:13', '190.62.165.139'),
(62, '11/12/2019', '9:12:25', 'Entrada', 'MT06', 'JANET CRUZ', '2019-12-11 15:12:48', '190.62.251.51'),
(63, '12/12/2019', '8:57:21', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-12 14:57:30', '190.62.165.139'),
(64, '12/12/2019', '9:22:2', 'Entrada', 'MT06', 'JANET CRUZ', '2019-12-12 15:22:24', '190.62.165.139'),
(65, '12/12/2019', '9:34:1', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-12 15:34:11', '170.0.178.54'),
(66, '10/12/2019', '9:07:00', 'Entrada', 'MT06', 'JANET CRUZ', '2019-12-10 09:07:00', '--'),
(67, '10/12/2019', '14:00:01', 'Salida', 'MT06', 'JANET CRUZ', '2019-12-10 14:01:00', ''),
(68, '10/12/2019', '10:05:00', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-10 18:09:00', '---'),
(69, '11/12/2019', '19:20:00', 'Salida', 'MTO7', 'MAURICIO FLORES', '2019-12-11 19:20:00', '--'),
(70, '11/12/2019', '19:20:00', 'Salida', 'MTO6', 'JANETH CRUZ', '2019-12-11 19:20:00', ''),
(71, '12/12/2019', '16:0:52', 'Salida', 'MT06', 'JANET CRUZ', '2019-12-12 22:01:41', '201.247.189.208'),
(72, '12/12/2019', '16:0:52', 'Salida', 'MT06', 'JANET CRUZ', '2019-12-12 22:01:43', '201.247.189.208'),
(73, '12/12/2019', '17:11:27', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-12 23:11:37', '201.247.189.208'),
(74, '13/12/2019', '9:1:31', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-13 15:01:39', '201.247.189.208'),
(75, '13/12/2019', '9:51:22', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-13 15:51:43', '201.247.189.208'),
(76, '13/12/2019', '18:3:37', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-14 00:03:49', '190.62.161.51'),
(77, '13/12/2019', '18:30:0', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-14 00:30:12', '190.62.161.51'),
(78, '14/12/2019', '8:59:32', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-14 14:59:44', '190.62.165.170'),
(79, '14/12/2019', '9:2:21', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-14 15:02:30', '190.62.165.170'),
(80, '14/12/2019', '13:20:17', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-14 19:20:24', '201.247.43.68'),
(81, '14/12/2019', '17:52:47', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-14 23:53:02', '190.62.165.170'),
(82, '15/12/2019', '8:56:35', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-15 14:56:54', '190.62.161.188'),
(83, '16/12/2019', '8:52:47', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-16 14:52:55', '190.62.161.188'),
(84, '16/12/2019', '8:52:43', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-16 14:52:55', '190.62.161.188'),
(85, '16/12/2019', '9:1:37', 'Entrada', 'MT06', 'JANET CRUZ', '2019-12-16 15:02:09', '190.62.161.188'),
(86, '16/12/2019', '17:1:54', 'Salida', 'MT06', 'JANET CRUZ', '2019-12-16 23:02:13', '190.62.170.58'),
(87, '16/12/2019', '18:21:11', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-17 00:21:19', '190.62.170.58'),
(88, '16/12/2019', '18:27:21', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-17 00:27:37', '190.62.170.58'),
(89, '17/12/2019', '8:57:58', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-17 14:58:04', '190.62.170.58'),
(90, '17/12/2019', '9:25:41', 'Entrada', 'MT06', 'JANET CRUZ', '2019-12-17 15:26:08', '201.247.43.189'),
(91, '17/12/2019', '19:53:5', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-18 01:53:15', '190.62.170.58'),
(92, '18/12/2019', '8:52:39', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-18 14:52:47', '190.62.170.58'),
(93, '18/12/2019', '9:4:9', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-18 15:04:21', '200.89.82.81'),
(94, '18/12/2019', '9:23:58', 'Entrada', 'MT06', 'JANET CRUZ', '2019-12-18 15:24:17', '190.62.170.58'),
(95, '18/12/2019', '16:52:3', 'Salida', 'MT06', 'JANET CRUZ', '2019-12-18 22:52:28', '190.62.163.47'),
(96, '18/12/2019', '18:5:5', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-19 00:05:14', '200.89.82.92'),
(97, '19/12/2019', '8:0:15', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-19 14:00:22', '190.62.163.47'),
(98, '19/12/2019', '8:56:30', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-19 14:56:44', '200.89.85.52'),
(99, '19/12/2019', '9:24:2', 'Entrada', 'MT06', 'JANET CRUZ', '2019-12-19 15:24:20', '190.62.163.47'),
(100, '19/12/2019', '9:25:59', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-19 15:26:25', '190.62.163.47'),
(101, '19/12/2019', '16:43:57', 'Salida', 'MT06', 'JANET CRUZ', '2019-12-19 22:44:13', '201.247.43.209'),
(102, '19/12/2019', '17:39:24', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-19 23:39:32', '190.62.249.93'),
(103, '20/12/2019', '9:3:45', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-20 15:03:52', '201.247.43.243'),
(104, '20/12/2019', '9:3:51', 'Entrada', 'MT04', 'DENIS CORVERA', '2019-12-20 15:04:05', '190.57.84.162'),
(105, '21/12/2019', '9:44:25', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-21 15:44:57', '200.89.86.33'),
(106, '21/12/2019', '15:11:43', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-21 21:11:56', '200.89.86.33'),
(107, '22/12/2019', '8:47:51', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-22 14:47:57', '190.62.168.209'),
(108, '23/12/2019', '9:1:4', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-23 15:01:14', '201.247.43.156'),
(109, '23/12/2019', '10:48:19', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-23 16:48:50', '200.89.85.83'),
(110, '24/12/2019', '8:57:26', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-24 14:57:33', '201.247.43.207'),
(111, '24/12/2019', '9:21:44', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-24 15:21:55', '200.89.82.14'),
(112, '26/12/2019', '8:55:8', 'Entrada', 'MT04', 'DENIS CORVERA', '2019-12-26 14:55:16', '190.62.168.209'),
(113, '26/12/2019', '9:3:45', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-26 15:03:50', '190.62.251.8'),
(114, '26/12/2019', '9:13:14', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-26 15:13:42', '190.62.168.209'),
(115, '26/12/2019', '9:41:27', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-26 15:41:37', '190.62.168.209'),
(116, '26/12/2019', '13:12:45', 'Salida', 'MT04', 'DENIS CORVERA', '2019-12-26 19:12:51', '190.62.161.22'),
(117, '26/12/2019', '17:46:20', 'Salida', 'MT06', 'JANET CRUZ', '2019-12-26 23:46:35', '190.62.249.114'),
(118, '27/12/2019', '8:45:55', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-27 14:46:06', '190.62.161.22'),
(119, '27/12/2019', '8:47:46', 'Entrada', 'MT04', 'DENIS CORVERA', '2019-12-27 14:47:51', '190.62.161.22'),
(120, '27/12/2019', '8:56:19', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-27 14:56:36', '190.62.161.22'),
(121, '27/12/2019', '8:59:55', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-27 15:00:01', '190.62.249.87'),
(122, '27/12/2019', '16:13:31', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-27 22:13:45', '190.62.161.22'),
(123, '27/12/2019', '17:4:54', 'Salida', 'MT04', 'DENIS CORVERA', '2019-12-27 23:05:00', '190.62.161.22'),
(124, '27/12/2019', '19:21:15', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-28 01:21:27', '190.62.161.22'),
(125, '27/12/2019', '19:28:5', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-28 01:28:12', '201.247.43.224'),
(126, '28/12/2019', '8:48:50', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-28 14:48:56', '201.247.43.49'),
(127, '28/12/2019', '9:22:38', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-28 15:22:47', '190.62.161.22'),
(128, '28/12/2019', '14:17:16', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-28 20:17:25', '201.247.44.78'),
(129, '28/12/2019', '19:15:45', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-29 01:15:59', '190.62.161.22'),
(130, '29/12/2019', '8:49:20', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2019-12-29 14:49:33', '190.62.161.22'),
(131, '30/12/2019', '8:45:34', 'Entrada', 'MT06', 'JANET CRUZ', '2019-12-30 14:45:58', '201.247.44.132'),
(132, '30/12/2019', '8:45:34', 'Entrada', 'MT06', 'JANET CRUZ', '2019-12-30 14:45:59', '201.247.44.132'),
(133, '30/12/2019', '8:58:5', 'Entrada', 'MT04', 'DENIS CORVERA', '2019-12-30 14:58:13', '190.62.161.22'),
(134, '30/12/2019', '9:1:37', 'Entrada', 'MT07', 'MAURICIO FLORES', '2019-12-30 15:01:44', '201.247.43.126'),
(135, '30/12/2019', '19:37:27', 'Salida', 'MT07', 'MAURICIO FLORES', '2019-12-31 01:37:35', '190.62.251.60'),
(136, '31/12/2019', '8:41:47', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-31 14:42:05', '190.62.168.175'),
(137, '31/12/2019', '15:6:23', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2019-12-31 21:06:46', '190.62.168.175'),
(138, '2/1/2020', '8:59:42', 'Entrada', 'MT07', 'MAURICIO FLORES', '2020-01-02 14:59:49', '201.247.43.231'),
(139, '2/1/2020', '9:20:18', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2020-01-02 15:20:26', '190.62.168.175'),
(140, '2/1/2020', '9:25:51', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2020-01-02 15:26:02', '190.62.168.175'),
(141, '2/1/2020', '18:6:21', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2020-01-03 00:06:37', '190.62.168.175'),
(142, '2/1/2020', '19:17:12', 'Salida', 'MT07', 'MAURICIO FLORES', '2020-01-03 01:17:18', '190.62.168.175'),
(143, '2/1/2020', '19:18:10', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2020-01-03 01:18:18', '190.62.168.175'),
(144, '3/1/2020', '8:51:12', 'Entrada', 'MT07', 'MAURICIO FLORES', '2020-01-03 14:51:20', '190.62.168.175'),
(145, '3/1/2020', '8:53:19', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2020-01-03 14:53:38', '190.62.168.175'),
(146, '3/1/2020', '9:3:37', 'Entrada', 'MT04', 'DENIS CORVERA', '2020-01-03 15:03:42', '190.62.168.175'),
(147, '3/1/2020', '9:23:23', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2020-01-03 15:23:36', '190.62.168.175'),
(148, '3/1/2020', '18:18:32', 'Salida', 'MT07', 'MAURICIO FLORES', '2020-01-04 00:18:41', '190.62.168.175'),
(149, '3/1/2020', '19:4:5', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2020-01-04 01:04:15', '190.62.168.175'),
(150, '4/1/2020', '8:54:38', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2020-01-04 14:55:16', '190.62.168.175'),
(151, '4/1/2020', '9:6:57', 'Entrada', 'MT04', 'DENIS CORVERA', '2020-01-04 15:07:02', '190.62.168.175'),
(152, '4/1/2020', '19:11:21', 'Salida', 'MT04', 'DENIS CORVERA', '2020-01-05 01:11:27', '190.62.168.175'),
(153, '4/1/2020', '19:11:30', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2020-01-05 01:11:40', '190.62.168.175'),
(154, '4/1/2020', '19:12:18', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2020-01-05 01:12:25', '190.62.168.175'),
(155, '5/1/2020', '8:55:23', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2020-01-05 14:55:35', '190.62.168.175'),
(156, '5/1/2020', '14:52:56', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2020-01-05 20:53:03', '190.62.168.175'),
(157, '6/1/2020', '8:49:42', 'Entrada', 'MT07', 'MAURICIO FLORES', '2020-01-06 14:49:50', '190.62.168.175'),
(158, '6/1/2020', '9:5:55', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2020-01-06 15:06:06', '200.89.82.82'),
(159, '6/1/2020', '15:29:43', 'Entrada', 'MT05', 'JOSUE RODRIGUEZ', '2020-01-06 21:30:01', '190.62.174.39'),
(160, '6/1/2020', '17:4:51', 'Salida', 'MT08', 'CRISTIAN RAMIREZ', '2020-01-06 23:05:04', '200.89.82.82'),
(161, '6/1/2020', '19:28:20', 'Salida', 'MT05', 'JOSUE RODRIGUEZ', '2020-01-07 01:28:30', '190.62.174.39'),
(162, '7/1/2020', '9:1:27', 'Entrada', 'MT08', 'CRISTIAN RAMIREZ', '2020-01-07 15:01:38', '190.62.174.39'),
(163, '7/1/2020', '9:1:26', 'Entrada', 'MT07', 'MAURICIO FLORES', '2020-01-07 15:01:38', '190.62.174.39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `categoria`, `estado`, `id_usuario`) VALUES
(4, 'Metrocentro', '1', 5),
(5, 'Empresarial', '1', 5),
(6, 'Santa Ana', '1', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compras` int(11) NOT NULL,
  `fecha_compra` date NOT NULL,
  `numero_compra` varchar(100) NOT NULL,
  `comprador` varchar(100) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id_compras`, `fecha_compra`, `numero_compra`, `comprador`, `id_usuario`) VALUES
(1, '2018-01-31', 'F000001', 'eyter', 1),
(2, '2018-02-06', 'F000002', 'eyter', 1),
(3, '2018-02-07', 'F000003', 'eyter', 1),
(4, '2018-02-07', 'F000004', 'eyter', 1),
(5, '2018-09-04', 'F000005', 'eyter', 1),
(6, '2018-09-05', 'F000006', 'eyter', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL,
  `motivo` text DEFAULT NULL,
  `patologias` text DEFAULT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `oiesfreasl` varchar(10) DEFAULT NULL,
  `oicilindrosl` varchar(10) DEFAULT NULL,
  `oiejesl` varchar(10) DEFAULT NULL,
  `oiprismal` varchar(10) DEFAULT NULL,
  `oiadicionl` varchar(10) DEFAULT NULL,
  `odesferasl` varchar(10) DEFAULT NULL,
  `odcilndrosl` varchar(10) DEFAULT NULL,
  `odejesl` varchar(10) DEFAULT NULL,
  `odprismal` varchar(10) DEFAULT NULL,
  `odadicionl` varchar(10) DEFAULT NULL,
  `oiesferasa` varchar(10) DEFAULT NULL,
  `oicolindrosa` varchar(10) DEFAULT NULL,
  `oiejesa` varchar(10) DEFAULT NULL,
  `oiprismaa` varchar(10) DEFAULT NULL,
  `oiadiciona` varchar(10) DEFAULT NULL,
  `odesferasa` varchar(10) DEFAULT NULL,
  `odcilindrosa` varchar(10) DEFAULT NULL,
  `odejesa` varchar(10) DEFAULT NULL,
  `dprismaa` varchar(10) DEFAULT NULL,
  `oddiciona` varchar(10) DEFAULT NULL,
  `sugeridos` varchar(200) DEFAULT NULL,
  `diagnostico` text DEFAULT NULL,
  `medicamento` varchar(100) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `oiesferasf` varchar(10) DEFAULT NULL,
  `oicolindrosf` varchar(10) DEFAULT NULL,
  `oiejesf` varchar(10) DEFAULT NULL,
  `oiprismaf` varchar(10) DEFAULT NULL,
  `oiadicionf` varchar(10) DEFAULT NULL,
  `odesferasf` varchar(10) DEFAULT NULL,
  `odcilindrosf` varchar(10) DEFAULT NULL,
  `odejesf` varchar(10) DEFAULT NULL,
  `dprismaf` varchar(10) DEFAULT NULL,
  `oddicionf` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`id_consulta`, `motivo`, `patologias`, `id_paciente`, `id_usuario`, `fecha_reg`, `oiesfreasl`, `oicilindrosl`, `oiejesl`, `oiprismal`, `oiadicionl`, `odesferasl`, `odcilndrosl`, `odejesl`, `odprismal`, `odadicionl`, `oiesferasa`, `oicolindrosa`, `oiejesa`, `oiprismaa`, `oiadiciona`, `odesferasa`, `odcilindrosa`, `odejesa`, `dprismaa`, `oddiciona`, `sugeridos`, `diagnostico`, `medicamento`, `observaciones`, `oiesferasf`, `oicolindrosf`, `oiejesf`, `oiprismaf`, `oiadicionf`, `odesferasf`, `odcilindrosf`, `odejesf`, `dprismaf`, `oddicionf`) VALUES
(9, '', '', 11, 5, '2019-04-10 21:37:31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Vision Borrosa', 'Nada', 1, 5, '2019-04-10 22:49:14', '+1', '', '', '', '', '+1', '', '', '', '', '+1', '', '', '', '', '+1', '', '', '', '', 'Vision Sencilla con AR', 'Hipermetropia', '---', '--', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Cefalea', '----', 1, 5, '2019-04-10 22:51:56', '+2', '', '', '', '', '+2', '', '', '', '', '+2', '', '', '', '', '+2', '', '', '', '', '----', '---', '===', '----', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Ardor', 'nada', 2, 5, '2019-04-10 23:05:57', '+3', '', '', '', '', '+3', '', '', '', '', '+3', '', '', '', '', '+3', '', '', '', '', 'Lente Blanco', 'Miopia', '--', '---', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ardor', 'Ninguna', 3, 5, '2019-04-11 15:57:53', '+4', '', '', '', '', '+4', '', '', '', '', '+4', '', '', '', '', '+4', '', '', '', '', 'Lente Blanco', 'hipermetropia', 'Gotas', 'eeeee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Hipermetropia', 'Ninguna', 3, 5, '2019-04-12 16:39:47', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', 'Lente rojo', 'ninguna', 'Gotas', 'ninguna', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67', '+67'),
(15, 'nada', 'ninguna', 5, 5, '2019-04-13 17:37:55', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', 'Lente Blanco', 'Astigmatismo', 'Gotas', 'nada', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1', '+1'),
(16, 'Hipermetropia', 'Astigmatismo', 8, 5, '2019-04-14 00:15:32', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', 'Lente Blanco', 'Hipermetropia', 'Gotas', 'ninguna', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25'),
(17, 'Hipermetropia', 'Vision borrosa', 10, 4, '2019-04-14 01:01:49', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', 'Lente blanco', 'Hipermetropia', 'Gotas', 'Ninguna', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3', '+3'),
(18, 'Astigmatismo', 'Hipermetropia', 13, 5, '2019-04-15 03:49:56', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', 'Lente Blanco', 'nada', 'Gotas', '-----', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25', '+0.25'),
(19, 'Vision borrosa', 'miopia', 15, 4, '2019-04-18 20:33:27', '-1.00', '', '', '', '', '-1.00', '', '', '', '', '-1.00', '', '', '', '', '-1.00', '', '', '', '', 'VS', 'miopia', 'ninguno', 'Para Lectura', '-0.75', '', '', '', '', '-0.75', '', '', '', ''),
(20, 'cefalea', 'miopia', 15, 4, '2019-04-18 20:40:03', '-0.75', '', '', '', '', '-0.75', '', '', '', '', '-0.75', '', '', '', '', '-0.75', '', '', '', '', 'VS AR', 'miopia', '', 'Para ver de lejos', '-0.75', '', '', '', '', '-0.75', '', '', '', ''),
(21, 'Vision Borrosa', 'Miopia', 16, 5, '2019-04-25 22:33:25', '-1.00', '', '', '', '', '-1.00', '', '', '', '', '-1.00', '', '', '', '', '-1.00', '', '', '', '', 'Lente Vision sencilla Plicarbonato c-ar', 'Miopia', '', '', '-1.00', '', '', '', '', '-1.00', '', '', '', ''),
(22, 'Cefalea', 'Mipia', 16, 4, '2019-04-25 22:36:11', '-1.00', '-1.00', '', '', '', '-1.00', '', '', '', '', '-1.00', '', '', '', '', '-1.00', '', '', '', '', 'Lente Vision sencilla Plicarbonato c-ar', 'miopia', '', '', '-1.00', '', '', '', '', '-1.00', '', '', '', ''),
(23, 'vision borrosa', 'nada', 14, 4, '2019-09-05 23:31:43', '-1.50', '', '', '', '', '-2.00', '', '', '', '', '-2.00', '', '', '', '', '-2.25', '', '', '', '', 'vs ar', 'miopia', '', '', '-2.00', '', '', '', '', '-2.00', '', '', '', ''),
(24, 'cefalea, irritación. usuario de pc.', 'ninguna', 16, 6, '2019-09-08 18:17:30', 'N', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, '', '', 16, 6, '2019-09-08 18:19:20', 'N', '', '', '', '', 'N', '', '', '', '', 'N', '', '', '', '', 'N', '', '', '', '', 'VS + AR', 'EMETROPIA', '', '', 'N', '', '', '', '', 'N', '', '', '', ''),
(26, '', '', 16, 6, '2019-09-08 19:09:16', '', '', '', '', '', '', '', '', '', '', 'N', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 'vision borrosa ', 'miopia', 18, 4, '2019-09-12 22:53:48', '-1.00', '', '', '', '', '-1.00', '', '', '', '', '-1.50', '', '', '', '', '-1.50', '', '', '', '', 'vision sencilla', 'miopia', '', '', '-1.50', '', '', '', '', '-1.50', '', '', '', ''),
(29, 'Vision borrosa', 'N/A', 21, 12, '2019-10-30 23:33:36', '', '', '', '', '', '', '', '', '', '', '-1.50', '', '', '', '', '-1.50', '', '', '', '', 'vision sencilla con antirreflejante', 'Miopia', 'N/A', 'Gafas permanentes', '-1.25', '', '', '', '', '-1.25', '', '', '', ''),
(30, 'NO GENERA BUENA VISION DE LEJOS', 'PTERIGION', 23, 7, '2019-11-26 22:50:59', '-3.00', '-2.00', '90', '', '', '-4.25', '-1.00', '180', '', '', '-2.00', '-1.75', '90', '', '', '-.3.50', '-1.00', '180', '', '', 'VISION SENCILLA POLY AR CRIZAL', 'MIOPIA Y ASTIGMATISMO', 'USO DE GAFAS', '', '-2.75', '-1.50', '90', '', '', '-4.00', '-1.00', '180', '', ''),
(31, 'Astigmatismo', 'Hipermtripia', 32, 5, '2020-01-06 17:24:27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ninguna', '', '', '', '', '', '', '', '', '', ''),
(32, 'Ninguna', 'Miopia', 32, 5, '2020-01-06 17:39:52', '0.25', '0.25', '', '', '', '0.36', '', '', '', '', '', '', '', '', '', '0.368', '', '', '', '', '', '', 'gotas', 'ninguna', '', '', '', '', '', '', '', '', '', ''),
(33, 'evaluacion clinica', 'cataratas', 33, 7, '2020-01-06 19:03:51', '', '', '', '', '', '', '', '', '', '', '-0.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 'ninguna', 'catarata', 33, 7, '2020-01-06 19:07:02', '', '', '', '', '', '', '', '', '', '', '-0.25', '-0.50', '130', '', '', '-o.25', '', '', '', '', 'v.s poly bco + ar', 'astigmatismo puro', '.', '.', 'Neutro', '-0.50', '130', '', '', 'neutro', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `id_credito` int(11) NOT NULL,
  `monto` varchar(45) NOT NULL,
  `plazo` varchar(45) DEFAULT NULL,
  `saldo` varchar(45) DEFAULT NULL,
  `forma_pago` varchar(100) NOT NULL,
  `numero_venta` varchar(100) DEFAULT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_adquirido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `creditos`
--

INSERT INTO `creditos` (`id_credito`, `monto`, `plazo`, `saldo`, `forma_pago`, `numero_venta`, `id_paciente`, `id_usuario`, `fecha_adquirido`) VALUES
(64, '105', '', '55', 'Cargo Automatico', 'V000002', 23, 5, '2019-12-04'),
(65, '60', '6', '60', 'Cargo Automatico', 'V000003', 23, 5, '2019-12-10'),
(66, '60', '12', '120.00', 'Cargo Automatico', 'V000004', 21, 5, '2019-12-11'),
(67, '48', '2', '48', 'Cargo Automatico', 'V000005', 24, 5, '2019-12-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `id_detalle_compras` int(11) NOT NULL,
  `numero_compra` varchar(100) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `cantidad_compra` varchar(100) NOT NULL,
  `fecha_compra` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_usuario` int(11) NOT NULL,
  `sucursal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id_detalle_ventas` int(11) NOT NULL,
  `numero_venta` varchar(100) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `precio_venta` varchar(100) NOT NULL,
  `cantidad_venta` varchar(100) NOT NULL,
  `descuento` varchar(100) NOT NULL,
  `importe` varchar(100) DEFAULT NULL,
  `fecha_venta` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_empresas` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_empresas`, `nombre`, `usuario`, `password`) VALUES
(1, 'lomed', 'lomed', 'avlomed20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `existencias`
--

CREATE TABLE `existencias` (
  `id_ingreso` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `stock` varchar(45) NOT NULL,
  `bodega` varchar(45) NOT NULL,
  `categoriaub` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `existencias`
--

INSERT INTO `existencias` (`id_ingreso`, `id_producto`, `stock`, `bodega`, `categoriaub`) VALUES
(59, 73, '12', 'Bodega Central', ''),
(69, 194, '0', 'Metrocentro', ''),
(70, 248, '1', 'Metrocentro', 'AndVas niño #1'),
(71, 249, '1', 'Metrocentro', 'AndVas niño #1'),
(72, 222, '2', 'Metrocentro', 'AndVas niño #1'),
(73, 238, '1', 'Metrocentro', 'AndVas niño #1'),
(74, 247, '1', 'Metrocentro', 'AndVas niño #1'),
(75, 231, '2', 'Metrocentro', 'AndVas niño #1'),
(76, 237, '1', 'Metrocentro', 'AndVas niño #1'),
(77, 236, '1', 'Metrocentro', 'AndVas niño #1'),
(78, 244, '1', 'Metrocentro', 'AndVas niño #1'),
(79, 233, '1', 'Metrocentro', 'AndVas niño #1'),
(80, 232, '1', 'Metrocentro', 'AndVas niño #1'),
(81, 229, '1', 'Metrocentro', 'AndVas niño #1'),
(82, 228, '1', 'Metrocentro', 'AndVas niño #1'),
(83, 243, '1', 'Metrocentro', 'AndVas niño #1'),
(84, 242, '1', 'Metrocentro', 'AndVas niño #1'),
(85, 235, '1', 'Metrocentro', 'AndVas niño #1'),
(86, 227, '2', 'Metrocentro', 'AndVas niño #1'),
(87, 241, '1', 'Metrocentro', 'AndVas niño #1'),
(88, 158, '1', 'Metrocentro', ''),
(89, 240, '1', 'Metrocentro', 'AndVas niño #1'),
(90, 230, '1', 'Metrocentro', 'AndVas niño #1'),
(91, 245, '1', 'Metrocentro', 'AndVas niño #1'),
(92, 239, '1', 'Metrocentro', 'AndVas niño #1'),
(93, 234, '1', 'Metrocentro', 'AndVas niño #1'),
(94, 225, '1', 'Metrocentro', 'AndVas niño #1'),
(95, 223, '1', 'Metrocentro', 'AndVas niño #1'),
(96, 226, '1', 'Metrocentro', 'AndVas niño #1'),
(97, 224, '1', 'Metrocentro', 'AndVas niño #1'),
(98, 246, '1', 'Metrocentro', 'AndVas niño #1'),
(99, 221, '1', 'Metrocentro', 'AndVas niño #1'),
(100, 220, '1', 'Metrocentro', 'AndVas niño #1'),
(101, 252, '1', 'Metrocentro', 'AndVas niño #1'),
(102, 250, '1', 'Metrocentro', 'AndVas niño #1'),
(103, 251, '1', 'Metrocentro', 'AndVas niño #1'),
(125, 331, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(126, 254, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(127, 312, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(128, 309, '2', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(129, 350, '2', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(130, 337, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(131, 263, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(132, 311, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(133, 259, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(134, 319, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(135, 258, '2', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(136, 326, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(137, 297, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(138, 292, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(139, 262, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(140, 278, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(141, 273, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(142, 255, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(143, 270, '4', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(144, 345, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(145, 306, '3', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(146, 283, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(147, 284, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(148, 335, '2', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(149, 344, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(150, 313, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(151, 347, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(152, 253, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(153, 268, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(154, 275, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(155, 266, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(156, 304, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(157, 299, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(158, 305, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(159, 301, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(160, 294, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(161, 330, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(162, 329, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(163, 307, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(164, 256, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(165, 280, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(166, 328, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(167, 366, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(168, 365, '1', 'Metrocentro', 'Gav#3, Marcas Femenino, Todo Tamaño'),
(211, 416, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(212, 417, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(213, 418, '2', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(214, 386, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(215, 378, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(216, 372, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(217, 396, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(218, 371, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(219, 383, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(220, 413, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(221, 367, '2', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(222, 397, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(223, 389, '2', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(224, 388, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(225, 381, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(226, 369, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(227, 377, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(228, 395, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(229, 401, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(230, 399, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(231, 375, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(232, 415, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(233, 376, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(234, 373, '2', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(235, 374, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(236, 379, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(237, 368, '1', 'Metrocentro', 'Gav#4 Marcas Femenino, Todo Tamaño'),
(238, 419, '2', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(239, 421, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(240, 430, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(241, 428, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(242, 425, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(243, 441, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(244, 438, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(245, 434, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(246, 448, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(247, 445, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(248, 444, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(249, 459, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(250, 454, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(251, 452, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(252, 466, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(253, 461, '2', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(254, 458, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(255, 455, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(256, 453, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(257, 446, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(258, 435, '3', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(259, 450, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(260, 433, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(261, 432, '2', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(262, 451, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(263, 442, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(264, 426, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(265, 427, '4', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(266, 429, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(267, 437, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(268, 440, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(269, 424, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(270, 423, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(271, 431, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(272, 422, '1', 'Metrocentro', 'Gav#7 Marcas Masculino, mediano/Pequeño'),
(273, 475, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(274, 473, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(275, 470, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(276, 480, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(277, 478, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(278, 477, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(279, 491, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(280, 482, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(281, 483, '2', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(282, 507, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(283, 504, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(284, 501, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(285, 517, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(286, 515, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(287, 511, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(288, 529, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(289, 526, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(290, 525, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(291, 537, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(292, 535, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(293, 532, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(294, 542, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(295, 540, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(296, 538, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(297, 549, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(298, 554, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(299, 547, '1', 'Metrocentro', 'Gav#6 Marcas Femenino, mediano/Pequeño'),
(300, 563, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(301, 562, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(302, 560, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(303, 551, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(304, 548, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(305, 546, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(306, 541, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(307, 536, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(308, 543, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(309, 530, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(310, 528, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(311, 534, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(312, 531, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(313, 484, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(314, 539, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(315, 513, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(316, 495, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(317, 505, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(318, 489, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(319, 519, '3', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(320, 510, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(321, 492, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(322, 503, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(323, 500, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(324, 498, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(325, 487, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(326, 486, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(327, 521, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(328, 518, '1', 'Metrocentro', 'Gav#9 Marcas, masculino, grande Acetato'),
(329, 566, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(330, 565, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(331, 570, '3', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(332, 568, '2', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(333, 569, '2', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(334, 559, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(335, 514, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(336, 496, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(337, 527, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(338, 494, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(339, 524, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(340, 558, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(341, 555, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(342, 556, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(343, 552, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(344, 550, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(345, 456, '3', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(346, 545, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(347, 544, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(348, 522, '2', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(349, 516, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(350, 508, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(351, 493, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(352, 520, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(353, 488, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(354, 485, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(355, 479, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(356, 512, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(357, 509, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(358, 506, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(359, 499, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(360, 490, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(361, 474, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(362, 481, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(363, 439, '2', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(364, 476, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(365, 472, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(366, 467, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(367, 468, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(368, 471, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(369, 460, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(370, 462, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(371, 457, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(372, 465, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(373, 443, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(374, 502, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(375, 464, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(376, 436, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(377, 447, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(378, 577, '1', 'Metrocentro', 'Gav#8 Marcas Femenino, mediano/Pequeño'),
(379, 578, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(380, 575, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(381, 583, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(382, 581, '2', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(383, 588, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(384, 596, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(385, 600, '2', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(386, 606, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(387, 602, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(388, 604, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(389, 104, '8', 'Metrocentro', ''),
(390, 613, '3', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(391, 610, '1', 'Metrocentro', 'Gav#11 Marcas,Deportivos, Maculino, med/grand'),
(392, 640, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(393, 641, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(394, 637, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(395, 654, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(396, 663, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(397, 660, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(398, 657, '4', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(399, 666, '2', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(400, 671, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(401, 668, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(402, 675, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(403, 673, '2', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(404, 674, '2', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(405, 680, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(406, 678, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(407, 679, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(408, 683, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(409, 682, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(410, 681, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(411, 686, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(412, 685, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(413, 684, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(414, 672, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(415, 670, '3', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(416, 665, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(417, 658, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(418, 661, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(419, 639, '2', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(420, 590, '2', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(421, 655, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(422, 628, '2', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(423, 647, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(424, 587, '3', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(425, 621, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(426, 644, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(427, 667, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(428, 643, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(429, 650, '2', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(430, 651, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(431, 605, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(432, 630, '2', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(433, 616, '2', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(434, 633, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(435, 625, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(436, 594, '2', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(437, 609, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(438, 608, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(439, 632, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(440, 584, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(441, 627, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(442, 574, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(443, 579, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(444, 580, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(445, 582, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(446, 576, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(447, 573, '2', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(448, 617, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(449, 598, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(450, 592, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(451, 571, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(452, 611, '2', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(453, 595, '1', 'Metrocentro', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac'),
(454, 689, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(455, 688, '3', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(456, 687, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(457, 691, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(458, 120, '1', 'Metrocentro', ''),
(459, 690, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(460, 693, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(461, 692, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(462, 697, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(463, 696, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(464, 695, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(465, 694, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(466, 701, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(467, 700, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(468, 178, '1', 'Metrocentro', ''),
(469, 177, '1', 'Metrocentro', ''),
(470, 699, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(471, 698, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(472, 705, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(473, 704, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(474, 703, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(475, 702, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(476, 707, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(477, 706, '1', 'Metrocentro', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C'),
(478, 714, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(479, 712, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(480, 101, '5', 'Metrocentro', ''),
(481, 729, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(482, 719, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(483, 138, '5', 'Metrocentro', ''),
(484, 736, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(485, 111, '1', 'Metrocentro', ''),
(486, 745, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(487, 151, '1', 'Metrocentro', ''),
(488, 767, '2', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(489, 766, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(490, 769, '2', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(491, 771, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(492, 759, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(493, 762, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(494, 750, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(495, 764, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(496, 752, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(497, 773, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(498, 747, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(499, 746, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(500, 741, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(501, 742, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(502, 738, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(503, 748, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(504, 735, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(505, 404, '2', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(506, 728, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(507, 739, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(508, 731, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(509, 727, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(510, 722, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(511, 733, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(512, 715, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(513, 778, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(514, 713, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(515, 710, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(516, 409, '3', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(517, 743, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(518, 757, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(519, 726, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(520, 708, '3', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(521, 720, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(522, 723, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(523, 709, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(524, 779, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(525, 153, '2', 'Metrocentro', ''),
(526, 777, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(527, 711, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(528, 760, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(529, 407, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(530, 405, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(531, 406, '2', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(532, 400, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(533, 394, '2', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(534, 410, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(535, 557, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(536, 754, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(537, 398, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(538, 387, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(539, 783, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(540, 782, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(541, 781, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(542, 776, '1', 'Metrocentro', 'Gav#17 Economicos'),
(543, 775, '1', 'Metrocentro', 'Gav#17 Economicos'),
(544, 749, '2', 'Metrocentro', 'Gav#17 Economicos'),
(545, 755, '2', 'Metrocentro', 'Gav#17 Economicos'),
(546, 765, '2', 'Metrocentro', 'Gav#17 Economicos'),
(547, 756, '1', 'Metrocentro', 'Gav#17 Economicos'),
(548, 734, '2', 'Metrocentro', 'Gav#17 Economicos'),
(549, 730, '4', 'Metrocentro', 'Gav#17 Economicos'),
(550, 732, '3', 'Metrocentro', 'Gav#17 Economicos'),
(551, 737, '2', 'Metrocentro', 'Gav#17 Economicos'),
(552, 774, '1', 'Metrocentro', 'Gav#17 Economicos'),
(553, 772, '1', 'Metrocentro', 'Gav#17 Economicos'),
(554, 744, '1', 'Metrocentro', 'Gav#17 Economicos'),
(555, 721, '2', 'Metrocentro', 'Gav#17 Economicos'),
(556, 751, '1', 'Metrocentro', 'Gav#17 Economicos'),
(557, 763, '1', 'Metrocentro', 'Gav#17 Economicos'),
(558, 753, '1', 'Metrocentro', 'Gav#17 Economicos'),
(559, 761, '1', 'Metrocentro', 'Gav#17 Economicos'),
(560, 758, '1', 'Metrocentro', 'Gav#17 Economicos'),
(561, 768, '1', 'Metrocentro', 'Gav#17 Economicos'),
(562, 770, '1', 'Metrocentro', 'Gav#17 Economicos'),
(563, 716, '1', 'Metrocentro', 'Gav#17 Economicos'),
(564, 740, '1', 'Metrocentro', 'Gav#17 Economicos'),
(565, 382, '1', 'Metrocentro', ''),
(566, 725, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(567, 717, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(568, 408, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(569, 393, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(570, 391, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(571, 414, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(572, 403, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(573, 411, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(574, 724, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(575, 412, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(576, 402, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(577, 390, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(578, 786, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(579, 785, '1', 'Metrocentro', 'Gav#5 Marcas Femenino, mediano/grande'),
(580, 788, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(581, 787, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(582, 784, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(583, 805, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(584, 803, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(585, 800, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(586, 798, '3', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(587, 795, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(588, 796, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(589, 813, '3', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(590, 810, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(591, 533, '0', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(592, 802, '2', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(593, 572, '2', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(594, 831, '11', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(595, 133, '1', 'Metrocentro', ''),
(596, 829, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(597, 812, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(598, 835, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(599, 834, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(600, 833, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(601, 832, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(602, 842, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(603, 838, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(604, 839, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(605, 122, '1', 'Metrocentro', ''),
(606, 635, '3', 'Metrocentro', 'Gav#14 AndVas todo color, Fem/Masc, Acetato C'),
(607, 849, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(608, 847, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(609, 850, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(610, 846, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(611, 845, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(612, 855, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(613, 856, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(614, 857, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(615, 858, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(616, 642, '1', 'Metrocentro', 'Gav#14 AndVas todo color, Fem/Masc, Acetato C'),
(617, 859, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(618, 860, '2', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(619, 861, '1', 'Metrocentro', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C'),
(620, 869, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(621, 868, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(622, 867, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(623, 866, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(624, 865, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(625, 824, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(626, 814, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(627, 811, '2', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(628, 875, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(629, 874, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(630, 873, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(631, 871, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(632, 870, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(633, 826, '2', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(634, 828, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(635, 822, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(636, 827, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(637, 815, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(638, 793, '2', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(639, 823, '2', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(640, 791, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(641, 825, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(642, 804, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(643, 790, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(644, 808, '2', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(645, 789, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(646, 818, '2', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(647, 799, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(648, 497, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(649, 820, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(650, 806, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(651, 819, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(652, 809, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(653, 885, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(654, 882, '2', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(655, 876, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(656, 881, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(657, 877, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(658, 879, '1', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(659, 883, '2', 'Metrocentro', 'Gav#10 Marcas, masculino, mediano/pequeño Ace'),
(660, 888, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(661, 887, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(662, 886, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(663, 880, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(664, 884, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(665, 878, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(666, 894, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(667, 893, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(668, 891, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(669, 889, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(670, 906, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(671, 902, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(672, 900, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(673, 905, '2', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(674, 898, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(675, 896, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(676, 281, '2', 'Metrocentro', 'Gav#2 Marcas Niño'),
(677, 318, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(678, 282, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(679, 327, '2', 'Metrocentro', 'Gav#2 Marcas Niño'),
(680, 349, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(681, 295, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(682, 340, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(683, 277, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(684, 286, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(685, 343, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(686, 317, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(687, 321, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(688, 316, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(689, 293, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(690, 364, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(691, 287, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(692, 261, '2', 'Metrocentro', 'Gav#2 Marcas Niño'),
(693, 260, '3', 'Metrocentro', 'Gav#2 Marcas Niño'),
(694, 264, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(695, 272, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(696, 363, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(697, 336, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(698, 342, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(699, 271, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(700, 300, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(701, 279, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(702, 324, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(703, 310, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(704, 303, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(705, 288, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(706, 302, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(707, 308, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(708, 351, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(709, 332, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(710, 276, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(711, 320, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(712, 289, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(713, 334, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(714, 341, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(715, 285, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(716, 314, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(718, 257, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(719, 291, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(720, 267, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(721, 323, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(722, 298, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(723, 315, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(724, 274, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(725, 380, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(726, 346, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(727, 353, '2', 'Metrocentro', 'Gav#2 Marcas Niño'),
(728, 362, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(729, 355, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(730, 358, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(731, 290, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(732, 361, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(733, 357, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(734, 359, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(735, 360, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(736, 352, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(737, 908, '2', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(738, 909, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(739, 924, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(740, 919, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(741, 918, '2', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(742, 917, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(743, 915, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(744, 931, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(745, 930, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(746, 928, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(747, 927, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(748, 926, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(749, 925, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(750, 936, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(751, 935, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(752, 933, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(753, 932, '1', 'Metrocentro', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic'),
(754, 955, '5', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(755, 954, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(756, 949, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(757, 947, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(758, 945, '2', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(759, 1005, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(760, 999, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(761, 1003, '5', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(762, 997, '5', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(763, 1001, '2', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(764, 1027, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(765, 1032, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(766, 1035, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(767, 1037, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(768, 1038, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(769, 1039, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(770, 1040, '2', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(771, 1045, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(772, 1044, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(773, 1043, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(774, 1042, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(775, 1041, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(776, 1051, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(777, 1049, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(778, 1048, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(779, 1046, '3', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(780, 1047, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(781, 1052, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(782, 1055, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(783, 1054, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(784, 1053, '2', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(785, 1059, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(786, 1058, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(787, 1056, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(788, 1069, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(789, 1067, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(790, 1068, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(791, 1066, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(792, 1065, '1', 'Metrocentro', 'Gav#22 Economico Femenino/Masculino, Todo Tam'),
(793, 1080, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(794, 1079, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(795, 1078, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(796, 1073, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(797, 1075, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(798, 1076, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(799, 1074, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(800, 1072, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(801, 1077, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(802, 1029, '3', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(803, 1021, '4', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(804, 1031, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(805, 1028, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(806, 1026, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(807, 1025, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(808, 1070, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(809, 1033, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(810, 1036, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(811, 1034, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(812, 1018, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(813, 1022, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(814, 1023, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(815, 1030, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(816, 1024, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(817, 1020, '1', 'Metrocentro', ''),
(818, 983, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(819, 1015, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(820, 1013, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(821, 1014, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(822, 1017, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(823, 1009, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(824, 1008, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(825, 1007, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(826, 992, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(827, 994, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(828, 1012, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(829, 993, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(830, 1010, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(831, 1016, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(832, 1000, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(833, 991, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(834, 990, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(835, 1019, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(836, 989, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(837, 979, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(838, 985, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(839, 975, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(840, 968, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal');
INSERT INTO `existencias` (`id_ingreso`, `id_producto`, `stock`, `bodega`, `categoriaub`) VALUES
(841, 966, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(842, 962, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(843, 960, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(844, 984, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(845, 977, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(846, 995, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(847, 969, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(848, 987, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(849, 929, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(850, 910, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(851, 958, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(852, 911, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(853, 912, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(854, 923, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(855, 914, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(856, 971, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(857, 986, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(858, 973, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(859, 964, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(860, 981, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(861, 913, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(862, 998, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(863, 920, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(864, 921, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(865, 916, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(866, 1011, '2', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(867, 1081, '1', 'Metrocentro', 'Gav#21 Economico Femenino, Todo Tamaño, Metal'),
(868, 821, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(869, 853, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(870, 852, '2', 'Metrocentro', 'Gav#18 Lentes de sol'),
(871, 807, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(872, 862, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(873, 792, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(874, 817, '2', 'Metrocentro', 'Gav#18 Lentes de sol'),
(875, 836, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(876, 837, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(877, 844, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(878, 872, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(879, 801, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(880, 841, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(881, 840, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(882, 848, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(883, 843, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(884, 854, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(885, 816, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(886, 851, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(887, 864, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(888, 863, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(889, 1096, '1', 'Metrocentro', 'Gav#18 Lentes de sol'),
(951, 1119, '1', 'Metrocentro', 'Gav#2 Marcas Niño'),
(954, 620, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(955, 1057, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(956, 982, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(957, 967, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(958, 622, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(959, 624, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(960, 1115, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(961, 603, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(962, 653, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(963, 950, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(964, 1063, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(965, 589, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(966, 961, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(967, 942, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(968, 631, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(969, 618, '3', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(970, 974, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(971, 1061, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(972, 1064, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(973, 953, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(974, 634, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(975, 943, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(976, 972, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(977, 638, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(978, 941, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(979, 659, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(980, 612, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(981, 649, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(982, 940, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(983, 652, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(984, 1060, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(985, 959, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(986, 664, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(987, 591, '3', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(988, 645, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(989, 952, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(990, 980, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(991, 946, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(992, 948, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(993, 629, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(994, 662, '2', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(995, 1062, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(996, 963, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(997, 597, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(998, 951, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(999, 619, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1000, 937, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1001, 656, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1002, 970, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1003, 939, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1004, 1120, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1005, 614, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1006, 978, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1007, 648, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1008, 601, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1009, 676, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1010, 646, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1011, 669, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1012, 615, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1013, 965, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1014, 938, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1015, 944, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1016, 677, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1017, 1123, '1', 'Metrocentro', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac'),
(1018, 1117, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1019, 1116, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1020, 1113, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1021, 1114, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1022, 1111, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1023, 1107, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1024, 1112, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1025, 1093, '2', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1026, 1110, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1027, 1105, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1028, 1104, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1029, 1109, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1030, 1102, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1031, 1106, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1032, 1103, '3', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1033, 1101, '2', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1034, 1097, '2', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1035, 1108, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1036, 1094, '2', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1037, 1100, '2', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1038, 1082, '3', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1039, 1098, '2', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1040, 1090, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1041, 1088, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1042, 1089, '2', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1043, 1095, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1044, 1087, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1045, 1083, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1046, 1086, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1047, 1084, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1048, 1085, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1049, 1091, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1050, 1099, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1051, 1092, '1', 'Metrocentro', 'Gav#23 Economico Masculino'),
(1052, 1142, '1', 'Metrocentro', 'Gav#25 Marca y sin marca, Natación/Industrial'),
(1053, 1141, '1', 'Metrocentro', 'Gav#25 Marca y sin marca, Natación/Industrial'),
(1054, 1121, '3', 'Metrocentro', 'Gav#25 Marca y sin marca, Natación/Industrial'),
(1055, 1152, '2', 'Metrocentro', 'Gav#25 Marca y sin marca, Natación/Industrial'),
(1056, 1186, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1057, 1184, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1058, 1182, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1059, 895, '2', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1060, 1185, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1061, 1174, '2', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1062, 1183, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1063, 1178, '2', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1064, 1159, '2', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1065, 1177, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1066, 1179, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1067, 890, '2', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1068, 1175, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1069, 1176, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1070, 1170, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1071, 1171, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1072, 1168, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1073, 1173, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1074, 1172, '2', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1075, 1169, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1076, 1162, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1077, 1167, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1078, 1181, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1079, 1160, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1080, 1163, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1081, 1164, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1082, 1180, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1083, 1161, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1084, 1156, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1085, 1158, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1086, 1166, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1087, 996, '2', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1088, 904, '2', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1089, 1004, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1090, 1006, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1091, 903, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1092, 922, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1093, 1002, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1094, 901, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1095, 1190, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1096, 1189, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1097, 1188, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1098, 897, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1099, 1187, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1100, 1191, '1', 'Metrocentro', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic'),
(1101, 1195, '1', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1102, 1194, '1', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1103, 1193, '1', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1104, 1192, '1', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1105, 1196, '2', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1106, 1197, '1', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1107, 1198, '1', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1108, 1199, '3', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1109, 1200, '1', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1110, 1201, '1', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1111, 1202, '3', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1112, 1203, '1', 'Metrocentro', 'ME#27 ANDVAS #1'),
(1124, 1248, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1125, 1249, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1126, 1251, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1127, 1253, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1128, 1229, '1', 'Metrocentro', 'ME#27 ANDVAS #3'),
(1129, 1260, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1130, 1262, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1131, 1264, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1132, 1265, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1133, 1266, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1134, 1268, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1135, 1270, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #14'),
(1136, 1206, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1137, 1208, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1138, 1209, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1139, 1211, '2', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1140, 1215, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1141, 1218, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1142, 1220, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1143, 1223, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1144, 1224, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1145, 1236, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1146, 1227, '1', 'Metrocentro', 'ME#28 ANDVAS ACETATO #13'),
(1147, 1274, '2', 'Metrocentro', 'ME#27 METAL #6'),
(1148, 1138, '1', 'Metrocentro', 'Gav#24 Economico Masculino, Todo tamaño, Meta'),
(1149, 1275, '1', 'Metrocentro', 'ME#27 METAL #6'),
(1150, 1277, '1', 'Metrocentro', 'ME#27 METAL #6'),
(1151, 1279, '1', 'Metrocentro', 'ME#27 METAL #6'),
(1152, 1278, '1', 'Metrocentro', 'ME#27 METAL #6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lentes`
--

CREATE TABLE `lentes` (
  `id_lente` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio_venta` varchar(45) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lentes`
--

INSERT INTO `lentes` (`id_lente`, `descripcion`, `precio_venta`, `id_usuario`) VALUES
(1, 'Lente1', '127', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id_orden` int(11) NOT NULL,
  `optica` varchar(45) DEFAULT NULL,
  `paciente` varchar(100) DEFAULT NULL,
  `odesfera` varchar(45) DEFAULT NULL,
  `odcilindro` char(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `odeje` varchar(45) DEFAULT NULL,
  `oddicion` varchar(45) DEFAULT NULL,
  `odprisma` varchar(45) DEFAULT NULL,
  `oiesfera` varchar(45) DEFAULT NULL,
  `oicilindros` varchar(45) DEFAULT NULL,
  `oieje` varchar(45) DEFAULT NULL,
  `oiadicion` varchar(45) DEFAULT NULL,
  `oiprisma` varchar(45) DEFAULT NULL,
  `policarbonato` varchar(45) DEFAULT NULL,
  `antirreflejo` varchar(45) DEFAULT NULL,
  `lentes` varchar(45) DEFAULT NULL,
  `colorlente` varchar(45) DEFAULT NULL,
  `base` varchar(45) DEFAULT NULL,
  `odoblea` varchar(45) DEFAULT NULL,
  `odpupilar` varchar(45) DEFAULT NULL,
  `oddplejos` varchar(45) DEFAULT NULL,
  `oddpcerca` varchar(45) DEFAULT NULL,
  `oioblea` varchar(45) DEFAULT NULL,
  `oipupilar` varchar(45) DEFAULT NULL,
  `oidplejos` varchar(45) DEFAULT NULL,
  `oidpcerca` varchar(45) DEFAULT NULL,
  `aro` varchar(45) DEFAULT NULL,
  `coloraro` varchar(45) DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `medidas_lente` varchar(45) DEFAULT NULL,
  `medida_a` varchar(45) DEFAULT NULL,
  `medida_b` varchar(45) DEFAULT NULL,
  `medida_c` varchar(45) DEFAULT NULL,
  `medida_d` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `numero_orden` varchar(45) DEFAULT NULL,
  `sucursal` varchar(45) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `diseno_aro` varchar(45) NOT NULL,
  `materiales` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`id_orden`, `optica`, `paciente`, `odesfera`, `odcilindro`, `odeje`, `oddicion`, `odprisma`, `oiesfera`, `oicilindros`, `oieje`, `oiadicion`, `oiprisma`, `policarbonato`, `antirreflejo`, `lentes`, `colorlente`, `base`, `odoblea`, `odpupilar`, `oddplejos`, `oddpcerca`, `oioblea`, `oipupilar`, `oidplejos`, `oidpcerca`, `aro`, `coloraro`, `observaciones`, `usuario`, `fecha`, `medidas_lente`, `medida_a`, `medida_b`, `medida_c`, `medida_d`, `estado`, `numero_orden`, `sucursal`, `fecha_creacion`, `diseno_aro`, `materiales`) VALUES
(35, 'Lomed', 'Fernando Lopez', '0.25', '.21', '0.23', '0.14', '0.23', '', '', '', '', '', '', 'Si', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'oscar', '28/12/2019 - 14:46:50', NULL, '', '', '', '20', '3', 'AV001', 'Metrocentro', '2019-12-28 21:55:29', '', ''),
(36, 'Lomed', 'Oscar Gonzalez', '-0.25', '', '', '', '', '', '', '', '', '', '', 'Si', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'oscar', '28/12/2019 - 15:55:36', NULL, '', '', '', '25', '1', 'AV000002', 'Metrocentro', '2019-12-28 22:23:15', '', ''),
(37, 'Lomed', 'KAREN SALAZAR', '-2.00', '-1.25', '180', '+1.00', '', '-3.00', '-2.00', '180', '+1.00', '', 'MULTIFOCAL', NULL, 'VARILUZ PHYSIO', 'BLANCO', '', '', '23', '32', '', '', '23', '32', '', '', '', '', 'andvas', '28/12/2019 - 23:2:12', NULL, '34', '36', '24', '18', '1', 'AV000003', 'Santa Ana', '2019-12-29 05:06:14', 'Completo', 'Acetato'),
(38, 'Lomed', 'MANOJ BAROT', '-1.00', '', '', '', '', '+2.00', '', '', '', '', 'vision sencilla', 'Si', '', 'BLANCO', '', '', '', '30', '', '', '', '30', '', '', '', '', 'lomed', '30/12/2019 - 12:4:16', NULL, '34', '34', '34', '34', '1', 'AV000004', 'Metrocentro', '2019-12-30 18:05:39', 'Completo', 'Acetato'),
(39, 'Lomed', 'MAURICIO CABRERA', '-1.00', '-1.00', '180', '+1.50', '', '-0.25', '-0.25', '90', '+1.50', '', 'MULTIFOCAL', 'No', 'NATURAL', 'Blanco', '', '', '22', '33', '', '', '22', '33', '', 'AndVas', 'c5', '52-18-140', 'lomed', '2/1/2020 - 16:47:3', NULL, '30', '25', '55', '18', '3', 'AV000005', 'Metrocentro', '2020-01-02 22:53:33', 'Completo', 'Acetato'),
(40, 'Lomed', 'Carlos Enrique Alvarado', '+0.25', '-1.75', '12', '', '', '+0.25', '-2.75', '165', '', '', 'v.s', 'Si', 'terminado', 'blanco', '', '', '', '32.5', '', '', '', '32.5', '', 'andvas hd132', '05', '.', 'arely', '6/1/2020 - 13:8:17', NULL, '50', '30', '52', '15', '3', 'AV000006', 'Metrocentro', '2020-01-06 19:26:56', 'Completo', 'Acetato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `edad` varchar(100) DEFAULT NULL,
  `ocupacion` varchar(100) DEFAULT NULL,
  `empresa` varchar(100) DEFAULT 'Ninguna',
  `correo` varchar(200) DEFAULT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `codigo`, `nombres`, `telefono`, `edad`, `ocupacion`, `empresa`, `correo`, `fecha_reg`, `id_usuario`) VALUES
(32, 'AV001', 'Lisset Lemus', '7400013', '25', 'Optometra', 'Ninguna', 'eyter@gmail.com', '2020-01-03 21:16:37', 5),
(33, 'AV000002', 'Oscar Gonzalez', '7974 5345', '', '', 'Ninguna', '', '2020-01-06 18:27:26', 7),
(34, 'AV000003', 'SANDRA CATALINA RIVAS', '61393969', '47', '-', 'Ninguna', 'sandra@gmail.com', '2020-01-06 23:06:22', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes_afiliados`
--

CREATE TABLE `pacientes_afiliados` (
  `id_paciente_afiliado` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `dui` varchar(100) DEFAULT NULL,
  `tarjeta_n` varchar(45) DEFAULT NULL,
  `fecha_vencimiento_tarjeta` varchar(45) DEFAULT NULL,
  `tipo_tarjeta` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `fecha_pago` varchar(45) DEFAULT NULL,
  `forma_pago` varchar(45) DEFAULT NULL,
  `lugar_trabajo` varchar(45) DEFAULT NULL,
  `tipo_plan` varchar(45) DEFAULT NULL,
  `couta_mensual` varchar(45) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `fecha_afiliacion` timestamp NULL DEFAULT NULL,
  `forma` varchar(45) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `lente` varchar(45) DEFAULT NULL,
  `diseno_aro` varchar(45) NOT NULL,
  `materiales` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes_afiliados`
--

INSERT INTO `pacientes_afiliados` (`id_paciente_afiliado`, `nombre`, `codigo`, `direccion`, `dui`, `tarjeta_n`, `fecha_vencimiento_tarjeta`, `tipo_tarjeta`, `telefono`, `celular`, `fecha_pago`, `forma_pago`, `lugar_trabajo`, `tipo_plan`, `couta_mensual`, `correo`, `fecha_afiliacion`, `forma`, `marca`, `lente`, `diseno_aro`, `materiales`) VALUES
(48, 'Miguel Angel', '', '0', '321', '43323244', '12-2019', 'debito', '', '7987', '', 'Cargo Automatico Planes', '', 'Plan Básico', NULL, 'miguel@gmail.com', NULL, NULL, NULL, NULL, '', ''),
(49, 'carlos cristian ramirez', '', '0', '32767', '4177072880618192', '03-2025', 'debito', '', '73360200', '', 'Cargo Automatico Planes', '', 'Plan Básico', NULL, 'carloschramirezr@gmail.com', NULL, NULL, NULL, NULL, '', ''),
(50, 'carlos lopez', '', '0', '12345', '4356289848332', '2323', 'debito', '', '78695344', '', 'Cargo Automatico Planes', '', 'Plan Básico', NULL, 'carlos@gmail.com', NULL, NULL, NULL, NULL, '', ''),
(51, 'Carlos Eduardo Rojas', '', '0', '32767', '543313', '12-2019', 'debito', '', '79745345', '', 'Cargo Automatico Planes', '', 'Plan Básico', NULL, 'carlos@gmail.com', NULL, NULL, NULL, NULL, '', ''),
(52, 'Carmen Arita', '', '0', '32767', '3416 254542 55266', '12/2021', 'credito', '', '6655-5555', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'carmen@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(53, '', '', '0', '0', '', '', 'c', '', '', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Premium', NULL, '', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(54, '', '', '0', '0', '', '', 'c', '', '', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, '', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(55, 'Fatima', '', '0', '32767', '3448434888848', '12/2019', 'debito', '', '79745345', '', 'Cargo Automatico Planes', '', 'Plan Premium', NULL, 'fatima@gmail.com', NULL, NULL, NULL, NULL, '', ''),
(56, 'Rosa Maria', '', '0', '32767', '3477 373777 27727', '12/2019', 'credito', '', '7986-5552', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Clasico', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(57, 'Kenia Cecilia', '', '0', '32767', '3455 318462 53573', '12/2021', 'credito', '', '7964-6546', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Clasico', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Agatado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(58, 'Fatima hh', '', '0', '32767', '3412 374541 41111', '12/2019', 'credito', '', '7974-5345', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(59, 'Cindy Yamileth Saca', '', '0', '22344', '4321 1223 3333 4444', '12/2019', 'credito', '', '1344-5555', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(60, 'Cristina', '', '0', '32767', '4422 2222 2222 4455', '12/2021', 'credito', '', '7923-4455', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(61, 'Carmen Arita d', '', '0', '32767', '3256 1566 2177 7377', '12/2021', 'credito', '', '7978-3736', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(62, 'Carmen Arita', '', '0', '32767', '3422 334444 45455', '12/2021', 'credito', '', '7753-2331', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(63, 'miguel rojas', '', '0', '32767', '3422 467788 88888', '12/2019', 'credito', '', '4455-2123', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: Timberland', 'Lente: Visión Sencilla', '', ''),
(64, 'Oscar Gonzalez', '', '0', '32767', '4333 3333 3333 3333', '12/2019', 'credito', '', '7933-3434', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Clasico', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Agatado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(65, 'Carmen Aritas', '', '0', '32767', '2334 4555 5555 5555', '12/2021', 'credito', '', '5324-4556', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(66, 'Carmen Arita Ramirez', '', '0', '32767', '4793 9499 5959 9666', '12/2021', 'credito', '', '7767-4433', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(67, 'Carmen AritaPerez', '', '0', '32767', '2444 4643 4444 4444', '12/2021', 'credito', '', '7924-5566', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(68, 'Asuncio Molina', '', '0', '32767', '5124 8748 5857 5757', '12/2019', 'credito', '', '8726-4674', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(69, 'Andrea Sofia', '', '0', '32767', '3423 773833 88477', '12/2019', 'credito', '', '7974-5345', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Rectangular', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(70, 'Maribel Rojas', '', '0', '32767', '4273 7474 7774 7447', '12/2019', 'credito', '', '7974-5345', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: ', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: ', 'Marca: ', 'Lente: ', '', ''),
(71, 'Marcos', '', '0', '32767', '3422 324222 21121', '12/2019', 'credito', '', '7974-5345', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: Timberland', 'Lente: Visión Sencilla', '', ''),
(72, 'Denniis MAuricio', '', '0', '32767', '4237 4422 4434 4111', '11/2021', 'credito', '', '7974-5345', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(73, 'Carlos Choto Vaz', '', '0', '3840981', '4233 4444 4444 4', '12/2019', 'credito', '', '7974-5345', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Clasico', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(74, 'Carlos Choto MArtinez', '', '0', '90309048', '3421 211343 3', '12/2019', 'credito', '', '7974-5345', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(75, 'Josue Rojas', '', '0', '90309048', '3421 111331 11331', '12/2019', 'credito', '', '7974-5345', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: Timberland', 'Lente: Visión Sencilla', '', ''),
(76, 'William  Palacios', '', '0', '90309048', '4233 3322 4131 4427', '12/2021', 'debito', '', '7974-5345', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'oscargonzalez815@gmail.com', NULL, 'Forma: Acetato Rectangular', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(77, 'Josue Corvera', '', '0', '474747', '3432 645389 92663', '02/24', 'credito', '', '7945-7262', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Clasico', NULL, 'josue12096@gmail.com', NULL, 'Forma: Redondo', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(78, 'Carlos Andrés Vasquez ', '', '0', '4659943', '5549 4300 0012 4579', '05/22', 'credito', '', '7989-7116', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Clasico', NULL, 'iandvas.opto@gmail.com', NULL, 'Forma: Acetato Rectangular', 'Marca: AndVas', 'Lente: Visión Sencilla', '', ''),
(79, 'Arely Flores ', '', '0', '4030871', '4232 2234 4322 5356', '12/22', 'credito', '', '7853-9293', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Clasico', NULL, 'carmenarelyflores77@gmail.com', NULL, 'Forma: Acetato Cuadrado', 'Marca: AndVas', 'Lente: Multi Focal', '', ''),
(80, 'Carlos Ramirez', '', '0', '3505770', '4502 2345 4520 0001', '12/21', 'credito', '', '7336-0200', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Premium', NULL, 'carloschramirezr@gmail.com', NULL, 'Forma: Acetato Rectangular', 'Marca: Guess', 'Lente: Multi Focal', '', ''),
(81, 'Cristian Ramirez', '', '0', '3505770', '4502 4500 5621 0001', '12/21', 'credito', '', '7336-0200', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Premium', NULL, 'carloschramirezr@gmail.com', NULL, 'Forma: Acetato Rectangular', 'Marca: RayBan', 'Lente: Multi Focal', '', ''),
(82, 'carlos cristian ramirez', '', '0', '3505770', '4502 4500 2601 0001', '12/21', 'credito', '', '7336-0200', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Premium', NULL, 'carloschramirezr@gmail.com', NULL, 'Forma: Redondo', 'Marca: Lacoste', 'Lente: Multi Focal', '', ''),
(83, 'carlos cristian ramirez R', '', '0', '3505770', '4502 3000 2501 001', '12/21', 'credito', '', '7336-0200', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Premium', NULL, 'carloschramirezr@gmail.com', NULL, 'Forma: Acetato Rectangular', 'Marca: Timberland', 'Lente: Multi Focal', '', ''),
(84, 'Andres Vasquez ', '', '0', '12345', '5467 3674 4748 4748', '12/20', 'credito', '', '7989-7114', 'periodo_pago', 'Cargo Automatico Planes', '', 'Plan: Preferencial', NULL, 'iandvas.opto@gmail.com', NULL, 'Forma: Acetato Rectangular', 'Marca: Harley', 'Lente: Visión Sencilla', '', ''),
(85, NULL, '', '0', NULL, NULL, NULL, NULL, '', NULL, '', 'Cargo Automatico Planes', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(86, NULL, '', '0', NULL, NULL, NULL, NULL, '', NULL, '', 'Cargo Automatico Planes', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `nombre`) VALUES
(1, 'Categoria'),
(2, 'Productos'),
(3, 'Proveedores'),
(4, 'Ingresos'),
(5, 'Pacientes'),
(6, 'Ventas'),
(7, 'Reporte de Ingreso de Productos'),
(8, 'Reporte de Ventas'),
(9, 'Usuarios'),
(10, 'Empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(200) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  `precio_venta` varchar(45) NOT NULL,
  `stock` varchar(200) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `medidas` varchar(200) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `categoriau` varchar(45) NOT NULL,
  `imagen` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `modelo`, `marca`, `color`, `precio_venta`, `stock`, `id_usuario`, `medidas`, `categoria`, `categoriau`, `imagen`, `descripcion`) VALUES
(220, 'DC17153', 'ANDVAS ', 'C4', '60', NULL, 9, '45-14-130', 'aros', 'AndVas niño #1', '', 'NEGRO,ROSA, MORADO'),
(221, 'DC8002', 'ANDVAS', 'C4', '60', NULL, 9, '45-16-130', 'aros', 'AndVas niño #1', '', 'NEGRO,BLANCO,CELESTE'),
(222, 'DC17152', 'ANDVAS', 'C3', '60', NULL, 9, '46-14-130', 'aros', 'AndVas niño #1', '', 'NEGRO,ROJO,AZUL'),
(223, 'DC17153', 'ANDVAS', 'C2', '60', NULL, 9, '45-14-130', 'aros', 'AndVas niño #1', '', 'AZUL,AMARILLO,VERDE'),
(224, 'DC17152', 'ANDVAS', 'C4', '60', NULL, 9, '46-14-130', 'aros', 'AndVas niño #1', '', 'NEGRO,ROSA,MORADO'),
(225, 'DC17113', 'ANDVAS', 'C1', '60', NULL, 9, '50-16-135', 'aros', 'AndVas niño #1', '', 'NEGRO'),
(226, '15290', 'ANDVAS', 'C4', '60', NULL, 9, '46-16-130', 'aros', 'AndVas niño #1', '', 'MORADO,ROSADO'),
(227, 'DC17152', 'ANDVAS', 'C2', '60', NULL, 9, '46-14-130', 'aros', 'AndVas niño #1', '', 'AZUL,AMARILLO,VERDE'),
(228, 'F638', 'ANDVAS', 'COL.7', '60', NULL, 9, '49-17-140', 'aros', 'AndVas niño #1', '', 'OCRE'),
(229, '15258', 'ANDVAS', 'C14', '60', NULL, 9, '48-16-130', 'aros', 'AndVas niño #1', '', 'CELESTE'),
(230, 'DC17113', 'ANDVAS', 'C02', '60', NULL, 9, '49-14-132', 'aros', 'AndVas niño #1', '', 'NEGRO,CAFE'),
(231, 'DC17112', 'ANDVAS', 'C06', '60', NULL, 9, '49-16-135', 'aros', 'AndVas niño #1', '', 'AZUL,AMARILLO,VERDE'),
(232, '15201-1', 'ANDVAS', 'C1', '60', NULL, 9, '48-15-128', 'aros', 'AndVas niño #1', '', 'NEGRO'),
(233, 'F78', 'ANDVAS', 'C501', '60', NULL, 9, '47-15-135', 'aros', 'AndVas niño #1', '', ''),
(234, 'DC17153', 'ANDVAS', 'C3', '60', NULL, 9, '45-14-130', 'aros', 'AndVas niño #1', '', 'NEGRO,ROJO,AZUL'),
(235, '18225', 'ANDVAS', 'C9', '60', NULL, 9, '45-15-125', 'aros', 'AndVas niño #1', '', 'ROSADO'),
(236, 'DC17152', 'ANDVAS', 'C5', '60', NULL, 9, '46-14-130', 'aros', 'AndVas niño #1', '', 'NEGRO,VERDE,AZUL'),
(237, '15255', 'ANDVAS', 'C1', '60', NULL, 9, '48-16-130', 'aros', 'AndVas niño #1', '', 'NEGRO'),
(238, '20222', 'ANDVAS', 'C4', '60', NULL, 9, '46-15-125', 'aros', 'AndVas niño #1', '', 'MORADO'),
(239, '15216', 'ANDVAS', 'C13', '60', NULL, 9, '50-15-128', 'aros', 'AndVas niño #1', '', 'NEGRO,BLANCO'),
(240, '15258', 'ANDVAS', 'C13', '60', NULL, 9, '48-16-130', 'aros', 'AndVas niño #1', '', 'MORADO'),
(241, '15276', 'ANDVAS', 'C1', '60', NULL, 9, '47-16-130', 'aros', 'AndVas niño #1', '', 'NEGRO'),
(242, '15258', 'ANDVAS', 'C15', '60', NULL, 9, '48-16-130', 'aros', 'AndVas niño #1', '', 'VERDE,NEGRO'),
(243, '15248', 'ANDVAS', 'C13', '60', NULL, 9, '48-16-130', 'aros', 'AndVas niño #1', '', 'MORADO'),
(244, '15248', 'ANDVAS', 'C15', '60', NULL, 9, '48-16-130', 'aros', 'AndVas niño #1', '', 'CELESTE'),
(245, '15276', 'ANDVAS', 'C15', '60', NULL, 9, '47-16-130', 'aros', 'AndVas niño #1', '', 'CELESTE,AZULNEGRO'),
(246, 'SIN ODELO', 'CANDIES', 'CAFE', '145', NULL, 9, 'SI-NM-EDI', 'aros', 'AndVas niño #1', '', 'CAFE'),
(247, '15276', 'ANDVAS', 'C5', '60', NULL, 9, '47-16-130', 'aros', 'AndVas niño #1', '', 'GRIS'),
(248, '18225', 'ANDVAS', 'C11', '60', NULL, 9, '45-15-125', 'aros', 'AndVas niño #1', '', 'MORADO'),
(249, '15252', 'ANDVAS', 'C1', '60', NULL, 9, '50-16-130', 'aros', 'AndVas niño #1', '', 'NEGRO'),
(250, '14334B', 'ANDVAS', 'C4', '60', NULL, 9, '47-15-130', 'aros', 'AndVas niño #1', '', 'MORADO'),
(251, '15243', 'ANDVAS', 'C3', '60', NULL, 9, '47-16-130', 'aros', 'AndVas niño #1', '', 'ROSADO'),
(252, '17165', 'ANDVAS', 'C1', '60', NULL, 9, '46-15-126', 'aros', 'AndVas niño #1', '', 'MULTICOLOR'),
(253, 'GM0272', 'GUESS MARCIANO', '049', '145', NULL, 9, '51-18-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'CAFE, FRENTE METALICO'),
(254, 'GG2869', 'GUCCI', '135', '275', NULL, 9, '58-15-144', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'CAFE VARILLAS CELESTES'),
(255, 'MW18049', 'PULL&BEAR', 'C1', '145', NULL, 9, '53-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'VINO FRENTE ,ETALICO'),
(256, 'VHE110', 'CAROLINA HERRERA', 'D82M', '275', NULL, 9, '56-18-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'METALICO AZUL NEGRO'),
(257, 'RB5281', 'RAY BAN', '2003', '150', NULL, 5, '47-18-130', 'aros', 'Gav#2 Marcas Niño', '', 'rojo negro'),
(258, 'GG4243', 'GUCCI', '0YY', '275', NULL, 9, '54-16-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(259, 'JAYLA', 'KATE SPADE', '05BZ', '200', NULL, 9, '52-17-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(260, 'MMJ554', 'MARC JACOBS', 'YE2', '200', NULL, 5, '50-17-135', 'aros', 'Gav#2 Marcas Niño', '', ''),
(261, 'CA7605', 'CARRERA', 'OBDW', '75', NULL, 5, '47-17-130', 'aros', 'Gav#2 Marcas Niño', '', 'METAL NEGRO, AZUL'),
(262, 'CD3774', 'CHRISTIAN DIOR', '3JZ', '275', NULL, 9, '53-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO AZUL'),
(263, 'CD3774', 'CHRISTIAN DIOR', '3JI', '275', NULL, 9, '53-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO'),
(264, 'NK7218', 'NIKE', 'C7', '185', NULL, 5, '50-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'SEMI AEREO'),
(265, 'RB8838', 'RAY BAN', 'C1', '150', NULL, 5, '50-18-140', 'aros', 'Gav#2 Marcas Niño', '', 'NEGRO'),
(266, '17C5', 'PULL&BEAR', 'C1', '145', NULL, 9, '53-17-138', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(267, 'HD286', 'HARLEY DAVIDSON', 'SGUN', '125', NULL, 5, '48-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL PLATEADO'),
(268, 'GU2502', 'GUESS MARCIANO', '088', '145', NULL, 9, '52-16-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'AQUA METALICO'),
(269, 'CA0119', 'CANDIES', '082', '100', NULL, 5, '53-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL MORADO'),
(270, 'KC0769', 'KENNETH COLE REACTION', '082', '145', NULL, 9, '52-18-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO CON NEGRO'),
(271, 'CREESE', 'CANDIES', 'BRN/PK', '100', NULL, 5, '48-16-135', 'aros', 'Gav#2 Marcas Niño', '', 'CAFE ROSADO'),
(272, 'C COCO', 'CANDIES', 'BRN', '100', NULL, 5, '50-16-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL  CAFE'),
(273, 'NINETTE', 'KATE SPADE', '0003', '200', NULL, 9, '49-17-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'FRENTE NEGRO METALICO VARILLAS AQUA CON CAFE'),
(274, 'C KIM', 'CANDIES', 'RSP', '100', NULL, 5, '47-17-130', 'aros', 'Gav#2 Marcas Niño', '', ''),
(275, 'BARRACK', 'NICOLE MILLER', 'C03', '145', NULL, 9, '50-16-130', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO'),
(276, 'CD3763', 'CHRISTIAN DIOR', 'XLB', '225', NULL, 5, '51-14-140', 'aros', 'Gav#2 Marcas Niño', '', 'METAL ROJO NGRO'),
(277, 'B MONTY', 'BONGO', 'BRN', '60', NULL, 5, '47-18-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL CAFE'),
(278, 'NINETTE', 'KATE SPADE', '0003', '200', NULL, 9, '52-17-130', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO VARILLAS ROSA'),
(279, 'C AZEL', 'CANDIES', 'BRNBL', '100', NULL, 5, '45-14-130', 'aros', 'Gav#2 Marcas Niño', '', 'CAFE MENTA'),
(280, 'DC8045', 'CONVERSE', 'C1', '145', NULL, 9, '55-14-145', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'GRIS'),
(281, 'C MADISON', 'CANDIES', 'PL', '100', NULL, 5, '45-16-130', 'aros', 'Gav#2 Marcas Niño', '', 'METAL MORADO'),
(282, 'C BELLA', 'CANDIES', 'PUR', '100', NULL, 5, '48-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL PURPURA'),
(283, 'GG1954', 'GUCCI', 'M7A', '275', NULL, 9, '55-16-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(284, 'GG4244', 'GUCCI', 'UYU', '275', NULL, 9, '53-16-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'BLANCO METALICO '),
(285, 'CA0102', 'CANDIES', '005', '100', NULL, 5, '51-16-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL NEGRO MATE'),
(286, 'C LEONORA', 'CANDIES', 'BRN', '100', NULL, 5, '45-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL CAFE'),
(287, 'TH3261', 'TOMMY HILFIGER', 'BUPK', '200', NULL, 5, '46-18-140', 'aros', 'Gav#2 Marcas Niño', '', 'METAL SEMI AEREO ROJO'),
(288, 'TH3262', 'TOMMY HILFIGER', 'BLGUN', '200', NULL, 5, '47-18-140', 'aros', 'Gav#2 Marcas Niño', '', 'METAL AZUL'),
(289, 'CA0123', 'CANDIES', '005', '100', NULL, 5, '50-16-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL MORADO CON NEGRO'),
(290, 'RB5162', 'RAY BAN', '2030', '180', NULL, 5, '50-16-140', 'aros', 'Gav#2 Marcas Niño', '', 'ROSADO'),
(291, 'RB5281', 'RAY BAN', '2031', '180', NULL, 5, '47-18-130', 'aros', 'Gav#2 Marcas Niño', '', 'ROJO'),
(292, '17C2', 'PULL&BEAR', 'C1', '145', NULL, 9, '55-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'ROJO METALICO'),
(293, 'GU9046', 'GUESS', 'BRN', '125', NULL, 5, '47-16-135', 'aros', 'Gav#2 Marcas Niño', '', 'CAFE'),
(294, 'A221', 'CONVERSE', 'PINK', '145', NULL, 9, '52-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'ROSA METALICO'),
(295, 'GU9008', 'GUESS', 'RD', '125', NULL, 5, '46-19-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL ROJO AZUL'),
(296, 'RB5181', 'RAY BAN', '2030', '180', NULL, 5, '47-18-130', 'aros', 'Gav#2 Marcas Niño', '', 'ROSADO'),
(297, 'EMW18042', 'PULL&BEAR', 'C3', '145', NULL, 9, '52-17-138', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'VERDE METALICO'),
(298, 'C KIMBERLY', 'CANDIES', 'SPUR', '100', NULL, 5, '51-16-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL MORADO'),
(299, 'LADONNA', 'KATE SPADE', '0S61', '200', NULL, 9, '53-15-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'AZUL METALICO INTERIOR BRILLANTINA'),
(300, 'GU9028', 'GUESS', 'BRN', '125', NULL, 5, '47-16-130', 'aros', 'Gav#2 Marcas Niño', '', 'METAL MENTA CAFE'),
(301, '8555', 'RAY BAN', 'C9', '200', NULL, 9, '53-17-138', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'GRIS METALICO VARILLA FIBRA DE CARBONO AMARILLA'),
(302, 'FLOWER SHOWER', 'VERA BRADLEY', 'FSR', '150', NULL, 5, '50-16-130', 'aros', 'Gav#2 Marcas Niño', '', 'CAREY'),
(303, 'B SPIKE', 'BONGO', 'TO', '60', NULL, 5, '50-15-135', 'aros', 'Gav#2 Marcas Niño', '', 'CAREY VERDE'),
(304, '17C2', 'PULL&BEAR', 'C2', '145', NULL, 9, '55-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(305, '17C2', 'PULL&BEAR', 'C3', '145', NULL, 9, '55-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(306, '17C5', 'PULL&BEAR', 'C2', '145', NULL, 9, '53-17-138', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO'),
(307, 'L398', 'LIZ CLAIBORNE', '0DA4', '200', NULL, 9, '51-15-130', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'AZUL METALICO'),
(308, 'B GLITZ', 'BONGO', 'BRN', '60', NULL, 5, '49-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'CAFE CON NARANJA'),
(309, 'JC123', 'JIMMY CHOO', '9LD', '200', NULL, 9, '54-15-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'PLATEADO METALICO'),
(310, 'GG2769', 'GUCCI', 'STRASS GSD', '250', NULL, 5, '49-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL'),
(311, 'MMJ590', 'MARC JACOBS', '1SX', '200', NULL, 9, '52-18-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'CAFE CON DORADO METALICO'),
(312, '17C6', 'PULL&BEAR', 'C3', '145', NULL, 9, '52-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO'),
(313, 'M0872', 'PULL&BEAR', 'C2', '145', NULL, 9, '54-16-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'GRIS METALICO'),
(314, 'GU1159', 'GUESS', 'BRN', '125', NULL, 5, '48-18-145', 'aros', 'Gav#2 Marcas Niño', '', 'METAL CAFE'),
(315, 'GU1161', 'GUESS', 'SBRN', '125', NULL, 5, '50-19-145', 'aros', 'Gav#2 Marcas Niño', '', 'METAL'),
(316, 'C SANDRA', 'CANDIES', 'PUR', '100', NULL, 5, '49-16-130', 'aros', 'Gav#2 Marcas Niño', '', 'METAL MORADO'),
(317, 'GW CARMEN', 'GANT', 'PUR', '125', NULL, 5, '49-19-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL PUR'),
(318, 'GU9051', 'GUESS', 'BRN', '125', NULL, 5, '46-17-130', 'aros', 'Gav#2 Marcas Niño', '', 'METAL BRN'),
(319, 'JIMMY CHOO 134', 'JIMMY CHOO', 'J6S', '145', NULL, 9, '53-17-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'AZUL METALICO'),
(320, 'PV8113', 'PROVISION', 'S/C', '60', NULL, 5, '43-17-125', 'aros', 'Gav#2 Marcas Niño', '', 'METAL'),
(321, 'L686', 'LULU', 'BUR', '60', NULL, 5, '49-16-130', 'aros', 'Gav#2 Marcas Niño', '', 'METAL'),
(322, 'M0872', 'PULL&BEAR', 'C2', '145', NULL, 9, '49-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO'),
(323, 'GG2769', 'GUCCI', 'STRANSS NDE', '250', NULL, 5, '51-17-135', 'aros', 'Gav#2 Marcas Niño', '', ''),
(324, 'MMJ568', 'MARC JACOBS', 'DJJ', '200', NULL, 5, '51-16-140', 'aros', 'Gav#2 Marcas Niño', '', 'METAL CAFE OSCURO'),
(325, 'DIOR MONTAIGNE N 12', 'CHRISTIAN DIOR', 'IEB', '275', NULL, 9, '50-18-145', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO MATE METALICO VARILLAS NEGRO'),
(326, 'CD3769', 'CHRISTIAN DIOR', 'BTD', '275', NULL, 9, '52-15-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(327, 'CG0507', 'CONVERGIRL', 'COL 048', '60', NULL, 5, '51-15-135', 'aros', 'Gav#2 Marcas Niño', '', 'CAFE'),
(328, 'MW18049', 'PULL&BEAR', 'C3', '145', NULL, 9, '53-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO VARILLA BLANCO CON NEGRO'),
(329, 'SE601BEXVK', 'CHRISTIAN DIOR', 'SF2', '275', NULL, 9, '54-15-145', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'ROJO VINO METALICO'),
(330, 'G2005', 'PULL&BEAR', 'C1', '145', NULL, 9, '53-17-136', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'ROJO VINO METALICO'),
(331, 'QLOO2BPN5K', 'CHRISTIAN DIOR', 'CD3782', '275', NULL, 9, '54-16-145', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'CAFEMETALICO'),
(332, 'MMJ554', 'MARC JACOBS', 'YF8', '200', NULL, 5, '50-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'OCRE'),
(333, 'Nº12', 'CHRISTIAN DIOR', 'AS', '275', NULL, 9, '50-18-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO VARILLAS CAFE'),
(334, 'DY4621', 'DKNY', '3051', '150', NULL, 5, '50-15-135', 'aros', 'Gav#2 Marcas Niño', '', 'GRIS'),
(335, 'RE41OA9GGG', 'CHRISTIAN DIOR', 'GAS', '275', NULL, 9, '50-18-145', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO VARILLAS CAFE'),
(336, 'MMJ554', 'MARC JACOBS', 'YG8', '200', NULL, 5, '50-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'MORADO'),
(337, 'REK1OB3T8L', 'CHRISTIAN DIOR', 'IEB', '275', NULL, 9, '50-18-145', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(338, '2502', 'GUESS', '046', '145', NULL, 9, '52-16-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(339, 'KC0769', 'KENNETH COLE', '082', '145', NULL, 9, '53-16-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO'),
(340, 'CA7605', 'CARRERA', 'OBDV', '80', NULL, 5, '45-17-125', 'aros', 'Gav#2 Marcas Niño', '', 'METAL'),
(341, 'TH3260', 'TOMMY HILFIGER', 'BRN', '200', NULL, 5, '47-18-140', 'aros', 'Gav#2 Marcas Niño', '', 'METAL CAFE'),
(342, 'B', 'BONGO', 'NEVE BLK', '60', NULL, 5, '49-16-135', 'aros', 'Gav#2 Marcas Niño', '', 'NEGRO GRIS'),
(343, 'CA7605', 'CARRERA', 'OJOP', '75', NULL, 5, '45-17-125', 'aros', 'Gav#2 Marcas Niño', '', 'NEGRO METAL'),
(344, 'NW1052', 'NINE WEST', '434', '225.00', NULL, 9, '53-16-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO'),
(345, 'MW18095', 'PULL&BEAR', 'C1', '145', NULL, 9, '52-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(346, 'CK5406', 'CALVIN KLEIN', '046', '175', NULL, 5, '48-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'NEGRO'),
(347, 'LADONNA', 'KATE SPADE', '0S3X', '200', NULL, 9, '51-15-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'DORADO METALICO'),
(348, 'L613', 'LIZ CLAIBORNE', '01N5', '150', NULL, 5, '53-16-135', 'aros', 'Gav#2 Marcas Niño', '', 'METAL '),
(349, 'RL6115', 'RALPH LAUREN', '5001', '180', NULL, 5, '51-16-140', 'aros', 'Gav#2 Marcas Niño', '', 'NEGRO MATE'),
(350, 'RDV1OBCWWN', 'CHRISTIAN DIOR', 'GAR', '275', NULL, 9, '50-18-145', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(351, 'TH2010', 'TOMMY HILFIGER', 'PK', '200', NULL, 5, '46-18-130', 'aros', 'Gav#2 Marcas Niño', '', 'METAL'),
(352, 'NEW BABY', 'MIRAFLEX', '3', '80', NULL, 5, '45-17-135', 'aros', 'Gav#2 Marcas Niño', '', 'GRIS'),
(353, 'TERRYNEW', 'MIRAFLEX', 'CM CRY DS', '80', NULL, 5, '43-14-125', 'aros', 'Gav#2 Marcas Niño', '', 'AZUL'),
(354, 'NEW BABY', 'MIRAFLEX', 'I', '80', NULL, 5, '34-14-135', 'aros', 'Gav#2 Marcas Niño', '', 'AZUL'),
(355, 'TERRYNEW', 'MIRAFLEX', '3 PLUS CM CRY L', '80', NULL, 5, '47-15-125', 'aros', 'Gav#2 Marcas Niño', '', 'MORADO'),
(356, 'TERRYNEW', 'MIRAFLEX', '11/18 CM CRY DS', '80', NULL, 5, '43-14-125', 'aros', 'Gav#2 Marcas Niño', '', 'AZUL'),
(357, 'NICKI 48', 'MIRAFLEX', 'COL JS', '80', NULL, 5, '46-16-138', 'aros', 'Gav#2 Marcas Niño', '', 'NEGRO'),
(358, 'TERRYNEW', 'MIRAFLEX', 'CM CRY B', '80', NULL, 5, '43-14-125', 'aros', 'Gav#2 Marcas Niño', '', 'ROSA'),
(359, 'NEW BABY', 'MIRAFLEX', 'I L', '80', NULL, 5, '39-17-130', 'aros', 'Gav#2 Marcas Niño', '', 'lila'),
(360, 'MAYA42', 'MIRAFLEX', 'COL HSP', '80', NULL, 5, '42-15-125', 'aros', 'Gav#2 Marcas Niño', '', 'amarillo'),
(361, 'NICKI 48', 'MIRAFLEX', 'COL B', '80', NULL, 5, '48-16-138', 'aros', 'Gav#2 Marcas Niño', '', 'rosa'),
(362, 'TERRYNEW', 'MIRAFLEX', 'CM CRY L', '80', NULL, 5, '43-14-125', 'aros', 'Gav#2 Marcas Niño', '', 'morado'),
(363, 'AQUATIC', 'DREAMSTYLE', 'C1', '60', NULL, 5, '45-16-130', 'aros', 'Gav#2 Marcas Niño', '', 'morado'),
(364, 'X11531', 'XONE', 'C4', '60', NULL, 5, '45-15-125', 'aros', 'Gav#2 Marcas Niño', '', 'rosado'),
(365, 'GU2502', 'GUESS', '046', '145', NULL, 9, '52-16-135', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(366, 'CD3774', 'CHRISTIAN DIOR', '3JF', '275', NULL, 9, '53-17-140', 'aros', 'Gav#3, Marcas Femenino, Todo Tamaño', '', 'AZUL NEGRO METALICO'),
(367, 'KC0092', 'KENNETH COLE REACTION', '002', '145', NULL, 9, '51-16-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(368, 'GU2426', 'GUESS', 'BLK', '145', NULL, 9, '52-16-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO VARILLAS MORADAS'),
(369, 'CD3754', 'CHRISTIAN DIOR', 'BKS', '275', NULL, 9, '55-15-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(370, '17C5', 'PULL&BEAR', 'C2', '145', NULL, 9, '52-17-138', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO'),
(371, 'GG4264', 'GUCCI', 'LOW', '275', NULL, 9, '54-15-140', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO MATE METALICO'),
(372, 'JAYLA', 'KATE SPADE', '0003', '200', NULL, 9, '50-17-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO VARILLAS CON BRILLANTINA'),
(373, 'C KIMBERLY', 'CANDIES', 'SBLK', '145', NULL, 9, '51-16-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO VARILLAS AQUA'),
(374, 'GG2869', 'GUCCI', 'IQ5', '275', NULL, 9, '54-15-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO'),
(375, 'C ZOLA', 'CANDIES', 'BRN', '145', NULL, 9, '50-17-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(376, 'MW19030', 'PULL&BEAR', 'C2', '145', NULL, 9, '53-17-138', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'MORADO METALICO'),
(377, 'JIMMY CHOO 91', 'JIMMY CHOO', 'FIY', '200', NULL, 9, '51-17-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'TIGREADO METALICO'),
(378, 'GG2209', 'GUCCI', 'D8Y', '275', NULL, 9, '55-16-140', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'GRIS METALICO'),
(379, 'KC0741', 'KENNETH COLE REACTION', '004', '200', NULL, 9, '50-18-140', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO VARILLAS BLANCA'),
(380, 'RB5281', 'RAY BAN', '2030', '180', NULL, 5, '47-18-130', 'aros', 'Gav#2 Marcas Niño', '', 'rosado'),
(381, 'BB5061', 'BEBE', '001', '145', NULL, 9, '51-17-130', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(382, 'TY2065', 'TORY BURCH', '1599', '', NULL, 5, '53-17-135', 'aros', '', '', ''),
(383, 'HECTOR', 'ADENSCO', '65T', '60', NULL, 9, '51-18-140', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(384, 'L2542C', 'LACOSTE', 'S/C', '250', NULL, 5, '14-0', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CELESTE BLANCO'),
(385, 'VH201A', 'CAROLINA HERRARE', 'C4', '250', NULL, 5, '53-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO MORADO'),
(386, 'SB301BS6HN', 'CHRISTIAN DIOR', 'GAR', '275', NULL, 9, '51-20-145', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'AZUL PLATEADO METALICO'),
(387, 'CA0117', 'CANDIES', '005', '100', NULL, 5, '53-15-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(388, 'GU2398', 'GUESS', 'BKGUN', '145', NULL, 9, '53-16-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(389, 'C ONIX', 'CANDIES', 'BLK', '145', NULL, 9, '50-16-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO VARILLAS BLANCA'),
(390, 'DG3244', 'DOLCE&GABBANA', '502', '275', NULL, 5, '55-16-145', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAREY'),
(391, 'BB5116', 'BEBE', '001 JET', '125', NULL, 5, '53-15-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(392, 'BB1535', 'BE', '001 JET', '125', NULL, 5, '53-16-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(393, 'DC8104', 'PULL&BEAR', 'C3', '145', NULL, 5, '54-17-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'OCRE'),
(394, 'VHE085', 'CAROLINA HERRARE', 'COL.TMD1163', '275', NULL, 5, '53-16-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'MORADO CELESTE'),
(395, 'CD3754', 'CHRISTIAN DIOR', 'BKS', '275', NULL, 9, '50-15-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(396, 'SHAYLA', 'KATE SPADE', '0W45', '200', NULL, 9, '51-17-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'ROJO'),
(397, '8554', 'RAY BAN', 'C9', '200', NULL, 9, '52-17-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'PLATEADO METALICO VARILLAS AMARILLA'),
(398, 'RB5298', 'RAY BAN', 'C97', '180', NULL, 5, '53-17-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO CELESTE'),
(399, 'GG4237', 'GUCCI', 'CBX', '275', NULL, 9, '52-17-130', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(400, 'R0223', 'GUCCI', 'C9', '275', NULL, 5, '53-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAFE DEGRADADO'),
(401, 'KC0789', 'KENNETH COLE REACTION', '009', '145', NULL, 9, '52-17-140', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO'),
(402, 'DIOR MONTAIGNE 06', 'CHRISTIAN DIOR', 'G7J', '275', NULL, 5, '50-18-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAREY'),
(403, 'DC8044', 'PULL&BEAR', 'C4', '145', NULL, 5, '54-19-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'MORADO DEGRADADO'),
(404, 'ALVIVA', 'VERAWANG', 'BK', '145', NULL, 5, '52-15-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(405, 'DG3185', 'DOLCE&GABBANA', '501', '275', NULL, 5, '53-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO DORADO'),
(406, 'BB5102', 'BEBE', '231 CRYSTAL BROM', '145', NULL, 5, '51-15-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAFE'),
(407, 'VHE671', 'CAROLINA HERRARA', 'COL 0P62', '275', NULL, 5, '52-17-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CARAMEL'),
(408, 'RB8861', 'RAY BAN', 'C123', '180', NULL, 5, '56-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO ROSADO '),
(409, 'MMJ586', 'MARC JACOBS', 'FLX', '200', NULL, 5, '52-15-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO ROJO'),
(410, 'GG3673', 'GUCCI', 'WR9', '275', NULL, 5, '53-15-130', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAREY'),
(411, 'DC8044', 'PULL&BEAR', 'C1', '145', NULL, 5, '54-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(412, 'MMJ586', 'MARC JACOBS', 'FLK', '200', NULL, 5, '52-15-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', ''),
(413, 'GU2605', 'GUESS', '049', '145', NULL, 9, '53-14-135', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'CAFE METALICO VARILLA AQUA'),
(414, 'CA0127', 'CANDIES', '056', '100', NULL, 5, '49-18-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', ''),
(415, 'GG4237', 'GUCCI', 'CQR', '275', NULL, 9, '52-17-', 'aros', 'Gav#4 Marcas Femenino, Todo Tamaño', '', 'NEGRO METALICO'),
(416, 'L2542B', 'LACOSTE', '140', '200', NULL, 13, '00-00-000', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'MORADO Y BEIGE, ACETATO, '),
(417, 'RB8861', 'RAY BAN', 'C6', '200', NULL, 13, '56-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO CON BLANCO, ACETATO'),
(418, 'RB5298', 'RAY BAN', 'C1', '200', NULL, 13, '53-17-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO'),
(419, '3260', 'VERSACE', '5160', '275', NULL, 13, '50-18-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO CON MORADO CLARO, ACETATO'),
(420, '1241', 'DIOR', 'C1', '275', NULL, 13, '51-16-136', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO CON GRIS OBSCURO, ACETATO METALICO'),
(421, '3228', 'DOLCE & GABBANA', '502', '275', NULL, 13, '51-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'CAFE OBSCURO , ACETATO'),
(422, 'RB1820', 'RAYBAN', 'C1B', '200', NULL, 9, '51-21-145', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'NEGRO ANARANJADO'),
(423, '8028', 'RAYBAN', 'C4', '200', NULL, 9, '52-19-138', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'MULTICOLOR ACETATO VARILLAS METALICAS'),
(424, 'MNG30620', 'MANGO', 'CAFE', '60', NULL, 9, '50-19-140', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'MULTICOLOR '),
(425, 'L3532E', 'LACOSTE', 'C140', '200', NULL, 13, '00-00-000', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'VINO Y AMARILLO, ACETATO'),
(426, 'RB2447-V-F', 'RAYBAN', '5499', '200', NULL, 9, '49-21-145', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'MORADO'),
(427, 'G3045', 'GANT', 'SBRN', '145', NULL, 9, '48-19-140', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'CAFE METALICO'),
(428, '3171', 'VERSACE', '593', '275', NULL, 13, '55-17-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'TRANSPARENTE CON DISEÑOS EN COLOR LILA, ACETATO'),
(429, 'RB2447-V-F', 'RAYBAN', '5494', '200', NULL, 9, '49-21-145', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'CAFE'),
(430, '3051', 'EMPORIO ARMANI', '5017', '220', NULL, 13, '51-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO, ACETATO'),
(431, 'L2540E', 'LACOSTE ', 'VERDE MUSGO', '200', NULL, 9, 'SI-N -MED', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'VERDE MUSGO'),
(432, 'RB7078', 'RAYBAN', '5599', '200', NULL, 9, '53-18-145', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'CAFE'),
(433, 'MB700S-F', 'MONTBLANC', '01A', '275', NULL, 9, '52-19-145', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'NEGRO'),
(434, 'GG1046', 'GUCCI', 'CUK', '275', NULL, 13, '14-50-000', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'CAFE EN ARO, VERDE CON LINEA ROJA EN BARILLAS, ACETATO Y GOMA'),
(435, 'L2540E', 'LACOSTE', 'VINO', '200', NULL, 9, 'SI-N -MED', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'VINO'),
(436, '8327', 'OAKLEY', 'C2', '220', NULL, 14, '54-16-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO VARILLAS METALICAS'),
(437, 'RB7097', 'RAYBAN', '5633', '200', NULL, 9, '47-21-145', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'NEGRO DORADO'),
(438, 'DG3168', 'DOLCE & GABBANA', '2730', '275', NULL, 13, '51-16-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'CAFE CON TONALIDADES DORADAS, ACETATO'),
(439, '8323', 'OAKLEY', 'C2', '220', NULL, 14, '53-15-137', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO VARILLAS METALICAS'),
(440, 'RB6336', 'RAYBAN', '2509', '200', NULL, 9, '53-18-140', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'NEGRO'),
(441, 'RB5162', 'RAY BAN', '2031', '200', NULL, 13, '50-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'VINO CON LILA, ACETATO'),
(442, 'B2194', 'BURBERRY', '3010', '225', NULL, 9, '48-20-145', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'CAFE'),
(443, 'GG1021', 'GUCCI', 'KX9', '275', NULL, 14, '53-16-135', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'AZUL NEGRO '),
(444, 'DG3193', 'DOLCE & GABBANA', '2794', '275', NULL, 13, '52-17-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO AL FRENTE, TRANAPARENTE BARRILLAS Y ROSADO, ACETATO'),
(445, 'RB308', 'RAY BAN', '5082', '200', NULL, 13, '51-18-145', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'OCRE, ACETATO'),
(446, 'RB8910', 'RAYBAN', 'C01', '200', NULL, 9, '51-19-140', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'NEGRO'),
(447, 'NIKE 7231', 'NIKE', '200', '220', NULL, 14, '53-16-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'CAFE'),
(448, 'DG3699', 'DOLCE & GABBANA', 'OIF', '275', NULL, 13, '00-00-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'DORADO EN ADORNOS OBSCUROS Y CLAROS, ACETATO'),
(449, '7053', 'CALVIN KLEIN', 'C3', '200', NULL, 14, '53-16-138', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO VARILLAS METALICAS CAFE'),
(450, 'RB2447-V-F', 'RAYBAN', '5496', '200', NULL, 9, '49-21-145', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'CAFE'),
(451, 'RB2447-V-F', 'RAYBAN', '5198', '200', NULL, 9, '49-21-145', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'CAFE'),
(452, 'DG3228', 'DOLCE & GABBANA', '2551', '275', NULL, 13, '51-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGROS CON DISEÑOS GRIS CLARO, ACETATO'),
(453, 'AR7004', 'GIORGIOARMANI', '5013', '170', NULL, 9, '47-19-140', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'CAFE CLARO'),
(454, 'VHE682', 'CAROLINA HERRERA', 'COLO777', '275', NULL, 13, '54-17-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'BEIGE CON DISEÑOS CAFES, ACETATO Y METAL'),
(455, 'N8143', 'NAUTICA', '445', '200', NULL, 9, '53-20-140', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'NEGRO'),
(456, 'EA 3029', 'EMPORIO ARMANI', '5209', '220', NULL, 14, '52-17-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'VERDE'),
(457, '8323', 'OAKLEY', 'C8', '220', NULL, 14, '53-15-137', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO VARILLAS METALICAS'),
(458, 'RB7098', 'RAYBAN', '5632', '200', NULL, 9, '50-21-145', 'aros', 'Gav#7 Marcas Masculino, mediano/Pequeño', '', 'CELESTE TRANSPARENTE'),
(459, 'KC0780', 'KENNETH COLE', '049', '145', NULL, 13, '50-17-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'CAFE OBSCURO, ACETATO'),
(460, '8324 1', 'NIKE', 'C9', '220', NULL, 14, '53-15-138', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO VARILLAS METALICAS'),
(461, 'ODLR518', 'OSCAR DE LA RENTA', '216BROWN', '220', NULL, 13, '52-19-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'CAFE OBSCURO Y CLARO DISEÑO EN BARILLAS, ACETATO'),
(462, 'PH2153', 'POLO', '5596', '220', NULL, 14, '53-18-145', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'VERDE VARILLAS VERDES'),
(463, 'CKRIS', 'CANDIES', 'BRN', '145', NULL, 13, '49-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'CAFE CON CELESTE, ACETATO'),
(464, 'DG5005', 'DOLCE GABBANA', '2899', '275', NULL, 14, '54-16-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'CAFE'),
(465, 'L2797', 'LACOSTE', '424', '200', NULL, 14, '54-17-145', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'AZUL VARILLAS AMARILLA'),
(466, 'AX3017', 'EMPORIO ARMANI', '8004', '220', NULL, 13, '52-16-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO, ACETATO'),
(467, '8336', 'OAKLEY', 'C2', '220', NULL, 14, '54-16-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO VARILLAS METALICAS'),
(468, 'N8141', 'NAUTICA', '005', '200', NULL, 14, '54-19-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO VARILLAS AZULES'),
(469, '8326', 'OAKLEY', 'C2', '220', NULL, 14, '52-16-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO VARILLAS METALICAS'),
(470, 'MK8002', 'MICHAEL KORS', '3001', '200', NULL, 13, '52-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO Y TRANSPARENTE, ACETATO'),
(471, '8323', 'OAKLEY', 'C15', '220', NULL, 14, '53-15-137', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO VARILLAS METALICAS'),
(472, 'G3039', 'GANT', 'MBL', '145', NULL, 14, '54-15-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'AZUL'),
(473, 'PBX', 'VERA BRADLEY', 'VBJ ONI', '120', NULL, 13, '49-16-130', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO CON DISEÑOS DE FLORES, ACETATO'),
(474, 'EA 3025', 'EMPORIO ARMANI', '5195', '220', NULL, 14, '52-15-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'VERDE VARILLAS GRIS'),
(475, 'RB5308', 'RAY BAN', '5082', '200', NULL, 13, '51-18-145', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'VINO CLARO Y OBSCURO, ACETATO'),
(476, 'GR5000', 'GANT', 'MNVTO', '145', NULL, 14, '50-18-145', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'AQUA VARILLAS CAFE'),
(477, 'GM0270', 'MARCIANO', '048', '145', NULL, 13, '53-18-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', ''),
(478, 'BB5113', 'BEBE ', '210', '145', NULL, 13, '54-16-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'TOPAZ CAFE Y TRANSPARENTE, ACETATO'),
(479, 'DI 5048', 'DIESEL', '1', '200', NULL, 14, '53-17-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'AQUA VARILLAS NARANJA'),
(480, 'E4', 'RAY BAN', '00000', '200', NULL, 13, '53-17-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'MORADO OBSCURO CON NEGRO, ACETATO'),
(481, 'NIKE7238', 'NIKE', '405', '220', NULL, 14, '52-16-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO VARILLAS AZULES'),
(482, 'DG3130', 'DOLCE & GABBANA', '501', '275', NULL, 13, '55-17-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO, ACETATO'),
(483, 'RB5391', 'RAY BAN', '2031', '200', NULL, 13, '52-17-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'OCRE Y LILA CLARO, ACETATO'),
(484, 'MOD662', 'CAZAL', '003', '180', NULL, 9, '56-20-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO DORADO'),
(485, 'RB 8562', 'RAY BAN', 'C08', '200', NULL, 14, '52-16-145', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'BLANCO ACETATO'),
(486, 'CA6622', 'CARRERA', 'DWJ', '100', NULL, 9, '00-00-145', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'CAFE'),
(487, 'CA6622', 'CARRERA', 'D28', '100', NULL, 9, '00-00-145', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO'),
(488, '8228', 'OAKLEY', 'C4', '220', NULL, 14, '54-15-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'CAFE ACETATO VARILLAS METALICA'),
(489, 'MOD8018', 'CAZAL', '007', '180', NULL, 9, '55-16-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'TRANSPARENTE DORADO'),
(490, '7057', 'CALVIN KLEIN', 'C1', '275', NULL, 14, '53-16-138', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO VARILLAS CAFE METALICO'),
(491, 'ODLR518', 'OSCAR DE LA RENTA', '216', '220', NULL, 13, '52-19-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'CAFE OBSCURO Y CLARO, ACETATO'),
(492, 'MOD8036', 'CAZAL', '002', '180', NULL, 9, '62-15-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO PLATEADO'),
(493, '8323', 'OAKLEY', 'C3', '220', NULL, 14, '52-16-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'CAFE ACETATO VARILLAS METALICO'),
(494, 'GU1843', 'GUESS', 'BL', '145', NULL, 14, '57-17-145', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'GRIS ACETATO'),
(495, 'MMJ615', 'MARCJACOBS', 'MHL', '200', NULL, 9, '00-00-135', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO TRANSPARENTE'),
(496, 'GU1844', 'GUESS MARCIANO', 'BRN', '145', NULL, 14, '53-18-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'CAFE ACETATO'),
(497, 'PH2143 5557', 'RALPH LAUREN', '5318145', '200', NULL, 5, '53-18-145', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO TORTOISE'),
(498, 'DL5062', 'DIESEL', '050', '200', NULL, 9, '53-16-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO ANARANJADO'),
(499, '8336', 'OAKLEY', 'C6', '220', NULL, 14, '54-16-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'AZUL ACETATO VARILLAS METALICAS'),
(500, 'BO0206', 'HUGOBOSS', '9FU', '225', NULL, 9, '00-00-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'CAFE'),
(501, 'MMJ633', 'MARK JACOBS', 'A7S', '200', NULL, 13, '51-18-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'MARCAS FEMENIMO MEDIANOS Y PEQUEÑOS / CAFE OBSCURO, ACETATO'),
(502, '8324 1', 'NIKE', 'C6', '220', NULL, 14, '53-15-138', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'AZUL ACETATO VARILLAS METALICAS'),
(503, 'LA6008', 'LACOSTE', 'C2', '200', NULL, 9, '56-17-144', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO'),
(504, 'TY2062', 'TORY BURCH', '1013', '145', NULL, 13, '49-16-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'FEMENINA. MEDIANA Y PEQUEÑOS, CAFE OBSCURO, ACETATO'),
(505, 'RB7085', 'RAYBAN', '2000', '200', NULL, 9, '50-19-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO'),
(506, 'GU 1811', 'GUESS', 'MOL', '145', NULL, 14, '55-17-145', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'CAFE ACETATO'),
(507, 'DC9012', 'PULL&BEAR', 'C2', '145', NULL, 13, '52-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'MARCAS FEMENINAS DIANOS PEQUEÑOS, COLOR CAFE, ACETATO'),
(508, 'MMJ519', 'MARC JACOBS', 'V0P', '200', NULL, 14, '55-15-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'AZUL ACETATO VARILLA RALLAS ROJA'),
(509, '8228', 'OAKLEY', 'C7', '220', NULL, 14, '54-15-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'VERDE OSCURO ACETATO'),
(510, 'L2775', 'LACOSTE ', '615', '200', NULL, 9, '55-16-145', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'OCRE'),
(511, 'DG3249', 'DOLCE & GABBANA', '2955', '275', NULL, 13, '51-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'MARCAS FEMENIMO MEDIANOS Y PEQUEÑOS / NEGRO Y DORADO, ACETATO'),
(512, 'MB0493', 'MONT BLANC', 'C2', '275', NULL, 14, '54-17-138', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO'),
(513, 'TH1436', 'TOMMY', 'HKP', '200', NULL, 9, '00-00-145', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'CAFE '),
(514, '8125', 'PRADA', 'C7', '275', NULL, 14, '54-17-145', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO VARILLAS METALICAS'),
(515, 'MMJ569', 'MARK JACOBS', 'D28', '200', NULL, 13, '45-18-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'FEMENINA. MEDIANA Y PEQUEÑOS, NEGRO, ACETATO'),
(516, '8325', 'OAKLEY', 'C7', '220', NULL, 14, '53-15-138', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO VARILLAS METALICAS'),
(517, 'MK270', 'MICHAEL KORS', '206', '145', NULL, 13, '52-16-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'FEMENINA. MEDIANA Y PEQUEÑOS, CAFE Y OCRE, ACETATO'),
(518, 'EZ5013', 'ERMENEGILDOZEGNA', '005', '225', NULL, 9, '55-16-145', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO'),
(519, 'L2788', 'LACOSTE', '615', '200', NULL, 9, '55-16-145', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'VINO TRANSPARENTE'),
(520, '36020', 'PRADA', '9', '275', NULL, 14, '53-17-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO VARILLAS METALICAS'),
(521, 'L2807', 'LACOSTE ', '001', '200', NULL, 9, '55-16-145', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO'),
(522, '4678', 'NIKE', 'C1', '220', NULL, 14, '54-18-145', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO'),
(523, 'BO 0319', 'HUGO BOSS', '145', '225', NULL, 5, '52-18-145', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO, TORTOISE'),
(524, '1112', 'PRADA', 'C1', '275', NULL, 14, '54-17-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO VARILLAS METALICAS'),
(525, 'TY2031', 'TORY BURCH', '3153', '145', NULL, 13, '49-17-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'FEMENINA. MEDIANA Y PEQUEÑOS, CAFE OBSCURO Y CELESTE, ACETATO'),
(526, 'TY2010', 'TORY BURCH', '1034', '145', NULL, 13, '51-16-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO CON GRIS, ACETATO'),
(527, 'L2813', 'LACOSTE', '001', '200', NULL, 14, '54-16-145', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO'),
(528, 'MOD8018', 'CAZAL', '002', '180', NULL, 9, '55-16-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO PLATEADO'),
(529, 'TY2051A', 'TORY BURCH', '1415', '145', NULL, 13, '51-16-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO CON GRIS DISEÑOS '),
(530, 'MOD8018', 'CAZAL', '006', '180', NULL, 9, '55-16-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'MULTICOLOR'),
(531, 'MOD8036', 'CAZAL', '004', '180', NULL, 9, '62-15-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'MULTICOLOR'),
(532, 'EA3009F', 'EMPORIO ARMANI', '5083', '220', NULL, 13, '54-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'ROSADO CLARO, ACETATO'),
(533, 'BOSS 0249', 'HUGO BOSS', '140', '225', NULL, 5, '53-15-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'TORTOISE'),
(534, 'MOD8036', 'CAZAL', '001', '180', NULL, 9, '62-15-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO DORADO'),
(535, 'VHE682', 'CAROLINA HERRERA', '0777', '275', NULL, 13, '54-17-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'CAFES CLARO Y OBSCURO, ACETATO Y METAL'),
(536, 'MMJ615', 'MARCJACOBS', 'MGA', '200', NULL, 9, '54-15-135', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'AZUL'),
(537, 'TF169', 'TOMFORD', '001', '200', NULL, 13, '55-16-142', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO'),
(538, 'CA0122', 'CANDIES', '052', '145', NULL, 13, '52-16-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO CON VERDE, ACETATO'),
(539, 'RB7059D', 'RAYBAN', '5556', '200', NULL, 9, '55-18-145', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'CAFE'),
(540, 'MK693', 'MICHAEL KORS', '210', '200', NULL, 13, '49-15-135', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'CAFE CLARO Y CELESTE'),
(541, 'RB7066', 'RAYBAN', '5577', '200', NULL, 9, '52-17-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'CAFE'),
(542, 'DG0008', 'DOLCE & GABBANA', '2014', '275', NULL, 13, '54-15-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGRO CON CELESTE OBSCURO, ACETATO'),
(543, 'DG5019', 'DOLCE&GABANA', '3031', '275', NULL, 9, '52-18-145', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'AZUL MATE'),
(544, 'OX1130 ', 'OAKLEY', '0752', '220', NULL, 14, '52-16-136', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO METALICO VARILLAS MULTICOLOR'),
(545, '8110', 'MONT BLANC', 'C2', '275', NULL, 14, '54-16-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO MATE ACETATO'),
(546, '8119', 'HUGOBOSS', 'C8', '225', NULL, 9, '53-16-00', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO VARILLAS DE CORCHO'),
(547, 'RB5806', 'RAY BAN', 'C5', '200', NULL, 13, '51-16-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'MORADO OBSCURO Y NEGRO, ACETATO'),
(548, 'RB7066', 'RAYBAN', '2000', '200', NULL, 9, '52-17-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'NEGRO'),
(549, 'DG3193', 'DOLCE & GABBANA', '501', '275', NULL, 13, '54-17-140', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'NEGROS, ACETATO'),
(550, '8323', 'OAKLEY', 'C9', '220', NULL, 14, '53-15-137', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO MATE ACETATO VARILLA ROJA'),
(551, 'EA3002', 'EMPORIOARMANI', '5075', '220', NULL, 9, '55-17-140', 'aros', 'Gav#9 Marcas, masculino, grande Acetato', '', 'VINO TRANSPARENTE '),
(552, 'GU1843', 'GUESS', 'GRN', '145', NULL, 14, '55-17-145', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'CEFE ACETATO'),
(553, 'L2542E', 'LACOSTE', 'BLANCO AZUL', '200', NULL, 5, '00-00-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'BLANCO AZUL'),
(554, '98062', 'RAY BAN', 'C2', '200', NULL, 13, '52-15-138', 'aros', 'Gav#6 Marcas Femenino, mediano/Pequeño', '', 'CAFE CLARO, BARRILLAS FORRADAS, ACETATO'),
(555, 'VZ 3618', 'ERMENEGILDO', '9SAM', '220', NULL, 14, '55-17-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'AZUL MATE ACETATO'),
(556, 'EA 3019', 'EMPORIO ARMANI', '5141', '220', NULL, 14, '53-15-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'GRIS ACETATO'),
(557, 'L2542C', 'LACOSTE', 'BLANCO CELESTE', '', NULL, 5, '00-00-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'BLANCO CELESTE'),
(558, 'OX3218', 'OAKLEY', 'C8', '220', NULL, 14, '55-16-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO MATE ACETATO'),
(559, '1112', 'PRADA', 'C8', '275', NULL, 14, '54-17-140', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'AZUL ACETATO VARILLAS METALICAS'),
(560, '4678', 'NIKE', 'C5', '220', NULL, 13, '54-18-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'CAFE OBSCURO , ACETATO'),
(561, 'DG3180', 'DOLCE&GABANA', 'VERDE', '2275', NULL, 5, '52-16-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'VERDE'),
(562, '7878AF', 'NIKE', '030', '220', NULL, 13, '56-16-140', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'GRIS CON ROJO, ACETATO'),
(563, '8599', 'MIRA LFLEX', 'BLKBLUE', '200', NULL, 13, '56-21-127', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'AZUL CON NEGRO, ACETATO'),
(564, 'L3532A', 'LACOSTE', 'NEGRO', '200', NULL, 5, '00-00-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO ACETATO'),
(565, '8599', 'MIRA LFLEX', 'BLACK', '200', NULL, 13, '56-21-127', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO, ACETATO, LLEVA CORREA PARA SOPORTE'),
(566, 'OX8026', 'OAKLEY', '0154', '220', NULL, 13, '54-17-133', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO, ACETATO Y METAL'),
(567, 'DL5050', 'DIESEL', '092', '200', NULL, 5, '52-17-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'GRIS, AZUL ACETATO'),
(568, '7112', 'NIKE', 'C6', '220', NULL, 13, '53-18-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO, ACETATO'),
(569, '7113', 'NIKE', 'C6', '220', NULL, 13, '55-16-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO, ACETATO'),
(570, '7104', 'NIKE', '065', '220', NULL, 13, '54-17-140', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'GRIS CON AZUL ACETATO'),
(571, 'RB8860', 'RAYBAN', 'C110', '200', NULL, 9, '55-16-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE '),
(572, 'DC8053', 'PULL&BEAR', 'C5', '145', NULL, 5, '53-17-145', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'ACETATO METALICO'),
(573, 'RB5278', 'RAYBAN', '2020', '200', NULL, 9, '52-18-142', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO CELESTE '),
(574, 'RB8901', 'RAYBAN', '2012', '200', NULL, 9, '55-16-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE '),
(575, '7095', 'NIKE', '068', '220', NULL, 13, '54-16-140', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO TRANSPARENTE, ACETATO'),
(576, 'RB5806', 'RAYBAN', 'C1', '200', NULL, 9, '51-16-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO'),
(577, '7057', 'CALVIN KLEIN', 'C3', '275', NULL, 14, '53-16-138', 'aros', 'Gav#8 Marcas Femenino, mediano/Pequeño', '', 'NEGRO ACETATO VARILLAS METALICAS'),
(578, '7113', 'NIKE', 'C3', '220', NULL, 13, '55-16-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO CON GRIS, ACETATO '),
(579, 'RB5312', 'RAYBAN', 'C96', '200', NULL, 9, '54-18-145', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ANARANJADO'),
(580, 'RB5248', 'RAYBAN', '2009', '200', NULL, 9, '47-19-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO BLANCO'),
(581, '4679', 'NIKE', 'C6', '220', NULL, 13, '53-19-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO, ACETATO'),
(582, 'RB5228', 'RAYBAN', '2003', '200', NULL, 9, '52-18-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ROJO'),
(583, '7112', 'NIKE', 'C1', '220', NULL, 13, '53-18-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO CELESTE Y BLANCO, ACETATO'),
(584, 'RB5306D', 'RAYBAN', '2003', '200', NULL, 9, '53-17-145', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ROJO'),
(585, 'LT23614816', 'VAN HEUSEN', 'S339', '145', NULL, 5, '52-18-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO'),
(586, 'RAB5271', 'RAYBAN', '2020', '200', NULL, 9, '55-17-142', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO CELESTE '),
(587, 'RB5278', 'RAYBAN', '2003', '200', NULL, 9, '52-18-142', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO VARILLAS ROJAS '),
(588, '4679', 'NIKE', 'C4', '220', NULL, 13, '53-19-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO Y AZUL, ACETATO'),
(589, 'RB 5271', 'RAY BAN', '2012', '200', NULL, 14, '55-17-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE CON NEGRO ACETATO'),
(590, 'RB5265', 'RAYBAN', '2004', '200', NULL, 9, '50-16-138', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'ROJO'),
(591, 'RB5183', 'RAY BAN', '01', '200', NULL, 14, '52-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(592, 'RB5162', 'RAYBAN', '2015', '200', NULL, 9, '50-16-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', ' NEGRO, COLOR PIEL'),
(593, 'TMX', 'TIMEX', 'CC', '145', NULL, 5, '53-16-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO GRIS'),
(594, 'RB5271', 'RAYBAN', '2020', '200', NULL, 9, '55-17-142', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO CELESTE '),
(595, 'RB5266', 'RAYBAN', '2020', '200', NULL, 9, '52-16-145', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO CELESTE ');
INSERT INTO `producto` (`id_producto`, `modelo`, `marca`, `color`, `precio_venta`, `stock`, `id_usuario`, `medidas`, `categoria`, `categoriau`, `imagen`, `descripcion`) VALUES
(596, '7092', 'NIKE', '200', '220', NULL, 13, '57-14-140', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'CAFE OBSCURO , ACETATO'),
(597, 'RB 5213', 'RAY BAN', '2018', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(598, 'RB5526', 'RAYBAN', '2012', '200', NULL, 9, '55-16-142', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'MULTICOLOR'),
(599, 'L3532E', 'LACOSTE', 'CAFE', '200', NULL, 5, '00-00-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'CAFE ACETATO'),
(600, '4279', 'NIKE', 'C6', '220', NULL, 13, '53-16-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO, ACETATO'),
(601, 'RB8834', 'RAY BAN', 'C110', '200', NULL, 14, '55-15-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE ACETATO'),
(602, '7104', 'NIKE', '311', '220', NULL, 13, '54-17-140', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'GRIS CON DISEÑOS ROJOS, ACETATO'),
(603, 'RB5254F', 'RAY BAN', '2003', '200', NULL, 14, '54-18-145', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE ACETATO'),
(604, '7112', 'NIKE', 'C5', '220', NULL, 13, '53-18-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'CAFE ACETATO'),
(605, 'RB5265', 'RAYBAN', '2003', '200', NULL, 9, '50-16-138', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO VARILLAS ROJAS '),
(606, '4280', 'NIKE', 'C1', '220', NULL, 13, '53-17-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO, ACETATO'),
(607, '98062', 'RAY BAN', 'C1', '200', NULL, 14, '52-15-138', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(608, 'RB5278', 'RAYBAN', '2019', '200', NULL, 9, '52-18-142', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO VERDE '),
(609, 'RB5248', 'RAYBAN', '2020', '200', NULL, 9, '47-19-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO CELESTE '),
(610, '7113', 'NIKE', 'C2', '220', NULL, 13, '55-16-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'NEGRO BRILLANTE, ACETATO'),
(611, 'RB5185', 'RAYBAN ', '02', '200', NULL, 9, '51-17-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO TRANSPARENTE '),
(612, 'RB 5526', 'RAY BAN', '2012', '200', NULL, 14, '55-16-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE CON NEGRO ACETATO'),
(613, '4279', 'NIKE', 'C5', '220', NULL, 13, '53-16-145', 'aros', 'Gav#11 Marcas,Deportivos, Maculino, med/grand', '', 'CAFE OBSCURO , ACETATO'),
(614, 'RB 5278', 'RAY BAN', '2019', '200', NULL, 14, '52-18-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA VERDE'),
(615, 'RB 5278', 'RAY BAN', '2012', '200', NULL, 14, '52-18-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE CON NEGRO ACETATO'),
(616, 'RB5391', 'RAYBAN', '2012', '200', NULL, 9, '52-17-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'MULTICOLOR '),
(617, 'RB5805', 'RAYBAN', 'C5', '200', NULL, 9, '51-16-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO TRANSPARENTE '),
(618, 'RB 5391', 'RAY BAN', '2021', '200', NULL, 14, '52-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA ROJA'),
(619, 'E 17', 'RAY BAN', 'C1', '200', NULL, 14, '52-15-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(620, 'RB 5228', 'RAY BAN', '2006', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE ACETATO'),
(621, 'RB5306D', 'RAYBAN ', '2012', '200', NULL, 9, '53-17-154', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE '),
(622, 'RB 5265', 'RAY BAN', '2103', '200', NULL, 14, '50-16-138', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA BLANCA'),
(623, '6110', 'AND VAS', 'C03', '60', NULL, 7, '51-17-140', 'aros', 'Gav#14 AndVas todo color, Fem/Masc, Acetato C', '', 'FRENTE DE ARO AZUL NEGRO VARILLA METALICA'),
(624, 'RB 5266', 'RAY BAN', '2103', '200', NULL, 14, '52-16-145', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA BLANCA'),
(625, 'RB5383', 'RAYBAN ', '2026', '200', NULL, 9, '54-16-142', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO VARILLAS BLANCAS '),
(626, 'RB 5277', 'RAY BAN', '5277', '200', NULL, 14, '53-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO CON VERDE ACETATO'),
(627, 'RB5254F', 'RAYBAN', '2006', '200', NULL, 9, '54-18-145', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO BLANCO'),
(628, 'RB5266', 'RAYBAN ', '2019', '200', NULL, 9, '52-16-145', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO VERDE '),
(629, 'RB 5228', 'RAY BAN', '2019', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA VERDE'),
(630, 'RB5228', 'RAYBAN', '2019', '200', NULL, 9, '52-18-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO VERDE '),
(631, 'E 3', 'RAY BAN', 'C12', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(632, 'RB8827', 'RAYBAN ', 'C106', '200', NULL, 9, '53-15-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ROSADO'),
(633, 'RB5266', 'RAYBAN ', '2009', '200', NULL, 9, '52-16-145', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO BLANCO '),
(634, 'RB 8838', 'RAY BAN', 'C1', '200', NULL, 14, '50-16-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(635, 'UT2143', 'AND VAS', 'C1', '60', NULL, 7, '52-16-140', 'aros', 'Gav#14 AndVas todo color, Fem/Masc, Acetato C', '', 'FRENTE DE ARO NEGRO CON VARILLA DE DISEÑO EN VERDE'),
(636, '8874', 'AND VAS', 'C1', '60', NULL, 7, '53-18-140', 'aros', 'Gav#14 AndVas todo color, Fem/Masc, Acetato C', '', 'ACETATO NEGRO'),
(637, 'F56', 'AND VAS', 'C501', '60', NULL, 13, '53-16-140', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO, ACETATO'),
(638, 'RB5183', 'RAY BAN', '02', '200', NULL, 14, '52-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'AZUL ACETATO'),
(639, 'RB5801', 'RAYBAN', 'C4', '200', NULL, 9, '52-16-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO'),
(640, '000000', 'AND VAS', '0000', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'GRIS CLARO ACETATO'),
(641, '00000', 'AND VAS', '000000', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'COLOR OCRE CLARO'),
(642, 'UT159', 'AND VAS', 'C5', '60', NULL, 7, '55-18-140', 'aros', 'Gav#14 AndVas todo color, Fem/Masc, Acetato C', '', 'ARO NEGRO CON LINEA VERDE EN TODO EL CONTORNO'),
(643, 'RB5318D', 'RAYBAN ', '2012', '200', NULL, 9, '55-16-145', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE '),
(644, 'RB5266', 'RAYBAN ', '2000', '200', NULL, 9, '52-16-145', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO '),
(645, 'RB 5383', 'RAY BAN', '2024', '200', NULL, 14, '54-16-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA NARANJA'),
(646, 'RB 5265', 'RAY BAN', '2003', '200', NULL, 14, '50-16-138', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA ROJA'),
(647, 'RB8843 ', 'RAYBAN ', 'C106', '200', NULL, 9, '53-16-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO BLANCO'),
(648, 'RB 5248', 'RAY BAN', '2009', '200', NULL, 14, '47-19-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA BLANCA'),
(649, 'RB 5162', 'RAY BAN', '2003', '200', NULL, 14, '50-16-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA ROJA'),
(650, '98062', 'RAYBAN ', 'C1-1', '200', NULL, 9, '52-15-138', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO'),
(651, 'RB5162', 'RAYBAN ', '2020', '200', NULL, 9, '50-16-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO CELESTE '),
(652, 'RB 5271', 'RAY BAN', '2000', '200', NULL, 14, '55-17-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(653, 'RB 5271', 'RAY BAN', '2009', '200', NULL, 14, '55-17-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA BLANCA'),
(654, '0000000', 'AND VAS', '000000', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'OCRE CLARO, ACETATO'),
(655, 'RB8901', 'RAYBAN ', '2064', '200', NULL, 9, '55-16-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO VARILLAS ROJAS CUADRICULADAS '),
(656, 'RB 5213', 'RAY BAN', '2009', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA BLANCA'),
(657, 'F102', 'AND VAS', 'C553', '60', NULL, 13, '54-16-140', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'BEIGE CAFE Y DISEÑOS ACETATO'),
(658, 'RB5185 ', 'RAYBAN ', '03', '200', NULL, 9, '51-17-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO CAFE '),
(659, 'RB 7056', 'RAY BAN', '2012', '200', NULL, 14, '53-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE ACETATO'),
(660, 'CU400501', 'AND VAS', '5002', '60', NULL, 13, '54-14-145', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE Y AMARILLO ACETATO'),
(661, 'RB5162', 'RAYBAN ', '2002', '200', NULL, 9, '50-16-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO VARILLAS NEGRAS '),
(662, 'RB 5228', 'RAY BAN', '2020', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATP VARILLA CELESTE'),
(663, '3002618', 'AND VAS', 'C4', '60', NULL, 13, '51-16-145', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'GRIS OBSCURO, ACETATO'),
(664, 'RB 5206', 'RAY BAN', '2008', '200', NULL, 14, '50-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA BLANCO CON ROSA'),
(665, 'RB5265', 'RAYBAN ', '2413', '200', NULL, 9, '50-16-138', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO BLANCO '),
(666, '00000', 'AND VAS', '00000', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'BLANCO ACETATO'),
(667, 'RB5278', 'RAYBAN', '2057', '200', NULL, 9, '52-18-142', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO '),
(668, 'US85', 'AND VAS', 'BLACK', '60', NULL, 13, '52-19-140', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO, ACETATO'),
(669, 'RB 5213', 'RAY BAN', '2012', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE CON NEGRO ACETATO'),
(670, 'RB5281 ', 'RAYBAN ', '2000', '200', NULL, 9, '47-18-130', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO '),
(671, 'F65', 'AND VAS', 'C302', '60', NULL, 13, '51-19-140', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'ROSADO CON CELESTE Y BLANCO, BARILLAS ROSADAS ACETATO'),
(672, 'RB5851', 'RAYBAN ', '2018', '200', NULL, 9, '52-17-140', 'aros', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO CAFE VARILLAS MULTICOLOR '),
(673, '0001', 'AND VAS', '0000', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'OCRE OBSCURO ACETATO'),
(674, '6213', 'AND VAS', 'C02', '60', NULL, 13, '53-17-140', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CELESTE CLARO ACETATO'),
(675, '0002', 'AND VAS', '0000', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE CLARO ACETATO'),
(676, 'RB 5801', 'RAY BAN', 'C1', '200', NULL, 14, '52-16-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA CAFE'),
(677, '998062', 'RAY BAN', 'C6', '200', NULL, 14, '52-15-138', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE ACETATO'),
(678, '0010', 'AND VAS', '0000', '60', NULL, 13, '00-00-000', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'ROSADO FUERTE, ACETATO'),
(679, '0011', 'AND VAS', 'NEGRO Y BLANCO', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON BLANCO, ACETATO'),
(680, '66185', 'AND VAS', 'NEGRO Y LILA', '60', NULL, 13, '54-16-140', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON BARILLAS LILAS, ACETATO'),
(681, 'GU2513', 'AND VAS', '047', '60', NULL, 13, '53-15-135', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'OCRE CON BARILLAS LILAS, ACETATO'),
(682, '0012', 'AND VAS', 'OCRE', '60', NULL, 13, '52-17-140', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'OCRE OBSCURO ACETATO'),
(683, '0007', 'AND VAS', 'CAFE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE OBSCURO , ACETATO'),
(684, '0009', 'AND VAS', 'OCRE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'OCRE OBSCURO ACETATO'),
(685, '0008', 'AND VAS', 'OCRE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'OCRE OBSCURO ACETATO'),
(686, '0006', 'AND VAS', 'CAFE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE OBSCURO , ACETATO'),
(687, '0005', 'AND VAS', 'CAFE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE OBSCURO , ACETATO'),
(688, '0004', 'AND VAS', 'CAFE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE OBSCURO , ACETATO'),
(689, '0003', 'AND VAS', 'CAFE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE OBSCURO , ACETATO'),
(690, '8874', 'AND VAS', 'C28G', '60', NULL, 13, '53-18-140', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'ROSADO, BARRILLAS NEGRO CON ROJO'),
(691, '0013', 'AND VAS', 'NEGRO', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO, ACETATO'),
(692, '0014', 'AND VAS', 'CLARO', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'BEIGE Y BARILLAS OCRES, ACETATO'),
(693, '0016', 'AND VAS', 'LILA', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'LILA CON GRIS ACETATO'),
(694, '0015', 'AND VAS', 'BLANCO Y NEGRO', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'BLANCO CON NEGRO ACETATO'),
(695, 'F72', 'AND VAS', 'C33', '60', NULL, 13, '53-17-142', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'VERDE OBSCURO CON DISEÑOS EN BARILLA ACETATO'),
(696, 'F172', 'AND VAS', 'C508', '60', NULL, 13, '52-18-140', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'BEIGE CAFE Y DISEÑOS ACETATO'),
(697, 'ZBA003', 'AND VAS', 'C3', '60', NULL, 13, '51-14-135', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'GRIS CLARO Y OBSCURO ACETATO'),
(698, '0018', 'AND VAS', 'CAFE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE Y BEIGE DISEÑOS ACETATO'),
(699, '0017', 'AND VAS', 'CAFE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE OBSCURO , ACETATO'),
(700, 'F102', 'AND VAS', 'C537', '60', NULL, 13, '54-16-140', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'AZUL Y BARILLAS ROJAS'),
(701, '0016', 'AND VAS', 'CAFE ', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE OBSCURO Y DISEÑOS ACETATO'),
(702, 'DN6011', 'AND VAS', 'CAFE', '60', NULL, 13, '52-15-138', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE CALRO Y BARILLAS CAFE OBSCURO ACETATO'),
(703, '0021', 'AND VAS', 'NEGRO Y BLANCO', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON BLANCO, ACETATO'),
(704, '0020', 'AND VAS', 'CAFE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE OBSCURO , ACETATO'),
(705, '0019', 'AND VAS', 'CAFE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE Y VERDE EN DISEÑO ACETATO'),
(706, '0022', 'AND VAS', 'AZUL', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'AZUL CLARO EN ACETATO'),
(707, '0023', 'AND VAS', 'BEIGE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#15 AndVas todo color, Fem/Masc, Acetato C', '', 'BEIGE  ACETATO'),
(708, 'BB5135', 'BEBE', '001 JET', '100', NULL, 14, '53-16-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(709, 'R0207', 'CHRISTIAN DIOR', 'C9', '275', NULL, 14, '54-16-142', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CARAMELO'),
(710, 'TY2053', 'TORY BURCH', '1409', '145', NULL, 14, '51-15-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'AZUL'),
(711, 'MMJ646', 'MARC JACOBS', 'LIC', '200', NULL, 14, '53-14-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'AZUL NEGRO'),
(712, 'A3020', 'AND VAS', 'C6', '60', NULL, 13, '55-17-142', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'ROSADO LINEA BLANCA Y CAFE AL DORSO, ACETATO'),
(713, 'AUDE', 'VERA WANG', 'TE', '100', NULL, 14, '52-16-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'VERDE OLIVO'),
(714, 'A2013', 'AND VAS', 'C5', '60', NULL, 13, '55-16-145', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON AZUL OBSCURO, ACETATO'),
(715, 'CK5891', 'CALVIN KLEIN', '001', '200', NULL, 14, '54-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(716, 'SAVVY375', 'SAWY', 'BLK', '60', NULL, 9, '49-15-135', 'aros', 'Gav#17 Economicos', '', 'NEGRO'),
(717, 'CK5918', 'CALVIN KLEIN', '201', '200', NULL, 14, '54-15-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CARAMELO'),
(718, 'RO223', 'GUCCI', 'C7', '275', NULL, 14, '53-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CARA'),
(719, 'XC49', 'AND VAS', 'C3', '60', NULL, 13, '55-17-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'MORADO OBSCURO, ACETATO'),
(720, 'CA0127', 'CANDIES', '083', '100', NULL, 14, '49-18-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'MORADO'),
(721, 'BV244TORT056', 'BABY PHAT', 'TORTOYS', '60', NULL, 9, '56-14-140', 'aros', 'Gav#17 Economicos', '', 'MULTICOLOR'),
(722, 'BB5112', 'BEBE', '234', '100', NULL, 14, '52-15-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CARAMELO'),
(723, 'ROSINA', 'VERA WANG', 'TO', '100', NULL, 14, '54-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAREY'),
(724, 'VHE094', 'CAROLINA HERRERA', 'COL 0F47', '275', NULL, 14, '52-17-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(725, 'VHE729N', 'CAROLINA HERRERA', 'COL. 0954', '275', NULL, 14, '53-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'MORADO'),
(726, 'GA4025', 'GANT', '001', '100', NULL, 14, '49-16-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(727, 'DC8028', 'PULL&BEAR', 'C1', '145', NULL, 14, '54-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(728, 'DC8044', 'PULL&BEAR', 'C6', '145', NULL, 14, '54-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO DEGRADADO TRANSPARENTE'),
(729, 'A2054', 'AND VAS', 'C6', '60', NULL, 13, '54-16-145', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO Y ROJO AL DORSO, ACETATO'),
(730, 'ST8077', 'SIBOTE', 'C-9', '60', NULL, 9, '57-17-140', 'aros', 'Gav#17 Economicos', '', 'VINO VARILLAS ROSADAS'),
(731, 'DC8059', 'DOLCE GABBANA', 'C6', '275', NULL, 14, '53-17-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAFE VERDE BLANCO'),
(732, 'ST8077', 'SIBOTE', 'C-15', '60', NULL, 9, '57-17-140', 'aros', 'Gav#17 Economicos', '', 'VINO'),
(733, 'GW102', 'GANT', 'BRNTO', '100', NULL, 14, '53-16-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAFE CAREY'),
(734, 'ST8078', 'SIBOTE', 'C-12', '60', NULL, 9, '55-18-140', 'aros', 'Gav#17 Economicos', '', 'VINO'),
(735, 'CA0118', 'CANDIES', '005', '100', NULL, 14, '52-17-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(736, 'F199', 'AND VAS', 'C3', '60', NULL, 13, '49-20-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO, ACETATO'),
(737, 'S0207', 'SUBFIRE', 'C3', '60', NULL, 9, '53-17-140', 'aros', 'Gav#17 Economicos', '', 'NEGRO'),
(738, 'B2205F', 'BURBERRY', '3001', '225', NULL, 14, '54-17-145', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO'),
(739, 'CA0', 'CANDIES', '005', '100', NULL, 14, '51-16-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'AZUL NEGRO'),
(740, 'SINMODELO', 'SPORT', '007', '60', NULL, 9, '56-17-140', 'aros', 'Gav#17 Economicos', '', 'NEGRO'),
(741, 'DC8059', 'DOLCE GABBANA', 'C2', '275', NULL, 14, '53-17-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO, BLANCO, ROJO'),
(742, 'DC8046', 'PULL&BEAR', 'C2', '145', NULL, 14, '55-17-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'MORADO'),
(743, 'CA0117', 'CANDIES', '047', '100', NULL, 14, '53-15-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CARAMELO'),
(744, 'DC', 'DICAPRIO', 'BLACK', '60', NULL, 9, '54-16-140', 'aros', 'Gav#17 Economicos', '', 'NEGRO VARILLAS METÁLICAS '),
(745, '6214', 'AND VAS', 'C02', '60', NULL, 13, '54-17-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'ROSADO Y LILA AL DORSO, ACETATO'),
(746, 'GU2466', 'GUESS', 'BLGRN', '145', NULL, 14, '54-17-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'GRIS VERDOSO'),
(747, 'TY2060', 'TORY BURCH', '3146', '145', NULL, 14, '50-17-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'BEIGE'),
(748, 'V908', 'VERA WANG', 'HN', '100', NULL, 14, '54-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'VARILLA BRILLOSA'),
(749, 'US92', 'FOURYOU', 'BURGUNDY/BLACK', '60', NULL, 9, '47-17-140', 'aros', 'Gav#17 Economicos', '', 'NEGRO RAYAS ROJAS '),
(750, 'TAAFFE', 'VERA WANG', 'BU', '100', NULL, 14, '52-16-130', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'OCRE'),
(751, 'US91', 'FOURYOU', 'BLACK', '60', NULL, 9, '57-19-155', 'aros', 'Gav#17 Economicos', '', 'NEGRO'),
(752, '1241', 'CHRISTIAN DIOR', 'C31', '275', NULL, 14, '51-16-136', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'GRIS, AZUL'),
(753, 'US92', 'FOURYOU', 'BLACK', '60', NULL, 9, '57-19-155', 'aros', 'Gav#17 Economicos', '', 'NEGRO TRASPARENTE '),
(754, 'RB5298', 'RAY BAN', 'C20', '200', NULL, 14, '53-17-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO, BLANCO'),
(755, 'US92', 'FOURYOU', 'BROWN/BLUE', '60', NULL, 9, '47-17-140', 'aros', 'Gav#17 Economicos', '', 'AZUL CAFE '),
(756, 'DAYTONA', 'DREAMSTYLE', 'C3', '60', NULL, 9, '54-16-140', 'aros', 'Gav#17 Economicos', '', 'NEGRO'),
(757, 'NW5106', 'NINE WEST', '218', '225', NULL, 14, '50-19-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAREY'),
(758, 'ST8078', 'SIBOTE', 'C-10', '60', NULL, 9, '55-18-140', 'aros', 'Gav#17 Economicos', '', 'NEGRO'),
(759, 'CK5814', 'CALVIN KLEIN', '214', '200', NULL, 14, '53-15-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', ''),
(760, 'RKMO4BBP8J', 'CHRISTIAN DIOR', 'G90', '275', NULL, 14, '52-18-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'NEGRO, MORADO'),
(761, 'FB012', 'FUBU', 'C02', '60', NULL, 9, '53-16-140', 'aros', 'Gav#17 Economicos', '', 'CAFE'),
(762, 'MMJ646', 'MARC JACOBS', 'KRZ', '200', NULL, 14, '53-14-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAREY'),
(763, 'US90', 'FOURYOU', 'CRYSTAL', '60', NULL, 9, '48-17-145', 'aros', 'Gav#17 Economicos', '', 'TRANSPARENTE'),
(764, 'VO2763', 'VOGUE', '2012', '185', NULL, 14, '51-17-135', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'BEIGE, GRIS'),
(765, 'MILLA', 'CHRISTIANSIRIANO', 'BLKOO', '60', NULL, 9, '50-19-145', 'aros', 'Gav#17 Economicos', '', 'FRENTE NEGRO VARILLAS MULTICOLOR '),
(766, '29921', 'VERA BRADLEY', 'JAVA FLORAL JFL', '120', NULL, 14, '52-15-150', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAFE, CELESTE'),
(767, '27079', 'VERA BRADLEY', 'BLOOMS', '120', NULL, 14, '49-16-130', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', ''),
(768, 'PLD1S012', 'POLAROID ', '3ZU', '60', NULL, 9, '53-16-140', 'aros', 'Gav#17 Economicos', '', 'FRENTE NEGRO VARILLAS NEGRAS INTERIOR CELESTE '),
(769, '28853', 'VERA BRADLEY', 'JAVA FLORAL JFL', '120', NULL, 14, '52-15-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CARAMELO, CELESTE'),
(770, 'SAKS254', 'SAKSFIFTHAVENUE', '0086', '60', NULL, 9, '53-17-130', 'aros', 'Gav#17 Economicos', '', 'NEGRO'),
(771, '30022', 'VERA BRADLEY', 'JAVA FLORAL JFL', '120', NULL, 14, '52-15-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CARAMELO, CELESTE'),
(772, '1120G24', 'ECONOMICO', 'C5', '60', NULL, 9, '52-16-137', 'aros', 'Gav#17 Economicos', '', 'AZUL VARILLAS MULTICOLOR '),
(773, 'DEA', 'VERA WANG', 'RD', '100', NULL, 14, '54-17-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'OCRE'),
(774, 'S0207', 'SUBFIRE', 'C2', '60', NULL, 9, '53-17-140', 'aros', 'Gav#17 Economicos', '', 'NEGRO VARILLAS MULTICOLOR '),
(775, 'SAKS254', 'SAKSFIFTHAVENUE', '0807', '60', NULL, 9, '53-17-130', 'aros', 'Gav#17 Economicos', '', 'NEGRO'),
(776, 'GIANNI', 'STMORITZ', 'BLACK', '60', NULL, 9, '50-15-137', 'aros', 'Gav#17 Economicos', '', 'NEGRO'),
(777, 'F199', 'AND VAS', 'C7', '60', NULL, 13, '49-20-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO BARILLAS CAFES CON BLANCO, ACETATO'),
(778, 'R0223', 'GUCCI', 'C7', '275', NULL, 14, '53-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', ''),
(779, 'F1113', 'AND VAS', 'C530', '60', NULL, 13, '54-15-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO Y AL DORSO MORADO EN BARILLAS, ACETATO'),
(780, 'A2007', 'AND VAS', 'C4', '60', NULL, 13, '54-12-814', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO AL DORDO CAFE CLARO, ACETATO'),
(781, 'D14', 'AND VAS', 'C7', '60', NULL, 13, '48-17-132', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'MORADO Y CELESTE CLARO AL DORSO, ACETATO'),
(782, 'XC52', 'AND VAS', 'C1', '60', NULL, 13, '54-17-142', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'OCRE CON CAFE, ACETATO'),
(783, 'ZBA003', 'AND VAS', 'C4', '60', NULL, 13, '51-14-153', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'GRIS NEGRO DORADO ACETATO (51.5) ES LA MEDIDA '),
(784, 'F1127', 'AND VAS', 'C513', '60', NULL, 13, '54-16-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO BEIGE CAFE ACETATO'),
(785, 'EA3053', 'EMPORIO ARMANI', '5351', '220', NULL, 14, '52-17-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'CAFE, VERDE'),
(786, 'VHE201A', 'CAROLINA HERRERA', 'C4', '275', NULL, 14, '53-16-140', 'aros', 'Gav#5 Marcas Femenino, mediano/grande', '', 'MORADO, ANIMALPRINT'),
(787, '6213', 'AND VAS', 'C04', '60', NULL, 13, '53-17-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'AZUL CON ADORNOS ACETATO'),
(788, '8867', 'AND VAS', 'C111', '60', NULL, 13, '53-17-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'OCRE OBSCURO ACETATO'),
(789, 'DC8053', 'PULL&BEAR', 'C2', '145', NULL, 14, '53-17-145', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(790, 'DG3180', 'DOLCE GABBANA', '2770', '275', NULL, 14, '52-16-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'VERDE, BLANCO'),
(791, 'DL5050', 'DIESEL', 'COL 092', '250', NULL, 14, '52-17-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'AZUL'),
(792, '2201A', 'GAFADECLIP', 'C2', '175', NULL, 9, '55-18-138', 'aros', 'Gav#18 Lentes de sol', '', 'NEGRA 2 CLIP'),
(793, 'L3532B', 'LACOSTE', 'OCRE', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(794, 'L3532C', 'LACOSTE', 'GRIS AZUL', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(795, '6209', 'AND VAS', 'C03', '60', NULL, 13, '52-16-142', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON DISEÑOS EN BARILLAS, ACETATO'),
(796, 'D14', 'AND VAS', 'C2', '60', NULL, 13, '48-17-132', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON VERDE TRASNPARENTE, ACETATO'),
(797, 'L2542E', 'LACOSTE', 'NEGRO, AZUL, BLANCO', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(798, 'F21', 'AND VAS', 'C2', '60', NULL, 13, '51-15-135', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE CLARO TRANSPARNTE ACETATO'),
(799, 'L2542C', 'LACOSTE', 'BLANCO, CELESTE', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(800, '6170', 'AND VAS', 'C03', '60', NULL, 13, '48-20-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE CLARO CON DISEÑOS EN BARILLAS ACETATO'),
(801, 'VO2795-S', 'VOGUE ', 'W656/13', '150', NULL, 9, '53-19-140', 'aros', 'Gav#18 Lentes de sol', '', 'ARO Y LENTE CAFE '),
(802, 'L3532A', 'LACOSTE', 'NEGRO', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(803, 'ZBA003', 'AND VAS', 'C4', '60', NULL, 13, '51-14-135', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'GRIS NEGRO DORADO ACETATO (51.5) ES LA MEDIDA '),
(804, 'L2783', 'LACOSTE', '315', '200', NULL, 14, '53-16-135', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'VERDE'),
(805, 'A3004', 'AND VAS', 'C4', '60', NULL, 13, '55-17-145', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'MORADO CON BLANCO AL DORSO ACETATO'),
(806, 'L3532A', 'LACOSTE', 'AZUL NEGRO', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(807, 'RB3588', 'RAYBAN', '001/19', '175', NULL, 9, '55-19-140', 'aros', 'Gav#18 Lentes de sol', '', 'ARO DORADO LENTE GRIS DEGRADADO'),
(808, 'L3532B', 'LACOSTE', 'NEGRO', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(809, 'L2685', 'LACOSTE', '210', '200', NULL, 14, '53-16-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(810, 'F611', 'AND VAS', 'C502', '60', NULL, 13, '51-16-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'TRANSPARENTE CON DISEÑOS EN GRIS ACETATO'),
(811, 'L3532C', 'LACOSTE', 'GRIS, AZUL, CELESTE', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(812, '5166', 'AND VAS', 'C02', '60', NULL, 13, '53-17-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'AZUL OBSCURO Y CELESTE CON DISEÑOS EN BARILLA, ACETATO'),
(813, 'A3022', 'AND VAS', 'C2', '60', NULL, 13, '55-17-142', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE ACETATO'),
(814, 'L2660', 'LACOSTE', '215', '200', NULL, 14, '53-15-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'AZUL CAREY'),
(815, 'L3532B', 'LACOSTE', 'CARAMEL', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(816, 'RB3025', 'RAYBAN', '112/17 2N', '175', NULL, 9, '58-14-000', 'aros', 'Gav#18 Lentes de sol', '', 'AVIADOR PLATEADO LENTE ESPEJEADO AZUL'),
(817, 'RB2140', 'RAYBAN', '901S', '175', NULL, 9, '50-22-000', 'aros', 'Gav#18 Lentes de sol', '', 'WAYFARER NEGRO LENTE VERDE '),
(818, 'L2542E', 'LACOSTE', 'NEGRO, BLANCO, AZUL', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(819, 'L3532E', 'LACOSTE', 'CAFE, CARAMELO', '200', NULL, 14, '14-0', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(820, 'S339', 'VANHEUSEN', 'BLK HM', '180', NULL, 14, '21-81-40', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO'),
(821, 'RB4388N', 'RAY BAN', '601S/6Q', '175', NULL, 5, '55-18-145', 'aros', 'Gav#18 Lentes de sol', '', 'ARO NEGRO, LENTE TORNASOL'),
(822, 'S368', 'VANHEUSEN', 'BLK', '180', NULL, 14, '54-18-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO'),
(823, 'BO 0009', 'HUGO BOSS', 'N17Q', '225', NULL, 14, '52-14-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'CAFE, NARAJA'),
(824, 'TMX', 'TIMEX', '55', '145', NULL, 14, '53-16-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(825, 'EA3003F', 'EMPORIO ARMANI', '5057', '220', NULL, 14, '54-17-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'VERDE'),
(826, 'BOSS 0249', 'HUGO BOSS', '086', '225', NULL, 14, '53-15-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'CAREY'),
(827, 'N8075', 'NAUTICA', '310', '200', NULL, 14, '50-17-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO AZUL'),
(828, 'OXO1098', 'OAKLEY', 'C7', '220', NULL, 14, '53-17-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'VERDE AMARILLO'),
(829, 'ZBA003', 'AND VAS', 'C1', '60', NULL, 13, '51-14-135', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'VERDE NEGRO BEIGE, ACETATO'),
(830, 'XC491', 'AND VAS', 'C3', '60', NULL, 13, '55-17-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'MORADO ACETATO'),
(831, 'A2007', 'AND VAS', 'C4', '60', NULL, 13, '54-18-142', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON ROSADO SUEVE, ACETATO'),
(832, 'A2116', 'AND VAS', 'C2', '60', NULL, 13, '50-18-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'CELESTE CON CAFE EN BARILLAS  ACETATO'),
(833, 'UT147', 'AND VAS', 'C3', '60', NULL, 13, '55-16-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON CELESTE CLARO, ACETATO'),
(834, 'F76', 'AND VAS', 'C27', '60', NULL, 13, '54-16-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON VERDE DISEÑO EN BARILLAS, ACETATO'),
(835, 'CX49', 'AND VAS', 'C3', '60', NULL, 13, '55-17-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'MORADO ACETATO'),
(836, 'RB4311-N', 'RAYBAN', '6362/4Z', '175', NULL, 9, '00-00-140', 'aros', 'Gav#18 Lentes de sol', '', 'aro blanco lente espejado rosado'),
(837, 'RB4311-N', 'RAYBAN', '6359/6G', '175', NULL, 9, '00-00-140', 'aros', 'Gav#18 Lentes de sol', '', 'ARO GRIS LENTE ESPEJADO GRIS '),
(838, 'F611', 'AND VAS', 'C503', '60', NULL, 13, '51-16-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'GRIS OBSCURO, ACETATO'),
(839, '6107', 'AND VAS', 'C02', '60', NULL, 13, '52-17-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON GRIS, BARILLAS METAL, ACETATO'),
(840, 'SIN MODELO', 'RAYBAN', 'DORADO', '175', NULL, 9, '58-14-000', 'aros', 'Gav#18 Lentes de sol', '', 'ARO DORADO LENTE ÁMBAR '),
(841, 'RB3614-N', 'RAYBAN', '9050/71', '175', NULL, 9, '58-14-145', 'aros', 'Gav#18 Lentes de sol', '', 'ARO DORADO LENTE GRIS '),
(842, 'ALPI3903', 'AND VAS', 'C1', '60', NULL, 13, '54-16-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE CON DISEÑOS ACETATO'),
(843, 'RB2140', 'RAYBAN', '901/S', '175', NULL, 9, '54-18-000', 'aros', 'Gav#18 Lentes de sol', '', 'WAYFARER NEGRO LENTE GRIS '),
(844, 'RB3016', 'RAYBAN', 'W0365', '175', NULL, 9, '51-21-000', 'aros', 'Gav#18 Lentes de sol', '', 'CLUBMASTER NEGRO CON DORADO LENTE GRIS'),
(845, '0006', 'AND VAS', 'AZUL ROJO', '60', NULL, 13, '00-00-000', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'AZUL ROJO '),
(846, '0005', 'AND VAS', 'NEGRO ROJO', '60', NULL, 13, '00-00-000', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON ROJO ACETATO'),
(847, '0002', 'AND VAS', 'CAFE Y VERDE', '60', NULL, 13, '00-00-000', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE Y VERDE ACETATO'),
(848, 'RB4388N', 'RAYBAN', '601S/3L', '175', NULL, 9, '55-18-145', 'aros', 'Gav#18 Lentes de sol', '', 'ARO NEGRO LENTE CAFE '),
(849, '0001', 'AND VAS', 'CAFE Y NEGRO', '60', NULL, 13, '00-00-000', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE CON DISEÑOS NEGRO  ACETATO'),
(850, '0003', 'AND VAS', 'NEGRO', '60', NULL, 13, '00-00-000', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON LINEA EN CONTORNO'),
(851, 'EA4014', 'EMPORIOARMANI', '5104/71', '175', NULL, 9, '56-18-140', 'aros', 'Gav#18 Lentes de sol', '', 'ARO VERDE INTERIOR CELESTE '),
(852, 'SIN MODELO', 'GAFA DE SOL AL AIRE ', 'NEGRO', '50', NULL, 9, '00-00-000', 'aros', 'Gav#18 Lentes de sol', '', 'NEGRO '),
(853, 'SIN MODELO', 'GAFA DE SOL AL AIRE TIPO AVIADOR ', 'PLATEADO', '50', NULL, 9, '00-00-000', 'aros', 'Gav#18 Lentes de sol', '', 'DORADO LENTE GRIS DEGRADADO'),
(854, 'AX4002', 'ARMANIEXCHANGE', '8031/11', '175', NULL, 9, '56-17-135', 'aros', 'Gav#18 Lentes de sol', '', 'ARO CELESTE TRANSPARENTE'),
(855, 'A2007', 'AND VAS', 'C4A', '60', NULL, 13, '54-18-142', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON AMARILLO ACETATO'),
(856, '0004', 'AND VAS', 'CAFE CLARO', '60', NULL, 13, '00-00-000', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE CLARO ACETATO'),
(857, 'FJ8004', 'AND VAS', 'C4', '60', NULL, 13, '53-16-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO LINEAS CELESTE Y MORADO ACETATO'),
(858, 'FJ8004', 'AND VAS', 'C1', '60', NULL, 13, '53-16-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO, ACETATO'),
(859, 'A2005', 'AND VAS', 'C5', '60', NULL, 13, '53-17-142', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'GRIS LINEA AMARILLAS Y NEGRO ACETATO'),
(860, 'FJ8005', 'AND VAS', 'C6', '60', NULL, 13, '55-17-140', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'NEGRO CON ROJO ACETATO'),
(861, 'A2107', 'AND VAS', 'C6', '60', NULL, 13, '53-17-142', 'aros', 'Gav#16 AndVas todo color, Fem/Masc, Acetato C', '', 'CAFE CLARO ACETATO'),
(862, 'AX4014', 'ARMANIEXCHANGE', '8061/11', '175', NULL, 9, '57-18-140', 'aros', 'Gav#18 Lentes de sol', '', 'ARO MORADO LENTE GRIS'),
(863, 'RB2140', 'RAYBAN', '1121', '175', NULL, 9, '47-22-000', 'aros', 'Gav#18 Lentes de sol', '', 'ARO NEGRO INTERIOR MULTICOLOR, LENTE GRIS '),
(864, 'AMB700S-F', 'MONTBLANC', '01A', '300', NULL, 9, '52-19-145', 'aros', 'Gav#18 Lentes de sol', '', 'ARO NEGRO LENTE GRIS '),
(865, '1283', 'PORSCHE DESING', 'C1', '250', NULL, 13, '53-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO NEGRO SEMI AL AIRE'),
(866, 'MB0488', 'MONT BLANC', 'C3', '275', NULL, 13, '52-18-138', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARILLAS FORRADAS SEMI AL AIRE'),
(867, '1030', 'RAY BAN', 'C2', '200', NULL, 13, '53-18-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'BARILLAS COLOR NEGRO FORRADAS,  LESTE AEREO'),
(868, 'TB1536', 'TIMBERLAND', '002', '145', NULL, 13, '54-18-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICOS BARILLA FORRADA SEMI AEREOS'),
(869, '1281', 'PORSCHE DESING', 'C8', '250', NULL, 13, '54-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO COLOR AZUL BARILLAS SEMI FORRADA, LENTES SEMI AEREO'),
(870, 'GU1845', 'GUESS', 'LBRN', '145', NULL, 8, '54-16-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'CAFE AMADERADO'),
(871, 'EA1014', 'EMPORIO ARMANI', '3049', '220', NULL, 13, '53-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METAL BARILLAS SEMI FORRADAS COLOR AZUL SEMI AL AIRE'),
(872, 'BS0084', 'ANDVAS ', 'C2', '50', NULL, 9, '51-21-145', 'aros', 'Gav#18 Lentes de sol', '', 'ARO NEGRO LENTE ESPEJADO AMBAR '),
(873, '8169', 'NIKE', '070', '220', NULL, 13, '55-18-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'BARILLAS COLOR NEGRO METALICO LENTES SEMI AL AIRE'),
(874, '1240', 'HUGO BOSS', 'C1', '225', NULL, 13, '51-19-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METAL BARILLAS COLOR NEGRO CON ROJO LENTE SEMI AL AIRE'),
(875, '0299/U', 'HUGO BOSS', 'R81', '225', NULL, 13, '52-17-135', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE AL AIRE'),
(876, 'RL 6128', 'RALPH LAUREN', '5511', '200', NULL, 8, '55-16-145', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'VERDE, GRIS'),
(877, 'HD 428', 'HARLEY DAVIDSON', 'BLK', '145', NULL, 8, '54-17-145', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO'),
(878, 'MB708', 'MONT BLANC', '032', '275', NULL, 13, '56-17-145', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METAL Y BARILLAS FORRADAS ACETATO, LENTES SEMI AL AIRE'),
(879, 'EA 3050F', 'EMPORIO ARMANI', '5346', '220', NULL, 8, '55-17-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'GRIS'),
(880, 'E1053', 'FLEXON', '412', '150', NULL, 13, '54-19-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(881, 'N8109', 'NAUTICA', '300', '200', NULL, 8, '56-19-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO'),
(882, 'BO 0319', 'HUGO BOSS', '086', '225', NULL, 8, '52-16-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'CAREY'),
(883, 'BO 0230', 'HUGO BOSS', 'LHK', '225', NULL, 8, '57-17-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', 'NEGRO, BLNCO'),
(884, '8507-1', 'NIKE', 'C6', '220', NULL, 13, '54-17-138', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO COLOR AZUL BARILLAS SEMI FORRADA, LENTES SEMI AEREO'),
(885, 'DG3207', 'DOLCE GABBANA', '1871', '2275', NULL, 8, '53-16-140', 'aros', 'Gav#10 Marcas, masculino, mediano/pequeño Ace', '', ''),
(886, 'RB6281', 'RAY BAN', 'C11', '200', NULL, 13, '60-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METAL BARILLAS COLOR NEGRO CON ROJO LENTE SEMI AL AIRE'),
(887, '800M', 'MIRA FLEX', 'BLUE', '175', NULL, 13, '60-19-150', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METAL BARILLAS COLOR AZUL LENTE SEMI AL AIRE'),
(888, 'MB0470', 'MONT BLANC', '002', '275', NULL, 13, '57-18-145', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO COLOR DORADO CON DISEÑOS EN BARILLA LENTE COMPLETO'),
(889, '1030', 'RAY BAN', 'C3', '200', NULL, 13, '53-18-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE AL AIRE'),
(890, 'GU1890', 'GUESS', '009', '145', NULL, 7, '54-17-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO COMPLETO RETRO COLOR GUN, VARILLA EN ACETATO VERDE.'),
(891, 'MB712', 'MONT BLANC', '012', '275', NULL, 13, '56-15-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE AL AIRE'),
(892, 'EA1043', 'EMPORIO ARMANI', '3003', '220', NULL, 7, '54-19-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO MODA RETRO METAL ACETATO COLOR GRIS VARILLA METALICA GRIS TERMINAL FORRADA GRIS'),
(893, '8611', 'HUGO BOSS', 'C1', '225', NULL, 13, '53-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS FORRADAS, LENTE AL AIRE'),
(894, 'MB692', 'MONT BLANC', '028', '275', NULL, 13, '57-15-145', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS FORRADAS, LENTE AL AIRE'),
(895, 'BO 0072', 'HUGO BOSS', 'JOP', '225', NULL, 7, '53-17-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO METALICO NEGRO CON GRIS VARILLA ACETATO NEGRO'),
(896, 'MB712', 'MONT BLANC', '032', '275', NULL, 13, '56-15-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS FORRADAS, LENTE AL AIRE'),
(897, 'BO 0151', 'HUGO BOSS', '6VF', '225', NULL, 7, '53-17-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO CAFE METALICO Y VARILLAS ACETATO CAFE'),
(898, '1283', 'PORSCHE DESIGN', 'C6', '250', NULL, 13, '53-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METAL BARILLAS COLOR NEGRO LENTE SEMI AL AIRE'),
(899, 'EA1012', 'EMPORIO ARMANI', '3001', '220', NULL, 13, '54-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS FORRADAS, LENTE SEMI AL AIRE'),
(900, '8208-1', 'NIKE', 'C2', '220', NULL, 13, '55-17-138', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE AL AIRE'),
(901, 'OX3108-0152', 'OAKLEY', 'BLACK W', '220', NULL, 7, '52-16-144', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO METALICO NEGRO VARILLA METALICA NEGRO'),
(902, '1240', 'HUGO BOSS', 'C8', '225', NULL, 13, '51-19-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'LENTE DE ARO METALICO, BARILLA SE TR90 COLOR AZUL'),
(903, 'BO 0004', 'HUGO BOSS', 'S10', '225', NULL, 7, '52-16-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO Y VARILLAS METALICAS DORADO TERMINAL FORRADO CAFE'),
(904, 'BO 0072', 'HUGO BOSS', 'CS4', '225', NULL, 7, '53-17-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO METALICO GRIS PARTE SUPERIOR PLATEADO PARTE INFERIOR VARILLAS ACETATO COLOR VERDE LIMON'),
(905, 'EA1003', 'EMPORIO ARMANI', '3001', '220', NULL, 7, '54-17-135', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO Y VARILLAS METALICAS COLOR NEGRO TERMINAL FORRADA COLOR NEGRO'),
(906, 'HD712', 'HARLEY DAVIDSON', '617', '145', NULL, 13, '56-20-150', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METAL BARILLAS COLOR NEGRO LENTE SEMI AL AIRE'),
(907, '4285', 'NIKE FLEXON', '001', '220', NULL, 7, '54-18-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO CON MATERIAL EN ALIACION DE METALES FREXIBLES VARILLA TERMOPLASTICO NEGRO TERMINAL GRIS'),
(908, 'BO OO72', 'HUGO BOSS', 'CS4', '225', NULL, 7, '53-17-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO METALICO GRIS PARTE SUPERIOR PLATEADO PARTE INFERIOR VARILLAS ACETATO COLOR VERDE LIMON'),
(909, 'NEW BABY', 'MIRA FLEX', 'I VM', '80', NULL, 8, '39-14-130', 'aros', 'Gav#2 Marcas Niño', '', 'AZUL'),
(910, 'AM3007', 'AND VAS', 'C4', '60', NULL, 8, '54-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'VERDE DORADO'),
(911, 'AM3005', 'AND VAS', 'C5', '60', NULL, 8, '54-19-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'LILA DORADO'),
(912, 'AM3019', 'AND VAS', 'C2', '60', NULL, 8, '54-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'MORADO DORADO'),
(913, 'DS18074', 'AND VAS', 'C2', '60', NULL, 8, '53-17-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'SEMI AEREO CAFE, AZUL'),
(914, 'DS18036', 'AND VAS', 'C4', '60', NULL, 8, '54-16-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'MORADO DORADO'),
(915, '8208-1', 'NIKE', 'C7', '220', NULL, 13, '55-17-138', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS FORRADAS, LENTE AL AIRE'),
(916, '1710A23', 'AND VAS', 'C3', '60', NULL, 8, '53-18-138', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'ROJO DORADO'),
(917, 'L2241', 'LACOSTE', '317', '200', NULL, 13, '55-19-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO COLOR AZUL BARILLAS SEMI FORRADA, LENTES SEMI AEREO'),
(918, 'BO0308', 'HUGO BOSS', '4IN', '225', NULL, 13, '53-18-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS FORRADAS, LENTE SEMI AL AIRE'),
(919, 'MB0580', 'MONT BLANC', 'C5', '275', NULL, 13, '53-18-138', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METAL BARILLAS SEMI FORRADAS LENTE COMPLETO'),
(920, 'DS18074', 'AND VAS', 'C1', '60', NULL, 8, '53-17-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO PLATA'),
(921, '1449', 'AND VAS ', 'C7', '60', NULL, 8, '48-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'ROJO'),
(922, 'CA 7370/N', 'CARRERA', '0UA01', '75', NULL, 7, '52-19-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO COMPLETO '),
(923, 'DS17195', 'AND VAS', 'C1', '60', NULL, 8, '50-16-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO DORADO'),
(924, 'H131', 'VANHEUSEN', 'SLV', '145', NULL, 13, '52-19-135', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARILLAS SEMI FORRADAS, LENTE AL AIRE'),
(925, '1283', 'PORSCHE DESIGN', 'C8', '250', NULL, 13, '53-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO EN COLOR AZUL BARILLAS SEMI FORRADAS'),
(926, '8208-1', 'NIKE', 'C15', '220', NULL, 13, '55-17-138', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARIILAS FORRADAS COLOR ROJO, LENTE AL AIRE'),
(927, 'GU1814', 'GUESS', 'J14', '145', NULL, 13, '54-18-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO COLOR GRIS SEMI AL AIRE'),
(928, '1281', 'PORSCHE DESING', 'C2', '250', NULL, 13, '54-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO GRIS OBSCURO SEMI AL AIRE '),
(929, 'AM3007', 'AND  VAS', 'C1', 'C1', NULL, 8, '54-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO DORADO'),
(930, '1240', 'HUGO BOSS', 'C2', '225', NULL, 13, '51-19-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO COLOR GRIS SEMI AL AIRE, BARILLAS FORRADAS'),
(931, 'BOSS0308', 'HUGO BOSS', 'P17', '225', NULL, 13, '00-00-135', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO EN AROS SEMI AEREO, BARILLAS ACETATO'),
(932, '1283', 'PORSCHE DESIGN', 'C2', '250', NULL, 13, '53-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO COLOR GRIS SEMI AL AIRE'),
(933, 'MB0488', 'MONT BLANC', 'C5', '275', NULL, 13, '52-18-138', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METAL ARO SEMI AL AIRE, BARILLAS FORRADAS NEGRO DORADO');
INSERT INTO `producto` (`id_producto`, `modelo`, `marca`, `color`, `precio_venta`, `stock`, `id_usuario`, `medidas`, `categoria`, `categoriau`, `imagen`, `descripcion`) VALUES
(934, 'RB 5528', 'RAY BAN', '2006', '200', NULL, 14, '52-18-145', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE ACETATO'),
(935, 'H131', 'VANHEUSEN', 'BRN', '145', NULL, 13, '52-19-135', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO BARILLAS SEMI FORRADAS, LENTE AL AIRE'),
(936, '1281', 'PORSCHE DESIGN', 'C4', '250', NULL, 13, '54-17-140', 'aros', 'Gav#19 Marcas, Masculino, Todo tamaño Metalic', '', 'METALICO COLOR CAFE, SEMI AL AIRE, BARILLAS SEMI FORRADAS'),
(937, 'RB5363', 'RAY BAN', '2014', '200', NULL, 14, '54-16-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLAS GRIS'),
(938, 'RB 5213', 'RAY BAN', '2000', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(939, 'RB 5254F', 'RAY BAN', '2006', '200', NULL, 14, '54-18-145', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLAS BLANCAS'),
(940, 'RB 5162', 'RAY BAN', '2019', '200', NULL, 14, '50-16-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLAS VERDES'),
(941, 'RB5804', 'RAY BAN', 'C1', '200', NULL, 14, '51-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(942, 'RB5803', 'RAY BAN', 'C84R', '200', NULL, 14, '54-16-138', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLAS CAFE'),
(943, 'RB 5383', 'RAY BAN', '2012', '200', NULL, 14, '54-16-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE TIGREADO ACETATO'),
(944, 'RB 5391', 'RAY BAN', '2012', '200', NULL, 14, '52-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'CAFE TIGREADO ACETATO'),
(945, 'ES85015', 'ESSEX', 'C7', '35', NULL, 13, '50-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO COLOR NEGRO SEMI AL AIRE'),
(946, 'RB 5265', 'RAY BAN', '2412', '200', NULL, 14, '50-16-138', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLAS ROSA'),
(947, 'ES85014', 'AND VAS', 'C7', '35', NULL, 13, '49-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO COLOR NEGRO SEMI AL AIRE'),
(948, 'RB 8830', 'RAY BAN', 'C55A', '200', NULL, 14, '54-15-139', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'BLANCO ACETATO VARILLAS ANARANJADA'),
(949, 'VI11046', 'VISION MAX', 'C1', '35', NULL, 13, '52-19-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(950, 'RB 7055', 'RAY BAN', '2000', '200', NULL, 14, '53-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(951, 'RB 5213', 'RAY BAN', '2005', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO '),
(952, 'RB 5266', 'RAY BAN', '2009', '200', NULL, 14, '52-16-145', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLAS BLANCA'),
(953, 'RB 5306D', 'RAY BAN', '2011', '200', NULL, 14, '53-17-145', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLAS BLANCA'),
(954, 'ES11037', 'VISION MAX', 'C1', '35', NULL, 13, '52-20-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE AL AIRE'),
(955, 'ES85013', 'AND VAS', 'C7', '35', NULL, 13, '49-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(957, 'RB 8838', 'RAY BAN', 'C1', '200', NULL, 14, '51-61-40', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(958, 'AM3016', 'AND VAS', 'C4', '60', NULL, 8, '54-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'VERDRE MORADO'),
(959, 'RB 5306D', 'RAY BAN', '2003', '200', NULL, 14, '53-17-145', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA ROJA'),
(960, 'DS17188', 'AND VAS', 'C4', '60', NULL, 8, '55-17-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO PLATA'),
(961, 'RB 5228', 'RAY BAN', '2000', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(962, 'AM3016', 'AND VAS', 'C3', '60', NULL, 8, '54-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'MORADO PLATA'),
(963, 'RB 5308', 'RAY BAN', '5207', '200', NULL, 14, '51-18-145', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLAS BLANCA'),
(964, 'DS19066', 'AND VAS', 'C2', '60', NULL, 8, '53-16-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'OCRE DORADO'),
(965, 'RB 5261', 'RAY BAN', '2001', '200', NULL, 14, '50-17-14', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'GRIS ACETATO'),
(966, 'AM3005', 'AND VAS', 'C3', '60', NULL, 8, '54-19-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'MORADO DORADO'),
(967, 'RB 8860', 'RAY BAN', 'C110', '200', NULL, 14, '55-16-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLAS CAFE RAYA NARANJA'),
(968, 'AM3019', 'AND VAS', 'C5', '60', NULL, 8, '54-16-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CELESTE DORADO'),
(969, 'AM3007', 'AND VAS', 'C5', '60', NULL, 8, '54-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'AZUL DORADO'),
(970, '8560', 'RAY BAN', 'C02', '200', NULL, 14, '56-16-145', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO CON CAFE ACETATO'),
(971, 'DS18036', 'AND VAS', 'C2', '60', NULL, 8, '54-16-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CADE DORADO'),
(972, 'RB 8824', 'RAY BAN', 'C106', '200', NULL, 14, '54-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA NEGRO RAYA GRIS'),
(973, 'DS18003', 'AND VAS', 'C2', '60', NULL, 8, '54-17-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'AZUL DORADO'),
(974, 'RB 5271', 'RAY BAN', '2005', '200', NULL, 14, '55-17-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(975, 'DS17188', 'AND VAS', 'C2', '60', NULL, 8, '55-17-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE DORADO'),
(977, 'AM3005', 'AND VAS', 'C4', '60', NULL, 8, '54-19-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CELESTE DORDO'),
(978, 'RB 8870', 'RAY BAN', 'C1', '200', NULL, 14, '54-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(979, 'DS18100', 'AND VAS', 'C1', '60', NULL, 8, '52-17-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO MATE SEMI AEREO'),
(980, 'RB8831', 'RAY BAN', 'C154', '200', NULL, 14, '55-17-135', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA CELESTE'),
(981, 'DS18068', 'AND VAS', 'C4', '60', NULL, 8, '51-17-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'AZUL SEMI AEREO'),
(982, 'RB 5803', 'RAY BAN', 'C11', '200', NULL, 14, '53-17-14', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA GRIS'),
(983, 'M0887', 'MONICA', 'C1', '60', NULL, 8, '54-19-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE'),
(984, 'AM3007', 'AND VAS', 'C3', '60', NULL, 8, '54-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'MORADO DORADO'),
(985, 'AM3009', 'AND VAS', 'C2', '60', NULL, 8, '55-18-142', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'OCRE DORARA'),
(986, 'DS18068', 'AND VAS', 'C1', '60', NULL, 8, '51-17-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO SEMI AEREO'),
(987, 'AM3003', 'AND VAS', 'C5', '60', NULL, 8, '53-19-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'VERDE DORADO'),
(988, '1445', 'AND VAS', 'C8', '60', NULL, 8, '48-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'AZUL'),
(989, 'GM134', 'GUESS', 'BRNBL', '60', NULL, 8, '52-17-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'AZUL CAFE'),
(990, 'DS17195', 'AND VAS', 'C3', '60', NULL, 8, '50-16-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'AZUL ROJO'),
(991, '1397', 'AND VAS', 'C9', '60', NULL, 8, '53-16-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'MORADO SEMI AEREO'),
(992, 'AM3010', 'AND VAS', 'C2', '60', NULL, 8, '55-16-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'MORADO DORADO'),
(993, 'AM3010', 'AND VAS', 'C1', '60', NULL, 8, '55-16-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO DORADO'),
(994, 'AM3007', 'AND VAS', 'C2', '60', NULL, 8, '54-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'ROJO DORADO'),
(995, 'AM3016', 'AND VAS', 'C2', '60', NULL, 8, '54-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'ROJO DORADO'),
(996, '4282', 'NIKE FLEXON', '004', '220', NULL, 7, '54-17-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO DE ALIACION DE METALES FLEXIBLES VARILLA METAL FORRADA TODO COLOR GUN TERMINALES VERDE FLUORECENTE'),
(997, 'VI11046', 'VISION MAX', 'C4', '35', NULL, 13, '52-19-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE AL AIRE'),
(998, 'DS18100', 'AND VAS', 'C2', '60', NULL, 8, '52-17-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'MORADO'),
(999, '1459', 'METALICO ECONOMICO', 'C4', '35', NULL, 13, '53-18-140', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1000, 'MW18052', 'BRIGITH', 'C3', '35', NULL, 8, '54-17-138', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'MORADO'),
(1001, 'ES11033', 'VISION MAX', 'C4', '35', NULL, 13, '48-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS FORRADAS, LENTE SEMI AL AIRE COLOR OCRE'),
(1002, 'BO 0004', 'HUGO BOSS', 'SI1', '225', NULL, 7, '54-16-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO Y VARILLAS METAL COLOR AZUL ARO COMPLETO'),
(1003, 'ES85013', 'AND VAS', 'C4', '35', NULL, 13, '49-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE, COLOR OCRE'),
(1004, 'L2223', 'LACOSTE', '424', '200', NULL, 7, '54-17-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO Y VARILLAS METALICAS TERMINALES COLOR AZUL  FORRADAS ANARANJADAS'),
(1005, 'E1062', 'ACE', 'A1A1', '35', NULL, 13, '51-19-135', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARILLAS SEMI FORRADAS, LENTE SEMI AL AIRE, COLOR CAFE'),
(1006, 'L2232', 'LACOSTE', '315', '200', NULL, 7, '54-17-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'FRENTE DE ARO Y VARILLAS METALICAS COLOR VERDE TERMINAL AZUL'),
(1007, 'AM3009', 'AND VAS', 'C3', '60', NULL, 8, '55-18-142', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'MORADO DORADO'),
(1008, 'AM3003', 'AND VAS', 'C4', '60', NULL, 8, '53-19-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CELESTE DORADO'),
(1009, 'AM3010', 'AND VAS', 'C4', '60', NULL, 8, '55-16-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'ROSADO DORADO'),
(1010, 'AM3005', 'AND VAS', 'C2', '60', NULL, 8, '54-19-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'ROJODORADO'),
(1011, '17107A23', 'AND VAS', 'C1', '60', NULL, 8, '53-18-138', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO PLATA'),
(1012, 'DSDS18074', 'AND VAS', 'C3', '60', NULL, 8, '53-17-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO OCRE'),
(1013, 'DS17203', 'AND VAS', 'C102', '60', NULL, 8, '54-17-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO SEMI AEREO'),
(1014, 'AM3019', 'AND VAS', 'C1', '60', NULL, 8, '54-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', '60'),
(1015, 'DS18068', 'AND VAS', 'C2', '60', NULL, 8, '51-17-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE SEMI AEREO'),
(1016, 'M0874', 'BRIGITH', 'C2', '35', NULL, 8, '54-17-138', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'AZUL SEMI AEREO'),
(1017, 'AM3009', 'AND VAS', 'C4', '60', NULL, 8, '55-18-142', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'VERDE DORADO'),
(1018, 'DS19066', 'AND VAS', 'C1', '60', NULL, 8, '53-16-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO DORADO'),
(1019, 'DS17195', 'AND VAS', 'C4', '60', NULL, 8, '50-16-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO CELESTE'),
(1020, 'BBMOD691', 'BRIGITTE BARDOT', 'BLANCO', '35', NULL, 8, 'SM-', 'aros', '', '', ''),
(1021, 'JM8 21', 'AND VAS', 'C3', '35', NULL, 8, '53-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE'),
(1022, 'A10626', 'AND VAS', 'CAFE', '35', NULL, 8, 'SM-', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', ''),
(1023, 'M365', 'MAGIC CLIP', 'BU', '35', NULL, 8, '53-17-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'OCRE'),
(1024, 'SP 024', 'SWING', 'C02', '35', NULL, 8, '54-15-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO'),
(1025, 'JM8 12', 'AND VAS', 'C1', '35', NULL, 8, '53-17-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO'),
(1026, 'JM820', 'AND VAS', 'C2', '35', NULL, 8, '53-18-145', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE'),
(1027, 'VI11042', 'VISION MAX', 'C3', '35', NULL, 13, '51-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1028, 'JM815', 'AND VAS', 'C2', '35', NULL, 8, '55-17-145', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE'),
(1029, 'JM8 18', 'AND VAS', 'C3', '35', NULL, 8, '54-17-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE'),
(1030, 'JM8 16', 'AND VAS', 'C3', '35', NULL, 8, '53-17-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'AZUL'),
(1031, 'JM8 20', 'AND VAS', 'C2', '35', NULL, 8, '53-18-145', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE'),
(1032, '1602', 'OGA', 'GA166', '35', NULL, 13, '53-16-140', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1033, 'F8', 'DREAM STYLE', 'MORADO', '35', NULL, 8, '51-21-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', ''),
(1034, 'L1001', 'AND VAS', '30031353', '35', NULL, 8, '54-17-138', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'DORADO'),
(1035, 'ES85014', 'AND VAS', 'C3', '35', NULL, 13, '49-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1036, 'S/M', 'AND VAS', 'PLATA', '35', NULL, 8, 'S/-M', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', ''),
(1037, 'ME0001', 'METALICO ECONOMICO', 'METAL', '35', NULL, 13, '00-00-000', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1038, '3006', 'AND VAS', 'TITAN', '35', NULL, 13, '00-00-000', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1039, 'ME0002', 'MONEL', 'METAL', '', NULL, 13, '00-00-000', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1040, 'ES85011', 'AND VAS', 'C3', '35', NULL, 13, '51-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1041, 'VI11046', 'VISION MAX', 'C2', '35', NULL, 13, '52-19-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1042, 'JNMS-625', 'JN&MEISU', 'C3', '35', NULL, 13, '53-17-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1043, '1403', 'METALICO ECONOMICO', 'C4', '35', NULL, 13, '54-16-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE  AL AIRE'),
(1044, 'CA8020B', 'METALICO ECONOMICO', 'C4', '35', NULL, 13, '56-17-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1045, '8243', 'AND VAS', 'C03', '35', NULL, 13, '56-17-140', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1046, 'ES11037', 'VISION MAX', 'C2', '35', NULL, 13, '52-20-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE AL AIRE'),
(1047, 'GR802', 'GRANDE', 'BLACK', '35', NULL, 13, '61-19-150', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1048, 'ZA6123', 'ZYIART2', 'C1', '35', NULL, 13, '00-00-000', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO COMPLETO COLOR CAFE'),
(1049, 'ES85011', 'AND VAS', 'C2', '35', NULL, 13, '51-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1050, 'ES8514', 'AND VAS', 'C12', '35', NULL, 13, '49-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1051, 'ES85014', 'AND VAS', 'C12', '35', NULL, 13, '49-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1052, 'ES85012', 'AND VAS', 'C3', '35', NULL, 13, '50-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1053, '1442', 'METALICO ECONOMICO', 'C1', '35', NULL, 13, '51-21-140', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1054, '1403', 'METALICO ECONOMICO', 'C2', '35', NULL, 13, '54-16-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE AL AIRE'),
(1055, '1104', 'BLEST', 'BLEST', '35', NULL, 13, '46-17-137', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1056, '1418', 'METALICO ECONOMICO', 'C2', '35', NULL, 13, '54-16-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1057, 'RB 5277', 'RAY BAN', '2000', '200', NULL, 14, '53-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(1058, '1459', 'METALICO ECONOMICO', 'C1', '35', NULL, 13, '53-18-140', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1059, '1442', 'METALICO ECONOMICO', 'C4', '35', NULL, 13, '51-21-140', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1060, 'RB5183', 'RAY BAN', '06', '200', NULL, 14, '52-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA NARANJA'),
(1061, 'RB 7056', 'RAY BAN', '5418', '200', NULL, 14, '53-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA ROJA'),
(1062, 'RB5179', 'RAY BAN', '05', '200', NULL, 14, '53-16-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'GRIS TRANSPARENTE '),
(1063, 'RB 5383', 'RAY BAN', '2000', '200', NULL, 14, '54-16-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(1064, 'RB 5248', 'RAY BAN', '2003', '200', NULL, 14, '47-19-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA ROJA'),
(1065, 'GR809', 'GRANDE', 'BROWN', '35', NULL, 13, '59-18-150', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1066, 'ES85014', 'AND VAS', 'C4', '35', NULL, 13, '49-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1067, 'ES85012', 'AND VAS', 'C2', '35', NULL, 13, '50-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1068, 'ES85013', 'AND VAS', 'C12', '35', NULL, 13, '49-18-138', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1069, 'NA0303', 'NATIONAL', '046', '35', NULL, 13, '50-21-140', 'aros', 'Gav#22 Economico Femenino/Masculino, Todo Tam', '', 'METALICO BARIILAS SEMI FORRADAS, LENTE SEMI AL AIRE'),
(1070, 'S/M', 'RAMPAGE', 'NEGRO, MORADO', '35', NULL, 8, 'S/-M', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', ''),
(1071, 'JM8', 'AND VAS', '18', '35', NULL, 8, '54-17-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE'),
(1072, 'M0887', 'MONICA', 'C3', '35', NULL, 8, '54-19-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO'),
(1073, 'F12', 'DREAMSTYLE', 'MORADO', '35', NULL, 8, '52-20-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', ''),
(1074, 'S/M', 'AND VAS', 'CAFE AZUL', '35', NULL, 8, 'S/-M', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', ''),
(1075, 'S/M', 'AND VAS', 'ROJO, NEGRO', '35', NULL, 8, 'S/-M', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', ''),
(1076, 'S/M', 'AND VAS', 'NEGRO', '25', NULL, 8, 'S/-M', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', ''),
(1077, 'PATENTED', 'MYKITA', 'COL005', '35', NULL, 8, '50-19-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE'),
(1078, 'CD 266', 'CATHERINE DENEUVE', 'RBY', '35', NULL, 8, '52-17-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'ROJO'),
(1079, 'N91', 'PRADA', 'OLIVIA', '35', NULL, 8, '54-16-135', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'CAFE VERDE'),
(1080, 'ECKO 3021', 'DEMO LENS', 'SBLK', '35', NULL, 8, '50-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'NEGRO'),
(1081, '1449', 'AND VAS', 'C8', '35', NULL, 8, '48-18-140', 'aros', 'Gav#21 Economico Femenino, Todo Tamaño, Metal', '', 'AZUL'),
(1082, '10329', 'AND VAS', 'C3', '35', NULL, 8, '60-20-140', 'aros', 'Gav#23 Economico Masculino', '', 'NEGRO'),
(1083, 'GR801', 'GRANDE', 'BROWN', '35', NULL, 8, '59-18-150', 'aros', 'Gav#23 Economico Masculino', '', 'CAFE'),
(1084, '1429', 'AND VAS', 'C4', '35', NULL, 8, '54-16-140', 'aros', 'Gav#23 Economico Masculino', '', 'CAFE'),
(1085, 'DS18058', 'AND VAS', 'C1', '35', NULL, 8, '52-20-138', 'aros', 'Gav#23 Economico Masculino', '', 'NEGRO DOBLE PUENTE'),
(1086, '1460', 'AND VAS', 'C1', '35', NULL, 8, '54-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'NEGRO'),
(1087, '10312', 'AND VAS', 'C3', '35', NULL, 8, '57-18-140', 'aros', 'Gav#23 Economico Masculino', '', 'NGRO'),
(1088, '17218A22', 'AND VAS', 'C2', '35', NULL, 8, '58-15-135', 'aros', 'Gav#23 Economico Masculino', '', 'GRIS PLATA'),
(1089, '10312', 'AND VAS', 'C4', '35', NULL, 8, '57-18-140', 'aros', 'Gav#23 Economico Masculino', '', 'CAFE'),
(1090, '17172A22', 'AND VAS', 'C2', '35', NULL, 8, '54-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'CAFE DORADO'),
(1091, 'DS18058', 'AND VAS', 'C4', '35', NULL, 8, '52-21-138', 'aros', 'Gav#23 Economico Masculino', '', 'AZUL PLATA DOBLE PUENTE'),
(1092, '1429', 'AND VAS', 'C1', '35', NULL, 8, '54-16-140', 'aros', 'Gav#23 Economico Masculino', '', 'NEGRO'),
(1093, '10315', 'AND VAS', 'C4', '35', NULL, 8, '55-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'CAFE'),
(1094, 'MM18018', 'AND VAS', 'C3', '35', NULL, 8, '55-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'CAFE DORADO'),
(1095, '2032', 'AND VAS', 'C4', '35', NULL, 8, '53-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'CAFE'),
(1096, 'RB4311-N', 'RAYBAN', '6361/IU', '175', NULL, 9, '00-00-140', 'aros', 'Gav#18 Lentes de sol', '', 'ARO ROSADO LENTE ESPEJADO AZUL'),
(1097, 'OX016', 'OXFORD', 'C2', '35', NULL, 8, '54-18-140', 'aros', 'Gav#23 Economico Masculino', '', 'NGRO AZUL'),
(1098, 'MM18018', 'AND VAS', 'C1', '35', NULL, 8, '55-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'AZUL'),
(1099, '17107A23', 'AND VAS', 'C2', '35', NULL, 8, '53-18-138', 'aros', 'Gav#23 Economico Masculino', '', 'AZUL PLATA'),
(1100, 'MM18069', 'AND VAS', 'C3', '35', NULL, 8, '55-16-140', 'aros', 'Gav#23 Economico Masculino', '', 'GRIS'),
(1101, 'MM18069', 'AND VAS', 'C2', '35', NULL, 8, '55-16-140', 'aros', 'Gav#23 Economico Masculino', '', 'AZUL'),
(1102, '17172A22', 'AND VAS', 'C3', '35', NULL, 8, '54-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'NEGRO PLATA'),
(1103, 'MM18018', 'AND VAS', 'C2', '35', NULL, 8, '55-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'GRIS NEGRO'),
(1104, '2062', 'AND VAS', 'C3', '35', NULL, 8, '54-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'GRIS PLATEADO'),
(1105, 'MM18020', 'AND VAS', 'C2', '35', NULL, 8, '54-17-138', 'aros', 'Gav#23 Economico Masculino', '', 'VERDE CAFE'),
(1106, '1460', 'AND VAS', 'C4', '35', NULL, 8, '54-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'CAFE'),
(1107, '10329', 'AND VAS', 'C2', '35', NULL, 8, '60-20-140', 'aros', 'Gav#23 Economico Masculino', '', 'GRIS PLATEADO'),
(1108, 'OX016', 'OXFORD', 'C1', '35', NULL, 8, '58-18-140', 'aros', 'Gav#23 Economico Masculino', '', 'AZUL'),
(1109, '1216', 'AND VAS', 'C1', '35', NULL, 8, '54-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'NEGRO MATE'),
(1110, 'JM8 13', 'AND VAS', 'C3', '35', NULL, 8, '53-18-145', 'aros', 'Gav#23 Economico Masculino', '', 'AZUL'),
(1111, 'MM18114', 'AND VAS', 'C1', '35', NULL, 8, '56-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'GRIS'),
(1112, '10347', 'AND VAS', 'C3', '35', NULL, 8, '50-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'NEGRO'),
(1113, '10359', 'AND VAS', 'C3', '35', NULL, 8, '54-17-140', 'aros', 'Gav#23 Economico Masculino', '', 'NEGRO'),
(1114, '17218A22', 'AND VAS', 'C1', '35', NULL, 8, '58-15-135', 'aros', 'Gav#23 Economico Masculino', '', 'DORADO'),
(1115, 'RB 5228', 'RAY BAN', '2002', '200', NULL, 14, '52-18-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA BLANCA'),
(1116, '17107A23', 'AND VAS', 'C6', '35', NULL, 8, '53-18-138', 'aros', 'Gav#23 Economico Masculino', '', 'OCRE NGRO'),
(1117, '1449', 'AND VAS', 'C4', '35', NULL, 8, '48-18-140', 'aros', 'Gav#23 Economico Masculino', '', 'CAFE'),
(1119, 'TH3190', 'TOMMY HILFIGER', 'BRN', '200', NULL, 8, '49-17-140', 'aros', 'Gav#2 Marcas Niño', '', ''),
(1120, 'RB 5277', 'RAY BAN', '5227', '200', NULL, 14, '53-17-140', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO VARILLA VERDE'),
(1121, '8711', 'MIRAFLEX', 'BLK/CLR', '175', NULL, 9, '56-18-130', 'aros', 'Gav#25 Marca y sin marca, Natación/Industrial', '', 'ARO POLICARBONATO NEGRO TRANSPARENTE VARILLAS NEGRAS CON ROJO'),
(1123, 'RB 5271', 'RAY BAN', '2013', '200', NULL, 14, '55-17-142', 'aros', 'Gav#13 RayBan, Masculino, Mediano/pequeño, Ac', '', 'NEGRO ACETATO'),
(1124, 'JM8 13', 'ECONOMICO', 'C1', '35', NULL, 14, '53-18-145', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1125, 'JM8 15', 'ECONOMICO', 'C1', '35', NULL, 14, '55-17-145', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1126, 'SIN MODELO', 'SIN MARCA', 'SIN COLOR', 'GRATIS', '0', 9, 'SIN MEDIDIDAS', 'SIN CATEGORIA', 'Gav#12 RayBan, Masculino, Mediano/pequeño, Ac', '', ''),
(1127, 'JM8 16', 'ECONOMICO', 'C1', '35', NULL, 14, '53-17-138', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO ACETATO'),
(1128, 'JM8 20', 'ECONOMICO', 'C3', '35', NULL, 14, '53-18-145', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'AZUL METALICO'),
(1129, 'JM8 20', 'ECONOMICO', 'C1', '35', NULL, 14, '53-18-145', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1130, 'YS3148', 'ECONOMICO', 'C12', '35', NULL, 14, '54-16-135', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'DORADO METALICO'),
(1131, '10344', 'ECONOMICO', 'C3', '35', NULL, 14, '52-17-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1133, '10315', 'ECONOMICO', 'C3', '35', NULL, 14, '55-17-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1134, 'JM8 18', 'ECONOMICO', 'C2', '35', NULL, 14, '54-17-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'AZUL METALICO'),
(1135, '6056', 'ECONOMICO', 'C1', '35', NULL, 14, '55-22-143', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1136, 'JM8 15', 'ECONOMICO', 'C3', '35', NULL, 14, '55-17-145', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'AZUL METALICO'),
(1137, '2046', 'ECONOMICO', 'C3', '35', NULL, 14, '53-17-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1138, '10344', 'ECONOMICO', 'C2', '35', NULL, 14, '52-17-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'PLATEADO METALICO'),
(1139, 'ES11031', 'AND VAS', 'C2', '35', NULL, 14, '50-18-138', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'DORADO METALICO'),
(1140, 'JM8 18', 'ECONOMICO', 'C1', '35', NULL, 14, '54-17-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1141, 'BLICK', 'NATACION ', 'NEGRO ', '125', NULL, 9, '00-00-000', 'aros', 'Gav#25 Marca y sin marca, Natación/Industrial', '', 'NEGRO '),
(1142, 'BLICK', 'NATACION ', 'BLANCO CELESTE ', '152', NULL, 9, '00-00-000', 'aros', 'Gav#25 Marca y sin marca, Natación/Industrial', '', 'ARO BLANCO CON CELESTE '),
(1143, '2254', 'ECONOMICO', 'C1', '35', NULL, 14, '58-14-135', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1144, '1001', 'ECONOMICO', 'C3', '35', NULL, 14, '57-17-138', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'PLATEADO METALICO'),
(1145, 'JM8 19', 'ECONOMICO', 'C1', '35', NULL, 14, '53-17-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1146, 'JM8 8', 'ECONOMICO', 'C1', '38', NULL, 14, '55-17-138', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO ACETATO TERMINALES AZULES'),
(1147, 'MM18114', 'ECONOMICO', 'C2', '35', NULL, 14, '56-17-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1148, '10317', 'ECONOMICO', 'C3', '35', NULL, 14, '54-18-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1149, '10318', 'ECONOMICO', 'C3', '35', NULL, 14, '53-17-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1150, 'MA7306', 'ECONOMICO', '005', '35', NULL, 14, '50-18-130', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'PLATEADO METALICO'),
(1151, '3531', 'ECONOMICO', 'NEGRO', '', NULL, 14, '55-18-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1152, 'SZ87+', 'SEGURIDAD INDUSTRIAL', 'NEGRO', '50', NULL, 9, '00-00-000', 'aros', 'Gav#25 Marca y sin marca, Natación/Industrial', '', 'SEGURIDAD INDUSTRIAL CON MARCO PARA LENTE GRADUADO'),
(1153, 'NA0325', 'ECONOMICO', '002', '35', NULL, 14, '51-17-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'NEGRO METALICO'),
(1154, 'JM8 16', 'ECONOMICO', 'C3', '35', NULL, 14, '53-17-138', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'AZUL METALICO'),
(1155, 'MTW', 'ECONOMICO', '100', '35', NULL, 14, '50-19-140', 'aros', 'Gav#24 Economico Masculino, Todo tamaño, Meta', '', 'CAFE METALICO'),
(1156, 'RB 8448', 'RAY BAN', 'C11', '180', NULL, 8, '55-15-135', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'GRIS'),
(1157, 'TH 1195', 'TOMMY HILFIGER', 'LK7', '200', NULL, 8, '54-17-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO, GRIS'),
(1158, 'GU1885', 'GUESS', '009', '145', NULL, 8, '54-18-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'GIRS'),
(1159, 'BO 0208', 'HUGO BOSS', '9HC', '225', NULL, 8, '55-16-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'CAFE'),
(1160, 'S365', 'VANHEUSEN', 'BRN', '180', NULL, 8, '58-19-155', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'CAFE'),
(1161, 'NIKE8168', 'NIKE', '069', '220', NULL, 8, '53-17-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'GRIS PLATA'),
(1162, 'GU1860', 'GUESS', '049', '100', NULL, 8, '54-16-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'CAFE'),
(1163, 'TB1350', 'TIMBERLAND', 'COL. 037', '145', NULL, 8, '54-17-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'CAFE'),
(1164, 'BO0072', 'HUGO BOSS', 'CS6', '225', NULL, 8, '53-17-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'CAFE, GRIS'),
(1165, 'Estuche Carolina', 'Carolina Hererra', NULL, '2', NULL, 5, NULL, 'accesorios', 'Caja 1', '', 'Estuches'),
(1166, 'GU1838', 'GUESS', 'GRN', '145', NULL, 8, '55-16-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', ''),
(1167, 'H118', 'VANHEUSEN', 'GUN', '180', NULL, 8, '58-19-150', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'GIRS'),
(1168, 'HD466', 'HARLEY DAVIDSON', 'BLK', '145', NULL, 8, '54-17-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO'),
(1169, '1239', 'HUGO BOSS', 'C1', '225', NULL, 8, '54-18-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO'),
(1170, 'H105', 'VANHEUSEN', 'GUN', '180', NULL, 8, '56-19-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'GRIS'),
(1171, 'HD714', 'HARLEY DAVIDSON', 'GUN', '145', NULL, 8, '54-19-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'GRIS'),
(1172, 'NIKE4285', 'NIKE', '001', '220', NULL, 8, '54-18-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO'),
(1173, 'GU1912', 'GUESS', '091', '145', NULL, 8, '55-15-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'AZUL'),
(1174, 'GU1841', 'GUESS', 'BLK', '145', NULL, 8, '53-19-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO'),
(1175, 'Y601', 'MIRA FLEX', 'C.M.BLUE/GUN', '175', NULL, 8, '52-18-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', ''),
(1176, 'CU4005', 'CHMAPION', 'C03', '145', NULL, 8, '59-19-135', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'CAFE'),
(1177, 'HD723', 'HARLEY DAVIDSON', 'BLK', '145', NULL, 8, '55-17-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO'),
(1178, 'TH1195', 'TOMMY HILFIGER', 'LK7', '200', NULL, 8, '54-17-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO'),
(1179, 'CA 7370', 'CARRERA', '0TZ7', '75', NULL, 8, '52-19-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', ''),
(1180, 'BO0151', 'HUGO BOSS', '6SO', '225', NULL, 8, '53-17-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO'),
(1181, 'L2242', 'LACOSTE', '002', '200', NULL, 8, '56-17-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO, VERDE'),
(1182, 'VZ 3268', 'ERMENEGILDO', 'COL 0627', '220', NULL, 8, '59-16-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO'),
(1183, 'GRGARVEY', 'GANT', 'SBRN', '145', NULL, 8, '49-18-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'CAFE'),
(1184, 'DJ', 'CONVERSE', 'BROW', '145', NULL, 8, '49-17-135', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'CAFE'),
(1185, 'Q019', 'CONVERSE', 'BLACK', '145', NULL, 8, '53-15-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO'),
(1186, 'OTHER SIDE', 'CONVERSE', 'BLACK', '145', NULL, 8, '52-17-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', ''),
(1187, 'S365', 'VANHEUSEN', 'BLK', '180', NULL, 8, '58-19-155', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'NEGRO'),
(1188, 'Y703', 'MIRA FLEX', 'M.BLUE/RED', '175', NULL, 8, '52-18-135', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', ''),
(1189, 'TB1541', 'TIMBERLAND', '049', '145', NULL, 8, '54-17-140', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'CAFE'),
(1190, 'EA 9662', 'EMPORIO ARMANI', 'L3W', '220', NULL, 8, '52-16-130', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'CAFE'),
(1191, 'EA 1034', 'EMPORIO ARMANI', '3003', '180', NULL, 8, '54-19-145', 'aros', 'Gav#20 Marcas, Masculino, Todo tamaño Metalic', '', 'GRIS'),
(1192, 'FJ8005', 'AND VAS', 'C3', '60', NULL, 8, '55-17-140', 'aros', 'ME#27 ANDVAS #1', '', 'ROJO'),
(1193, 'A2029', 'AND VAS', 'C10', '60', NULL, 8, '55-17-145', 'aros', 'ME#27 ANDVAS #1', '', 'AZUL, CAFE'),
(1194, 'A2004', 'AND VAS', 'C4', '60', NULL, 8, '54-17-142', 'aros', 'ME#27 ANDVAS #1', '', 'CAFE'),
(1195, 'A0087', 'AND VAS', 'C3', '60', NULL, 8, '47-19-145', 'aros', 'ME#27 ANDVAS #1', '', 'NEGRO'),
(1196, 'A3013', 'AND VAS', 'C3', '60', NULL, 8, '53-18-145', 'aros', 'ME#27 ANDVAS #1', '', 'CAFE, CELESTE, ROSA'),
(1197, 'A2100', 'AND VAS', 'C1', '60', NULL, 8, '54-17-145', 'aros', 'ME#27 ANDVAS #1', '', 'AZUL,NARANJA'),
(1198, 'A2100', 'AND VAS', 'C8', '60', NULL, 8, '54-17-145', 'aros', 'ME#27 ANDVAS #1', '', 'NEGRO, CELESTE'),
(1199, 'A2115', 'AND VAS', 'C1', '60', NULL, 8, '53-19-145', 'aros', 'ME#27 ANDVAS #1', '', 'NEGRO'),
(1200, 'HD133', 'AND VAS', 'COL. 03', '60', NULL, 8, '52-16-140', 'aros', 'ME#27 ANDVAS #1', '', 'VINO, AMARILLO'),
(1201, 'A3013', 'AND VAS', 'C4', '60', NULL, 8, '53-18-145', 'aros', 'ME#27 ANDVAS #1', '', 'NEGRO, AMARILLO'),
(1202, 'FJ8003', 'AND VAS', 'C5', '60', NULL, 8, '56-17-140', 'aros', 'ME#27 ANDVAS #1', '', 'GRIS AUMADO'),
(1203, 'A2003', 'AND VAS', 'C1', '60', NULL, 8, '53-17-142', 'aros', 'ME#27 ANDVAS #1', '', 'NEGRO'),
(1204, 'A2002', 'AND VAS', 'C2', '60', NULL, 8, '53-16-142', 'aros', 'ME#27 ANDVAS #2', '', 'CARAMELO ACETATO'),
(1205, 'A2052', 'AND VAS', 'C5', '60', NULL, 8, '54-16-145', 'aros', 'ME#27 ANDVAS #2', '', 'NEGRO ACETATO'),
(1206, 'A2004', 'AND VAS ', 'C1', '60', NULL, 9, '54-17-142', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ARO DE ACETATO NEGRO'),
(1207, 'A2007', 'AND VAS', 'C5', '60', NULL, 8, '54-18-142', 'aros', 'ME#27 ANDVAS #2', '', 'NEGRO ACETATO'),
(1208, 'FJ8005', 'AND VAS ', 'C2', '60', NULL, 9, '55-17-140', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ARO DE DE ACETATO NEGRO INTERIOR MORADO '),
(1209, 'SIN MODELO', 'AND VAS ', 'CAFE INTERIOR VERDE ', '60', NULL, 9, '00-00-000', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'CAFE INTERIOR VERDE '),
(1210, 'A2036', 'AND VAS', 'C2', '60', NULL, 8, '55-17-142', 'aros', 'ME#27 ANDVAS #2', '', 'CELESTE ACETATO'),
(1211, 'A2013', 'AND VAS ', 'C2', '60', NULL, 9, '55-16-145', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ARO CAFE INTERIOR MULTICOLOR '),
(1212, 'A2113', 'AND VAS', 'C3', '60', NULL, 8, '53-20-140', 'aros', 'ME#27 ANDVAS #2', '', ''),
(1213, 'A3010', 'AND VAS', 'C6', '60', NULL, 8, '55-16-142', 'aros', 'ME#27 ANDVAS #2', '', 'AQUA ACETATO'),
(1214, 'A3004', 'AND VAS', 'C7', '60', NULL, 8, '55-17-145', 'aros', 'ME#27 ANDVAS #2', '', 'ROJO ACETATO'),
(1215, 'UT151', 'AND VAS ', 'C3', '60', NULL, 9, '54-16-140', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ARO NEGRO INTERIOR VINO'),
(1216, 'A2037', 'AND VAS', 'C7', '60', NULL, 8, '55-17-145', 'aros', 'ME#27 ANDVAS #2', '', 'NEGRO ACETATO'),
(1217, 'A2003', 'AND VAS', 'C6', '60', NULL, 8, '53-17-142', 'aros', 'ME#27 ANDVAS #2', '', 'AZUL ACETATO'),
(1218, '6174', 'AND VAS ', 'C03', '60', NULL, 9, '55-17-140', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ARO DE ACETATO GRIS '),
(1219, 'A0087', 'AND VAS', 'C4', '60', NULL, 8, '47-19-145', 'aros', 'ME#27 ANDVAS #2', '', 'MORADO ACETATO'),
(1220, 'FJ8002', 'AND VAS ', 'C5', '60', NULL, 9, '56-17-140', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ACETATO NEGRO '),
(1221, 'A3017', 'AND VAS', 'C3', '60', NULL, 8, '53-16-142', 'aros', 'ME#27 ANDVAS #2', '', 'NEGRO ACETATO'),
(1222, 'A2055', 'AND VAS', 'C2', '60', NULL, 8, '55-18-145', 'aros', 'ME#27 ANDVAS #2', '', 'AZUL ACETATO'),
(1223, 'A2113', 'AND VAS ', 'C2', '60', NULL, 9, '53-20-140', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ACETATO NEGRO '),
(1224, 'A3013', 'AND VAS ', 'C2', '60', NULL, 9, '53-18-145', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ACETATO NEGRO '),
(1225, 'FJ8005', 'AND VAS ', 'C1', '60', NULL, 9, '51-71-40', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ACETATO NEGRO '),
(1226, 'XC 48', 'AND VAS', 'C5', '60', NULL, 8, '54-16-142', 'aros', 'ME#27 ANDVAS #3', '', 'CAFE ACETATO'),
(1227, 'SIN MODELO', 'AND VAS ', 'ROJO PERLADO', '60', NULL, 9, '00-00-000', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ACETATO ROJO PERLADO'),
(1228, 'XC 41', 'AND VAS', 'C5', '60', NULL, 14, '54-17-140', 'aros', 'ME#27 ANDVAS #3', '', 'NEGRO ACETATO'),
(1229, 'A2108', 'AND VAS', 'C1', '60', NULL, 14, '55-19-142', 'aros', 'ME#27 ANDVAS #3', '', 'NEGRO ACETATO'),
(1230, 'S17500', 'AND VAS', 'C6', '60', NULL, 14, '53-17-140', 'aros', 'ME#27 ANDVAS #3', '', 'NEGRO ACETATO'),
(1231, 'A2008', 'AND VAS', 'C4', '60', NULL, 14, '54-18-142', 'aros', 'ME#27 ANDVAS #3', '', 'NEGRO ACETATO'),
(1232, 'HD132', 'AND VAS', '03', '60', NULL, 14, '53-18-140', 'aros', 'ME#27 ANDVAS #3', '', 'MORADO ACETATO'),
(1233, 'RX7107', 'AND VAS', 'C1', '60', NULL, 14, '56-18-140', 'aros', 'ME#27 ANDVAS #3', '', 'NEGRO ACETATO'),
(1234, 'A2022', 'AND VAS', 'C1', '60', NULL, 14, '55-16-142', 'aros', 'ME#27 ANDVAS #3', '', 'NEGRO ACETATO'),
(1235, 'RX7104', 'AND VAS', 'C2', '60', NULL, 14, '56-16-140', 'aros', 'ME#27 ANDVAS #3', '', 'VERDE MENTA ACETATO'),
(1236, 'FJ8005', 'AND VAS ', 'C1', '60', NULL, 9, '55-17-140', 'aros', 'ME#28 ANDVAS ACETATO #13', '', 'ACETATO NEGRO'),
(1237, 'HD101', 'AND VAS', 'C3', '60', NULL, 14, '55-17-140', 'aros', 'ME#27 ANDVAS #3', '', 'GRIS ACETATO'),
(1238, 'A2100', 'AND VAS', 'C2', '60', NULL, 14, '54-17-145', 'aros', 'ME#27 ANDVAS #3', '', 'VINO ACETATO'),
(1239, 'UT151', 'AND VAS', 'C4', '60', NULL, 14, '54-16-140', 'aros', 'ME#27 ANDVAS #3', '', 'VINO ACETATO'),
(1240, 'A3017', 'AND VAS', 'C6', '60', NULL, 14, '53-16-142', 'aros', 'ME#27 ANDVAS #3', '', 'MORADO ACETATO'),
(1241, 'A2044', 'AND VAS', 'C4', '60', NULL, 14, '53-18-142', 'aros', 'ME#27 ANDVAS #4', '', 'GRIS ACETATO'),
(1242, 'A3020', 'AND VAS', 'C5', '60', NULL, 14, '55-17-142', 'aros', 'ME#27 ANDVAS #4', '', 'NEGRO ACETATO NARANJA'),
(1243, 'A3023', 'AND VAS', 'C6', '60', NULL, 14, '54-17-142', 'aros', 'ME#27 ANDVAS #4', '', 'ROSA ACETATO'),
(1244, 'A3002', 'AND VAS', 'C5', '60', NULL, 14, '52-18-142', 'aros', 'ME#27 ANDVAS #4', '', 'CAFE ACETATO'),
(1245, 'A2003', 'AND VAS', 'C8', '60', NULL, 14, '53-17-142', 'aros', 'ME#27 ANDVAS #4', '', 'AQUA ACETATO'),
(1246, 'A3023', 'AND VAS', 'C5', '60', NULL, 14, '54-17-142', 'aros', 'ME#27 ANDVAS #4', '', 'AZUL NEGRO ACETATO'),
(1247, 'A2003', 'AND VAS', 'C5', '60', NULL, 14, '53-17-142', 'aros', 'ME#27 ANDVAS #4', '', 'GRIS ACETATO'),
(1248, 'A2008', 'AND VAS ', 'C3', '60', NULL, 9, '54-18-145', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO AZUL'),
(1249, 'HD135', 'AND VAS ', '01', '60', NULL, 9, '54-16-140', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO NEGRO '),
(1250, 'A2036', 'AND VAS', 'C5', '60', NULL, 14, '55-17-142', 'aros', 'ME#27 ANDVAS #4', '', 'CAFE ACETATO'),
(1251, 'UT142', 'AND VAS ', 'C1', '60', NULL, 9, '53-16-145', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO NEGRO'),
(1252, 'A2012', 'AND VAS', 'C4', '60', NULL, 14, '54-16-142', 'aros', 'ME#27 ANDVAS #4', '', 'AZUL ACETATO'),
(1253, 'XC-49', 'AND VAS ', 'C5', '60', NULL, 9, '55-17-140', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO NEGRO'),
(1254, 'A2012', 'AND VAS', 'C6', '60', NULL, 14, '54-16-142', 'aros', 'ME#27 ANDVAS #4', '', 'GRIS ACETATO'),
(1255, 'A3002', 'AND VAS', 'C7', '60', NULL, 14, '52-18-142', 'aros', 'ME#27 ANDVAS #4', '', 'MORADO ACETATO'),
(1256, 'A3006', 'AND VAS', 'C2', '60', NULL, 14, '55-16-140', 'aros', 'ME#27 ANDVAS #4', '', 'MORADO ACETATO'),
(1257, 'FJ8001', 'AND VAS', 'C4', '60', NULL, 14, '54-16-140', 'aros', 'ME#27 ANDVAS #5', '', 'CAFE ACETATO'),
(1258, 'A3016', 'AND VAS', 'C5', '60', NULL, 14, '53-16-142', 'aros', 'ME#27 ANDVAS #5', '', 'CAFE ACETATO'),
(1259, 'A2054', 'AND VAS', 'C4', '60', NULL, 14, '54-16-145', 'aros', 'ME#27 ANDVAS #5', '', 'AZUL ACETATO'),
(1260, 'F76', 'AND VAS ', 'C1', '60', NULL, 9, '54-16-140', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO NEGRO '),
(1261, 'ST8078', 'SIBOTE', 'C12', '60', NULL, 14, '55-18-140', 'aros', 'ME#27 ANDVAS #5', '', 'ROJO ACETATO'),
(1262, 'A2008', 'AND VAS ', 'C2', '60', NULL, 9, '54-18-145', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO AZUL '),
(1263, 'A3016', 'AND VAS', 'C1', '60', NULL, 14, '53-16-142', 'aros', 'ME#27 ANDVAS #5', '', 'CAFE ACETATO'),
(1264, 'A2029', 'AND VAS ', 'C8', '60', NULL, 9, '55-17-145', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO NEGRO INTERIOR NEGRO BLANCO'),
(1265, 'A2002', 'AND VAS ', 'C1', '60', NULL, 9, '53-16-142', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO NEGRO '),
(1266, 'S17502', 'AND VAS ', 'C7', '60', NULL, 9, '53-17-140', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO ORADO VARILLA TRANSPARENTE CON NEGRO'),
(1267, 'A2008', 'AND VAS ', 'C1', '60', NULL, 9, '42-18-145', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO NEGRO '),
(1268, 'HD131', 'AND VAS ', '06', '60', NULL, 9, '55-18-140', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO NEGRO VERDE '),
(1269, 'A3002', 'AND VAS', 'C2', '60', NULL, 8, '52-18-140', 'aros', 'ME#27 ANDVAS #5', '', 'NEGRO ACETATO'),
(1270, 'A2008', 'AND VAS ', 'C1', '60', NULL, 9, '54-18-145', 'aros', 'ME#28 ANDVAS ACETATO #14', '', 'ACETATO NEGRO '),
(1271, 'A2016', 'AND VAS', 'C1', '60', NULL, 8, '56-16-145', 'aros', 'ME#27 ANDVAS #5', '', 'NEGRO ACECATO'),
(1272, 'A2008', 'AND VAS', 'C7', '60', NULL, 8, '54-18-145', 'aros', 'ME#27 ANDVAS #5', '', 'NEGRO ACETATO'),
(1273, 'A3010', 'AND VAS', 'C4', '60', NULL, 8, '55-16-142', 'aros', 'ME#27 ANDVAS #5', '', 'CARAMELO ACETATO'),
(1274, '17165A22', 'AND VAS', 'C5', '60', NULL, 8, '54-17-140', 'aros', 'ME#27 METAL #6', '', 'NEGRO METAL'),
(1275, 'AM3019', 'AND VAS', 'C5', '60', NULL, 8, '54-18-140', 'aros', 'ME#27 METAL #6', '', 'CELESTE METAL'),
(1276, '17107A23', 'AND VAS', 'C3', '60', NULL, 8, '53-18-138', 'aros', 'ME#27 METAL #6', '', 'COJO DORADO METAL'),
(1277, 'AM3016', 'AND VAS', 'C5', '60', NULL, 8, '54-18-140', 'aros', 'ME#27 METAL #6', '', 'AZUL METAL'),
(1278, 'DS18003', 'AND VAS', 'C1', '60', NULL, 8, '54-17-140', 'aros', 'ME#27 METAL #6', '', 'NEGRO METAL'),
(1279, 'JM8 21', 'AND VAS', 'C2', '60', NULL, 8, '53-18-140', 'aros', 'ME#27 METAL #6', '', 'AZUL METAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibos`
--

CREATE TABLE `recibos` (
  `id_recibo` int(11) NOT NULL,
  `numero_recibo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_venta` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sucursal` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `cedula` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `cargo` enum('0','1') NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `password2` varchar(100) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `estado` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombres`, `apellidos`, `cedula`, `telefono`, `correo`, `direccion`, `cargo`, `usuario`, `password`, `password2`, `fecha_ingreso`, `estado`) VALUES
(4, '04659166-7', 'Carlos Andres Vasquez Choto', 'AV001', '79897114', 'andres01@gmail.com', 'metrocentro ss, local 7 4ta etapa', '1', 'andvas', 'and20vas08', 'and20vas08', '2019-03-28', '1'),
(5, '454324', 'Oscar Antonio Gonzalez', 'ADMIN001', '7912384', 'oscar@gmail.com', 'Caserio La Vuelta', '0', 'oscar', '12345', '12345', '2019-03-31', '1'),
(6, '04038907-0', 'Miguel Ernesto Flores ', 'av003', '77850445', 'miguel@gmail.com', 'SS', '0', 'mflores', '010189', '010189', '2019-04-02', '0'),
(7, '04030871-5', 'Carmen Arely Vasquez Flores', 'MT02', '78538973', 'carmenarelyflores77@gmail.com', 'metrocentro ss', '1', 'arely', '201188', '201188', '2019-06-10', '1'),
(8, '04177506-2', 'Denis Isaac Corvera', 'MT04', '71836547', 'denis@gmail.com', 'metrocentro ', '1', 'denis', '200489', '200489', '2018-11-16', '1'),
(9, '05410332-1', 'Josue Noe Rodriguez ', 'MT05', '60097577', 'josue@gmail.com', 'metrocentro ss', '1', 'josue', '120896', '120896', '2019-01-16', '1'),
(10, '01378707-7', 'Janet Riximy Cruz', 'MT06', '63149057', 'janet@gmail.com', 'metrocentro', '0', 'janet', '050569', '050569', '2018-08-08', '1'),
(11, '03362171-2', 'Mauricio Gregorio Flores', 'MT07', '78533789', 'mauricio@gmail.com', 'metrocentro', '1', 'mauricio', '180885', '180885', '2019-05-16', '1'),
(12, '12345', 'Seguros del Pacifico', 'SP001', '22601653', 'segurosdelpacifico@gmail.com', 'ss', '1', 'spacifico', '12345', '12345', '2019-10-30', '1'),
(13, '03505770-7', 'CARLOS CRISTIAN RAMIREZ', 'MT08', '73360200', 'carloscdhramirezr@gmail.com', 'ss', '1', 'cramirez', 'cramirez', 'cramirez', '2019-12-02', '1'),
(14, '06065435-6', 'JORGE FERNANDO SANDOVAL', 'MT10', '74303176', 'josejimenezrodri1718@gmail.com', 'ss', '1', 'fernando', '010320', '010320', '2019-12-31', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `id_usuario_permiso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`id_usuario_permiso`, `id_usuario`, `id_permiso`) VALUES
(32, 2, 1),
(33, 2, 2),
(110, 3, 1),
(111, 3, 2),
(112, 3, 3),
(113, 3, 4),
(114, 3, 5),
(115, 3, 6),
(116, 3, 7),
(117, 3, 8),
(118, 3, 9),
(119, 3, 10),
(140, 1, 1),
(141, 1, 2),
(142, 1, 3),
(143, 1, 4),
(144, 1, 5),
(145, 1, 6),
(146, 1, 7),
(147, 1, 8),
(148, 1, 9),
(149, 1, 10),
(170, 5, 1),
(171, 5, 2),
(172, 5, 3),
(173, 5, 4),
(174, 5, 5),
(175, 5, 6),
(176, 5, 7),
(177, 5, 8),
(178, 5, 9),
(179, 5, 10),
(195, 4, 1),
(196, 4, 2),
(197, 4, 3),
(198, 4, 4),
(199, 4, 5),
(200, 4, 6),
(201, 4, 7),
(202, 4, 8),
(203, 4, 9),
(204, 4, 10),
(205, 7, 1),
(206, 7, 2),
(207, 7, 3),
(208, 7, 4),
(209, 7, 5),
(210, 7, 6),
(211, 7, 7),
(212, 7, 8),
(213, 7, 9),
(214, 7, 10),
(225, 10, 5),
(226, 10, 6),
(227, 11, 6),
(228, 11, 8),
(233, 6, 1),
(234, 6, 2),
(235, 6, 4),
(236, 6, 5),
(237, 6, 6),
(239, 12, 5),
(240, 12, 6),
(243, 9, 2),
(244, 9, 4),
(245, 9, 5),
(246, 9, 6),
(247, 9, 8),
(248, 8, 2),
(249, 8, 4),
(250, 8, 5),
(251, 8, 6),
(252, 8, 8),
(253, 14, 2),
(254, 14, 4),
(255, 14, 6),
(256, 13, 2),
(257, 13, 6),
(258, 13, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `numero_venta` varchar(100) NOT NULL,
  `paciente` varchar(100) NOT NULL,
  `vendedor` varchar(100) NOT NULL,
  `subtotal` varchar(100) DEFAULT NULL,
  `tipo_pago` varchar(100) NOT NULL,
  `tipo_venta` varchar(100) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `sucursal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abonos`
--
ALTER TABLE `abonos`
  ADD PRIMARY KEY (`id_abono`),
  ADD KEY `fk_abonos_pacientes_idx` (`id_paciente`),
  ADD KEY `fk_abonos_usuarios_idx` (`id_usuario`),
  ADD KEY `fk_abonos_creditos_idx` (`id_credito`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_registro`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compras`),
  ADD KEY `fk_compras_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `fk_consulta_pacientes1_idx` (`id_paciente`),
  ADD KEY `fk_consulta_usuarios` (`id_usuario`);

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`id_credito`),
  ADD KEY `fk_creditos_pacientes_idx` (`id_paciente`),
  ADD KEY `fk_creditos_usuarios_idx` (`id_usuario`),
  ADD KEY `fk_creditos_ventas_idx` (`id_usuario`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`id_detalle_compras`),
  ADD KEY `fk_detalle_compras_producto_idx` (`id_producto`),
  ADD KEY `fk_detalle_compras_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id_detalle_ventas`),
  ADD KEY `fk_detalle_ventas_producto_idx` (`id_producto`),
  ADD KEY `fk_detalle_ventas_usuario_idx` (`id_usuario`),
  ADD KEY `fk_detalle_ventas_clientes_idx` (`id_paciente`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresas`);

--
-- Indices de la tabla `existencias`
--
ALTER TABLE `existencias`
  ADD PRIMARY KEY (`id_ingreso`),
  ADD KEY `fk_id_producto_idx` (`id_producto`);

--
-- Indices de la tabla `lentes`
--
ALTER TABLE `lentes`
  ADD PRIMARY KEY (`id_lente`),
  ADD KEY `fk_table1_usuarios_idx` (`id_usuario`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id_orden`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `pacientes_afiliados`
--
ALTER TABLE `pacientes_afiliados`
  ADD PRIMARY KEY (`id_paciente_afiliado`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_producto_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `recibos`
--
ALTER TABLE `recibos`
  ADD PRIMARY KEY (`id_recibo`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`id_usuario_permiso`),
  ADD KEY `fk_usuario_permiso_usuario_idx` (`id_usuario`),
  ADD KEY `fk_usuario_permiso_permiso_idx` (`id_permiso`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `fk_ventas_usuarios_idx` (`id_usuario`),
  ADD KEY `fk_ventas_pacientes_idx` (`id_paciente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abonos`
--
ALTER TABLE `abonos`
  MODIFY `id_abono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `id_credito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `id_detalle_compras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id_detalle_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `existencias`
--
ALTER TABLE `existencias`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1153;

--
-- AUTO_INCREMENT de la tabla `lentes`
--
ALTER TABLE `lentes`
  MODIFY `id_lente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id_orden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `pacientes_afiliados`
--
ALTER TABLE `pacientes_afiliados`
  MODIFY `id_paciente_afiliado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1280;

--
-- AUTO_INCREMENT de la tabla `recibos`
--
ALTER TABLE `recibos`
  MODIFY `id_recibo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `id_usuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abonos`
--
ALTER TABLE `abonos`
  ADD CONSTRAINT `fk_abonos_creditos` FOREIGN KEY (`id_credito`) REFERENCES `creditos` (`id_credito`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_abonos_pacientes` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_abonos_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `fk_consulta_pacientes` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_consulta_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD CONSTRAINT `fk_creditos_pacientes` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_creditos_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `fk_detalle_compras_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_compras_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `fk_detalle_ventas_pacientes` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_ventas_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `existencias`
--
ALTER TABLE `existencias`
  ADD CONSTRAINT `fk_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `lentes`
--
ALTER TABLE `lentes`
  ADD CONSTRAINT `fk_table1_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `recibos`
--
ALTER TABLE `recibos`
  ADD CONSTRAINT `recibos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `recibos_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_ventas_pacientes` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ventas_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
