-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2019 a las 22:32:28
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `trivia593lapreli`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dbparticipantes`
--

CREATE TABLE IF NOT EXISTS `dbparticipantes` (
`idparticipante` int(11) NOT NULL,
  `refusuarios` int(11) NOT NULL,
  `nombrecompleto` varchar(160) COLLATE utf8_spanish_ci NOT NULL,
  `cedula` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `terminoscondiciones` bit(1) NOT NULL,
  `fechacreacion` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2)
) ENGINE=InnoDB AUTO_INCREMENT=1125 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dbpreguntas`
--

CREATE TABLE IF NOT EXISTS `dbpreguntas` (
`idpregunta` int(11) NOT NULL,
  `secuencia` int(11) NOT NULL,
  `pregunta` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `respuestacorrecta` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `respuestaequivocada1` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `respuestaequivocada2` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `respuestaequivocada3` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `valor` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dbpreguntas`
--

INSERT INTO `dbpreguntas` (`idpregunta`, `secuencia`, `pregunta`, `respuestacorrecta`, `respuestaequivocada1`, `respuestaequivocada2`, `respuestaequivocada3`, `valor`) VALUES
(331, 1, '¿Cuántos personajes tienen 593 en la mano?', '5', '2', '3', 'Todos', 1),
(332, 1, '¿Cuántos logos de 593 hay?', '13', '9', '5', '3', 1),
(333, 1, '¿Cuántos lentes de sol había?', '2', '4', '1', 'Ninguno', 1),
(334, 1, '¿Qué estampado tenía el bikini del chico en la piscina?', 'Flores', 'Patos', 'Rayas', 'Puntos', 1),
(335, 1, '¿Qué figura geométrica estaba en el césped?', 'Triángulo', 'Círculo', 'Óvalo', 'Prisma', 1),
(336, 1, '¿Cuántos vasos hay?', '6', '5', '7', '8', 1),
(337, 1, '¿Qué jugaba el chico en el fondo?', 'Beer-Pong', 'Ping-Pong', 'Ding-Dong', 'No estaba jugando', 1),
(338, 1, '¿Cuántas cubetas de cerveza había?', '2', '1', '3', '5', 1),
(339, 1, '¿Cuántas palmeras hay?', '5', '4', '7', '6', 1),
(340, 1, '¿Cuántos personajes había?', '6', '5', '7', '8', 1),
(341, 1, '¿Dónde estaba el caracol?', 'Ninguna es correcta', 'En el césped', 'En la Piscina', 'En la Palmera', 1),
(342, 1, '¿De qué color eran los vasos de la izquierda?', 'Rojo', 'Verde', 'Azul', 'Blanco', 1),
(343, 1, '¿Cuántas nubes había?', '3', '4', '2', '5', 1),
(344, 1, '¿Qué decía el cartel?', '"La cerveza del nuevo ecuatoriano"', '"La cerveza del mundo ecuatoriano"', '"La cerveza d'',1,el pueblo ecuatoriano"', 'Ninguna de las anterioes', 1),
(345, 1, '¿Cuántos personajes llevaban puesto bikini?', '1', '3', '2', '4', 1),
(346, 1, '¿Sobre qué estaba parado el chico a la derecha?', 'Sobre una cubeta', 'Sobre una silla', 'Sobre una roca', 'S'',1,obre el piso', 1),
(347, 1, '¿Sobre qué estaba parada la chica de la derecha?', 'Sobre el piso', 'Sobre la mesa de Ping-Pong', 'Sobre una b'',1,oya', 'Sobre una cubeta', 1),
(348, 1, '¿Cuántas botellas 593 hay en total?', '12', '9', '7', '11', 1),
(349, 1, '¿Cuántas ventanas habían en la casa de atrás?', '6', '5', '4', '3', 1),
(350, 1, '¿Cuántos triángulos hay en la escena?', '3', '2', '1', 'Niguno', 1),
(351, 2, '¿Dónde estaba el pincel?', 'Encima del puf', 'Sobre el microondas', 'En el piso', '', 1),
(352, 2, '¿Qué imagen en neón había en la pared a la derecha?', 'Un par de micrófonos', 'Una nota musical ', 'Una cerveza 593', 'Una estrella', 1),
(353, 2, '¿Dónde estaba la cubeta de cervezas?', 'Detrás del Puf', 'Encima de los parlantes', 'Al lado de la silla', 'Junto al televisor', 1),
(354, 2, '¿Qué objeto NO está en el bar?', 'Una bola de boliche', 'Un micrófono ', 'Una bola disco', 'Un microondas', 1),
(355, 2, '¿Qué animal estaba en la escena?', 'Una oveja', 'Un pato ', 'Una cabra', 'Un gato', 1),
(356, 2, '¿Qué aparato está en la pared?', 'Un microondas', 'Un aire acondicionado', 'Un televisor antiguo', 'No había nada en la pared', 1),
(357, 2, '¿Qué objeto había en la silla?', 'Una llave', 'Una pluma', 'Un pincel', 'Un jarro', 1),
(358, 2, '¿Qué personaje estaba de amarillo?', 'La chica cantando', 'La chica sentada', 'El chico de la derecha', 'La chica saltando', 1),
(359, 2, '¿Qué personaje tiene lentes oscuros?', 'El chico de la izquierda', 'La chica cantando', 'El chico de camisa verde', 'Ningún personaje', 1),
(360, 2, '¿Qué está haciendo la chica de rojo?', 'Ninguna es correcta', 'Saltando', 'Cantando', 'Bailando', 1),
(361, 2, '¿Cuántos parlantes había?', '4', '2', '6', 'No había parlantes', 1),
(362, 2, '¿Cuántos personajes hay en total?', '7', '6', '5', '8', 1),
(363, 2, '¿Cuántos personajes tienen cervezas en la mano?', '3', '4', '2', 'Todos', 1),
(364, 2, '¿Cuántas notas musicales había en la pared?', '3', '2', '4', '5', 1),
(365, 2, '¿Cuántas chicas tenían vestidos?', '3', '2', '1', '4', 1),
(366, 2, '¿Cuántas bolas disco había?', '1', '2', '3', 'No había bolas disco', 1),
(367, 2, '¿Cuántos personajes tienen corbata?', '2', '3', '1', '4', 1),
(368, 2, '¿Cuántas 593 había?', '6', '5', '3', '1', 1),
(369, 2, '¿De qué color era el puf?', 'Naranja', 'Rosado', 'Verde', 'Azul', 1),
(370, 2, '¿De qué color es la corbata del chico con gafas?', 'blanca', 'negra', 'verde', 'roja', 1),
(371, 3, '¿Cuántos peces saltaron el mar?', '3', '2', '4', 'No habían peces', 1),
(372, 3, '¿De qué color era la pelota de playa?', 'Azul', 'Verde', 'Roja', 'Todas las anteriores', 1),
(373, 3, '¿Cuántas cervezas 593 había?', '17', '11', '13', '16', 1),
(374, 3, '¿De qué color era el vestido de la chica a la derecha?', 'Verde', 'Blanco', '', '', 1),
(375, 3, '¿Cuántos focos había a la vista?', '12', '15', '9', '10', 1),
(376, 3, '¿Qué había en la arena?', 'Un vaso', 'piedras', 'botellas', 'un cangrejo', 1),
(377, 3, '¿Cuántos baldes había?', '4', '3', '5', '1', 1),
(378, 3, '¿Cuántas personas tienen 593 en la mano?', '6', '5', '3', '4', 1),
(379, 3, '¿De qué está disfrazado el muchacho del fondo?', 'Astronauta', 'Chef', 'Bartender', 'Ninguna de las anteriores', 1),
(380, 3, '¿Qué color de camisa tiene la chica en la izquierda?', 'azul', 'blanca', 'verde', 'Ninguna de las anteriores', 1),
(381, 3, '¿Dónde estaba ubicado el pingüino?', 'Ninguna de las anteriores', 'Detrás del castillo', 'Detrás de la palmera', 'En el agua', 1),
(382, 3, '¿Qué hay detrás del castillo de arena?', 'Nada', 'Un pingüino', 'Un cangrejo', 'una cubeta', 1),
(383, 3, '¿Cuántos personajes llevaban camisa manga corta?', '1', '2', '3', 'ninguno ', 1),
(384, 3, '¿Cuántos personajes tenían zapatos deportivos?', '5', '6', '1', '2', 1),
(385, 3, '¿Cuántas ventanas se podían ver del castillo?', '2', '1', '3', 'ninguna', 1),
(386, 3, '¿Cuántos personajes tienen gafas de sol?', '1', '2', '3', 'ninguno ', 1),
(387, 3, '¿Cuántos personajes levantaron sus cervezas?', '4', '3', '5', 'Todos', 1),
(388, 3, '¿Cuál de las siguientes afirmaciones NO es correcta?', 'Hay un cangrejo detrás del castillo', 'Hay dos personas vestidas de verde', 'Hay dos globos', 'Hay 12 focos a la vista', 1),
(389, 3, '¿Cuántas antorchas estaban encendidas?', '4', '3', '5', '2', 1),
(390, 3, '¿Cuántas palmeras había?', '4', '8', '6', '2', 1),
(391, 4, '¿Cuántos personajes había en la pista de baile?', '3', '2', '4', '5', 1),
(392, 4, '¿Cuántos personajes tienen el cabello fosforescente?', '5', '4', '3', 'Ninguno', 1),
(393, 4, '¿Cuántos personajes tienen collares?', '4', '3', '2', 'Ninguno', 1),
(394, 4, '¿Cuántos tienen una 593 en las manos?', '3', '4', '5', 'Todos', 1),
(395, 4, '¿Cuántos globos había?', '4', '6', '5', '7', 1),
(396, 4, '¿Cuántas lámparas había?', '3', '4', '5', '2', 1),
(397, 4, '¿Cuántos personajes llevan lentes puestos?', '3', '2', '1', 'Todos', 1),
(398, 4, '¿Cuántas sillas hay?', '1', '2', '3', '4', 1),
(399, 4, '¿Cuántos personajes tienen corbata?', '2', '1', '3', 'Ninguno', 1),
(400, 4, '¿Qué instrumento musical había?', 'Una guitarra', 'Un piano eléctrico', 'Una batería', 'Un hukelele', 1),
(401, 4, '¿Qué había sobre la refrigeradora?', 'Un sombrero', 'Un instrumento', 'Un jarrón', 'Unos audífonos', 1),
(402, 4, '¿Qué había junto a la cubeta de cervezas?', 'Una cartera', 'Un cuadro', 'Una lámpara de lava', 'Un micrófono', 1),
(403, 4, '¿Qué animal había?', 'Un pato', 'Un gato ', 'Un perro', 'Un ratón', 1),
(404, 4, '¿Dónde estaba la paleta de dulce?', 'En la pista de baile', 'Sobre el refrigerador', 'En la pared', 'En el bolso', 1),
(405, 4, '¿Dónde había una lámpara de lava?', 'Ninguna es correcta', 'Sobre el refrigerador', 'En la pared', 'En la pista de baile', 1),
(406, 4, '¿De qué color es la cartera que estaba en la barra?', 'Rosado', 'Café', 'Negro', 'Blanco', 1),
(407, 4, '¿Qué objeto estaba tirado en el fondo', 'Un diamante', 'Un candado', 'Una botella de cerveza', 'Un vaso vacío', 1),
(408, 4, '¿Qué persona tenía zapatos rojos?', 'La chica de la derecha', 'La chica de la izquierda', 'Un chico', 'Ninguno', 1),
(409, 4, '¿Qué color de cabello NO estaba?', 'Naranja', 'Rosado', 'Verde', 'Morado', 1),
(410, 4, '¿Qué gesto tiene el letrero de neón?', '¡Cheers!', 'Salida', 'Bienvenidos', 'Smile!', 1),
(411, 10, '¿Cuántas cervezas 593 había?', '46', '52', '59', '65', 1),
(412, 11, '593 ES LA CERVEZA', 'DEL NUEVO ECUATORIANO', 'MAS COOL', 'MAS FUERTE', 'DE LA GENTE', 1),
(413, 11, 'EN QUE PAÍS SE PRODUCE LA CERVEZA 593 PREMIUM LAGER', 'ECUADOR', 'COLOMBIA', 'ESTADOS UNIDOS', 'ARGENTINA', 1),
(414, 11, 'EN QUE CIUDAD SE PRODUCE LA CERVEZA 593 PREMIUM LAGER', 'CUENCA', 'QUITO', 'GUAYAQUIL', 'BOGOTÁ', 1),
(415, 11, 'COMO SE LLAMA LA CERVECERÍA QUE PRODUCE 593 PREMIUM LAGER', 'CERVECERÍA LA PAZ', 'CERVECERÍA CUENCANA', 'CERVECERÍA ECUATORIANA', 'CERVECERÍA 593', 1),
(416, 11, 'CUÁNTOS GRADOS DE ALCOHOL TIENE LA CERVEZA 593PREMIUM LAGER', '4', '3', '4,5', '3,5', 1),
(417, 11, '593, EL CÓDIGO MÁGICO, ES EL CÓDIGO DE', 'ECUADOR', 'CUENCA', 'QUITO', 'GUAYAQUIL', 1),
(418, 11, 'QUÉ TIPO DE CERVEZA ES 593', 'PREMIUM LAGER', 'ARTESANAL', 'PILSEN', 'NEGRA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dbusuarios`
--

CREATE TABLE IF NOT EXISTS `dbusuarios` (
`idusuario` int(11) NOT NULL,
  `usuario` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `refroles` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombrecompleto` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` int(11) NOT NULL,
  `terminoscondiciones` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dbusuarios`
--

INSERT INTO `dbusuarios` (`idusuario`, `usuario`, `password`, `refroles`, `email`, `nombrecompleto`, `cedula`, `terminoscondiciones`) VALUES
(3, 'admin', 'admin', 1, 'admin@admin.com', 'Administrador', 31552466, b'1'),
(4, 'juancarlos', 'carlos', 2, 'carlos@msn.com', 'Juan Carlos', 30552466, b'1'),
(5, 'Modelo 1', 'ecuador', 2, '593@593.com', 'Modelo 1', 0, b'0'),
(6, 'Modelo 2', 'ecuador', 2, 'lager@lager.com', 'Modelo 2', 0, b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dbusuariostribia`
--

CREATE TABLE IF NOT EXISTS `dbusuariostribia` (
`idusuariotribia` int(11) NOT NULL,
  `refparticipantes` int(11) NOT NULL,
  `cantidadaciertos` int(11) NOT NULL,
  `intento` int(11) NOT NULL,
  `refestados` int(11) NOT NULL,
  `refpremios` int(11) NOT NULL,
  `puntobonusa` bit(1) NOT NULL,
  `aciertobonusa` bit(1) NOT NULL,
  `puntobonusb` bit(1) NOT NULL,
  `aciertobonusb` bit(1) NOT NULL,
  `fechacreacion` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2)
) ENGINE=InnoDB AUTO_INCREMENT=719 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predio_menu`
--

CREATE TABLE IF NOT EXISTS `predio_menu` (
`idmenu` int(11) NOT NULL,
  `url` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `icono` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Orden` smallint(6) DEFAULT NULL,
  `hover` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `permiso` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `predio_menu`
--

INSERT INTO `predio_menu` (`idmenu`, `url`, `icono`, `nombre`, `Orden`, `hover`, `permiso`) VALUES
(12, '../logout.php', 'icosalir', 'Salir', 30, NULL, 'Administrador'),
(13, '../index.php', 'icodashboard', 'Dashboard', 1, NULL, 'Administrador'),
(21, '../preguntas/', 'icoreportes', 'Preguntas', 3, NULL, 'Administrador'),
(22, '../usuarios/', 'icousuarios', 'Usuarios', 2, NULL, 'Administrador'),
(27, '../premios/', 'icopagos', 'Premios', 4, NULL, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbestados`
--

CREATE TABLE IF NOT EXISTS `tbestados` (
`idestado` int(11) NOT NULL,
  `estado` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbestados`
--

INSERT INTO `tbestados` (`idestado`, `estado`) VALUES
(1, 'Comenzado'),
(2, 'En Curso'),
(3, 'Finalizado'),
(4, 'Sin Terminar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbhorarios`
--

CREATE TABLE IF NOT EXISTS `tbhorarios` (
`idtbhorario` int(11) NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbhorarios`
--

INSERT INTO `tbhorarios` (`idtbhorario`, `hora`) VALUES
(1, '08:00:00'),
(2, '08:10:00'),
(3, '08:20:00'),
(4, '08:30:00'),
(5, '08:40:00'),
(6, '08:50:00'),
(7, '09:00:00'),
(8, '09:10:00'),
(9, '09:20:00'),
(10, '09:30:00'),
(11, '09:40:00'),
(12, '09:50:00'),
(13, '10:00:00'),
(14, '10:10:00'),
(15, '10:20:00'),
(16, '10:30:00'),
(17, '10:40:00'),
(18, '10:50:00'),
(19, '11:00:00'),
(20, '11:10:00'),
(21, '11:20:00'),
(22, '11:30:00'),
(23, '11:40:00'),
(24, '11:50:00'),
(25, '12:00:00'),
(26, '12:10:00'),
(27, '12:20:00'),
(28, '12:30:00'),
(29, '12:40:00'),
(30, '12:50:00'),
(31, '13:00:00'),
(32, '13:10:00'),
(33, '13:20:00'),
(34, '13:30:00'),
(35, '13:40:00'),
(36, '13:50:00'),
(37, '14:00:00'),
(38, '14:10:00'),
(39, '14:20:00'),
(40, '14:30:00'),
(41, '14:40:00'),
(42, '14:50:00'),
(43, '15:00:00'),
(44, '15:10:00'),
(45, '15:20:00'),
(46, '15:30:00'),
(47, '15:40:00'),
(48, '15:50:00'),
(49, '16:00:00'),
(50, '16:10:00'),
(51, '16:20:00'),
(52, '16:30:00'),
(53, '16:40:00'),
(54, '16:50:00'),
(55, '17:00:00'),
(56, '17:10:00'),
(57, '17:20:00'),
(58, '17:30:00'),
(59, '17:40:00'),
(60, '17:50:00'),
(61, '18:00:00'),
(62, '18:10:00'),
(63, '18:20:00'),
(64, '18:30:00'),
(65, '18:40:00'),
(66, '18:50:00'),
(67, '19:00:00'),
(68, '19:10:00'),
(69, '19:20:00'),
(70, '19:30:00'),
(71, '19:40:00'),
(72, '19:50:00'),
(73, '20:00:00'),
(74, '20:10:00'),
(75, '20:20:00'),
(76, '20:30:00'),
(77, '20:40:00'),
(78, '20:50:00'),
(79, '21:00:00'),
(80, '21:10:00'),
(81, '21:20:00'),
(82, '21:30:00'),
(83, '21:40:00'),
(84, '21:50:00'),
(85, '22:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbmeses`
--

CREATE TABLE IF NOT EXISTS `tbmeses` (
  `mes` int(11) NOT NULL,
  `nombremes` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbmeses`
--

INSERT INTO `tbmeses` (`mes`, `nombremes`) VALUES
(1, 'Enero'),
(2, 'Febrero'),
(3, 'Marzo'),
(4, 'Abril'),
(5, 'Mayo'),
(6, 'Julio'),
(7, 'Junio'),
(8, 'Agosto'),
(9, 'Septiembre'),
(10, 'Octubre'),
(11, 'Noviembre'),
(12, 'Diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbpremios`
--

CREATE TABLE IF NOT EXISTS `tbpremios` (
`idpremio` int(11) NOT NULL,
  `premio` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `aciertos` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbpremios`
--

INSERT INTO `tbpremios` (`idpremio`, `premio`, `aciertos`) VALUES
(1, 'Nada', 0),
(2, 'Gana Entrada', 7),
(3, 'Gana Meet and Greet', 10),
(4, 'Gana Botella', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbroles`
--

CREATE TABLE IF NOT EXISTS `tbroles` (
`idrol` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `activo` bit(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbroles`
--

INSERT INTO `tbroles` (`idrol`, `descripcion`, `activo`) VALUES
(1, 'Administrador', b'1'),
(2, 'Participante', b'1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dbparticipantes`
--
ALTER TABLE `dbparticipantes`
 ADD PRIMARY KEY (`idparticipante`), ADD KEY `fk_p_usua_idx` (`refusuarios`);

--
-- Indices de la tabla `dbpreguntas`
--
ALTER TABLE `dbpreguntas`
 ADD PRIMARY KEY (`idpregunta`);

--
-- Indices de la tabla `dbusuarios`
--
ALTER TABLE `dbusuarios`
 ADD PRIMARY KEY (`idusuario`), ADD KEY `fk_dbusuarios_tbroles1_idx` (`refroles`);

--
-- Indices de la tabla `dbusuariostribia`
--
ALTER TABLE `dbusuariostribia`
 ADD PRIMARY KEY (`idusuariotribia`), ADD KEY `fk_ut_usua_idx` (`refparticipantes`), ADD KEY `fk_ut_estados_idx` (`refestados`), ADD KEY `fk_ut_premios_idx` (`refpremios`);

--
-- Indices de la tabla `predio_menu`
--
ALTER TABLE `predio_menu`
 ADD PRIMARY KEY (`idmenu`);

--
-- Indices de la tabla `tbestados`
--
ALTER TABLE `tbestados`
 ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `tbhorarios`
--
ALTER TABLE `tbhorarios`
 ADD PRIMARY KEY (`idtbhorario`);

--
-- Indices de la tabla `tbmeses`
--
ALTER TABLE `tbmeses`
 ADD PRIMARY KEY (`mes`);

--
-- Indices de la tabla `tbpremios`
--
ALTER TABLE `tbpremios`
 ADD PRIMARY KEY (`idpremio`);

--
-- Indices de la tabla `tbroles`
--
ALTER TABLE `tbroles`
 ADD PRIMARY KEY (`idrol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dbparticipantes`
--
ALTER TABLE `dbparticipantes`
MODIFY `idparticipante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1125;
--
-- AUTO_INCREMENT de la tabla `dbpreguntas`
--
ALTER TABLE `dbpreguntas`
MODIFY `idpregunta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=419;
--
-- AUTO_INCREMENT de la tabla `dbusuarios`
--
ALTER TABLE `dbusuarios`
MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `dbusuariostribia`
--
ALTER TABLE `dbusuariostribia`
MODIFY `idusuariotribia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=719;
--
-- AUTO_INCREMENT de la tabla `predio_menu`
--
ALTER TABLE `predio_menu`
MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `tbestados`
--
ALTER TABLE `tbestados`
MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbhorarios`
--
ALTER TABLE `tbhorarios`
MODIFY `idtbhorario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT de la tabla `tbpremios`
--
ALTER TABLE `tbpremios`
MODIFY `idpremio` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbroles`
--
ALTER TABLE `tbroles`
MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dbparticipantes`
--
ALTER TABLE `dbparticipantes`
ADD CONSTRAINT `fk_p_usua` FOREIGN KEY (`refusuarios`) REFERENCES `dbusuarios` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `dbusuarios`
--
ALTER TABLE `dbusuarios`
ADD CONSTRAINT `fk_dbusuarios_tbroles1` FOREIGN KEY (`refroles`) REFERENCES `tbroles` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `dbusuariostribia`
--
ALTER TABLE `dbusuariostribia`
ADD CONSTRAINT `fk_ut_estados` FOREIGN KEY (`refestados`) REFERENCES `tbestados` (`idestado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_ut_part` FOREIGN KEY (`refparticipantes`) REFERENCES `dbparticipantes` (`idparticipante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_ut_premios` FOREIGN KEY (`refpremios`) REFERENCES `tbpremios` (`idpremio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
