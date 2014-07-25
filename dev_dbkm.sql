-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-03-2014 a las 20:31:08
-- Versión del servidor: 5.5.20
-- Versión de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dev_dbkm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE IF NOT EXISTS `acceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del acceso',
  `usuario_id` int(11) NOT NULL COMMENT 'Identificador del usuario que accede',
  `tipo_acceso` int(1) NOT NULL DEFAULT '1' COMMENT 'Tipo de acceso (entrata o salida)',
  `ip` varchar(45) DEFAULT NULL COMMENT 'Dirección IP del usuario que ingresa',
  `registrado_at` datetime DEFAULT NULL COMMENT 'Fecha de registro del acceso',
  PRIMARY KEY (`id`),
  KEY `fk_acceso_usuario_idx` (`usuario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que registra los accesos de los usuarios al sistema' AUTO_INCREMENT=81 ;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`id`, `usuario_id`, `tipo_acceso`, `ip`, `registrado_at`) VALUES
(1, 2, 1, '127.0.0.1', '2014-01-14 17:32:30'),
(2, 2, 2, '127.0.0.1', '2014-01-14 17:35:10'),
(3, 2, 1, '127.0.0.1', '2014-01-14 17:36:32'),
(4, 2, 2, '127.0.0.1', '2014-01-14 17:51:55'),
(5, 2, 1, '127.0.0.1', '2014-01-15 09:12:20'),
(6, 2, 1, '127.0.0.1', '2014-01-24 11:25:59'),
(7, 2, 2, '127.0.0.1', '2014-01-24 11:28:08'),
(8, 3, 1, '127.0.0.1', '2014-01-24 11:28:14'),
(9, 3, 2, '127.0.0.1', '2014-01-24 11:28:22'),
(10, 2, 1, '127.0.0.1', '2014-01-24 11:28:28'),
(11, 2, 2, '127.0.0.1', '2014-01-24 11:34:52'),
(12, 3, 1, '127.0.0.1', '2014-01-24 11:34:57'),
(13, 3, 2, '127.0.0.1', '2014-01-24 11:35:03'),
(14, 2, 1, '127.0.0.1', '2014-01-24 11:35:07'),
(15, 2, 2, '127.0.0.1', '2014-01-24 11:40:23'),
(16, 3, 1, '127.0.0.1', '2014-01-24 11:40:27'),
(17, 3, 2, '127.0.0.1', '2014-01-24 11:40:37'),
(18, 2, 1, '127.0.0.1', '2014-01-24 11:40:42'),
(19, 2, 2, '127.0.0.1', '2014-01-24 11:41:02'),
(20, 3, 1, '127.0.0.1', '2014-01-24 11:41:08'),
(21, 3, 2, '127.0.0.1', '2014-01-24 11:41:12'),
(22, 2, 1, '127.0.0.1', '2014-01-24 11:41:17'),
(23, 2, 2, '127.0.0.1', '2014-01-24 11:47:06'),
(24, 3, 1, '127.0.0.1', '2014-01-24 11:47:10'),
(25, 3, 2, '127.0.0.1', '2014-01-24 11:47:14'),
(26, 2, 1, '127.0.0.1', '2014-01-24 11:47:20'),
(27, 2, 2, '127.0.0.1', '2014-01-24 12:07:54'),
(28, 3, 1, '127.0.0.1', '2014-01-24 12:07:59'),
(29, 3, 2, '127.0.0.1', '2014-01-24 12:08:07'),
(30, 2, 1, '127.0.0.1', '2014-01-24 12:08:12'),
(31, 2, 2, '127.0.0.1', '2014-01-24 12:21:20'),
(32, 4, 1, '127.0.0.1', '2014-01-24 12:21:27'),
(33, 4, 2, '127.0.0.1', '2014-01-24 12:21:34'),
(34, 3, 1, '127.0.0.1', '2014-01-24 12:21:39'),
(35, 3, 2, '127.0.0.1', '2014-01-24 12:28:21'),
(36, 2, 1, '127.0.0.1', '2014-01-24 12:28:26'),
(37, 2, 2, '127.0.0.1', '2014-01-24 12:59:09'),
(38, 2, 1, '127.0.0.1', '2014-03-06 09:07:19'),
(39, 2, 2, '127.0.0.1', '2014-03-06 09:22:29'),
(40, 4, 1, '127.0.0.1', '2014-03-06 14:29:56'),
(41, 4, 2, '127.0.0.1', '2014-03-06 14:30:03'),
(42, 4, 1, '127.0.0.1', '2014-03-06 14:32:18'),
(43, 4, 2, '127.0.0.1', '2014-03-06 14:33:18'),
(44, 3, 1, '127.0.0.1', '2014-03-06 14:33:24'),
(45, 3, 2, '127.0.0.1', '2014-03-06 14:33:31'),
(46, 2, 1, '127.0.0.1', '2014-03-06 14:34:52'),
(47, 2, 2, '127.0.0.1', '2014-03-06 14:36:05'),
(48, 2, 1, '127.0.0.1', '2014-03-06 14:36:33'),
(49, 2, 2, '127.0.0.1', '2014-03-06 14:37:17'),
(50, 3, 1, '127.0.0.1', '2014-03-06 14:38:35'),
(51, 3, 2, '127.0.0.1', '2014-03-06 14:38:46'),
(52, 2, 1, '127.0.0.1', '2014-03-06 14:38:55'),
(53, 2, 2, '127.0.0.1', '2014-03-06 14:41:16'),
(54, 3, 1, '127.0.0.1', '2014-03-06 14:41:28'),
(55, 3, 1, '127.0.0.1', '2014-03-06 14:44:46'),
(56, 3, 2, '127.0.0.1', '2014-03-06 15:05:28'),
(57, 4, 1, '127.0.0.1', '2014-03-06 15:06:03'),
(58, 4, 2, '127.0.0.1', '2014-03-06 15:08:21'),
(59, 2, 1, '127.0.0.1', '2014-03-06 15:09:39'),
(60, 2, 2, '127.0.0.1', '2014-03-06 15:10:30'),
(61, 4, 1, '127.0.0.1', '2014-03-06 15:11:43'),
(62, 4, 2, '127.0.0.1', '2014-03-06 15:12:18'),
(63, 4, 1, '127.0.0.1', '2014-03-06 15:12:54'),
(64, 4, 2, '127.0.0.1', '2014-03-06 15:13:21'),
(65, 3, 1, '127.0.0.1', '2014-03-07 11:15:02'),
(66, 3, 2, '127.0.0.1', '2014-03-07 11:15:28'),
(67, 2, 1, '127.0.0.1', '2014-03-07 11:16:24'),
(68, 2, 2, '127.0.0.1', '2014-03-07 11:16:53'),
(69, 3, 1, '127.0.0.1', '2014-03-07 11:16:57'),
(70, 3, 2, '127.0.0.1', '2014-03-07 11:17:46'),
(71, 3, 1, '127.0.0.1', '2014-03-07 11:17:52'),
(72, 3, 2, '127.0.0.1', '2014-03-07 11:19:24'),
(73, 3, 1, '127.0.0.1', '2014-03-10 09:54:41'),
(74, 3, 2, '127.0.0.1', '2014-03-10 09:56:00'),
(75, 4, 1, '127.0.0.1', '2014-03-10 09:56:06'),
(76, 4, 2, '127.0.0.1', '2014-03-10 09:56:32'),
(77, 2, 1, '127.0.0.1', '2014-03-10 09:56:36'),
(78, 2, 2, '127.0.0.1', '2014-03-10 09:56:40'),
(79, 2, 1, '127.0.0.1', '2014-03-11 15:16:36'),
(80, 2, 2, '127.0.0.1', '2014-03-11 15:18:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backup`
--

CREATE TABLE IF NOT EXISTS `backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `denominacion` varchar(200) NOT NULL,
  `tamano` varchar(45) DEFAULT NULL,
  `archivo` varchar(45) NOT NULL,
  `registrado_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_backup_usuario_idx` (`usuario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene las copias de seguridad del sistema' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `backup`
--

INSERT INTO `backup` (`id`, `usuario_id`, `denominacion`, `tamano`, `archivo`, `registrado_at`) VALUES
(1, 2, 'Sistema inicial', '4,09 KB', 'backup-1.sql.gz', '2013-01-01 00:00:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE IF NOT EXISTS `ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la ciudad',
  `ciudad` varchar(45) NOT NULL COMMENT 'Nombre de la cuidad',
  `registrado_at` datetime DEFAULT NULL COMMENT 'Fecha de registro',
  `modificado_in` datetime DEFAULT NULL COMMENT 'Fecha de la última modificación',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene las ciudades que se manejan del sistema' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `ciudad`, `registrado_at`, `modificado_in`) VALUES
(1, 'Ocaña', '2013-01-01 00:00:01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la empresa',
  `razon_social` varchar(100) NOT NULL COMMENT 'Nombre de la empresa',
  `siglas` varchar(45) DEFAULT NULL COMMENT 'Siglas del nombre de la empresa',
  `nit` varchar(15) NOT NULL COMMENT 'Número de identificación tributaria de la empresa',
  `dv` int(2) DEFAULT NULL COMMENT 'Digito de verificación del NIT',
  `representante_legal` varchar(100) NOT NULL COMMENT 'Nombre del representante legal de la empresa',
  `nuip` bigint(20) NOT NULL COMMENT 'Número de identificación personal',
  `tipo_nuip_id` int(1) NOT NULL COMMENT 'Tipo de identificación',
  `pagina_web` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `registrado_at` varchar(45) DEFAULT NULL,
  `modificado_in` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empresa_tipo_nuip_idx` (`tipo_nuip_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene la información básica de la empresa' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `razon_social`, `siglas`, `nit`, `dv`, `representante_legal`, `nuip`, `tipo_nuip_id`, `pagina_web`, `logo`, `registrado_at`, `modificado_in`) VALUES
(1, 'Nombre de la Empresa', 'Empresa LTDA', '1091652165', 6, 'Iván David Meléndez', 1091652165, 1, 'www.dailyscript.com.co', 'default.png', '2013-01-01 00:00:01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_usuario`
--

CREATE TABLE IF NOT EXISTS `estado_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del estado del usuario',
  `usuario_id` int(11) NOT NULL COMMENT 'Identificador del usuario',
  `estado_usuario` int(11) NOT NULL COMMENT 'Código del estado del usuario',
  `descripcion` varchar(100) NOT NULL COMMENT 'Motivo del cambio de estado',
  `fecha_estado_at` datetime DEFAULT NULL COMMENT 'Fecha del cambio de estado',
  PRIMARY KEY (`id`),
  KEY `fk_estado_usuario_usuario_idx` (`usuario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los estados de los usuarios' AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `estado_usuario`
--

INSERT INTO `estado_usuario` (`id`, `usuario_id`, `estado_usuario`, `descripcion`, `fecha_estado_at`) VALUES
(1, 1, 2, 'Bloqueado por ser un usuario sin privilegios', '2013-01-01 00:00:01'),
(2, 2, 1, 'Activo por ser el Super Usuario del sistema', '2013-01-01 00:00:01'),
(3, 3, 1, 'Activado por registro inicial', '2014-01-14 17:42:04'),
(4, 4, 1, 'Activado por registro inicial', '2014-01-24 12:21:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del menú',
  `menu_id` int(11) DEFAULT NULL COMMENT 'Identificador del menú padre',
  `recurso_id` int(11) DEFAULT NULL COMMENT 'Identificador del recurso',
  `menu` varchar(45) NOT NULL COMMENT 'Texto a mostrar del menú',
  `url` varchar(60) DEFAULT NULL COMMENT 'Url del menú',
  `posicion` int(11) DEFAULT '0' COMMENT 'Posisión dentro de otros items',
  `icono` varchar(45) DEFAULT NULL COMMENT 'Icono a mostrar ',
  `activo` int(1) NOT NULL DEFAULT '1' COMMENT 'Menú activo o inactivo',
  `visibilidad` int(1) NOT NULL DEFAULT '1' COMMENT 'Indica si el menú se muestra en el backend o en el frontend',
  PRIMARY KEY (`id`),
  KEY `fk_menu_recurso_idx` (`recurso_id`),
  KEY `fk_menu_menu_idx` (`menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los menú para los usuarios' AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `menu_id`, `recurso_id`, `menu`, `url`, `posicion`, `icono`, `activo`, `visibilidad`) VALUES
(1, NULL, NULL, 'Dashboard', '#', 10, 'icon-home', 1, 1),
(2, 1, 2, 'Dashboard', 'dashboard/', 11, 'icon-home', 1, 1),
(3, NULL, NULL, 'Sistema', '#', 900, 'icon-cogs', 1, 1),
(4, 3, 4, 'Accesos', 'sistema/acceso/listar/', 901, 'icon-exchange', 1, 1),
(5, 3, 5, 'Auditorías', 'sistema/auditoria/', 902, 'icon-eye-open', 1, 1),
(6, 3, 6, 'Backups', 'sistema/backup/listar/', 903, 'icon-hdd', 1, 1),
(7, 3, 7, 'Mantenimiento', 'sistema/mantenimiento/', 904, 'icon-bolt', 1, 1),
(8, 3, 8, 'Menús', 'sistema/menu/listar/', 905, 'icon-list', 1, 1),
(9, 3, 9, 'Perfiles', 'sistema/perfil/listar/', 906, 'icon-group', 1, 1),
(10, 3, 10, 'Permisos', 'sistema/privilegio/listar/', 907, 'icon-magic', 1, 1),
(11, 3, 11, 'Recursos', 'sistema/recurso/listar/', 908, 'icon-lock', 1, 1),
(12, 3, 12, 'Usuarios', 'sistema/usuario/listar/', 909, 'icon-user', 1, 1),
(13, 3, 13, 'Visor de sucesos', 'sistema/sucesos/', 910, 'icon-filter', 1, 1),
(14, 3, 14, 'Sistema', 'sistema/configuracion/', 911, 'icon-wrench', 1, 1),
(15, NULL, NULL, 'Configuraciones', '#', 800, 'icon-wrench', 1, 1),
(16, 15, 15, 'Empresa', 'config/empresa/', 801, 'icon-briefcase', 1, 1),
(17, 15, 16, 'Sucursales', 'config/sucursal/listar/', 802, 'icon-sitemap', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del perfil',
  `perfil` varchar(45) NOT NULL COMMENT 'Nombre del perfil',
  `estado` int(1) NOT NULL DEFAULT '1' COMMENT 'Indica si el perfil esta activo o inactivo',
  `plantilla` varchar(45) DEFAULT 'default' COMMENT 'Plantilla para usar en el sitema',
  `registrado_at` datetime DEFAULT NULL COMMENT 'Fecha de registro del perfil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los grupos de los usuarios' AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `perfil`, `estado`, `plantilla`, `registrado_at`) VALUES
(1, 'Super Usuario', 1, 'default', '2013-01-01 00:00:01'),
(2, 'prueba', 1, 'default', '2014-01-14 17:40:01'),
(3, 'proesad', 1, 'default', '2014-01-24 12:18:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `nuip` bigint(20) NOT NULL COMMENT 'Número de identificación personal',
  `tipo_nuip_id` int(11) NOT NULL COMMENT 'Tipo de identificación',
  `telefono` varchar(45) DEFAULT NULL,
  `fotografia` varchar(45) DEFAULT 'default.png' COMMENT 'Fotografía',
  `registrado_at` datetime DEFAULT NULL,
  `modificado_in` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_persona_tipo_nuip_idx` (`tipo_nuip_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene las personas que interactúan con el sistema' AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `nuip`, `tipo_nuip_id`, `telefono`, `fotografia`, `registrado_at`, `modificado_in`) VALUES
(1, 'Error', 'Error', 1010101010, 1, NULL, 'default.png', '2013-01-01 00:00:01', NULL),
(2, 'Iván David', 'Meléndez', 1091652165, 1, NULL, 'default.png', '2013-01-01 00:00:01', NULL),
(3, 'jhamerli', 'rodriguez de la cruz', 44369261, 5, NULL, 'default.png', '2014-01-14 17:42:04', '2014-03-07 11:16:50'),
(4, 'Ian Danny', 'Cruz Antazu', 42563528, 5, NULL, 'default.png', '2014-01-24 12:21:00', '2014-03-10 09:55:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

CREATE TABLE IF NOT EXISTS `recurso` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del recurso',
  `modulo` varchar(45) DEFAULT NULL COMMENT 'Nombre del módulo',
  `controlador` varchar(45) DEFAULT NULL COMMENT 'Nombre del controlador',
  `accion` varchar(45) DEFAULT NULL COMMENT 'Nombre de la acción',
  `recurso` varchar(100) DEFAULT NULL COMMENT 'Nombre del recurso',
  `descripcion` text NOT NULL COMMENT 'Descripción del recurso',
  `activo` int(1) NOT NULL DEFAULT '1' COMMENT 'Estado del recurso',
  `registrado_at` datetime DEFAULT NULL COMMENT 'Fecha de registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los recursos a los que acceden los usuarios' AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `recurso`
--

INSERT INTO `recurso` (`id`, `modulo`, `controlador`, `accion`, `recurso`, `descripcion`, `activo`, `registrado_at`) VALUES
(1, '*', NULL, NULL, '*', 'Comodín para la administración total (usar con cuidado)', 1, '2013-01-01 00:00:01'),
(2, 'dashboard', '*', '*', 'dashboard/*/*', 'Página principal del sistema', 1, '2013-01-01 00:00:01'),
(3, 'sistema', 'mi_cuenta', '*', 'sistema/mi_cuenta/*', 'Gestión de la cuenta del usuario logueado', 1, '2013-01-01 00:00:01'),
(4, 'sistema', 'acceso', '*', 'sistema/acceso/*', 'Submódulo para la gestión de ingresos al sistema', 1, '2013-01-01 00:00:01'),
(5, 'sistema', 'auditoria', '*', 'sistema/auditoria/*', 'Submódulo para el control de las acciones de los usuarios', 1, '2013-01-01 00:00:01'),
(6, 'sistema', 'backup', '*', 'sistema/backup/*', 'Submódulo para la gestión de las copias de seguridad', 1, '2013-01-01 00:00:01'),
(7, 'sistema', 'mantenimiento', '*', 'sistema/mantenimiento/*', 'Submódulo para el mantenimiento de las tablas', 1, '2013-01-01 00:00:01'),
(8, 'sistema', 'menu', '*', 'sistema/menu/*', 'Submódulo del sistema para la creación de menús', 1, '2013-01-01 00:00:01'),
(9, 'sistema', 'perfil', '*', 'sistema/perfil/*', 'Submódulo del sistema para los perfiles de usuarios', 1, '2013-01-01 00:00:01'),
(10, 'sistema', 'privilegio', '*', 'sistema/privilegio/*', 'Submódulo del sistema para asignar recursos a los perfiles', 1, '2013-01-01 00:00:01'),
(11, 'sistema', 'recurso', '*', 'sistema/recurso/*', 'Submódulo del sistema para la gestión de los recursos', 1, '2013-01-01 00:00:01'),
(12, 'sistema', 'usuario', '*', 'sistema/usuario/*', 'Submódulo para la administración de los usuarios del sistema', 1, '2013-01-01 00:00:01'),
(13, 'sistema', 'sucesos', '*', 'sistema/suceso/*', 'Submódulo para el listado de los logs del sistema', 1, '2013-01-01 00:00:01'),
(14, 'sistema', 'configuracion', '*', 'sistema/configuracion/*', 'Submódulo para la configuración de la aplicación (.ini)', 1, '2013-01-01 00:00:01'),
(15, 'config', 'empresa', '*', 'config/empresa/*', 'Submódulo para la configuración de la información de la empresa', 1, '2013-01-01 00:00:01'),
(16, 'config', 'sucursal', '*', 'config/sucursal/*', 'Submódulo para la administración de las sucursales', 1, '2013-01-01 00:00:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso_perfil`
--

CREATE TABLE IF NOT EXISTS `recurso_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recurso_id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL,
  `registrado_at` datetime DEFAULT NULL,
  `modificado_in` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_recurso_perfil_recurso_idx` (`recurso_id`),
  KEY `fk_recurso_perfil_perfil_idx` (`perfil_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los recursos del usuario en el sistema segun su perfl' AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `recurso_perfil`
--

INSERT INTO `recurso_perfil` (`id`, `recurso_id`, `perfil_id`, `registrado_at`, `modificado_in`) VALUES
(1, 1, 1, '2013-01-01 00:00:01', NULL),
(2, 2, 2, '2014-01-14 17:40:01', NULL),
(11, 2, 3, '2014-01-24 12:18:05', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE IF NOT EXISTS `sucursal` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificación de la sucursal',
  `empresa_id` int(11) NOT NULL COMMENT 'Identificador de la empresa',
  `sucursal` varchar(45) NOT NULL COMMENT 'Nombre de la sucursal',
  `sucursal_slug` varchar(45) DEFAULT NULL COMMENT 'Slug de la sucursal',
  `direccion` varchar(45) DEFAULT NULL COMMENT 'Dirección de la sucursal',
  `telefono` varchar(45) DEFAULT NULL COMMENT 'Número del teléfono',
  `fax` varchar(45) DEFAULT NULL COMMENT 'Número del fax',
  `celular` varchar(45) DEFAULT NULL COMMENT 'Número de celular',
  `ciudad_id` int(11) NOT NULL COMMENT 'Identificador de la ciudad',
  `registrado_at` datetime DEFAULT NULL COMMENT 'Fecha de registro',
  `modificado_in` datetime DEFAULT NULL COMMENT 'Fecha de la última modificación',
  PRIMARY KEY (`id`),
  KEY `fk_sucursal_empresa_idx` (`empresa_id`),
  KEY `fk_sucursal_ciudad_idx` (`ciudad_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene las sucursales de la empresa' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id`, `empresa_id`, `sucursal`, `sucursal_slug`, `direccion`, `telefono`, `fax`, `celular`, `ciudad_id`, `registrado_at`, `modificado_in`) VALUES
(1, 1, 'Oficina Principal', 'oficina-principal', 'Dirección', '3162404183', '3162404183', '3162404183', 1, '2013-01-01 00:00:01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_nuip`
--

CREATE TABLE IF NOT EXISTS `tipo_nuip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_nuip` varchar(45) NOT NULL COMMENT 'Nombre del tipo de identificación',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los tipos de identificación de las personas' AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tipo_nuip`
--

INSERT INTO `tipo_nuip` (`id`, `tipo_nuip`) VALUES
(1, 'C.C.'),
(2, 'C.E.'),
(3, 'PAS.'),
(4, 'T.I.'),
(5, 'N.D.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del usuario',
  `sucursal_id` int(11) DEFAULT NULL COMMENT 'Identificador a la sucursal a la cual pertenece',
  `persona_id` int(11) NOT NULL COMMENT 'Identificador de la persona',
  `login` varchar(45) NOT NULL COMMENT 'Nombre de usuario',
  `password` varchar(45) NOT NULL COMMENT 'Contraseña de acceso al sistea',
  `perfil_id` int(2) NOT NULL COMMENT 'Identificador del perfil',
  `email` varchar(45) DEFAULT NULL COMMENT 'Dirección del correo electónico',
  `tema` varchar(45) DEFAULT 'default' COMMENT 'Tema aplicable para la interfaz',
  `app_ajax` int(1) DEFAULT '1' COMMENT 'Indica si la app se trabaja con ajax o peticiones normales',
  `datagrid` int(11) DEFAULT '30' COMMENT 'Datos por página en los datagrid',
  `registrado_at` datetime DEFAULT NULL COMMENT 'Fecha de registro',
  `modificado_in` datetime DEFAULT NULL COMMENT 'Fecha de la última modificación',
  PRIMARY KEY (`id`),
  KEY `fk_usuario_perfil_idx` (`perfil_id`),
  KEY `fk_usuario_persona_idx` (`persona_id`),
  KEY `fk_usuario_sucursal_idx` (`sucursal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los usuarios' AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `sucursal_id`, `persona_id`, `login`, `password`, `perfil_id`, `email`, `tema`, `app_ajax`, `datagrid`, `registrado_at`, `modificado_in`) VALUES
(1, NULL, 1, 'error', '963db57a0088931e0e3627b1e73e6eb5', 1, NULL, 'default', 1, 30, '2013-01-01 00:00:01', NULL),
(2, NULL, 2, 'admin', '8f04362c9e035bc69434d0468a0c3681', 1, NULL, 'default', 1, 30, '2013-01-01 00:00:01', NULL),
(3, 1, 3, 'illoid', '8f04362c9e035bc69434d0468a0c3681', 1, 'illoid20@gmail.com', 'default', 1, 30, '2014-01-14 17:42:04', '2014-03-07 11:16:50'),
(4, 1, 4, 'iancruz', 'c16901751d237c90abff90e77e12dffa', 1, 'iandanny@gmail.com', 'default', 1, 30, '2014-01-24 12:21:00', '2014-03-10 09:55:26');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD CONSTRAINT `fk_acceso_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `backup`
--
ALTER TABLE `backup`
  ADD CONSTRAINT `fk_backup_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `fk_empresa_tipo_nuip` FOREIGN KEY (`tipo_nuip_id`) REFERENCES `tipo_nuip` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  ADD CONSTRAINT `fk_estado_usuario_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_menu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_menu_recurso` FOREIGN KEY (`recurso_id`) REFERENCES `recurso` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_persona_tipo_nuip` FOREIGN KEY (`tipo_nuip_id`) REFERENCES `tipo_nuip` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `recurso_perfil`
--
ALTER TABLE `recurso_perfil`
  ADD CONSTRAINT `fk_recurso_perfil_perfil` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_recurso_perfil_recurso` FOREIGN KEY (`recurso_id`) REFERENCES `recurso` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `fk_sucursal_ciudad` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sucursal_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_perfil` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_persona` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_sucursal` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
