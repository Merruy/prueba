-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2022 a las 20:57:05
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
-- Base de datos: `bd_odontograma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diente`
--

CREATE TABLE `diente` (
  `coddiente` int(11) NOT NULL,
  `numero_diente` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `diente`
--

INSERT INTO `diente` (`coddiente`, `numero_diente`, `descripcion`) VALUES
(1, 11, 'Incisivo central superior derecha'),
(2, 12, 'Incisivo lateral superior derecha'),
(3, 13, 'Canino superior derecha'),
(4, 14, 'Primer premolar superior derecha'),
(5, 15, 'Segunda premolar superior derecha'),
(6, 16, 'Primer molar superior derecha'),
(7, 17, 'Segundo molar superior derecha'),
(8, 18, 'Tercer molar superior derecha'),
(9, 21, 'Incisivo central superior izquierda'),
(10, 22, 'Incisivo lateral superior izquierda'),
(11, 23, 'Canino superior izquierda'),
(12, 24, 'Primer premolar superior izquierda'),
(13, 25, 'Segunda premolar superior izquierda'),
(14, 26, 'Primer molar superior izquierda'),
(15, 27, 'Segundo molar superior izquierda'),
(16, 28, 'Tercer molar superior izquierda'),
(17, 31, 'Incisivo central inferior izquierda'),
(18, 32, 'Incisivo lateral inferior izquierda'),
(19, 33, 'Canino inferior izquierda'),
(20, 34, 'Primer premolar inferior izquierda'),
(21, 35, 'Segunda premolar inferior izquierda'),
(22, 36, 'Primer molar inferior izquierda'),
(23, 37, 'Segunda molar inferior izquierda'),
(24, 38, 'Tercer molar inferior izquierda'),
(25, 41, 'Incisivo central inferior derecha'),
(26, 42, 'Incisivo lateral inferior derecha'),
(27, 43, 'Canino inferior derecha'),
(28, 44, 'Primer premolar inferior derecha'),
(29, 45, 'Segunda premolar inferior derecha'),
(30, 46, 'Primer molar inferior derecha'),
(31, 47, 'Segundo molar inferior derecha'),
(32, 48, 'Tercer molar inferior derecha'),
(33, 51, 'Incisivo central superior derecha'),
(34, 52, 'Incisivo lateral superior derecha'),
(35, 53, 'Canino superior derecha'),
(36, 54, 'Primer premolar superior derecha'),
(37, 55, 'Segunda premolar superior derecha'),
(38, 61, 'Incisivo central superior izquierda'),
(39, 62, 'Incisivo lateral superior izquierda'),
(40, 63, 'Canino superior izquierda'),
(41, 64, 'Primer premolar superior izquierda'),
(42, 65, 'Segunda premolar superior izquierda'),
(43, 71, 'Incisivo central inferior izquierda'),
(44, 72, 'Incisivo lateral inferior izquierda'),
(45, 73, 'Canino inferior izquierda'),
(46, 74, 'Primer premolar inferior izquierda'),
(47, 75, 'Segunda premolar inferior izquierda'),
(48, 81, 'Incisivo central inferior derecha'),
(49, 82, 'Incisivo lateral inferior derecha'),
(50, 83, 'Canino inferior derecha'),
(51, 84, 'Primer premolar inferior derecha'),
(52, 85, 'Segunda premolar inferior derecha');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `coddistrito` int(11) NOT NULL,
  `nombre_distrito` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`coddistrito`, `nombre_distrito`) VALUES
(1, 'Maracaibo'),
(2, 'Baralt'),
(3, 'Cabimas'),
(4, 'Almirante Padilla'),
(5, 'Catatumbo'),
(6, 'Colón'),
(7, 'Francisco Javier Pulgar'),
(8, 'Guajira'),
(9, 'Jesús Enrique Lossada'),
(10, 'La Cañada de Urdaneta'),
(11, 'Jesús María Semprún'),
(12, 'Machiques de Perijá'),
(13, 'Mara'),
(14, 'Lagunillas'),
(15, 'Rosario de Perijá'),
(16, 'Miranda'),
(17, 'Santa Rita'),
(18, 'San Francisco'),
(19, 'Simón Bolivar'),
(20, 'Valmore Rodríguez'),
(21, 'Sucre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_diente`
--

CREATE TABLE `estado_diente` (
  `codestado` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_diente`
--

INSERT INTO `estado_diente` (`codestado`, `descripcion`) VALUES
(1, 'Amalgama'),
(2, 'Ausencia'),
(3, 'Caries'),
(4, 'Diente Sano'),
(5, 'Endodoncia'),
(6, 'Implante'),
(7, 'Resina'),
(8, 'Sellante'),
(9, 'Corona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `odontograma_cabecera`
--

CREATE TABLE `odontograma_cabecera` (
  `cododontograma` int(11) NOT NULL,
  `tipopac` varchar(30) NOT NULL,
  `observacion` varchar(250) NOT NULL,
  `fecha_registro` date NOT NULL,
  `codpersonal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `odontograma_detalle`
--

CREATE TABLE `odontograma_detalle` (
  `cododonc` int(11) NOT NULL,
  `codestado` int(11) NOT NULL,
  `coddiente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `cod_persona` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(60) NOT NULL,
  `apellido_materno` varchar(60) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(2) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `fecha_regsitro` date NOT NULL,
  `cod_tipo_persona` int(11) NOT NULL,
  `coddistrito` int(11) NOT NULL,
  `foto` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`cod_persona`, `nombre`, `apellido_paterno`, `apellido_materno`, `dni`, `fecha_nacimiento`, `genero`, `direccion`, `telefono`, `email`, `fecha_regsitro`, `cod_tipo_persona`, `coddistrito`, `foto`) VALUES
(1, 'Mariana', 'Barreto', 'Gutierrez', '26795213', '1998-09-19', 'M', 'Maracaibo', '04140378621', 'marianadj1909@gmail.com', '2022-02-10', 2, 1, 'merruy.jpg'),
(2, 'Angela', 'Gutierrez', 'Chirinos', '7694025', '1998-03-16', 'F', 'sector 7 ', '04164166389', 'marianadj1909@gmail.com', '2022-02-10', 1, 18, 'fotos/'),
(3, 'Aya', 'Muhammad', 'Al-Gad', '007007', '2022-02-01', 'F', 'av. shams', '0202777555', 'aya_muhammd@gmail.com', '2022-02-10', 1, 21, 'fotos/lambda.jpg'),
(4, 'Adelaila', 'Markup', 'Javascript', '12345', '0000-00-00', 'F', 'casa 3', '0416-4166389', 'marianadj1909@gmail.com', '2022-02-10', 1, 1, 'fotos/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `cod_tipo_persona` int(11) NOT NULL,
  `descripcion_persona` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`cod_tipo_persona`, `descripcion_persona`) VALUES
(1, 'paciente'),
(2, 'asistente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `coduser` int(11) NOT NULL,
  `contrasena` varchar(16) NOT NULL,
  `username` varchar(8) NOT NULL,
  `fecha_registro` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `codpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`coduser`, `contrasena`, `username`, `fecha_registro`, `estado`, `codpersona`) VALUES
(1, '123Merruy', '26795213', '2022-02-10', 1, 1),
(2, '7694025', '7694025', '2022-02-10', 1, 2),
(3, '', '', '2022-02-10', 1, 3),
(4, '12345', '12345', '2022-02-10', 1, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `diente`
--
ALTER TABLE `diente`
  ADD PRIMARY KEY (`coddiente`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`coddistrito`);

--
-- Indices de la tabla `estado_diente`
--
ALTER TABLE `estado_diente`
  ADD PRIMARY KEY (`codestado`);

--
-- Indices de la tabla `odontograma_cabecera`
--
ALTER TABLE `odontograma_cabecera`
  ADD PRIMARY KEY (`cododontograma`),
  ADD KEY `codpersonal` (`codpersonal`);

--
-- Indices de la tabla `odontograma_detalle`
--
ALTER TABLE `odontograma_detalle`
  ADD KEY `cododonc` (`cododonc`,`codestado`,`coddiente`),
  ADD KEY `codestado` (`codestado`),
  ADD KEY `coddiente` (`coddiente`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`cod_persona`),
  ADD KEY `cod_tipo_persona` (`cod_tipo_persona`,`coddistrito`),
  ADD KEY `coddistrito` (`coddistrito`);

--
-- Indices de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`cod_tipo_persona`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`coduser`),
  ADD KEY `codpersona` (`codpersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `diente`
--
ALTER TABLE `diente`
  MODIFY `coddiente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `coddistrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `estado_diente`
--
ALTER TABLE `estado_diente`
  MODIFY `codestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `odontograma_cabecera`
--
ALTER TABLE `odontograma_cabecera`
  MODIFY `cododontograma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `cod_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `cod_tipo_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `coduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `odontograma_cabecera`
--
ALTER TABLE `odontograma_cabecera`
  ADD CONSTRAINT `odontograma_cabecera_ibfk_1` FOREIGN KEY (`codpersonal`) REFERENCES `persona` (`cod_persona`);

--
-- Filtros para la tabla `odontograma_detalle`
--
ALTER TABLE `odontograma_detalle`
  ADD CONSTRAINT `odontograma_detalle_ibfk_1` FOREIGN KEY (`cododonc`) REFERENCES `odontograma_cabecera` (`cododontograma`),
  ADD CONSTRAINT `odontograma_detalle_ibfk_2` FOREIGN KEY (`codestado`) REFERENCES `estado_diente` (`codestado`),
  ADD CONSTRAINT `odontograma_detalle_ibfk_3` FOREIGN KEY (`coddiente`) REFERENCES `diente` (`coddiente`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`cod_tipo_persona`) REFERENCES `tipo_persona` (`cod_tipo_persona`),
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`coddistrito`) REFERENCES `distrito` (`coddistrito`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`codpersona`) REFERENCES `persona` (`cod_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
