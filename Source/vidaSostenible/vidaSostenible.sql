-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-06-2017 a las 09:40:21
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vidaSostenible`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `texto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `texto`) VALUES
(1, 'Energia'),
(2, 'Transporte'),
(3, 'Agua'),
(4, 'Materiales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ccaa`
--

CREATE TABLE `ccaa` (
  `id` int(11) NOT NULL,
  `texto` varchar(100) NOT NULL,
  `idPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ccaa`
--

INSERT INTO `ccaa` (`id`, `texto`, `idPais`) VALUES
(1, 'Andalucía', 73),
(2, 'Aragón', 73),
(3, 'Principado de Asturias', 73),
(4, 'Illes Balears', 73),
(5, 'Canarias', 73),
(6, 'Cantabria', 73),
(7, 'Castilla y León', 73),
(8, 'Castilla - La Mancha', 73),
(9, 'Cataluña', 73),
(10, 'Comunitat Valenciana', 73),
(11, 'Extremadura', 73),
(12, 'Galicia', 73),
(13, 'Comunidad de Madrid ', 73),
(14, 'Región de Murcia', 73),
(15, 'Comunidad Foral de Navarra', 73),
(16, 'País Vasco', 73),
(17, 'La Rioja', 73),
(18, 'Ceuta', 73),
(19, 'Melilla', 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conocimientos`
--

CREATE TABLE `conocimientos` (
  `id` int(11) NOT NULL,
  `texto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conocimientos`
--

INSERT INTO `conocimientos` (`id`, `texto`) VALUES
(1, 'Artes y humanidades'),
(2, 'Ciencia e Ingenierías'),
(3, 'Ciencias de la salud'),
(4, 'Ciencias sociales y jurídicas'),
(5, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depende`
--

CREATE TABLE `depende` (
  `id` int(11) NOT NULL,
  `idPregunta` int(11) NOT NULL,
  `idRespuesta` int(11) NOT NULL,
  `valorRespuesta` int(11) NOT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `depende`
--

INSERT INTO `depende` (`id`, `idPregunta`, `idRespuesta`, `valorRespuesta`, `idTexto`) VALUES
(1, 1, 1, 0, 12),
(2, 1, 2, 2, 13),
(3, 1, 3, 0, NULL),
(4, 2, 4, 5, 14),
(5, 2, 5, 7, 15),
(6, 3, 6, 1, 16),
(7, 3, 7, 2, 16),
(8, 3, 8, 3, 16),
(9, 4, 9, 0, NULL),
(10, 4, 10, 0, NULL),
(11, 4, 11, 0, NULL),
(12, 4, 12, 0, NULL),
(13, 4, 13, 0, 17),
(14, 4, 14, 0, 17),
(15, 4, 15, 0, 17),
(16, 4, 16, 0, 17),
(17, 4, 17, 0, 17),
(18, 4, 18, 0, NULL),
(19, 4, 19, 0, NULL),
(20, 4, 20, 0, NULL),
(21, 5, 21, 9, 19),
(22, 5, 22, 0, 18),
(23, 6, 9, 0, 65),
(24, 6, 10, 0, 65),
(25, 6, 11, 0, 65),
(26, 6, 12, 0, 65),
(27, 6, 13, 0, 65),
(28, 6, 14, 0, NULL),
(29, 6, 15, 0, NULL),
(30, 6, 16, 0, NULL),
(31, 6, 17, 0, NULL),
(32, 6, 18, 0, 65),
(33, 6, 19, 0, 65),
(34, 6, 20, 0, 65),
(35, 7, 23, 3, 21),
(36, 7, 24, 1, 21),
(37, 7, 25, 1, 22),
(38, 7, 26, 1, 23),
(39, 7, 27, -2, 23),
(40, 8, 21, -2, 24),
(41, 8, 22, 2, 25),
(42, 9, 21, -1, 26),
(43, 9, 22, 1, 27),
(44, 9, 28, 1, 27),
(45, 10, 29, 6, 28),
(46, 10, 30, 3, 29),
(47, 10, 31, 1, 30),
(48, 10, 32, 1, 31),
(49, 10, 33, 0, 32),
(50, 10, 34, 0, 30),
(51, 11, 35, 0, NULL),
(52, 11, 36, 1, NULL),
(53, 11, 37, 2, NULL),
(54, 11, 38, 3, NULL),
(55, 12, 23, 2, 34),
(56, 12, 24, 4, 34),
(57, 12, 25, 4, 35),
(58, 12, 26, 4, 36),
(59, 12, 27, 8, 36),
(60, 13, 39, -3, 37),
(61, 14, 40, 2, 38),
(62, 15, 23, 3, 39),
(63, 15, 24, 1, 40),
(64, 15, 25, 1, 40),
(65, 15, 26, 1, 40),
(66, 15, 27, -1, 41),
(67, 16, 23, -1, 42),
(68, 16, 24, 1, 43),
(69, 16, 25, 1, 43),
(70, 16, 26, 1, 43),
(71, 16, 27, 3, 44),
(72, 17, 41, 0, 45),
(73, 17, 42, 1, 46),
(74, 17, 43, 7, 46),
(75, 17, 44, 10, 46),
(76, 17, 45, 15, 47),
(77, 18, 21, -5, NULL),
(78, 18, 22, 7, 48),
(79, 19, 46, 3, 49),
(80, 19, 47, 1, 49),
(81, 19, 48, -2, 50),
(82, 20, 21, 1, 51),
(83, 20, 22, 3, 52),
(84, 20, 49, 2, 53),
(85, 21, 23, 9, 54),
(86, 21, 24, 5, 55),
(87, 21, 25, 5, 55),
(88, 21, 26, 5, 55),
(89, 21, 27, 2, 56),
(90, 22, 50, 7, 57),
(91, 22, 51, 3, 58),
(92, 22, 52, 1, 59),
(93, 23, 23, 2, 60),
(94, 23, 24, 4, 61),
(95, 23, 25, 4, 61),
(96, 23, 26, 4, 61),
(97, 23, 27, 6, 62);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencia`
--

CREATE TABLE `dependencia` (
  `id` int(11) NOT NULL,
  `idDepende` int(11) NOT NULL,
  `idPregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dependencia`
--

INSERT INTO `dependencia` (`id`, `idDepende`, `idPregunta`) VALUES
(1, 3, 2),
(2, 3, 3),
(3, 3, 4),
(4, 21, 6),
(5, 21, 7),
(6, 76, 18),
(7, 45, 12),
(8, 45, 13),
(9, 46, 13),
(10, 45, 14),
(11, 45, 15),
(12, 77, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edad`
--

CREATE TABLE `edad` (
  `id` int(11) NOT NULL,
  `texto` varchar(50) NOT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `edad`
--

INSERT INTO `edad` (`id`, `texto`, `idTexto`) VALUES
(1, 'Menos de 16 años', NULL),
(2, 'Entre 17 y 36', NULL),
(3, 'Entre 37 y 56', NULL),
(4, 'de 57 a 76', NULL),
(5, 'Más de 76', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacioCasas`
--

CREATE TABLE `espacioCasas` (
  `id` int(11) NOT NULL,
  `texto` varchar(45) NOT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `espacioCasas`
--

INSERT INTO `espacioCasas` (`id`, `texto`, `idTexto`) VALUES
(1, 'Menos de 60 m2', NULL),
(2, 'Entre 61 y 120 m2', NULL),
(3, 'Más de 121 m2', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE `estudios` (
  `id` int(11) NOT NULL,
  `texto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudios`
--

INSERT INTO `estudios` (`id`, `texto`) VALUES
(1, 'Ninguno'),
(2, 'Primer grado'),
(3, 'Segundo grado'),
(4, 'Tercer grado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL,
  `texto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id`, `texto`) VALUES
(1, 'Hasta 5.000 € / $us.'),
(2, 'Entre 5.000 y 10.000 € / $us.'),
(3, 'Entre 10.000 y 20.000 € / $us.'),
(4, 'Entre 20.000 y 40.000 € / $us.'),
(5, 'Más 40.000 € / $us.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numPersonas`
--

CREATE TABLE `numPersonas` (
  `id` int(11) NOT NULL,
  `texto` varchar(45) NOT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `numPersonas`
--

INSERT INTO `numPersonas` (`id`, `texto`, `idTexto`) VALUES
(1, 'Uno', NULL),
(2, 'Dos', NULL),
(3, 'Tres', NULL),
(4, 'Más de tres', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `texto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `texto`) VALUES
(1, 'Afganistán'),
(2, 'Islas Gland'),
(3, 'Albania'),
(4, 'Alemania'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antártida'),
(9, 'Antigua y Barbuda'),
(10, 'Antillas Holandesas'),
(11, 'Arabia Saudí'),
(12, 'Argelia'),
(13, 'Argentina'),
(14, 'Armenia'),
(15, 'Aruba'),
(16, 'Australia'),
(17, 'Austria'),
(18, 'Azerbaiyán'),
(19, 'Bahamas'),
(20, 'Bahréin'),
(21, 'Bangladesh'),
(22, 'Barbados'),
(23, 'Bielorrusia'),
(24, 'Bélgica'),
(25, 'Belice'),
(26, 'Benin'),
(27, 'Bermudas'),
(28, 'Bhután'),
(29, 'Bolivia'),
(30, 'Bosnia y Herzegovina'),
(31, 'Botsuana'),
(32, 'Isla Bouvet'),
(33, 'Brasil'),
(34, 'Brunéi'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Cabo Verde'),
(39, 'Islas Caimán'),
(40, 'Camboya'),
(41, 'Camerún'),
(42, 'Canadá'),
(43, 'República Centroafricana'),
(44, 'Chad'),
(45, 'República Checa'),
(46, 'Chile'),
(47, 'China'),
(48, 'Chipre'),
(49, 'Isla de Navidad'),
(50, 'Ciudad del Vaticano'),
(51, 'Islas Cocos'),
(52, 'Colombia'),
(53, 'Comoras'),
(54, 'República Democrática del Congo'),
(55, 'Congo'),
(56, 'Islas Cook'),
(57, 'Corea del Norte'),
(58, 'Corea del Sur'),
(59, 'Costa de Marfil'),
(60, 'Costa Rica'),
(61, 'Croacia'),
(62, 'Cuba'),
(63, 'Dinamarca'),
(64, 'Dominica'),
(65, 'República Dominicana'),
(66, 'Ecuador'),
(67, 'Egipto'),
(68, 'El Salvador'),
(69, 'Emiratos Árabes Unidos'),
(70, 'Eritrea'),
(71, 'Eslovaquia'),
(72, 'Eslovenia'),
(73, 'España'),
(74, 'Islas ultramarinas de Estados Unidos'),
(75, 'Estados Unidos'),
(76, 'Estonia'),
(77, 'Etiopía'),
(78, 'Islas Feroe'),
(79, 'Filipinas'),
(80, 'Finlandia'),
(81, 'Fiyi'),
(82, 'Francia'),
(83, 'Gabón'),
(84, 'Gambia'),
(85, 'Georgia'),
(86, 'Islas Georgias del Sur y Sandwich del Sur'),
(87, 'Ghana'),
(88, 'Gibraltar'),
(89, 'Granada'),
(90, 'Grecia'),
(91, 'Groenlandia'),
(92, 'Guadalupe'),
(93, 'Guam'),
(94, 'Guatemala'),
(95, 'Guayana Francesa'),
(96, 'Guinea'),
(97, 'Guinea Ecuatorial'),
(98, 'Guinea-Bissau'),
(99, 'Guyana'),
(100, 'Haití'),
(101, 'Islas Heard y McDonald'),
(102, 'Honduras'),
(103, 'Hong Kong'),
(104, 'Hungría'),
(105, 'India'),
(106, 'Indonesia'),
(107, 'Irán'),
(108, 'Iraq'),
(109, 'Irlanda'),
(110, 'Islandia'),
(111, 'Israel'),
(112, 'Italia'),
(113, 'Jamaica'),
(114, 'Japón'),
(115, 'Jordania'),
(116, 'Kazajstán'),
(117, 'Kenia'),
(118, 'Kirguistán'),
(119, 'Kiribati'),
(120, 'Kuwait'),
(121, 'Laos'),
(122, 'Lesotho'),
(123, 'Letonia'),
(124, 'Líbano'),
(125, 'Liberia'),
(126, 'Libia'),
(127, 'Liechtenstein'),
(128, 'Lituania'),
(129, 'Luxemburgo'),
(130, 'Macao'),
(131, 'ARY Macedonia'),
(132, 'Madagascar'),
(133, 'Malasia'),
(134, 'Malawi'),
(135, 'Maldivas'),
(136, 'Malí'),
(137, 'Malta'),
(138, 'Islas Malvinas'),
(139, 'Islas Marianas del Norte'),
(140, 'Marruecos'),
(141, 'Islas Marshall'),
(142, 'Martinica'),
(143, 'Mauricio'),
(144, 'Mauritania'),
(145, 'Mayotte'),
(146, 'México'),
(147, 'Micronesia'),
(148, 'Moldavia'),
(149, 'Mónaco'),
(150, 'Mongolia'),
(151, 'Montserrat'),
(152, 'Mozambique'),
(153, 'Myanmar'),
(154, 'Namibia'),
(155, 'Nauru'),
(156, 'Nepal'),
(157, 'Nicaragua'),
(158, 'Níger'),
(159, 'Nigeria'),
(160, 'Niue'),
(161, 'Isla Norfolk'),
(162, 'Noruega'),
(163, 'Nueva Caledonia'),
(164, 'Nueva Zelanda'),
(165, 'Omán'),
(166, 'Países Bajos'),
(167, 'Pakistán'),
(168, 'Palau'),
(169, 'Palestina'),
(170, 'Panamá'),
(171, 'Papúa Nueva Guinea'),
(172, 'Paraguay'),
(173, 'Perú'),
(174, 'Islas Pitcairn'),
(175, 'Polinesia Francesa'),
(176, 'Polonia'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reino Unido'),
(181, 'Reunión'),
(182, 'Ruanda'),
(183, 'Rumania'),
(184, 'Rusia'),
(185, 'Sahara Occidental'),
(186, 'Islas Salomón'),
(187, 'Samoa'),
(188, 'Samoa Americana'),
(189, 'San Cristóbal y Nevis'),
(190, 'San Marino'),
(191, 'San Pedro y Miquelón'),
(192, 'San Vicente y las Granadinas'),
(193, 'Santa Helena'),
(194, 'Santa Lucía'),
(195, 'Santo Tomé y Príncipe'),
(196, 'Senegal'),
(197, 'Serbia y Montenegro'),
(198, 'Seychelles'),
(199, 'Sierra Leona'),
(200, 'Singapur'),
(201, 'Siria'),
(202, 'Somalia'),
(203, 'Sri Lanka'),
(204, 'Suazilandia'),
(205, 'Sudáfrica'),
(206, 'Sudán'),
(207, 'Suecia'),
(208, 'Suiza'),
(209, 'Surinam'),
(210, 'Svalbard y Jan Mayen'),
(211, 'Tailandia'),
(212, 'Taiwán'),
(213, 'Tanzania'),
(214, 'Tayikistán'),
(215, 'Territorio Británico del Océano Índico'),
(216, 'Territorios Australes Franceses'),
(217, 'Timor Oriental'),
(218, 'Togo'),
(219, 'Tokelau'),
(220, 'Tonga'),
(221, 'Trinidad y Tobago'),
(222, 'Túnez'),
(223, 'Islas Turcas y Caicos'),
(224, 'Turkmenistán'),
(225, 'Turquía'),
(226, 'Tuvalu'),
(227, 'Ucrania'),
(228, 'Uganda'),
(229, 'Uruguay'),
(230, 'Uzbekistán'),
(231, 'Vanuatu'),
(232, 'Venezuela'),
(233, 'Vietnam'),
(234, 'Islas Vírgenes Británicas'),
(235, 'Islas Vírgenes de los Estados Unidos'),
(236, 'Wallis y Futuna'),
(237, 'Yemen'),
(238, 'Yibuti'),
(239, 'Zambia'),
(240, 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `pais` int(11) NOT NULL,
  `ccaa` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `tipoCasa` int(11) NOT NULL,
  `m2Casa` int(11) NOT NULL,
  `numPersonas` int(11) NOT NULL,
  `ingresos` int(11) NOT NULL,
  `conocimiento` int(11) NOT NULL,
  `estudios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `pais`, `ccaa`, `edad`, `tipoCasa`, `m2Casa`, `numPersonas`, `ingresos`, `conocimiento`, `estudios`) VALUES
(17, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(18, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(20, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 2, 2, 1, 3, 1, 2, 2, 1, 1),
(24, 3, 5, 2, 2, 1, 2, 2, 3, 2),
(25, 3, 5, 2, 2, 1, 2, 2, 3, 2),
(26, 5, 4, 2, 3, 3, 3, 3, 3, 1),
(27, 11, 7, 4, 2, 2, 4, 2, 4, 2),
(28, 10, 4, 2, 1, 1, 2, 2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `id` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idPregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pertenece`
--

INSERT INTO `pertenece` (`id`, `idCategoria`, `idPregunta`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 3, 17),
(18, 3, 18),
(19, 3, 19),
(20, 4, 20),
(21, 4, 21),
(22, 4, 22),
(23, 4, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `tipo` int(11) NOT NULL,
  `disponibilidad` tinyint(4) NOT NULL DEFAULT '1',
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `pregunta`, `tipo`, `disponibilidad`, `orden`) VALUES
(1, '¿Cuántos elementos de calefacción tienes en casa? (cuenta todos los radiadores, estufas, etc.)', 1, 1, 1),
(2, '¿Tu sistema de calefacción es central o individual?', 1, 1, 2),
(3, 'Marca el número de radiadores:', 1, 1, 3),
(4, 'Si tienes, marca los meses en que tienes encendida la calefacción', 2, 1, 4),
(5, '¿Tienes una instalación de aire acondicionado?', 1, 1, 5),
(6, 'Si tienes, marca los meses en los que utilizas el aire acondicionado', 2, 1, 6),
(7, 'Si tienes calefacción y/o aire acondicionado y puedes regular la temperatura a voluntad, ¿Cuál es tu estilo de uso de la climatización?', 4, 1, 7),
(8, '¿Tienes dobles ventanas, o ventanas con doble cristal?', 1, 1, 8),
(9, '¿Tienes algún electrodoméstico con etiqueta energética \"A\" (o superior, A+, A++, A+++)', 1, 1, 9),
(10, '¿Qué vehículos usas por lo general para tus desplazamientos? (Marca más de uno si es necesario)', 1, 1, 10),
(11, '¿Cuánto tiempo tardas en desplazarte a tu trabajo o tu centro educativo? Si marcaste varias opciones en la pregunta anterior, señala el tiempo que tardas en la opción más rápida)', 1, 1, 11),
(12, 'Si tienes coche ¿cómo es de grande?', 4, 1, 12),
(13, 'Marca esta casilla si tu vehículo es eléctrico o híbrido', 2, 1, 13),
(14, 'Marca esta casilla si compraste tu coche hace más de diez años.', 2, 1, 14),
(15, '¿Vas solo en tu coche?', 4, 1, 15),
(16, '¿Con qué frecuencia haces la compra?', 4, 1, 16),
(17, '¿Cuál es tu relación con las plantas?', 1, 1, 17),
(18, 'Si tienes muchas plantas para regar, ¿empleas algún sistema de riego economizador? (es decir, riego por goteo, hidromacetas, temporizador, etc.)', 1, 1, 18),
(19, '¿Cuántos elementos economizadores de agua hay instalados en la fontanería de tu casa? (doble tecla en WC, botón de parada a voluntad, perlizadores o aeradores en grifos, etc.)', 1, 1, 19),
(20, '¿Intentas evitar la compra de productos marcados con estas indicaciones?', 1, 1, 20),
(21, '¿Cuál es tu relación con la carne?', 4, 1, 21),
(22, '¿Hay alguna de estas cosas en tu domicilio?\r\nUn sitio para guardar el papel y cartón desechado\r\nUn cubo para botellas y frascos de vidrio vacíos\r\nUn cubo o bolsa para meter las latas, bricks y envases de plástico usados\r\nUn lugar para medicamentos, etc', 1, 1, 22),
(23, '¿Cómo sueles comprar los alimentos?', 4, 1, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responde`
--

CREATE TABLE `responde` (
  `id` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `idRespuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `responde`
--

INSERT INTO `responde` (`id`, `idPersona`, `idRespuesta`) VALUES
(5, 17, 1),
(6, 17, 21),
(7, 17, 23),
(8, 17, 24),
(9, 18, 1),
(10, 18, 21),
(11, 18, 23),
(12, 18, 24),
(13, 19, 1),
(14, 19, 21),
(15, 19, 23),
(16, 19, 24),
(17, 19, 40),
(18, 20, 1),
(19, 20, 21),
(20, 20, 23),
(21, 20, 24),
(22, 24, 1),
(23, 24, 21),
(24, 24, 24),
(25, 24, 25),
(26, 24, 40),
(27, 25, 1),
(28, 25, 21),
(29, 25, 24),
(30, 25, 25),
(31, 25, 40),
(32, 26, 1),
(33, 26, 21),
(34, 26, 23),
(35, 26, 24),
(36, 26, 40),
(37, 26, 42),
(38, 28, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id` int(11) NOT NULL,
  `respuesta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id`, `respuesta`) VALUES
(23, '1'),
(6, '1 o 2'),
(24, '2'),
(25, '3'),
(7, '3 a 5'),
(26, '4'),
(27, '5'),
(8, '6 o más'),
(12, 'Abril'),
(16, 'Agosto'),
(34, 'Camino'),
(4, 'Central, común para todo el edificio'),
(29, 'Coche'),
(36, 'De 10 a 30 minutos'),
(37, 'De media a una hora'),
(20, 'Diciembre'),
(45, 'Disfruto de un gran jardín con césped'),
(9, 'Enero'),
(10, 'Febrero'),
(5, 'Individual, solo para mi vivienda'),
(15, 'Julio'),
(14, 'Junio'),
(11, 'Marzo'),
(38, 'Más de una hora'),
(13, 'Mayo'),
(35, 'Menos de 10 minutos'),
(32, 'Metro, tren o autobús'),
(30, 'Moto'),
(50, 'Ninguna'),
(46, 'Ninguno'),
(22, 'No'),
(41, 'No hay plantas en mi casa'),
(28, 'No lo se'),
(1, 'No tengo ninguno'),
(19, 'Noviembre'),
(49, 'Nunca me he fijado'),
(18, 'Octubre'),
(31, 'Otros vehículos urbanos: segway, urban wheel, patinete eléctrico, etc'),
(17, 'Septiembre'),
(21, 'Si'),
(39, 'Sí, es un eléctrico'),
(40, 'Sí, lo compré hace más de diez años'),
(2, 'Tengo alguna estufa o calefactor móvil'),
(43, 'Tengo algunas jardineras'),
(3, 'Tengo un sistema de calefacción con radiadores fijos'),
(52, 'Tres o cuatro'),
(44, 'Un jardincito'),
(51, 'Una o dos'),
(42, 'Unas pocas macetas'),
(47, 'Uno'),
(48, 'Varios'),
(33, 'Voy en bicicleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textoInformativo`
--

CREATE TABLE `textoInformativo` (
  `id` int(11) NOT NULL,
  `texto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `textoInformativo`
--

INSERT INTO `textoInformativo` (`id`, `texto`) VALUES
(1, 'La huella ecológica a lo largo de la edad parece tener forma de campana, siendo máxima en la edad adulta y disminuyendo hacia atrás, cuando somos preadultos, y hacia adelante, cuando somos ancianos. ¡Descontando la impresionante huella ecológica de los niños en su primer año de vida, solamente en pañales de usar y tirar!'),
(2, 'Al vivir en una vivienda aislada, tu huella ecológica tiende a ser mayor. Necesitarás más energía para calentar la casa en comparación con un piso rodeado de otras viviendas, por ejemplo. También es probable que consumas más agua y que gastes más en transporte para ir y venir de tu casa. \r\nPero también hay una parte positiva: al disponer de abundante espacio, puedes reducir tu huella ecológica drásticamente instalando paneles solares en el tejado, un sistema para acopiar el agua, un compostador para reciclar los restos de alimentos… y muchas otras cosas.'),
(3, 'Los adosados suelen ser mayores que los pisos, por lo que su huella ecológica también suele ser mayor. Por ejemplo, gastan más energía en calentar la casa. Pero también ofrecen la posibilidad de reducir drásticamente tu huella ecológica instalando un sistema de energía renovable (agua caliente solar, por ejemplo) en el tejado, un compostador en el jardín, etc.'),
(4, 'Disponer de servicios comunes de agua y energía reduce mucho la huella ecológica de las viviendas dentro de un bloque de pisos. No obstante, las necesidades de energía variarán mucho según cuál sea la posición del piso en el edificio y su orientación. Por ejemplo, no es lo mismo un bajo orientado al norte que un último piso o un ático orientado al sur, que garantiza una fuerte insolación y tal vez problemas para mantener la casa fresca en verano.'),
(5, 'Un piso dentro de una manzana de casas suele tener un consumo más reducido de energía para climatización, aunque eso varía mucho con la localización de la vivienda, si es exterior o interior, en un piso alto o bajo, y su orientación. Los edificios antiguos de muros gruesos ofrecen un buen aislamiento, lo que reduce las necesidades de calefacción.'),
(6, 'Vivir solo es una opción que cada vez más personas adoptan, independientemente de los motivos. Ten en cuenta que en esta caso el tamaño de tu huella ecológica se multiplica, y eso sucede en todos los aspectos: consumo de energía, agua, transporte, consumo de alimentos, producción de residuos, etc. Pero hay un lado positivo: vivir solo te permite organizarte al detalle, para reducir tu huella de la manera en que tú exactamente determines.'),
(7, 'Estás próximo al tamaño medio de los hogares en España, que es de 2,5 personas. Eso implica que será fácil poneros de acuerdo para reducir el tamaño de vuestra huella ecológica.'),
(8, 'Las viviendas habitadas por muchas personas suelen producir resultados de huella ecológica por persona reducidos, al compartir los recursos de energía, agua, alimentos, etc. Por ejemplo, permiten una compra de alimentos basada en productos frescos y en la adquisición de cantidades elevadas, lo que reduce el desperdicio y la producción de residuos. Pero eso depende mucho de las costumbres de las personas que habitan la casa.'),
(9, 'Las viviendas pequeñas tienen ventajas: son más fáciles de climatizar y de limpiar con un consumo reducido de agua y energía, por ejemplo.'),
(10, 'Una proporción muy elevada de personas en nuestro país viven en pisos de alrededor de 80 metros cuadrados (aunque el tamaño medio de la vivienda es mayor, de unos 140 m2, pero eso incluye viviendas rurales). El consumo de energía y agua dependerá mucho del equipamiento de la vivienda (por ejemplo si tiene o carece de aislamiento) y de las costumbres de sus moradores.'),
(11, 'Las casas grandes, como la tuya, pueden ser grandes sumideros de energía. Por ejemplo, si necesitan más de siete u ocho radiadores de calefacción. Es una buena oportunidad para revisar si están colocados los termostatos necesarios, si paredes y techos están bien aislados, etc.'),
(12, 'A no ser que vivas en una zona extremadamente cálida (las Islas Canarias) la carencia de cualquier sistema de calefacción indica un serio problema de pobreza energética. La pobreza energética es una lacra de nuestra sociedad que debe ser combatida. Aquí tienes ideas para encontrar soluciones, para tí o para otras personas.'),
(13, 'En climas suaves (Costas del sur y Levante y las islas) uno o dos elementos móviles de calefacción bien usados pueden ser suficientes. En climas más duros, esa escasez de elementos calefactores puede indicar un problema de pobreza energética. La pobreza energética es una lacra de nuestra sociedad que debe ser combatida. Aquí tienes ideas para encontrar soluciones, para tí o para otras personas.'),
(14, 'Un sistema de calefacción central implica una huella ecológica reducida con un buen nivel de confort. Cuanto mayor sea el sistema (algunos abarcan barrios enteros) mayor será su eficiencia y el ahorro por cada vivienda servida.'),
(15, 'Un sistema de calefacción individual te permite un control absoluto del gasto. Podrás ahorrar mucho dinero y energía si mejoras el aislamiento de tu vivienda.'),
(16, 'Recuerda que es obligatoria la instalación de repartidores de gastos de calefacción en todos los radiadores de las viviendas con calefacción central. Consisten en termostatos y reguladores que se añaden a los radiadores ya existentes (lo que puede no ser fácil en modelos viejos). Eso implica que pagarás el calor que consumas de verdad, no una estimación a prorrateo.'),
(17, 'La temporada oficial de encendido de calefacciones la fijan los ayuntamientos, y suele ir de octubre a abril. O vives en una zona de alta montaña extremadamente fría, o eres realmente friolero…'),
(18, 'Existen infinidad de soluciones para refrigerar nuestra casa en los meses de canícula sin necesidad de gastar dinero en una costosa instalación de aire acondicionado. Refrescar la casa al amanecer, evitar la entrada del sol, usar ventiladores y evaporadores, son algunas de ellas.'),
(19, 'El aire acondicionado de compresor puede ser una necesidad en determinadas situaciones, pero debería ser usado con parsimonia. Hay muchas soluciones para refrescar nuestra casa mucho más baratas y muy eficaces. NOTA: no instales el compresor del aire acondicionado en el patio de ventilación de tu edificio. Debe ser instalado en la azotea o el tejado. ¡No conviertas la vida de tus vecinos en una cálida y ruidosa pesadilla!'),
(21, 'En esto del clima, te gusta ir a contracorriente. Lo malo es que estás tirando el dinero, derrochando energía y contribuyendo directamente al calentamiento global. Y también hinchando desmesuradamente el tamaño de tu huella ecológica.'),
(22, '¿Sabías que puedes reducir sustancialmente tu factura de calefacción y aire acondicionado con acciones sencillas, muchas de ellas sin coste?'),
(23, 'Tu habilidoso comportamiento con la climatización contribuye a reducir tu huella ecológica y también te hace ahorrar mucho dinero. '),
(24, 'Si no lo has hecho todavía, es el momento de mejorar el aislamiento de tu casa. Dispones de soluciones adaptadas a todas las necesidades y para todos los bolsillos.'),
(25, 'Las ventanas de tu casa son sumideros por donde se escapa la energía que tan cara te cuesta. Pero tranquilo, que hay soluciones. Si no puedes llegar a instalar dobles ventanas o dobles cristales, un poco de bricolaje impedirá las peores fugas.'),
(26, 'Cuantas más “Aes” y más “+” tengan tus aparatos, menor será tu huella energética. Eso sin contar el ahorro de dinero en la factura de la luz.'),
(27, 'Si ninguno de tus electromésticos tiene etiqueta energética clase A, comienza por el frigorífico. Si no es clase “A” o no tiene etiqueta energética de ninguna clase, lo más seguro es que sea un modelo antiguo que está derrochando energía las 24 horas del día. Si es de tamaño estándar te saldrá a cuenta cambiarlo por un modelo clase A+++ y si es posible de tamaño menor. Lo amortizarás en cuatro o cinco años.'),
(28, 'El coche de motor de combustión es la opción más cara y más contaminante que existe para el transporte. Investiga otras opciones si quieres reducir el tamaño de tu huella ecológica y mejorar la vida de tus vecinos (por ejemplo, dejando de envenenarles con los gases que salen del tubo de escapa de tu vehículo.'),
(29, 'La moto (mejor si es pequeña y mejor todavía si es eléctrica) es una opción menos mala para el transporte: ocupa menos espacio y contamina menos. Recuerda: ¡Cuidado con el ruido!'),
(30, 'Eres un pionero usando uno de los llamados VLUEs (Vehículo Ligero Urbano Eléctrico). Son una novedad, pero van a triunfar. Máxima movilidad con el mínimo peso y espacio ocupado.'),
(31, 'Utilizas la mejor opción de transporte, la más barata y menos contaminante. Sácale todo el partido al transporte público: consulta su disponibilidad de horarios y servicios. Lo más sencillo es usar Google Maps, haz clic en el botón “Cómo llegar” y en el icono de transporte público.'),
(32, 'Usando la bicicleta para tu movilidad cotidiana, ahorras mucho dinero, no molestas a nadie con ruido, humos y ocupación de la vía pública y además tu salud mejora notablemente. Sin duda, la bicicleta es el vehículo del futuro en la ciudad.'),
(33, 'Caminar no es una excentricidad, es otra opción para la movilidad en las ciudades. Al igual que en el caso de la bicicleta, ahorras mucho dinero, ni molestas a nadie con ruido, humos y ocupación de la vía pública y además tu salud mejora notablemente. Y no necesitas comprar ningún vehículo: eres tú mismo.'),
(34, 'No hagas mucho caso de la publicidad de coches ecológicos. El principal factor que determina el consumo del vehículo es el tamaño: coche pequeño, coche economizador y menos contaminador.'),
(35, '¿Has pensado en pasarte a la movilidad eléctrica? Cada vez hay más modelos y a mejores precios.'),
(36, 'Es evidente que para tí el coche no un mero medio de transporte, sino algo más. Te chiflan los SUV, los todocaminos, los motores de 400 cv y los cromados. Todo eso está muy bien, siempre que uses tu súpervehículo fuera de la ciudad.  Recuerda que tu huella ecológica se dispara si usas un cochazo para tu movimiento cotidiano.'),
(37, 'Tu coche es eléctrico o híbrido. Enhorabuena, acabas de dar un gran paso para reducir tu huella ecológica.'),
(38, 'Intenta usar tu viejo coche los menos posible, es una verdadera fábrica de contaminantes.'),
(39, 'Te gusta ir solo en tu coche, disfrutando de la intimidad de tu salón privado con ruedas en mitad del atasco. Habría menos atascos si lo compartieras, por cierto. Ir solo en tu coche multiplica tu huella ecológica.'),
(40, 'Compartes tu coche con regularidad, puedes hacerlo con más frecuencia y más seguridad utilizado estas apps.'),
(41, 'Eres aficionado a compartir tu coche, ¿has pensado afiliarte a un sistema de coche compartido o “car sharing”?'),
(42, 'Eres de los que disfrutan yendo a la compra a diario, seguramente conoces todas las tiendas de tu barrio. Es una manera estupenda de comprar, tiras menos comida porque acumulas menos y encuentras oportunidades en precio y calidad imposibles de descubrir de otra manera.'),
(43, 'Ir a la compra con frecuencia y en tiendas próximas a tu domicilio estimula el comercio local y te permite ahorrar dinero y buscar las mejores calidades de los productos.'),
(44, 'Tu pauta de ir a la compra es abrupta: una vez cada varias semanas, coges el coche, conduces hasta el centro comercial y llenas varios carritos hasta los topes. Tienes un arcón congelador de gran capacidad y un frigorífico de dos puertas, pero eso no evita que la posibilidad de que tengas que tirar comida sea mayor que si hicieras la compra con más frecuencia.'),
(45, 'Una cosa es ahorrar agua, y otra no tener ni una triste planta en casa. Las plantas alegran la vista, purifican el aire y amortiguan la temperatura. Tener un par de macetas no cuesta nada y no ocupa sitio.'),
(46, 'Como la mayoría de los seres humanos, disfrutas de las plantas, ya sea en algunas macetas o en un pequeño jardín. Recuerda que el consumo de agua de una casa está en relación directa con la cantidad de plantas que cuidas: practica el riego economizador.'),
(47, 'Tienes un hermoso jardín, pero también un problema de derroche de agua si no has instalado ya un sistema de riego por goteo y algún temporizador. Infórmate aquí. Si de verdad tienes césped inglés y en tu región no llueve los bastante para mantenerlo fresco de manera natural, prueba a cubrir el terreno con plantas autóctonas.'),
(48, 'Ya estás tardando para ir a tu proveedor de habitual de útiles de jardinería para contratar algún sistema de riego economizador, apropiado para el tamaño de tu vergel. Ahorrarás agua y algo de dinero, pero lo principal es que alejarás la amenaza de una posible sequía.'),
(49, 'La ausencia de elementos economizadores de agua en la fontanería de tu casa te está haciendo perder dinero y lo peor de todo, derrochar inútilmente gran cantidad de agua potable valiosa.'),
(50, 'Enhorabuena, parece que tienes controlada la fontanería de tu casa con la instalación de varios artilugios economizadores de agua. No olvides hacer un uso prudente del WC, el principal elemento de consumo de agua en una casa.'),
(51, 'No te gustan las calaveras ni los peces muertos en las etiquetas de los productos de limpieza o bricolage que compras. Es una buena costumbre, porque todo lo que es tóxico para el medio ambiente también lo es para tí'),
(52, 'No te preocupa demasiado la composición de los productos de limpieza y bricolaje que compras. Deberías reducir la adquisición de limpiadores y quitagrasas muy agresivos, insecticidas tóxicos, etc.'),
(53, 'Si no te fijabas en los símbolos de productos peligrosos, aquí tienes los nueve usados oficialmente. Intenta evitar los productos que los lleven en su etiqueta.'),
(54, 'Eres adicto a la carne, lo cual no es bueno para nadie. Resulta muy cara (es el principal gasto en comida, en España), no es bueno comerla en exceso y dispara tu huella ecológica. Producir carne es un importante contribuyente al calentamiento global.'),
(55, 'Como la mayoría de la gente combinas la carne con las verduras para obtener una dieta sana. Reducir tu consumo de carne te permitirá comprarla de mejor calidad y reducir mucho tu huella ecológica. Utiliza las recetas tradicionales para hacer sabrosos guisos con una proporción de carne / vegetales adecuada (por ejemplo, 25% de carne y 75% de vegetales)'),
(56, 'Tu opción, el veganismo, es la de cada vez más gente. Indudablemente es la que tiene una huella ecológica más reducida.'),
(57, 'Sinceramente, te faltan algunas habilidades para ser un buen vecino. No te importa mezclar todos los residuos de tu casa en la misma bolsa y tirarla al contenedor más próximo (esperemos que no la dejes en la calle). Así multiplicas tu huella ecológica, al convertir una potencial colección de residuos separados valiosos (de plástico, vidrio, papel, etc.), en basura mezclada sin valor.'),
(58, 'Algo sí separas, por ejemplo, el papel y cartón o el vidrio. No seas gumia y añade más contenedores de separación, hasta tener la colección completa: papel, vidrio, envases ligeros, materia orgánica y otros especiales (pilas, lámparas, etc.)'),
(59, 'Enhorabuena, se te da bien eso de la separación doméstica de residuos. Aprende más trucos para separar mejor todavía aquí.'),
(60, 'Tu hábito de comprar la comida fresca y sin envasar te permite ahorrar mucho dinero, producir muchos menos residuos y alimentarte de la manera más sana posible.'),
(61, 'Combinas la compra de alimentos frescos con la de empaquetados, como hacemos todos. Podrás aumentar la proporción de productos frescos si te acostumbras a cocinar con más frecuencia. Ten cuidado que cocinar se puede convertir en un vicio adictivo.'),
(62, 'Tu idea de una cena es colocar dentro del microondas algo que has sacado de una caja y esperar unos minutos. Lo malo es que esa costumbre sale muy cara, es muy insana y multiplica tu huella ecológica. Prueba a comprar algo fresco de vez en cuando y cómprate un recetario de cocina.'),
(65, 'Eres un verdadero aficionado al aire acondicionado. Seguro que, cuando no hace mucho calor, puedes otras otras soluciones para refrigerar tu casa más baratas y de de huella ecológica mucho más reducida (ejemplo: un simple ventilador).');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `tipo`) VALUES
(1, 'radio'),
(2, 'checkbox'),
(3, 'select'),
(4, 'range');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoCasa`
--

CREATE TABLE `tipoCasa` (
  `id` int(11) NOT NULL,
  `texto` varchar(100) NOT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoCasa`
--

INSERT INTO `tipoCasa` (`id`, `texto`, `idTexto`) VALUES
(1, 'Un chalet o vivienda aislada', NULL),
(2, 'Un adosado', NULL),
(3, 'Una vivienda en un bloque de pisos', NULL),
(4, 'Una vivienda en una manzana de casas', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ccaa`
--
ALTER TABLE `ccaa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ccaa_paises` (`idPais`);

--
-- Indices de la tabla `conocimientos`
--
ALTER TABLE `conocimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `depende`
--
ALTER TABLE `depende`
  ADD PRIMARY KEY (`id`),
  ADD KEY `depende_pregunta` (`idPregunta`),
  ADD KEY `depende_respuesta` (`idRespuesta`),
  ADD KEY `fk_depende_textoinformativo` (`idTexto`);

--
-- Indices de la tabla `dependencia`
--
ALTER TABLE `dependencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dependencia_idDepende` (`idDepende`),
  ADD KEY `fk_dependencia_idPregunta` (`idPregunta`);

--
-- Indices de la tabla `edad`
--
ALTER TABLE `edad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_edad_textoinformatico` (`idTexto`);

--
-- Indices de la tabla `espacioCasas`
--
ALTER TABLE `espacioCasas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_espacioCasas_textoinformatico` (`idTexto`);

--
-- Indices de la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `numPersonas`
--
ALTER TABLE `numPersonas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_numPersonas_textoinformatico` (`idTexto`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_paises` (`pais`),
  ADD KEY `persona_ccaa` (`ccaa`),
  ADD KEY `persona_tipoCasa` (`tipoCasa`),
  ADD KEY `persona_m2Casa` (`m2Casa`),
  ADD KEY `persona_numPersonas` (`numPersonas`),
  ADD KEY `persona_ingresos` (`ingresos`),
  ADD KEY `persona_conocimientos` (`conocimiento`),
  ADD KEY `persona_studios` (`estudios`),
  ADD KEY `persona_edad` (`edad`);

--
-- Indices de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertence_categoria` (`idCategoria`),
  ADD KEY `pertence_pregunta` (`idPregunta`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pregunta_tipo` (`tipo`);

--
-- Indices de la tabla `responde`
--
ALTER TABLE `responde`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responde_persona` (`idPersona`),
  ADD KEY `responde_respuesta` (`idRespuesta`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `respuesta` (`respuesta`);

--
-- Indices de la tabla `textoInformativo`
--
ALTER TABLE `textoInformativo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoCasa`
--
ALTER TABLE `tipoCasa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipoCasa_textoinformatico` (`idTexto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ccaa`
--
ALTER TABLE `ccaa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `conocimientos`
--
ALTER TABLE `conocimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `depende`
--
ALTER TABLE `depende`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT de la tabla `dependencia`
--
ALTER TABLE `dependencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `edad`
--
ALTER TABLE `edad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `espacioCasas`
--
ALTER TABLE `espacioCasas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `numPersonas`
--
ALTER TABLE `numPersonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `responde`
--
ALTER TABLE `responde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT de la tabla `textoInformativo`
--
ALTER TABLE `textoInformativo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipoCasa`
--
ALTER TABLE `tipoCasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ccaa`
--
ALTER TABLE `ccaa`
  ADD CONSTRAINT `fk_ccaa_paises` FOREIGN KEY (`idPais`) REFERENCES `paises` (`id`);

--
-- Filtros para la tabla `depende`
--
ALTER TABLE `depende`
  ADD CONSTRAINT `depende_pregunta` FOREIGN KEY (`idPregunta`) REFERENCES `pregunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `depende_respuesta` FOREIGN KEY (`idRespuesta`) REFERENCES `respuesta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_depende_textoinformativo` FOREIGN KEY (`idTexto`) REFERENCES `textoInformativo` (`id`);

--
-- Filtros para la tabla `dependencia`
--
ALTER TABLE `dependencia`
  ADD CONSTRAINT `fk_dependencia_idDepende` FOREIGN KEY (`idDepende`) REFERENCES `depende` (`id`),
  ADD CONSTRAINT `fk_dependencia_idPregunta` FOREIGN KEY (`idPregunta`) REFERENCES `pregunta` (`id`);

--
-- Filtros para la tabla `edad`
--
ALTER TABLE `edad`
  ADD CONSTRAINT `fk_edad_textoinformatico` FOREIGN KEY (`idTexto`) REFERENCES `textoInformativo` (`id`);

--
-- Filtros para la tabla `espacioCasas`
--
ALTER TABLE `espacioCasas`
  ADD CONSTRAINT `fk_espacioCasas_textoinformatico` FOREIGN KEY (`idTexto`) REFERENCES `textoInformativo` (`id`);

--
-- Filtros para la tabla `numPersonas`
--
ALTER TABLE `numPersonas`
  ADD CONSTRAINT `fk_numPersonas_textoinformatico` FOREIGN KEY (`idTexto`) REFERENCES `textoInformativo` (`id`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ccaa` FOREIGN KEY (`ccaa`) REFERENCES `ccaa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_conocimientos` FOREIGN KEY (`conocimiento`) REFERENCES `conocimientos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_edad` FOREIGN KEY (`edad`) REFERENCES `edad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_ingresos` FOREIGN KEY (`ingresos`) REFERENCES `ingresos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_m2Casa` FOREIGN KEY (`m2Casa`) REFERENCES `espacioCasas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_numPersonas` FOREIGN KEY (`numPersonas`) REFERENCES `numPersonas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_paises` FOREIGN KEY (`pais`) REFERENCES `paises` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_studios` FOREIGN KEY (`estudios`) REFERENCES `estudios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_tipoCasa` FOREIGN KEY (`tipoCasa`) REFERENCES `tipoCasa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `pertence_categoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pertence_pregunta` FOREIGN KEY (`idPregunta`) REFERENCES `pregunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `fk_pregunta_tipo` FOREIGN KEY (`tipo`) REFERENCES `tipo` (`id`);

--
-- Filtros para la tabla `responde`
--
ALTER TABLE `responde`
  ADD CONSTRAINT `responde_depende` FOREIGN KEY (`idRespuesta`) REFERENCES `depende` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `responde_persona` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipoCasa`
--
ALTER TABLE `tipoCasa`
  ADD CONSTRAINT `fk_tipoCasa_textoinformatico` FOREIGN KEY (`idTexto`) REFERENCES `textoInformativo` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
