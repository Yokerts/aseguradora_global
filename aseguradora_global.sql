-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2019 a las 00:58:33
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aseguradora_global`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_especialidades_medicas`
--

CREATE TABLE `cat_especialidades_medicas` (
  `id_cat_especialidad_medica` int(11) NOT NULL,
  `especialidad_medica` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_especialidades_medicas`
--

INSERT INTO `cat_especialidades_medicas` (`id_cat_especialidad_medica`, `especialidad_medica`) VALUES
(0, 'Cardiología\r\n'),
(1, 'Neurocirugía\r\n'),
(2, 'Endocrinología\r\n'),
(3, 'Medicina laboral'),
(4, 'Gastroenterología\r\n'),
(5, 'Ginecología y obstetricia'),
(6, 'Hematología\r\n'),
(7, 'Oncología\r\n'),
(8, 'Urología\r\n'),
(9, 'Geriatría\r\n'),
(10, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_estados`
--

CREATE TABLE `cat_estados` (
  `id_cat_estado` int(11) NOT NULL,
  `id_cat_pais` int(11) NOT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_estados`
--

INSERT INTO `cat_estados` (`id_cat_estado`, `id_cat_pais`, `estado`) VALUES
(1, 0, 'Aguascalientes'),
(2, 0, 'Baja California'),
(3, 0, 'Baja California Sur'),
(4, 0, 'Campeche'),
(5, 0, 'Coahuila'),
(6, 0, 'Colima'),
(7, 0, 'Chiapas'),
(8, 0, 'Chihuahua'),
(9, 0, 'Ciudad de México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_estatus_polizas`
--

CREATE TABLE `cat_estatus_polizas` (
  `id_cat_estatus_poliza` int(11) NOT NULL,
  `estatus_poliza` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_estatus_polizas`
--

INSERT INTO `cat_estatus_polizas` (`id_cat_estatus_poliza`, `estatus_poliza`) VALUES
(1, 'Póliza Vigente'),
(2, 'Póliza Cancelada desde Origen'),
(3, 'Póliza Cancelada durante la Vigencia'),
(4, 'Póliza Vencida'),
(5, 'Otro tipo de movimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_municipios`
--

CREATE TABLE `cat_municipios` (
  `id_cat_municipio` int(11) NOT NULL,
  `id_cat_estado` int(11) NOT NULL,
  `municipio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_municipios`
--

INSERT INTO `cat_municipios` (`id_cat_municipio`, `id_cat_estado`, `municipio`) VALUES
(1, 1, 'Aguascalientes'),
(2, 1, 'Asientos'),
(3, 1, 'Calvillo'),
(4, 1, 'Cosío'),
(5, 1, 'Jesús María'),
(6, 1, 'Pabellón de Arteaga'),
(7, 1, 'Rincón de Romos'),
(8, 1, 'San José de Gracia'),
(9, 1, 'Tepezalá'),
(10, 1, 'El Llano'),
(11, 1, 'San Francisco de los Romo'),
(12, 2, 'Ensenada'),
(13, 2, 'Mexicali'),
(14, 2, 'Tecate'),
(15, 2, 'Tijuana'),
(16, 2, 'Playas de Rosarito'),
(17, 3, 'Comondú'),
(18, 3, 'Mulegé'),
(19, 3, 'La Paz'),
(20, 3, 'Los Cabos'),
(21, 3, 'Loreto'),
(22, 4, 'Calkiní'),
(23, 4, 'Campeche'),
(24, 4, 'Ciudad del Carmen'),
(25, 4, 'Champotón'),
(26, 4, 'Hecelchakán'),
(27, 4, 'Hopelchén'),
(28, 4, 'Palizada'),
(29, 4, 'Tenabo'),
(30, 4, 'Escárcega'),
(31, 4, 'Calakmul'),
(32, 4, 'Candelaria'),
(33, 5, 'Abasolo'),
(34, 5, 'Acuña'),
(35, 5, 'Allende'),
(36, 5, 'Arteaga'),
(37, 5, 'Candela'),
(38, 5, 'Castaños'),
(39, 5, 'Cuatro Ciénegas'),
(40, 5, 'Escobedo'),
(41, 5, 'Francisco I. Madero'),
(42, 5, 'Frontera'),
(43, 5, 'General Cepeda'),
(44, 5, 'Guerrero'),
(45, 5, 'Hidalgo'),
(46, 5, 'Jiménez'),
(47, 5, 'Juárez'),
(48, 5, 'Lamadrid'),
(49, 5, 'Matamoros'),
(50, 5, 'Monclova'),
(51, 5, 'Morelos'),
(52, 5, 'Múzquiz'),
(53, 5, 'Nadadores'),
(54, 5, 'Nava'),
(55, 5, 'Ocampo'),
(56, 5, 'Parras'),
(57, 5, 'Piedras Negras'),
(58, 5, 'Progreso'),
(59, 5, 'Ramos Arizpe'),
(60, 5, 'Sabinas'),
(61, 5, 'Sacramento'),
(62, 5, 'Saltillo'),
(63, 5, 'San Buenaventura'),
(64, 5, 'San Juan de Sabinas'),
(65, 5, 'San Pedro'),
(66, 5, 'Sierra Mojada'),
(67, 5, 'Torreón'),
(68, 5, 'Viesca'),
(69, 5, 'Villa Unión'),
(70, 5, 'Zaragoza'),
(71, 6, 'Armería'),
(72, 6, 'Colima'),
(73, 6, 'Comala'),
(74, 6, 'Coquimatlán'),
(75, 6, 'Cuauhtémoc'),
(76, 6, 'Ixtlahuacán'),
(77, 6, 'Manzanillo'),
(78, 6, 'Minatitlán'),
(79, 6, 'Tecomán'),
(80, 6, 'Villa de Álvarez'),
(81, 7, 'Acacoyagua'),
(82, 7, 'Acala'),
(83, 7, 'Acapetahua'),
(84, 7, 'Altamirano'),
(85, 7, 'Amatán'),
(86, 7, 'Amatenango de la Frontera'),
(87, 7, 'Amatenango del Valle'),
(88, 7, 'Angel Albino Corzo'),
(89, 7, 'Arriaga'),
(90, 7, 'Bejucal de Ocampo'),
(91, 7, 'Bella Vista'),
(92, 7, 'Berriozábal'),
(93, 7, 'Bochil'),
(94, 7, 'El Bosque'),
(95, 7, 'Cacahoatán'),
(96, 7, 'Catazajá'),
(97, 7, 'Cintalapa'),
(98, 7, 'Coapilla'),
(99, 7, 'Comitán de Domínguez'),
(100, 7, 'La Concordia'),
(101, 7, 'Copainalá'),
(102, 7, 'Chalchihuitán'),
(103, 7, 'Chamula'),
(104, 7, 'Chanal'),
(105, 7, 'Chapultenango'),
(106, 7, 'Chenalhó'),
(107, 7, 'Chiapa de Corzo'),
(108, 7, 'Chiapilla'),
(109, 7, 'Chicoasén'),
(110, 7, 'Chicomuselo'),
(111, 7, 'Chilón'),
(112, 7, 'Escuintla'),
(113, 7, 'Francisco León'),
(114, 7, 'Frontera Comalapa'),
(115, 7, 'Frontera Hidalgo'),
(116, 7, 'La Grandeza'),
(117, 7, 'Huehuetán'),
(118, 7, 'Huixtán'),
(119, 7, 'Huitiupán'),
(120, 7, 'Huixtla'),
(121, 7, 'La Independencia'),
(122, 7, 'Ixhuatán'),
(123, 7, 'Ixtacomitán'),
(124, 7, 'Ixtapa'),
(125, 7, 'Ixtapangajoya'),
(126, 7, 'Jiquipilas'),
(127, 7, 'Jitotol'),
(128, 7, 'Juárez'),
(129, 7, 'Larráinzar'),
(130, 7, 'La Libertad'),
(131, 7, 'Mapastepec'),
(132, 7, 'Las Margaritas'),
(133, 7, 'Mazapa de Madero'),
(134, 7, 'Mazatán'),
(135, 7, 'Metapa'),
(136, 7, 'Mitontic'),
(137, 7, 'Motozintla'),
(138, 7, 'Nicolás Ruíz'),
(139, 7, 'Ocosingo'),
(140, 7, 'Ocotepec'),
(141, 7, 'Ocozocoautla de Espinosa'),
(142, 7, 'Ostuacán'),
(143, 7, 'Osumacinta'),
(144, 7, 'Oxchuc'),
(145, 7, 'Palenque'),
(146, 7, 'Pantelhó'),
(147, 7, 'Pantepec'),
(148, 7, 'Pichucalco'),
(149, 7, 'Pijijiapan'),
(150, 7, 'El Porvenir'),
(151, 7, 'Villa Comaltitlán'),
(152, 7, 'Pueblo Nuevo Solistahuacán'),
(153, 7, 'Rayón'),
(154, 7, 'Reforma'),
(155, 7, 'Las Rosas'),
(156, 7, 'Sabanilla'),
(157, 7, 'Salto de Agua'),
(158, 7, 'San Cristóbal de las Casas'),
(159, 7, 'San Fernando'),
(160, 7, 'Siltepec'),
(161, 7, 'Simojovel'),
(162, 7, 'Sitalá'),
(163, 7, 'Socoltenango'),
(164, 7, 'Solosuchiapa'),
(165, 7, 'Soyaló'),
(166, 7, 'Suchiapa'),
(167, 7, 'Suchiate'),
(168, 7, 'Sunuapa'),
(169, 7, 'Tapachula'),
(170, 7, 'Tapalapa'),
(171, 7, 'Tapilula'),
(172, 7, 'Tecpatán'),
(173, 7, 'Tenejapa'),
(174, 7, 'Teopisca'),
(175, 7, 'Tila'),
(176, 7, 'Tonalá'),
(177, 7, 'Totolapa'),
(178, 7, 'La Trinitaria'),
(179, 7, 'Tumbalá'),
(180, 7, 'Tuxtla Gutiérrez'),
(181, 7, 'Tuxtla Chico'),
(182, 7, 'Tuzantán'),
(183, 7, 'Tzimol'),
(184, 7, 'Unión Juárez'),
(185, 7, 'Venustiano Carranza'),
(186, 7, 'Villa Corzo'),
(187, 7, 'Villaflores'),
(188, 7, 'Yajalón'),
(189, 7, 'San Lucas'),
(190, 7, 'Zinacantán'),
(191, 7, 'San Juan Cancuc'),
(192, 7, 'Aldama'),
(193, 7, 'Benemérito de las Américas'),
(194, 7, 'Maravilla Tenejapa'),
(195, 7, 'Marqués de Comillas'),
(196, 7, 'Montecristo de Guerrero'),
(197, 7, 'San Andrés Duraznal'),
(198, 7, 'Santiago el Pinar'),
(199, 8, 'Ahumada'),
(200, 8, 'Aldama'),
(201, 8, 'Allende'),
(202, 8, 'Aquiles Serdán'),
(203, 8, 'Ascensión'),
(204, 8, 'Bachíniva'),
(205, 8, 'Balleza'),
(206, 8, 'Batopilas'),
(207, 8, 'Bocoyna'),
(208, 8, 'Buenaventura'),
(209, 8, 'Camargo'),
(210, 8, 'Carichí'),
(211, 8, 'Casas Grandes'),
(212, 8, 'Coronado'),
(213, 8, 'Coyame del Sotol'),
(214, 8, 'La Cruz'),
(215, 8, 'Cuauhtémoc'),
(216, 8, 'Cusihuiriachi'),
(217, 8, 'Chihuahua'),
(218, 8, 'Chínipas'),
(219, 8, 'Delicias'),
(220, 8, 'Dr. Belisario Domínguez'),
(221, 8, 'Galeana'),
(222, 8, 'Santa Isabel'),
(223, 8, 'Gómez Farías'),
(224, 8, 'Gran Morelos'),
(225, 8, 'Guachochi'),
(226, 8, 'Guadalupe'),
(227, 8, 'Guadalupe y Calvo'),
(228, 8, 'Guazapares'),
(229, 8, 'Guerrero'),
(230, 8, 'Hidalgo del Parral'),
(231, 8, 'Huejotitán'),
(232, 8, 'Ignacio Zaragoza'),
(233, 8, 'Janos'),
(234, 8, 'Jiménez'),
(235, 8, 'Juárez'),
(236, 8, 'Julimes'),
(237, 8, 'López'),
(238, 8, 'Madera'),
(239, 8, 'Maguarichi'),
(240, 8, 'Manuel Benavides'),
(241, 8, 'Matachí'),
(242, 8, 'Matamoros'),
(243, 8, 'Meoqui'),
(244, 8, 'Morelos'),
(245, 8, 'Moris'),
(246, 8, 'Namiquipa'),
(247, 8, 'Nonoava'),
(248, 8, 'Nuevo Casas Grandes'),
(249, 8, 'Ocampo'),
(250, 8, 'Ojinaga'),
(251, 8, 'Praxedis G. Guerrero'),
(252, 8, 'Riva Palacio'),
(253, 8, 'Rosales'),
(254, 8, 'Rosario'),
(255, 8, 'San Francisco de Borja'),
(256, 8, 'San Francisco de Conchos'),
(257, 8, 'San Francisco del Oro'),
(258, 8, 'Santa Bárbara'),
(259, 8, 'Satevó'),
(260, 8, 'Saucillo'),
(261, 8, 'Temósachic'),
(262, 8, 'El Tule'),
(263, 8, 'Urique'),
(264, 8, 'Uruachi'),
(265, 8, 'Valle de Zaragoza'),
(266, 9, 'Azcapotzalco'),
(267, 9, 'Coyoacán'),
(268, 9, 'Cuajimalpa de Morelos'),
(269, 9, 'Gustavo A. Madero'),
(270, 9, 'Iztacalco'),
(271, 9, 'Iztapalapa'),
(272, 9, 'La Magdalena Contreras'),
(273, 9, 'Milpa Alta'),
(274, 9, 'Álvaro Obregón'),
(275, 9, 'Tláhuac'),
(276, 9, 'Tlalpan'),
(277, 9, 'Xochimilco'),
(278, 9, 'Benito Juárez'),
(279, 9, 'Cuauhtémoc'),
(280, 9, 'Miguel Hidalgo'),
(281, 9, 'Venustiano Carranza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_paises`
--

CREATE TABLE `cat_paises` (
  `id_cat_pais` int(11) NOT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `moneda` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_paises`
--

INSERT INTO `cat_paises` (`id_cat_pais`, `pais`, `moneda`) VALUES
(1, 'México', 'MXN'),
(2, 'Estados Unidos de America', 'USD'),
(3, 'Perú', 'PEN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_segmentos_mercado`
--

CREATE TABLE `cat_segmentos_mercado` (
  `id_cat_segmento_mercado` int(11) NOT NULL,
  `segmento_mercado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_segmentos_mercado`
--

INSERT INTO `cat_segmentos_mercado` (`id_cat_segmento_mercado`, `segmento_mercado`) VALUES
(0, 'Bajo'),
(1, 'Medio'),
(2, 'Alto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_sexos`
--

CREATE TABLE `cat_sexos` (
  `id_cat_sexo` int(11) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_sexos`
--

INSERT INTO `cat_sexos` (`id_cat_sexo`, `sexo`) VALUES
(0, 'Mujer'),
(1, 'Hombre'),
(2, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_vigencias`
--

CREATE TABLE `cat_vigencias` (
  `id_cat_vigencias` int(11) NOT NULL,
  `vigencia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_vigencias`
--

INSERT INTO `cat_vigencias` (`id_cat_vigencias`, `vigencia`) VALUES
(1, '1 Año'),
(2, '2 años');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_asegurados`
--

CREATE TABLE `clientes_asegurados` (
  `id_cliente_asegurado` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido_paterno` varchar(45) DEFAULT NULL,
  `apellido_materno` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `codigo_postal` int(11) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `rfc` varchar(20) DEFAULT NULL,
  `cat_segmentos_mercado_id_cat_segmento_mercado` int(11) NOT NULL,
  `cat_sexos_id_cat_sexo` int(11) NOT NULL,
  `cat_paises_id_cat_pais` int(11) NOT NULL,
  `cat_municipios_id_cat_municipio` int(11) NOT NULL,
  `cat_estados_id_cat_estado` int(11) NOT NULL,
  `id_empresa_aseguradora` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes_asegurados`
--

INSERT INTO `clientes_asegurados` (`id_cliente_asegurado`, `nombre`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `codigo_postal`, `direccion`, `rfc`, `cat_segmentos_mercado_id_cat_segmento_mercado`, `cat_sexos_id_cat_sexo`, `cat_paises_id_cat_pais`, `cat_municipios_id_cat_municipio`, `cat_estados_id_cat_estado`, `id_empresa_aseguradora`, `created_at`, `updated_at`) VALUES
(1, 'Luis', 'Masa', 'Clemente', '1980-09-19', 29000, 'Centro', 'MEAC190980WEDFGH00', 0, 1, 1, 180, 7, 0, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(2, 'Maria', 'Sol', 'Diaz', '1990-09-19', 29000, 'Centro', 'MEAC190990WEDFGH00', 0, 0, 1, 180, 7, 1, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(3, 'Alejandra', 'Peña', 'Curiel', '1991-08-19', 29000, 'Centro', 'MEAC190891WEDFGH00', 0, 0, 1, 180, 7, 1, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(4, 'Claudia', 'Rodríguez', 'Loera', '1985-08-10', 29000, 'Centro', 'MEAC100885WEDFGH00', 0, 0, 1, 180, 7, 0, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(5, 'Laura', 'Rosado', 'Pedraza', '1985-08-25', 29000, 'Centro', 'MEAC250885WEDFGH00', 0, 0, 1, 180, 7, 0, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(6, 'Adriana', 'Damián', 'Olvera', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 0, 1, 180, 7, 1, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(7, 'Enrique', 'Luján', 'Salazar', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 1, 180, 7, 1, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(8, 'Jorge', 'Juárez', 'Maldonado', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 1, 180, 7, 2, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(9, 'Francisco', 'Caballero', 'Ibarra', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 1, 180, 7, 1, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(10, 'Víctor', 'Espinoza', 'Valle', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 1, 180, 7, 2, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(11, 'Ricardo', 'Rivera', 'De La Torre', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 1, 180, 7, 2, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(12, 'Alfredo', 'Buenrostro', 'Ceballos', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 1, 180, 7, 1, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(13, 'Raúl', 'Ramírez', 'Baena', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 1, 180, 7, 1, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(14, 'Sonia', 'Sepúlveda', 'Morales', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 0, 1, 180, 7, 1, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(15, 'Leonor', 'Maldonado', 'Meza', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 0, 1, 180, 7, 1, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(16, 'Rosa', 'León', 'Castro', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 0, 1, 180, 7, 0, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(17, 'Guadalupe', 'Flores', 'Meza', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 0, 1, 180, 7, 2, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(18, 'Arturo', 'Medina', 'Medina', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 1, 180, 7, 1, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(19, 'Héctor', 'Murillo', 'Aguilar', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 1, 180, 7, 0, '2019-09-20 22:31:25', '2019-09-20 22:31:25'),
(20, 'Luis', 'Masa', 'Clemente', '1980-09-19', 29000, 'Centro', 'MEAC190980WEDFGH00', 0, 1, 1, 180, 7, 0, '2019-09-20 22:31:25', '2019-09-20 22:31:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctores`
--

CREATE TABLE `doctores` (
  `id_doctor` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido_paterno` varchar(45) DEFAULT NULL,
  `apellido_materno` varchar(45) DEFAULT NULL,
  `es_cliente` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `doctores`
--

INSERT INTO `doctores` (`id_doctor`, `nombre`, `apellido_paterno`, `apellido_materno`, `es_cliente`, `created_at`, `updated_at`) VALUES
(1, 'Carlos A.', 'Medina', 'Arias', 0, '2019-09-20 16:35:15', '0000-00-00 00:00:00'),
(2, 'Andres', 'Juan', 'Dominguez', 1, '2019-09-20 16:35:15', '0000-00-00 00:00:00'),
(3, 'Manuel', 'Molina', 'Paz', 0, '2019-09-20 16:35:15', '0000-00-00 00:00:00'),
(4, 'Luz', 'Morales', 'Mora', 0, '2019-09-20 21:37:06', '2019-09-20 21:37:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor_especialidades_medicas`
--

CREATE TABLE `doctor_especialidades_medicas` (
  `id_doctor_especialidad_medica` int(11) NOT NULL,
  `id_doctor` int(11) NOT NULL,
  `id_cat_especialidad_medica` int(11) NOT NULL,
  `id_empresa_aseguradora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `doctor_especialidades_medicas`
--

INSERT INTO `doctor_especialidades_medicas` (`id_doctor_especialidad_medica`, `id_doctor`, `id_cat_especialidad_medica`, `id_empresa_aseguradora`) VALUES
(1, 0, 3, 0),
(2, 2, 4, 0),
(3, 0, 1, 0),
(4, 1, 3, 2),
(5, 1, 1, 1),
(6, 1, 4, 1),
(7, 0, 3, 0),
(8, 2, 4, 0),
(9, 0, 1, 0),
(10, 1, 3, 2),
(11, 1, 1, 1),
(12, 1, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas_aseguradoras`
--

CREATE TABLE `empresas_aseguradoras` (
  `id_empresa_aseguradora` int(11) NOT NULL,
  `empresa_aseguradora` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresas_aseguradoras`
--

INSERT INTO `empresas_aseguradoras` (`id_empresa_aseguradora`, `empresa_aseguradora`) VALUES
(1, 'Aseguradora Aserta, S.A. de C.V., Grupo Financiero Aserta'),
(2, 'Aseguradora Insurgentes, S.A. de C.V'),
(3, 'Aseguradora Patrimonial Vida, S.A.'),
(4, 'Aserta Seguros Vida, S.A. de C.V., Grupo Financiero Aserta'),
(5, 'Metlife México, S.A. de C.V.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `eventoscol` varchar(45) DEFAULT NULL,
  `polizas_id_poliza` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizas`
--

CREATE TABLE `polizas` (
  `id_poliza` int(11) NOT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `id_cat_vigencia` int(11) DEFAULT NULL,
  `clientes_asegurados_id_cliente_asegurado` int(11) NOT NULL,
  `cat_estatus_polizas_id_cat_estatus_poliza` int(11) NOT NULL,
  `empresas_aseguradoras_id_empresa_aseguradora` int(11) NOT NULL,
  `cat_paises_id_cat_pais` int(11) NOT NULL,
  `cat_municipios_id_cat_municipio` int(11) NOT NULL,
  `cat_estados_id_cat_estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `polizas`
--

INSERT INTO `polizas` (`id_poliza`, `fecha_alta`, `fecha_inicio`, `fecha_fin`, `id_cat_vigencia`, `clientes_asegurados_id_cliente_asegurado`, `cat_estatus_polizas_id_cat_estatus_poliza`, `empresas_aseguradoras_id_empresa_aseguradora`, `cat_paises_id_cat_pais`, `cat_municipios_id_cat_municipio`, `cat_estados_id_cat_estado`, `created_at`, `updated_at`) VALUES
(1, '2019-09-19 10:34:09', '2019-09-19 10:34:09', '2020-09-19 10:34:09', 1, 0, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(2, '2017-09-19 10:34:09', '2017-09-19 10:34:09', '2018-09-19 10:34:09', 1, 1, 2, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(3, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 1, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(4, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 1, 2, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(5, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(6, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(7, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(8, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(9, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(10, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(11, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 4, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(12, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(13, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(14, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(15, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(16, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(17, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(18, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(19, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(20, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 2, 4, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(21, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 3, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(22, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 3, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(23, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 3, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(24, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 3, 4, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(25, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 4, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(26, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 1, 4, 1, 0, 0, 179, 6, '2019-09-20 20:08:51', NULL),
(27, '2019-09-19 14:57:00', '2019-09-19 14:57:00', '2020-09-19 14:57:00', 1, 1, 1, 1, 1, 180, 7, '2019-09-21 03:58:04', '2019-09-21 03:58:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_especialidades_medicas`
--
ALTER TABLE `cat_especialidades_medicas`
  ADD PRIMARY KEY (`id_cat_especialidad_medica`);

--
-- Indices de la tabla `cat_estados`
--
ALTER TABLE `cat_estados`
  ADD PRIMARY KEY (`id_cat_estado`);

--
-- Indices de la tabla `cat_estatus_polizas`
--
ALTER TABLE `cat_estatus_polizas`
  ADD PRIMARY KEY (`id_cat_estatus_poliza`);

--
-- Indices de la tabla `cat_municipios`
--
ALTER TABLE `cat_municipios`
  ADD PRIMARY KEY (`id_cat_municipio`);

--
-- Indices de la tabla `cat_paises`
--
ALTER TABLE `cat_paises`
  ADD PRIMARY KEY (`id_cat_pais`);

--
-- Indices de la tabla `cat_segmentos_mercado`
--
ALTER TABLE `cat_segmentos_mercado`
  ADD PRIMARY KEY (`id_cat_segmento_mercado`);

--
-- Indices de la tabla `cat_sexos`
--
ALTER TABLE `cat_sexos`
  ADD PRIMARY KEY (`id_cat_sexo`);

--
-- Indices de la tabla `cat_vigencias`
--
ALTER TABLE `cat_vigencias`
  ADD PRIMARY KEY (`id_cat_vigencias`),
  ADD KEY `id_cat_vigencias` (`id_cat_vigencias`);

--
-- Indices de la tabla `clientes_asegurados`
--
ALTER TABLE `clientes_asegurados`
  ADD KEY `fk_clientes_asegurados_cat_segmentos_mercado1_idx` (`cat_segmentos_mercado_id_cat_segmento_mercado`),
  ADD KEY `fk_clientes_asegurados_cat_sexos1_idx` (`cat_sexos_id_cat_sexo`),
  ADD KEY `fk_clientes_asegurados_cat_paises1_idx` (`cat_paises_id_cat_pais`),
  ADD KEY `fk_clientes_asegurados_cat_municipios1_idx` (`cat_municipios_id_cat_municipio`),
  ADD KEY `fk_clientes_asegurados_cat_estados1_idx` (`cat_estados_id_cat_estado`),
  ADD KEY `id_cliente_asegurado` (`id_cliente_asegurado`);

--
-- Indices de la tabla `doctores`
--
ALTER TABLE `doctores`
  ADD PRIMARY KEY (`id_doctor`);

--
-- Indices de la tabla `doctor_especialidades_medicas`
--
ALTER TABLE `doctor_especialidades_medicas`
  ADD KEY `id_doctor_especialidad_medica` (`id_doctor_especialidad_medica`);

--
-- Indices de la tabla `empresas_aseguradoras`
--
ALTER TABLE `empresas_aseguradoras`
  ADD PRIMARY KEY (`id_empresa_aseguradora`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `fk_eventos_polizas1_idx` (`polizas_id_poliza`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `polizas`
--
ALTER TABLE `polizas`
  ADD KEY `fk_polizas_clientes_asegurados1_idx` (`clientes_asegurados_id_cliente_asegurado`),
  ADD KEY `fk_polizas_cat_estatus_polizas1_idx` (`cat_estatus_polizas_id_cat_estatus_poliza`),
  ADD KEY `fk_polizas_empresas_aseguradoras1_idx` (`empresas_aseguradoras_id_empresa_aseguradora`),
  ADD KEY `fk_polizas_cat_paises1_idx` (`cat_paises_id_cat_pais`),
  ADD KEY `fk_polizas_cat_municipios1_idx` (`cat_municipios_id_cat_municipio`),
  ADD KEY `fk_polizas_cat_estados1_idx` (`cat_estados_id_cat_estado`),
  ADD KEY `id_poliza` (`id_poliza`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_estados`
--
ALTER TABLE `cat_estados`
  MODIFY `id_cat_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cat_estatus_polizas`
--
ALTER TABLE `cat_estatus_polizas`
  MODIFY `id_cat_estatus_poliza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cat_paises`
--
ALTER TABLE `cat_paises`
  MODIFY `id_cat_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cat_vigencias`
--
ALTER TABLE `cat_vigencias`
  MODIFY `id_cat_vigencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes_asegurados`
--
ALTER TABLE `clientes_asegurados`
  MODIFY `id_cliente_asegurado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `doctores`
--
ALTER TABLE `doctores`
  MODIFY `id_doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `doctor_especialidades_medicas`
--
ALTER TABLE `doctor_especialidades_medicas`
  MODIFY `id_doctor_especialidad_medica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `empresas_aseguradoras`
--
ALTER TABLE `empresas_aseguradoras`
  MODIFY `id_empresa_aseguradora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `polizas`
--
ALTER TABLE `polizas`
  MODIFY `id_poliza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
