-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2015 a las 13:00:56
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dbcms4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad001`
--

CREATE TABLE IF NOT EXISTS `cad001` (
  `uid` int(11) NOT NULL COMMENT 'Identificador usuario',
  `login` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Login de entrada',
  `passwd` char(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Clave de acceso',
  `cedula` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Cedula del usuario',
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre del Usuario',
  `fecinc` datetime DEFAULT NULL COMMENT 'Fecha de inclusion',
  `id_estatus` int(11) DEFAULT NULL COMMENT 'Estado del usuario',
  `fecest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha de estado',
  `observ` char(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Fecha del estado',
  `id_tipou` int(11) DEFAULT NULL COMMENT 'Tipo de usuario',
  `codigo2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Codigo Alterno',
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Correo Electronico'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='usuarios';

--
-- Volcado de datos para la tabla `cad001`
--

INSERT INTO `cad001` (`uid`, `login`, `passwd`, `cedula`, `nombre`, `fecinc`, `id_estatus`, `fecest`, `observ`, `id_tipou`, `codigo2`, `email`) VALUES
(1, 'root', 'e10adc3949ba59abbe56e057f20f883e', '10000001', 'administrador', '2015-08-26 23:15:11', 1, '2015-08-27 03:45:11', '1', 1, NULL, NULL),
(2, 'hector', 'e10adc3949ba59abbe56e057f20f883e', '13646179', 'hector gonzalez', '2015-07-12 14:49:01', 1, '2015-07-12 04:30:00', 'desarrollador n 1', 1, NULL, 'greathector7@gmail.com'),
(3, 'LGARCIA', 'ccb0989662211f61edae2e26d58ea92f', '14470755', 'LEIDY GARCIA', '2015-07-12 18:19:35', 1, '0000-00-00 00:00:00', 'COORDINADORA DESAROLLO INSTITUCIONAL', 1, '1', 'APOYOACADEMICOMSARAGUA@GMAIL.COM'),
(4, 'GBOLIVAR', 'e10adc3949ba59abbe56e057f20f883e', '14683669', 'GRELYS BOLIVAR', '2015-07-12 18:18:37', 1, '0000-00-00 00:00:00', 'CARGA BASICA DEL SISTEMA', 1, '1', 'GRELYSDAYANA220280@GMAIL.COM'),
(5, 'antorcha', '202cb962ac59075b964b07152d234b70', '123457', 'antorcha ñ', '2015-08-02 16:20:16', 1, '2015-08-02 20:50:16', '1', 1, '1', '123@gmail.com'),
(6, 'peluza', '202cb962ac59075b964b07152d234b70', '1234561', 'jose peluche', '2015-07-12 16:42:24', 1, '0000-00-00 00:00:00', '1', 1, '1', 'greathector7@gmail.com'),
(7, 'MESCOBAR', 'c4ca4238a0b923820dcc509a6f75849b', '4422123', 'MAURICIO ESCOBAR', '2015-07-12 18:24:24', 1, '0000-00-00 00:00:00', 'COORDINADOR GENERAL', 1, '1', 'CRMSARAGUA@GMAIL.COM'),
(8, 'VRAMOS', 'c4ca4238a0b923820dcc509a6f75849b', 'E6XYHD67', 'VILMA RAMOS', '2015-07-12 18:25:54', 1, '0000-00-00 00:00:00', 'ASESORA CUBANA', 1, '1', 'VILMAHJE@GMAIL.COM'),
(9, 'hgonzalez', '123', '1364619', 'hector2 gonzalez', '2015-08-10 20:56:44', 0, '2015-08-11 01:26:44', 'director de informatica', 0, NULL, 'greathector7@gmail.com'),
(10, 'bolint', '123456', '12365478985256', 'bolys', '0000-00-00 00:00:00', 0, '2015-08-28 04:34:30', NULL, 1, NULL, 'greathector@gmail.com'),
(11, 'bolist', NULL, NULL, NULL, NULL, NULL, '2015-08-28 04:37:13', NULL, NULL, NULL, NULL),
(12, 'greathector7', NULL, '13646179777', 'hector gonzalez', '0000-00-00 00:00:00', NULL, '2015-08-28 04:53:25', NULL, NULL, NULL, NULL),
(13, 'perroncho', NULL, '11111111111', 'el perro ', '0000-00-00 00:00:00', NULL, '2015-08-28 04:55:57', NULL, NULL, NULL, NULL),
(14, 'perroncho', NULL, '11111111111', 'el perro ', '0000-00-00 00:00:00', NULL, '2015-08-28 05:06:39', NULL, NULL, NULL, NULL),
(15, 'perroncho', NULL, '11111111111', 'el perro ', '0000-00-00 00:00:00', NULL, '2015-08-28 05:16:43', NULL, NULL, NULL, NULL),
(16, 'perroncho', NULL, '11111111111', 'el perro ', '0000-00-00 00:00:00', NULL, '2015-08-28 05:21:41', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad001a1`
--

CREATE TABLE IF NOT EXISTS `cad001a1` (
  `id_estatus` int(11) NOT NULL COMMENT 'id del estatus',
  `nom_estatus` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nombere del estatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cad001a1`
--

INSERT INTO `cad001a1` (`id_estatus`, `nom_estatus`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad001a2`
--

CREATE TABLE IF NOT EXISTS `cad001a2` (
  `id_tipou` int(11) NOT NULL COMMENT 'id tipo usuario',
  `tipou` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tipo de Usuario';

--
-- Volcado de datos para la tabla `cad001a2`
--

INSERT INTO `cad001a2` (`id_tipou`, `tipou`) VALUES
(1, 'Administrador'),
(2, 'Supervisor'),
(3, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad002`
--

CREATE TABLE IF NOT EXISTS `cad002` (
  `codigo` int(11) NOT NULL COMMENT 'Identificados del menu',
  `desc` char(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripcion de menu',
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del Programa',
  `nivel` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Nivel',
  `tipo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P' COMMENT 'Tipo de elemento',
  `iddep` int(11) NOT NULL DEFAULT '0' COMMENT 'Modulo de quien depende',
  `clasif` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A' COMMENT 'Clasificacion del programa',
  `orden` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Orden de colocacion',
  `imagen` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Imagen de menu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='menu';

--
-- Volcado de datos para la tabla `cad002`
--

INSERT INTO `cad002` (`codigo`, `desc`, `id`, `nivel`, `tipo`, `iddep`, `clasif`, `orden`, `imagen`) VALUES
(1, 'Nivel Inicial', 'menu2.php', 0, 'P', 0, 'A', 0, NULL),
(1000, 'Atención', ' ', 0, 'P', 1, 'A', 1000, NULL),
(1011, 'Listado de Atención', 'cms1011.php', 0, 'P', 1000, 'A', 1011, NULL),
(1060, 'Reportes Atencion', ' ', 0, 'P', 1000, 'A', 1060, NULL),
(1061, 'Solicitantes por Rango', 'cms1061.php', 0, 'P', 1060, 'A', 1061, NULL),
(1062, 'Solicitudes por Area', 'cms1062.php', 0, 'P', 1060, 'A', 1062, NULL),
(1063, 'Solicitudes por Tipo', 'cms1063.php', 0, 'P', 1060, 'A', 1063, NULL),
(1080, 'Manteniento Atencion', ' ', 0, 'M', 1000, 'A', 1080, NULL),
(1081, 'Mantenimiento Ciudadano', 'cms1081.php', 0, 'P', 1080, 'A', 1081, NULL),
(1100, 'Gestión', ' ', 0, 'P', 1, 'A', 1100, NULL),
(1101, 'Listado de Gestion', 'cms1101.php', 0, 'P', 1100, 'A', 1101, NULL),
(1160, 'Reportes de Gestión', ' ', 0, 'M', 1100, 'A', 1160, NULL),
(1161, 'Gestion por Rango', 'cms1161.php', 0, 'P', 1160, 'A', 1161, NULL),
(1162, 'Gestion por Area', 'cms1162.php', 0, 'P', 1160, 'A', 1162, NULL),
(1163, 'Gestion por Tipo de Solicitante', 'cms1163.php', 0, 'P', 1160, 'A', 1163, NULL),
(1180, 'Mantenimiento Gestion', ' ', 0, 'M', 1100, 'A', 1180, NULL),
(1181, 'Area de Atencion', 'cms1181.php', 0, 'P', 1180, 'A', 1181, NULL),
(1182, 'Entidades Mision Sucre', 'cms1182.php', 0, 'P', 1180, 'A', 1182, NULL),
(1183, 'PNF', 'cms1183.php', 0, 'P', 1180, 'A', 1183, NULL),
(1184, 'Tipo de Ciudadano', 'cms1184.php', 0, 'P', 1180, 'A', 1184, NULL),
(1185, 'Naturaleza de la Consulta', 'cms1185.php', 0, 'P', 1180, 'A', 1185, NULL),
(1186, 'Estado de Consulta', 'cms1186.php', 0, 'P', 1180, 'A', 1186, NULL),
(1900, 'Administración', ' ', 0, 'P', 1, 'A', 1900, NULL),
(1901, 'Ayuda', 'cms1901.php', 0, 'P', 1900, 'A', 1901, NULL),
(1902, 'Usuarios del Sistema', 'cms1902.php', 0, 'P', 19012, 'A', 1902, NULL),
(1903, 'Menu del Sistema', 'cms1903.php', 0, 'P', 19012, 'A', 1903, NULL),
(19012, 'Mantenimiento Sistema', ' ', 0, 'P', 1900, 'A', 1902, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad002a`
--

CREATE TABLE IF NOT EXISTS `cad002a` (
  `uid` int(11) NOT NULL COMMENT 'id usuario',
  `codigo` int(11) NOT NULL COMMENT 'id permiso',
  `pej` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'ejecucion',
  `incluir` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'incluir',
  `modificar` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'modificar',
  `borrar` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N' COMMENT 'borrar',
  `consulta` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'consultar',
  `certificar` char(1) CHARACTER SET utf8 NOT NULL DEFAULT 'S' COMMENT 'certificar',
  `reversar` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N' COMMENT 'reversar',
  `anular` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N' COMMENT 'anular'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='permisologia';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad004a1`
--

CREATE TABLE IF NOT EXISTS `cad004a1` (
  `codar` tinyint(4) NOT NULL COMMENT 'codigo del area de atencion',
  `ar_desc` varchar(35) COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion del area de atencion'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='areas de trabajo';

--
-- Volcado de datos para la tabla `cad004a1`
--

INSERT INTO `cad004a1` (`codar`, `ar_desc`) VALUES
(1, 'PROCESOS GENERALES'),
(2, 'PROCESOS DE GESTION ADMINISTRATIVAS'),
(3, 'PROCESOS DE GESTION ACADEMICA'),
(4, 'CARGA BASICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad005`
--

CREATE TABLE IF NOT EXISTS `cad005` (
  `codfundacion` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codig de la fundacion mision sucre',
  `descripcion` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion',
  `direccion` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'direccion de la entidad',
  `telefono1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'telefono ',
  `telefono2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'telefono',
  `tipoent` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tipo de entidad',
  `geohoriz` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'coordenada horizontal',
  `geovert` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'coordenada  vertical'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla de Entidades';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad006`
--

CREATE TABLE IF NOT EXISTS `cad006` (
  `ci1` int(11) NOT NULL COMMENT 'cedula del ciudadano',
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nombre',
  `apellido` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'apellido',
  `direccion` varchar(254) COLLATE utf8_unicode_ci NOT NULL COMMENT 'direccion',
  `correoe` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'correo electronico',
  `telf` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'telefono 1',
  `telf1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'telefono 2 local',
  `codpnf` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'codigo pnf',
  `codent` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'codigo de entidad',
  `sexo` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'sexo del ciudadano',
  `anonac` date DEFAULT NULL COMMENT 'año de nacimiento',
  `tipoc` tinyint(4) DEFAULT NULL COMMENT 'Tipo Ciudadano'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ciudadano';

--
-- Volcado de datos para la tabla `cad006`
--

INSERT INTO `cad006` (`ci1`, `nombre`, `apellido`, `direccion`, `correoe`, `telf`, `telf1`, `codpnf`, `codent`, `sexo`, `anonac`, `tipoc`) VALUES
(13646171, 'Hector', 'Gonzalez', 'calle zaraza n 1 santa rita edo aragua', ' ', '04261754752', '02432712532', '102', '5010101', 'M', NULL, 1),
(13646177, 'carolina', 'Gonzalez', 'calle zaraza n 1 santa rita edo aragua', '', '04165305164', '02432717226', '150', '5010101', 'M', '2014-10-29', 1),
(13646179, 'hector', 'gonzalez', '13 de junio calle zaraza n 1', '', '02432717226', '04169432145', '102', '5110403', 'M', '1978-02-23', 1),
(17577131, 'yuraima', 'diaz', 'callejon los raques valencia', '', '04161728463', '02432717226', '102', '5140101', 'F', '1978-10-01', 1),
(19207823, 'yullianna', 'molina', 'el rosal', ' ', '0416236584', NULL, '150', '5010101', 'F', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad006a1`
--

CREATE TABLE IF NOT EXISTS `cad006a1` (
  `codpnf` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo de pnf ',
  `pnf_desc` varchar(253) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Programa Nacional de Formacion';

--
-- Volcado de datos para la tabla `cad006a1`
--

INSERT INTO `cad006a1` (`codpnf`, `pnf_desc`) VALUES
('100', 'TRAYECTO INICIAL'),
('102', 'ADMINISTRACION'),
('103', 'ARTES PLASTICAS'),
('104', 'CONSTRUCCIONES CIVILES'),
('106', 'ELECTRICIDAD'),
('109', 'MECANICA'),
('110', 'COMUNICACION SOCIAL (MODALIDAD DIURNA)'),
('111', 'TECNOLOGIA DE LA PRODUCCION AGROALIMENTARIA'),
('113', 'SISTEMAS E INFORMATICA'),
('116', 'TURISMO'),
('118', 'COMUNICACION SOCIAL (MODALIDAD NOCTURNA Y FINES DE SEMANA)'),
('119', 'ESTUDIOS JURIDICOS (NOCHES Y FINES DE SEMANA)'),
('121', 'GESTION SOCIAL PARA EL DESARROLLO LOCAL (MODALIDAD NOCTURNA Y FINES DE SEMANA)'),
('125', 'PFG EN GAS (MODALIDAD DIURNA)'),
('129', 'ENFERMERIA'),
('130', 'GESTION AMBIENTAL  (MODALIDAD DIURNA)'),
('131', 'GESTION AMBIENTAL  (MODALIDAD NOCTURNA Y FINES DE SEMANA)'),
('133', 'FORMACIÓN DE EDUCADORES (SIN MENCION)'),
('134', 'FORMACIÓN DE EDUCADORES (INICIALES)'),
('135', 'FORMACIÓN DE EDUCADORES (ESPECIAL)'),
('136', 'FORMACIÓN DE EDUCADORES (EDUCACIÓN FÍSICA)'),
('150', 'ACTIVIDAD FISICA Y SALUD'),
('200', 'ESTUDIOS JURIDICOS (DIURNO)'),
('220', 'TRAYECTO INICIAL ENFERMERIA'),
('230', 'GESTION SOCIAL PARA EL DESARROLLO LOCAL (MODALIDAD DIURNA)'),
('234', 'ADMINISTRACION (MALLA NUEVA)'),
('235', 'INFORMATICA'),
('240', 'TRAYECTO INICIAL - ADMINISTRACION'),
('241', 'TRAYECTO INICIAL - INFORMATICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad006a2`
--

CREATE TABLE IF NOT EXISTS `cad006a2` (
  `tipoc` tinyint(4) NOT NULL COMMENT 'Id tipo de ciudadano',
  `tcdesc` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tipos de Ciudadanos';

--
-- Volcado de datos para la tabla `cad006a2`
--

INSERT INTO `cad006a2` (`tipoc`, `tcdesc`) VALUES
(1, 'Publico General'),
(2, 'Triunfadores'),
(3, 'Vigilante'),
(4, 'Operarios'),
(5, 'Docentes Colaboradores'),
(6, 'Coordinadores de Aldeas'),
(7, 'Coordinadores de Eje'),
(8, 'Coordinadores de PNF'),
(9, 'Coordinadores de otros Estados'),
(10, 'Personal de Instituciones'),
(11, 'Equipo Colegiado'),
(12, 'Asesoria del Convenio Cuba Venezuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad008`
--

CREATE TABLE IF NOT EXISTS `cad008` (
  `codent` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo de fundacion mision sucre',
  `ent_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion de la entidad',
  `estados` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'estado de la entidad',
  `municipio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'municipio ',
  `norte` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'vertical',
  `este` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'horizontal',
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tipo de entidad '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Entidades de Mision Sucre';

--
-- Volcado de datos para la tabla `cad008`
--

INSERT INTO `cad008` (`codent`, `ent_desc`, `estados`, `municipio`, `norte`, `este`, `tipo`) VALUES
('5010101', 'ESCUELA DE ARTES Y OFICIOS', 'ARAGUA', 'BOLIVAR', '1130222', '673185', 'e'),
('5020101', 'EB PASTOR RODRIGUEZ MANZO', 'ARAGUA', 'CAMATAGUA', '1082378', '729024', 'e'),
('5030301', 'ANDRES BELLO', 'ARAGUA', 'ATANASIO GIRARDOT', '1134847', '654983', 'e'),
('5030302', 'ATANASIO GIRARDOT', 'ARAGUA', 'ATANASIO GIRARDOT', '1136655', '655272', 'a'),
('5030401', 'ANTONIO JOSE DE SUCRE', 'ARAGUA', 'ATANASIO GIRARDOT', '1133450', '653160', 'e'),
('5030501', 'ALDEA FELIX MARIA PAREDES', 'ARAGUA', 'ATANASIO GIRARDOT', '1131803', '655266', 'e'),
('5030701', 'ALDEA LA FUNDACION MENDOZA', 'ARAGUA', 'ATANASIO GIRARDOT', '1131401', '654418', 'e'),
('5030801', 'LA DEMOCRACIA', 'ARAGUA', 'ATANASIO GIRARDOT', '1134393', '652304', 'e'),
('5030802', 'PRIMERA ALDEA UNIVERSITARIA DE ARAGUA', 'ARAGUA', 'ATANASIO GIRARDOT', '1132955', '652987', 'e'),
('5030803', 'E.B. PILAR PELGRON', 'ARAGUA', 'ATANASIO GIRARDOT', '1132089', '652806', 'e'),
('5040101', 'JOSE ANGEL LAMAS', 'ARAGUA', 'JOSE ANGEL LAMAS', '1123389', '664996', 'a'),
('5050102', '12 DE FEBRERO', 'ARAGUA', 'JOSE FELIX RIBAS', '1131308', '682511', 'e'),
('5050201', 'ESCUELA DE ARTES Y OFICIOS CARMEN PILAR FERNANDEZ', 'ARAGUA', 'JOSE FELIX RIBAS', '1131981', '684525', 'e'),
('5050204', 'GENERAL EN JEFE JOSE FELIX RIBAS', 'ARAGUA', 'JOSE FELIX RIBAS', '1130921', '686348', 'a'),
('5050205', 'U.E.N VICENTE EMILIO SOJO', 'ARAGUA', 'JOSE FELIX RIBAS', '1131411', '684992', 'e'),
('5050501', 'ZUATA', 'ARAGUA', 'JOSE FELIX RIBAS', '1124303', '676230', 'e'),
('5060101', 'JOSE RAFAEL REVENGA', 'ARAGUA', 'JOSE RAFAEL REVENGA', '1132129', '688963', 'a'),
('5070101', 'EB CARLOS GARCIA BARRERA', 'ARAGUA', 'LIBERTADOR', '', '', ''),
('5070201', 'LICEO TRINO CELIS RIOS', 'ARAGUA', 'LIBERTADOR', '1124603', '660388', 'e'),
('5070202', 'LICEO LEON MORATINO', 'ARAGUA', 'LIBERTADOR', '1124090', '655981', 'e'),
('5080102', 'ALDEA EL LIMON', 'ARAGUA', 'MARIO BRICEÃ‘O IRAGORRY', '1136377', '651241', 'a'),
('5090101', 'FRANCISCO ISNARDI', 'ARAGUA', 'SAN CASIMIRO', '1106102', '717711', 'e'),
('5100101', 'ALDEA UNIVERSITARIA SAN SEBASTIAN', 'ARAGUA', 'SAN SEBASTIAN DE LOS REYES', '1099385', '701166', 'a'),
('5110101', 'UE. ESTADO MIRANDA', 'ARAGUA', 'SANTIAGO MARIÃ‘O', '1131513', '667405', 'e'),
('5110102', 'EB REVENGA', 'ARAGUA', 'SANTIAGO MARIÃ‘O', '1130787', '667056', 'e'),
('5110401', 'EPA', 'ARAGUA', 'SANTIAGO MARIÃ‘O', '1130477', '661377', 'e'),
('5110402', 'ROSA AMELIA FLORES', 'ARAGUA', '', '', '', ''),
('5110403', 'MEGA ALDEA EL MACARO', 'ARAGUA', 'SANTIAGO MARIÃ‘O', '1131064', '663888', 'a'),
('5120101', 'SANTOS MICHELENA', 'ARAGUA', 'SANTOS MICHELENA', '1133463', '700239', 'e'),
('5130101', 'GRAN MARISCAL DE AYACUCHO', 'ARAGUA', 'SUCRE', '1125306', '668919', 'a'),
('5130104', 'LBN RAFAEL HERNANDEZ LEON', 'ARAGUA', '', '', '', ''),
('5140101', 'U. E. N. ELIZABETH VON KHELLER', 'ARAGUA', 'TOVAR', '1151713', '687195', 'e'),
('5150102', 'JOSE RAFAEL NUÃ‘EZ TENORIO', 'ARAGUA', 'URDANETA', '1049184', '723662', 'e'),
('5160101', 'ARISTIDES ROJAS', 'ARAGUA', '', '', '', ''),
('5160104', 'ALBERTO SMITH', 'ARAGUA', '', '', '', ''),
('5160105', 'ALDEA EZEQUIEL ZAMORA', 'ARAGUA', 'ZAMORA', '1108309', '665293', 'a'),
('5160501', 'ALDEA MAGDALENO', 'ARAGUA', 'ZAMORA', '1116294', '652104', 'e'),
('5170101', 'VIRGEN DEL ROSARIO FE Y ALEGRIA', 'ARAGUA', 'FRANCISCO LINARES ALCANTARA', '1129372', '659286', 'e'),
('5170102', 'LEONARDO RUIZ PINEDA', 'ARAGUA', '', '', '', ''),
('5170103', 'PARMANACAY', 'ARAGUA', '', '', '', ''),
('5170104', 'EBB ARTURO SARCOS VILLENA', 'ARAGUA', 'FRANCISCO LINARES ALCANTARA', '1129151', '656734', 'e'),
('5180101', 'CESAR ZUMETA', 'ARAGUA', 'OCUMARE DE LA COSTA', '1155931', '634901', 'e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad009`
--

CREATE TABLE IF NOT EXISTS `cad009` (
  `codla` int(11) NOT NULL COMMENT 'codigo listado de atencion',
  `fecha` datetime NOT NULL COMMENT 'fecha de consulta',
  `ci` int(11) NOT NULL COMMENT 'cedula sde solicitante',
  `codar` tinyint(4) NOT NULL COMMENT 'codigo de áreas de atencion',
  `nacon` int(11) NOT NULL COMMENT 'naturaleza de consult-',
  `descon` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion de consulta',
  `rescon` text COLLATE utf8_unicode_ci COMMENT 'respuesta de consulta',
  `estcon` int(11) NOT NULL COMMENT 'estado de consulta'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Maestro Listado Atencion';

--
-- Volcado de datos para la tabla `cad009`
--

INSERT INTO `cad009` (`codla`, `fecha`, `ci`, `codar`, `nacon`, `descon`, `rescon`, `estcon`) VALUES
(1, '2014-11-01 00:00:00', 123456789, 0, 1, 'banco amarillo', NULL, 1),
(2, '2014-11-01 00:00:00', 123456789, 0, 1, 'banco amarillo', NULL, 1),
(3, '2014-01-11 00:00:00', 123456789, 0, 1, 'banco azul', NULL, 1),
(4, '2014-11-01 10:29:00', 123456789, 0, 1, 'color de hormiga', NULL, 1),
(5, '2014-11-01 11:23:00', 123456789, 0, 3, 'perro azul', NULL, 1),
(6, '2014-11-04 02:27:00', 13646179, 1, 5, 'se necesita revisar el tanque por que la bomba no prende', NULL, 1),
(7, '2014-11-04 02:32:00', 13646179, 1, 6, 'no se necesitan mas carros que los que logremos producir', NULL, 1),
(8, '2014-11-04 02:35:00', 17577131, 1, 6, 'se necesitan mas aceras para poder caminar', NULL, 1),
(9, '2014-11-04 04:45:00', 13646179, 1, 5, 'falatan estudiantes en la aldea', NULL, 1),
(10, '2014-11-04 05:00:00', 136461797, 1, 5, 'caminos en la pradera', NULL, 1),
(11, '2014-11-04 05:33:00', 13646179, 1, 5, 'canasta ', NULL, 1),
(12, '2014-11-11 09:12:00', 19207823, 1, 6, '12254125', NULL, 1),
(13, '2015-01-28 10:07:00', 13646179, 1, 5, 'revision de problema con los profesores', NULL, 1),
(14, '2015-01-28 10:11:00', 13646179, 3, 1, 'notas faltande de los profesores luis etick', NULL, 1),
(15, '2015-01-31 03:58:00', 13646179, 1, 6, 'cambio de periodo', NULL, 1),
(16, '2015-01-31 03:59:00', 13646177, 1, 5, 'personal  medico ausente', NULL, 1),
(17, '2015-02-08 02:28:00', 13646179, 3, 4, 'profesor chacon no me da clase s desde hace 3 meses', NULL, 1),
(18, '2015-02-15 04:49:00', 13646179, 1, 6, 'perro con hambre', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad009a1`
--

CREATE TABLE IF NOT EXISTS `cad009a1` (
  `nacon` int(11) NOT NULL COMMENT 'Id Naturaleza de la Consulta',
  `area` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area de atencion asociada',
  `nacon_desc` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Listado Atencion Auxiliar Naturaleza de Consulta';

--
-- Volcado de datos para la tabla `cad009a1`
--

INSERT INTO `cad009a1` (`nacon`, `area`, `nacon_desc`) VALUES
(1, '3', 'Docentes no entregan Calificaciones'),
(2, '3', 'Docentes no cargan en el Sistema Sucre'),
(3, '3', 'Ausencia de Registros de Evaluacion'),
(4, '3', 'Desvio del Contenido Programatico'),
(5, '1', 'Requerimientos Aldeas'),
(6, '1', 'Requerimientos Ejes'),
(7, '2', 'Deuda Coordinadores'),
(8, '2', 'Deudas Vigilantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad009a2`
--

CREATE TABLE IF NOT EXISTS `cad009a2` (
  `estcon` int(11) NOT NULL COMMENT 'id estado de la consulta',
  `econ_desc` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion del estado'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Listado Atencion Auxiliar Estado Consulta';

--
-- Volcado de datos para la tabla `cad009a2`
--

INSERT INTO `cad009a2` (`estcon`, `econ_desc`) VALUES
(1, 'En Espera'),
(2, 'Atendido en Espera'),
(3, 'Atendido Pendiente'),
(4, 'Atendido con Respuesta '),
(5, 'Atendido Solucionado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad009a3`
--

CREATE TABLE IF NOT EXISTS `cad009a3` (
  `idh` int(11) NOT NULL COMMENT 'Id Historico de consulta',
  `codla` int(11) NOT NULL COMMENT 'codigo listado de atencion',
  `fechae` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fecha de estado',
  `estcon` int(11) NOT NULL COMMENT 'estado consulta',
  `detalle` int(11) NOT NULL COMMENT 'descripcion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Histórico Listado de Atención';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cad009a4`
--

CREATE TABLE IF NOT EXISTS `cad009a4` (
  `ida1` int(11) NOT NULL COMMENT 'id solicitante ',
  `codla` int(11) NOT NULL COMMENT 'n del listado de atencion ',
  `ci1` int(11) NOT NULL COMMENT 'ci de identidad de ciudadano'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Listado de atencion Solicitantes';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cad001`
--
ALTER TABLE `cad001`
  ADD PRIMARY KEY (`uid`), ADD KEY `login_cd1` (`login`), ADD KEY `cedula_cd1` (`cedula`);

--
-- Indices de la tabla `cad001a1`
--
ALTER TABLE `cad001a1`
  ADD PRIMARY KEY (`id_estatus`);

--
-- Indices de la tabla `cad001a2`
--
ALTER TABLE `cad001a2`
  ADD PRIMARY KEY (`id_tipou`);

--
-- Indices de la tabla `cad002`
--
ALTER TABLE `cad002`
  ADD PRIMARY KEY (`codigo`), ADD KEY `cd2_id` (`id`) USING BTREE, ADD KEY `cd2_orden` (`iddep`,`orden`) USING BTREE;

--
-- Indices de la tabla `cad002a`
--
ALTER TABLE `cad002a`
  ADD PRIMARY KEY (`uid`,`codigo`), ADD KEY `cd3_prog` (`codigo`);

--
-- Indices de la tabla `cad004a1`
--
ALTER TABLE `cad004a1`
  ADD PRIMARY KEY (`codar`);

--
-- Indices de la tabla `cad005`
--
ALTER TABLE `cad005`
  ADD PRIMARY KEY (`codfundacion`);

--
-- Indices de la tabla `cad006`
--
ALTER TABLE `cad006`
  ADD PRIMARY KEY (`ci1`);

--
-- Indices de la tabla `cad006a1`
--
ALTER TABLE `cad006a1`
  ADD PRIMARY KEY (`codpnf`);

--
-- Indices de la tabla `cad006a2`
--
ALTER TABLE `cad006a2`
  ADD PRIMARY KEY (`tipoc`);

--
-- Indices de la tabla `cad008`
--
ALTER TABLE `cad008`
  ADD PRIMARY KEY (`codent`);

--
-- Indices de la tabla `cad009`
--
ALTER TABLE `cad009`
  ADD PRIMARY KEY (`codla`,`ci`,`codar`), ADD UNIQUE KEY `codla` (`codla`);

--
-- Indices de la tabla `cad009a1`
--
ALTER TABLE `cad009a1`
  ADD PRIMARY KEY (`nacon`);

--
-- Indices de la tabla `cad009a2`
--
ALTER TABLE `cad009a2`
  ADD PRIMARY KEY (`estcon`), ADD UNIQUE KEY `estcon` (`estcon`);

--
-- Indices de la tabla `cad009a3`
--
ALTER TABLE `cad009a3`
  ADD PRIMARY KEY (`idh`), ADD UNIQUE KEY `codla` (`codla`);

--
-- Indices de la tabla `cad009a4`
--
ALTER TABLE `cad009a4`
  ADD PRIMARY KEY (`ida1`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cad001`
--
ALTER TABLE `cad001`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador usuario',AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `cad004a1`
--
ALTER TABLE `cad004a1`
  MODIFY `codar` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'codigo del area de atencion',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `cad006a2`
--
ALTER TABLE `cad006a2`
  MODIFY `tipoc` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Id tipo de ciudadano',AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `cad009`
--
ALTER TABLE `cad009`
  MODIFY `codla` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codigo listado de atencion',AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `cad009a1`
--
ALTER TABLE `cad009a1`
  MODIFY `nacon` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id Naturaleza de la Consulta',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `cad009a2`
--
ALTER TABLE `cad009a2`
  MODIFY `estcon` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id estado de la consulta',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `cad009a3`
--
ALTER TABLE `cad009a3`
  MODIFY `idh` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id Historico de consulta';
--
-- AUTO_INCREMENT de la tabla `cad009a4`
--
ALTER TABLE `cad009a4`
  MODIFY `ida1` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id solicitante ';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
