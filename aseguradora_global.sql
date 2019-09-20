-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2019 a las 19:30:29
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
(0, 0, 'Aguascalientes'),
(1, 0, 'Baja California'),
(2, 0, 'Baja California Sur'),
(3, 0, 'Campeche'),
(4, 0, 'Coahuila'),
(5, 0, 'Colima'),
(6, 0, 'Chiapas'),
(7, 0, 'Chihuahua'),
(8, 0, 'Ciudad de México');

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
(0, 'Póliza Vigente'),
(1, 'Póliza Cancelada desde Origen'),
(2, 'Póliza Cancelada durante la Vigencia'),
(3, 'Póliza Vencida'),
(4, 'Otro tipo de movimiento');

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
(0, 0, 'Aguascalientes'),
(1, 0, 'Asientos'),
(2, 0, 'Calvillo'),
(3, 0, 'Cosío'),
(4, 0, 'Jesús María'),
(5, 0, 'Pabellón de Arteaga'),
(6, 0, 'Rincón de Romos'),
(7, 0, 'San José de Gracia'),
(8, 0, 'Tepezalá'),
(9, 0, 'El Llano'),
(10, 0, 'San Francisco de los Romo'),
(11, 1, 'Ensenada'),
(12, 1, 'Mexicali'),
(13, 1, 'Tecate'),
(14, 1, 'Tijuana'),
(15, 1, 'Playas de Rosarito'),
(16, 2, 'Comondú'),
(17, 2, 'Mulegé'),
(18, 2, 'La Paz'),
(19, 2, 'Los Cabos'),
(20, 2, 'Loreto'),
(21, 3, 'Calkiní'),
(22, 3, 'Campeche'),
(23, 3, 'Ciudad del Carmen'),
(24, 3, 'Champotón'),
(25, 3, 'Hecelchakán'),
(26, 3, 'Hopelchén'),
(27, 3, 'Palizada'),
(28, 3, 'Tenabo'),
(29, 3, 'Escárcega'),
(30, 3, 'Calakmul'),
(31, 3, 'Candelaria'),
(32, 4, 'Abasolo'),
(33, 4, 'Acuña'),
(34, 4, 'Allende'),
(35, 4, 'Arteaga'),
(36, 4, 'Candela'),
(37, 4, 'Castaños'),
(38, 4, 'Cuatro Ciénegas'),
(39, 4, 'Escobedo'),
(40, 4, 'Francisco I. Madero'),
(41, 4, 'Frontera'),
(42, 4, 'General Cepeda'),
(43, 4, 'Guerrero'),
(44, 4, 'Hidalgo'),
(45, 4, 'Jiménez'),
(46, 4, 'Juárez'),
(47, 4, 'Lamadrid'),
(48, 4, 'Matamoros'),
(49, 4, 'Monclova'),
(50, 4, 'Morelos'),
(51, 4, 'Múzquiz'),
(52, 4, 'Nadadores'),
(53, 4, 'Nava'),
(54, 4, 'Ocampo'),
(55, 4, 'Parras'),
(56, 4, 'Piedras Negras'),
(57, 4, 'Progreso'),
(58, 4, 'Ramos Arizpe'),
(59, 4, 'Sabinas'),
(60, 4, 'Sacramento'),
(61, 4, 'Saltillo'),
(62, 4, 'San Buenaventura'),
(63, 4, 'San Juan de Sabinas'),
(64, 4, 'San Pedro'),
(65, 4, 'Sierra Mojada'),
(66, 4, 'Torreón'),
(67, 4, 'Viesca'),
(68, 4, 'Villa Unión'),
(69, 4, 'Zaragoza'),
(70, 5, 'Armería'),
(71, 5, 'Colima'),
(72, 5, 'Comala'),
(73, 5, 'Coquimatlán'),
(74, 5, 'Cuauhtémoc'),
(75, 5, 'Ixtlahuacán'),
(76, 5, 'Manzanillo'),
(77, 5, 'Minatitlán'),
(78, 5, 'Tecomán'),
(79, 5, 'Villa de Álvarez'),
(80, 6, 'Acacoyagua'),
(81, 6, 'Acala'),
(82, 6, 'Acapetahua'),
(83, 6, 'Altamirano'),
(84, 6, 'Amatán'),
(85, 6, 'Amatenango de la Frontera'),
(86, 6, 'Amatenango del Valle'),
(87, 6, 'Angel Albino Corzo'),
(88, 6, 'Arriaga'),
(89, 6, 'Bejucal de Ocampo'),
(90, 6, 'Bella Vista'),
(91, 6, 'Berriozábal'),
(92, 6, 'Bochil'),
(93, 6, 'El Bosque'),
(94, 6, 'Cacahoatán'),
(95, 6, 'Catazajá'),
(96, 6, 'Cintalapa'),
(97, 6, 'Coapilla'),
(98, 6, 'Comitán de Domínguez'),
(99, 6, 'La Concordia'),
(100, 6, 'Copainalá'),
(101, 6, 'Chalchihuitán'),
(102, 6, 'Chamula'),
(103, 6, 'Chanal'),
(104, 6, 'Chapultenango'),
(105, 6, 'Chenalhó'),
(106, 6, 'Chiapa de Corzo'),
(107, 6, 'Chiapilla'),
(108, 6, 'Chicoasén'),
(109, 6, 'Chicomuselo'),
(110, 6, 'Chilón'),
(111, 6, 'Escuintla'),
(112, 6, 'Francisco León'),
(113, 6, 'Frontera Comalapa'),
(114, 6, 'Frontera Hidalgo'),
(115, 6, 'La Grandeza'),
(116, 6, 'Huehuetán'),
(117, 6, 'Huixtán'),
(118, 6, 'Huitiupán'),
(119, 6, 'Huixtla'),
(120, 6, 'La Independencia'),
(121, 6, 'Ixhuatán'),
(122, 6, 'Ixtacomitán'),
(123, 6, 'Ixtapa'),
(124, 6, 'Ixtapangajoya'),
(125, 6, 'Jiquipilas'),
(126, 6, 'Jitotol'),
(127, 6, 'Juárez'),
(128, 6, 'Larráinzar'),
(129, 6, 'La Libertad'),
(130, 6, 'Mapastepec'),
(131, 6, 'Las Margaritas'),
(132, 6, 'Mazapa de Madero'),
(133, 6, 'Mazatán'),
(134, 6, 'Metapa'),
(135, 6, 'Mitontic'),
(136, 6, 'Motozintla'),
(137, 6, 'Nicolás Ruíz'),
(138, 6, 'Ocosingo'),
(139, 6, 'Ocotepec'),
(140, 6, 'Ocozocoautla de Espinosa'),
(141, 6, 'Ostuacán'),
(142, 6, 'Osumacinta'),
(143, 6, 'Oxchuc'),
(144, 6, 'Palenque'),
(145, 6, 'Pantelhó'),
(146, 6, 'Pantepec'),
(147, 6, 'Pichucalco'),
(148, 6, 'Pijijiapan'),
(149, 6, 'El Porvenir'),
(150, 6, 'Villa Comaltitlán'),
(151, 6, 'Pueblo Nuevo Solistahuacán'),
(152, 6, 'Rayón'),
(153, 6, 'Reforma'),
(154, 6, 'Las Rosas'),
(155, 6, 'Sabanilla'),
(156, 6, 'Salto de Agua'),
(157, 6, 'San Cristóbal de las Casas'),
(158, 6, 'San Fernando'),
(159, 6, 'Siltepec'),
(160, 6, 'Simojovel'),
(161, 6, 'Sitalá'),
(162, 6, 'Socoltenango'),
(163, 6, 'Solosuchiapa'),
(164, 6, 'Soyaló'),
(165, 6, 'Suchiapa'),
(166, 6, 'Suchiate'),
(167, 6, 'Sunuapa'),
(168, 6, 'Tapachula'),
(169, 6, 'Tapalapa'),
(170, 6, 'Tapilula'),
(171, 6, 'Tecpatán'),
(172, 6, 'Tenejapa'),
(173, 6, 'Teopisca'),
(174, 6, 'Tila'),
(175, 6, 'Tonalá'),
(176, 6, 'Totolapa'),
(177, 6, 'La Trinitaria'),
(178, 6, 'Tumbalá'),
(179, 6, 'Tuxtla Gutiérrez'),
(180, 6, 'Tuxtla Chico'),
(181, 6, 'Tuzantán'),
(182, 6, 'Tzimol'),
(183, 6, 'Unión Juárez'),
(184, 6, 'Venustiano Carranza'),
(185, 6, 'Villa Corzo'),
(186, 6, 'Villaflores'),
(187, 6, 'Yajalón'),
(188, 6, 'San Lucas'),
(189, 6, 'Zinacantán'),
(190, 6, 'San Juan Cancuc'),
(191, 6, 'Aldama'),
(192, 6, 'Benemérito de las Américas'),
(193, 6, 'Maravilla Tenejapa'),
(194, 6, 'Marqués de Comillas'),
(195, 6, 'Montecristo de Guerrero'),
(196, 6, 'San Andrés Duraznal'),
(197, 6, 'Santiago el Pinar'),
(198, 7, 'Ahumada'),
(199, 7, 'Aldama'),
(200, 7, 'Allende'),
(201, 7, 'Aquiles Serdán'),
(202, 7, 'Ascensión'),
(203, 7, 'Bachíniva'),
(204, 7, 'Balleza'),
(205, 7, 'Batopilas'),
(206, 7, 'Bocoyna'),
(207, 7, 'Buenaventura'),
(208, 7, 'Camargo'),
(209, 7, 'Carichí'),
(210, 7, 'Casas Grandes'),
(211, 7, 'Coronado'),
(212, 7, 'Coyame del Sotol'),
(213, 7, 'La Cruz'),
(214, 7, 'Cuauhtémoc'),
(215, 7, 'Cusihuiriachi'),
(216, 7, 'Chihuahua'),
(217, 7, 'Chínipas'),
(218, 7, 'Delicias'),
(219, 7, 'Dr. Belisario Domínguez'),
(220, 7, 'Galeana'),
(221, 7, 'Santa Isabel'),
(222, 7, 'Gómez Farías'),
(223, 7, 'Gran Morelos'),
(224, 7, 'Guachochi'),
(225, 7, 'Guadalupe'),
(226, 7, 'Guadalupe y Calvo'),
(227, 7, 'Guazapares'),
(228, 7, 'Guerrero'),
(229, 7, 'Hidalgo del Parral'),
(230, 7, 'Huejotitán'),
(231, 7, 'Ignacio Zaragoza'),
(232, 7, 'Janos'),
(233, 7, 'Jiménez'),
(234, 7, 'Juárez'),
(235, 7, 'Julimes'),
(236, 7, 'López'),
(237, 7, 'Madera'),
(238, 7, 'Maguarichi'),
(239, 7, 'Manuel Benavides'),
(240, 7, 'Matachí'),
(241, 7, 'Matamoros'),
(242, 7, 'Meoqui'),
(243, 7, 'Morelos'),
(244, 7, 'Moris'),
(245, 7, 'Namiquipa'),
(246, 7, 'Nonoava'),
(247, 7, 'Nuevo Casas Grandes'),
(248, 7, 'Ocampo'),
(249, 7, 'Ojinaga'),
(250, 7, 'Praxedis G. Guerrero'),
(251, 7, 'Riva Palacio'),
(252, 7, 'Rosales'),
(253, 7, 'Rosario'),
(254, 7, 'San Francisco de Borja'),
(255, 7, 'San Francisco de Conchos'),
(256, 7, 'San Francisco del Oro'),
(257, 7, 'Santa Bárbara'),
(258, 7, 'Satevó'),
(259, 7, 'Saucillo'),
(260, 7, 'Temósachic'),
(261, 7, 'El Tule'),
(262, 7, 'Urique'),
(263, 7, 'Uruachi'),
(264, 7, 'Valle de Zaragoza'),
(265, 8, 'Azcapotzalco'),
(266, 8, 'Coyoacán'),
(267, 8, 'Cuajimalpa de Morelos'),
(268, 8, 'Gustavo A. Madero'),
(269, 8, 'Iztacalco'),
(270, 8, 'Iztapalapa'),
(271, 8, 'La Magdalena Contreras'),
(272, 8, 'Milpa Alta'),
(273, 8, 'Álvaro Obregón'),
(274, 8, 'Tláhuac'),
(275, 8, 'Tlalpan'),
(276, 8, 'Xochimilco'),
(277, 8, 'Benito Juárez'),
(278, 8, 'Cuauhtémoc'),
(279, 8, 'Miguel Hidalgo'),
(280, 8, 'Venustiano Carranza');

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
(0, 'México', 'MXN'),
(1, 'Estados Unidos de America', 'USD'),
(2, 'Perú', 'PEN');

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
(0, '1 año'),
(1, '2 años'),
(0, '1 año'),
(1, '2 años');

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
(1, 'Luis', 'Masa', 'Clemente', '1980-09-19', 29000, 'Centro', 'MEAC190980WEDFGH00', 0, 1, 0, 179, 6, 0, NULL, NULL),
(2, 'Maria', 'Sol', 'Diaz', '1990-09-19', 29000, 'Centro', 'MEAC190990WEDFGH00', 0, 0, 0, 179, 6, 1, NULL, NULL),
(3, 'Alejandra', 'Peña', 'Curiel', '1991-08-19', 29000, 'Centro', 'MEAC190891WEDFGH00', 0, 0, 0, 179, 6, 1, NULL, NULL),
(4, 'Claudia', 'Rodríguez', 'Loera', '1985-08-10', 29000, 'Centro', 'MEAC100885WEDFGH00', 0, 0, 0, 179, 6, 0, NULL, NULL),
(5, 'Laura', 'Rosado', 'Pedraza', '1985-08-25', 29000, 'Centro', 'MEAC250885WEDFGH00', 0, 0, 0, 179, 6, 0, NULL, NULL),
(6, 'Adriana', 'Damián', 'Olvera', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 0, 0, 179, 6, 1, NULL, NULL),
(7, 'Enrique', 'Luján', 'Salazar', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 0, 179, 6, 1, NULL, NULL),
(8, 'Jorge', 'Juárez', 'Maldonado', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 0, 179, 6, 2, NULL, NULL),
(9, 'Francisco', 'Caballero', 'Ibarra', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 0, 179, 6, 1, NULL, NULL),
(10, 'Víctor', 'Espinoza', 'Valle', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 0, 179, 6, 2, NULL, NULL),
(11, 'Ricardo', 'Rivera', 'De La Torre', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 0, 179, 6, 2, NULL, NULL),
(12, 'Alfredo', 'Buenrostro', 'Ceballos', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 0, 179, 6, 1, NULL, NULL),
(13, 'Raúl', 'Ramírez', 'Baena', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 0, 179, 6, 1, NULL, NULL),
(14, 'Sonia', 'Sepúlveda', 'Morales', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 0, 0, 179, 6, 1, NULL, NULL),
(15, 'Leonor', 'Maldonado', 'Meza', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 0, 0, 179, 6, 1, NULL, NULL),
(16, 'Rosa', 'León', 'Castro', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 0, 0, 179, 6, 0, NULL, NULL),
(17, 'Guadalupe', 'Flores', 'Meza', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 0, 0, 179, 6, 2, NULL, NULL),
(18, 'Arturo', 'Medina', 'Medina', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 0, 179, 6, 1, NULL, NULL),
(19, 'Héctor', 'Murillo', 'Aguilar', '1986-08-25', 29000, 'Centro', 'MEAC250886WEDFGH00', 0, 1, 0, 179, 6, 0, NULL, NULL);

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
(0, 'Aseguradora Aserta, S.A. de C.V., Grupo Financiero Aserta'),
(1, 'Aseguradora Insurgentes, S.A. de C.V'),
(2, 'Aseguradora Patrimonial Vida, S.A.'),
(3, 'Aserta Seguros Vida, S.A. de C.V., Grupo Financiero Aserta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `eventoscol` varchar(45) DEFAULT NULL,
  `polizas_id_poliza` int(11) NOT NULL
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
  `cat_estados_id_cat_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `polizas`
--

INSERT INTO `polizas` (`id_poliza`, `fecha_alta`, `fecha_inicio`, `fecha_fin`, `id_cat_vigencia`, `clientes_asegurados_id_cliente_asegurado`, `cat_estatus_polizas_id_cat_estatus_poliza`, `empresas_aseguradoras_id_empresa_aseguradora`, `cat_paises_id_cat_pais`, `cat_municipios_id_cat_municipio`, `cat_estados_id_cat_estado`) VALUES
(0, '2019-09-19 10:34:09', '2019-09-19 10:34:09', '2020-09-19 10:34:09', 0, 0, 0, 0, 0, 179, 6),
(1, '2017-09-19 10:34:09', '2017-09-19 10:34:09', '2018-09-19 10:34:09', 0, 1, 1, 0, 0, 179, 6),
(2, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 1, 0, 0, 0, 179, 6),
(3, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 1, 1, 0, 0, 179, 6),
(4, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(5, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(6, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(7, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(8, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(9, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(10, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 3, 0, 0, 179, 6),
(11, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(12, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(13, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(14, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(15, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(16, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(17, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(18, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 0, 0, 0, 179, 6),
(19, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 2, 3, 0, 0, 179, 6),
(20, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 3, 0, 0, 0, 179, 6),
(21, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 3, 0, 0, 0, 179, 6),
(22, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 3, 0, 0, 0, 179, 6),
(23, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 3, 3, 0, 0, 179, 6),
(24, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 4, 0, 0, 0, 179, 6),
(25, '2016-06-19 10:34:09', '2016-06-19 10:34:09', '2017-06-19 10:34:09', 0, 4, 0, 0, 0, 179, 6);

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
  ADD PRIMARY KEY (`id_poliza`),
  ADD KEY `fk_polizas_clientes_asegurados1_idx` (`clientes_asegurados_id_cliente_asegurado`),
  ADD KEY `fk_polizas_cat_estatus_polizas1_idx` (`cat_estatus_polizas_id_cat_estatus_poliza`),
  ADD KEY `fk_polizas_empresas_aseguradoras1_idx` (`empresas_aseguradoras_id_empresa_aseguradora`),
  ADD KEY `fk_polizas_cat_paises1_idx` (`cat_paises_id_cat_pais`),
  ADD KEY `fk_polizas_cat_municipios1_idx` (`cat_municipios_id_cat_municipio`),
  ADD KEY `fk_polizas_cat_estados1_idx` (`cat_estados_id_cat_estado`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes_asegurados`
--
ALTER TABLE `clientes_asegurados`
  MODIFY `id_cliente_asegurado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
