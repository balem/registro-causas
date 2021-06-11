-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2021 a las 06:10:45
-- Versión del servidor: 5.7.17
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `defensoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes`
--

CREATE TABLE `antecedentes` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `antecedentes`
--

INSERT INTO `antecedentes` (`id`, `descripcion`) VALUES
(1, 'Hurto'),
(2, 'Violencia domestica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos`
--

CREATE TABLE `casos` (
  `id` int(11) NOT NULL,
  `caratula` varchar(255) NOT NULL,
  `anho` int(4) NOT NULL,
  `fiscalia` int(11) NOT NULL,
  `juzgado` int(11) NOT NULL,
  `defensoria` int(11) NOT NULL,
  `fec_hec_punible` date NOT NULL,
  `tip_penal` varchar(45) NOT NULL,
  `distrito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `circunscripciones`
--

CREATE TABLE `circunscripciones` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `circunscripciones`
--

INSERT INTO `circunscripciones` (`id`, `descripcion`) VALUES
(1, 'ALTO PARAGUAY'),
(2, 'ALTO PARANA'),
(3, 'AMAMBAY'),
(4, 'BOQUERON'),
(5, 'CAAGUAZU'),
(6, 'CAAZAPA'),
(7, 'CANINDEYU'),
(8, 'CAPITAL'),
(9, 'CENTRAL'),
(10, 'CONCEPCION'),
(11, 'CORDILLERA'),
(12, 'GUAIRA'),
(13, 'ITAPUA'),
(14, 'MISIONES'),
(15, 'ÑEEMBUCU'),
(16, 'PARAGUARI'),
(17, 'PARAGUARI'),
(18, 'PDTE. HAYES'),
(19, 'SAN PEDRO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_etnica`
--

CREATE TABLE `com_etnica` (
  `id` int(11) NOT NULL,
  `descripcionl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dat_proceso`
--

CREATE TABLE `dat_proceso` (
  `personas` int(11) NOT NULL,
  `casos` int(11) NOT NULL,
  `fec_entrada` date DEFAULT NULL,
  `etapa` int(11) NOT NULL,
  `salida` int(11) DEFAULT NULL,
  `fec_resolucion` date NOT NULL,
  `fec_salida` date NOT NULL,
  `fec_ult_actuacion` date NOT NULL,
  `det_ult_actuacion` text NOT NULL,
  `estado` varchar(45) NOT NULL,
  `defensor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `defensores`
--

CREATE TABLE `defensores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `defensorias`
--

CREATE TABLE `defensorias` (
  `id` int(11) NOT NULL,
  `localidades_id` int(11) NOT NULL,
  `fueros_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencias`
--

CREATE TABLE `dependencias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dependencias`
--

INSERT INTO `dependencias` (`id`, `descripcion`) VALUES
(1, 'No tiene'),
(2, 'Tiene menores'),
(3, 'Tiene menores con discapacidad'),
(4, 'Tiene adultos con discapacidad'),
(5, 'Tiene adulto mayor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dep_personas`
--

CREATE TABLE `dep_personas` (
  `persona` int(11) NOT NULL,
  `dependencia` int(11) NOT NULL,
  `cant` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distritos`
--

CREATE TABLE `distritos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapas`
--

CREATE TABLE `etapas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiscalia`
--

CREATE TABLE `fiscalia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fueros`
--

CREATE TABLE `fueros` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gra_ademicos`
--

CREATE TABLE `gra_ademicos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gra_ademicos`
--

INSERT INTO `gra_ademicos` (`id`, `descripcion`) VALUES
(1, 'Sin formación oficial'),
(2, 'EEB incompleta'),
(3, 'EEB completa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juzgados`
--

CREATE TABLE `juzgados` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `localidades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juzgados`
--

INSERT INTO `juzgados` (`id`, `descripcion`, `localidades_id`) VALUES
(1, 'Juzgado de paz', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `circunscripciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id`, `descripcion`, `circunscripciones`) VALUES
(1, 'Antequera (Paraguay)', 1),
(2, 'Capiibary (distrito)', 19),
(3, 'Choré', 19),
(4, 'General Elizardo Aquino (Paraguay)', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidades`
--

CREATE TABLE `nacionalidades` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nacionalidades`
--

INSERT INTO `nacionalidades` (`id`, `descripcion`) VALUES
(1, 'Paraguaya');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('enriquev.rodriguez@gmail.com', '$2y$10$QFAre2g.7zWv5iPBL.0bluldDcxAzI8AeyBPAullIVr/f.uvf0YnG', '2021-06-08 21:36:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `fec_nacimiento` date NOT NULL,
  `documento` varchar(45) NOT NULL,
  `typ_documento` varchar(10) NOT NULL,
  `sexo` char(1) NOT NULL,
  `lug_nacimiento` varchar(255) NOT NULL,
  `nacionalidad` int(11) NOT NULL,
  `com_etnica` int(11) DEFAULT NULL,
  `gra_ademicos_id` int(11) NOT NULL,
  `ocupacion` varchar(45) DEFAULT NULL,
  `oficio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `per_antecedentes`
--

CREATE TABLE `per_antecedentes` (
  `personas_id` int(11) NOT NULL,
  `antecedentes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `per_sujeciones`
--

CREATE TABLE `per_sujeciones` (
  `personas` int(11) NOT NULL,
  `sujeciones` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sujeciones`
--

CREATE TABLE `sujeciones` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'developer', 'enriquev.rodriguez@gmail.com', NULL, '$2y$10$XsLtWWPn97ldA6wZSHds/edSZe2R4tx2GK535XEiI9zDSodGoOPL.', NULL, '2021-06-08 21:38:41', '2021-06-08 21:38:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `casos`
--
ALTER TABLE `casos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_casos_fiscalia1_idx` (`fiscalia`),
  ADD KEY `fk_casos_juzgados1_idx` (`juzgado`),
  ADD KEY `fk_casos_defensorias1_idx` (`defensoria`),
  ADD KEY `fk_casos_distritos1_idx` (`distrito`);

--
-- Indices de la tabla `circunscripciones`
--
ALTER TABLE `circunscripciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `com_etnica`
--
ALTER TABLE `com_etnica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dat_proceso`
--
ALTER TABLE `dat_proceso`
  ADD PRIMARY KEY (`personas`,`casos`),
  ADD KEY `fk_personas_has_casos_casos1_idx` (`casos`),
  ADD KEY `fk_personas_has_casos_personas1_idx` (`personas`),
  ADD KEY `fk_dat_proceso_etapas1_idx` (`etapa`),
  ADD KEY `fk_dat_proceso_salidas1_idx` (`salida`),
  ADD KEY `fk_dat_proceso_defensores1_idx` (`defensor`);

--
-- Indices de la tabla `defensores`
--
ALTER TABLE `defensores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `defensorias`
--
ALTER TABLE `defensorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_defensorias_localidades1_idx` (`localidades_id`),
  ADD KEY `fk_defensorias_fueros1_idx` (`fueros_id`);

--
-- Indices de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dep_personas`
--
ALTER TABLE `dep_personas`
  ADD PRIMARY KEY (`persona`,`dependencia`),
  ADD KEY `fk_personas_has_dependencias_dependencias1_idx` (`dependencia`),
  ADD KEY `fk_personas_has_dependencias_personas1_idx` (`persona`);

--
-- Indices de la tabla `distritos`
--
ALTER TABLE `distritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `etapas`
--
ALTER TABLE `etapas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fiscalia`
--
ALTER TABLE `fiscalia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fueros`
--
ALTER TABLE `fueros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gra_ademicos`
--
ALTER TABLE `gra_ademicos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `juzgados`
--
ALTER TABLE `juzgados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_juzgados_localidades1_idx` (`localidades_id`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_localidades_circunscripciones_idx` (`circunscripciones`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nacionalidades`
--
ALTER TABLE `nacionalidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_personas_nacionalidades1_idx` (`nacionalidad`),
  ADD KEY `fk_personas_com_etnica1_idx` (`com_etnica`),
  ADD KEY `fk_personas_gra_ademicos1_idx` (`gra_ademicos_id`);

--
-- Indices de la tabla `per_antecedentes`
--
ALTER TABLE `per_antecedentes`
  ADD PRIMARY KEY (`personas_id`,`antecedentes_id`),
  ADD KEY `fk_personas_has_antecedentes_antecedentes1_idx` (`antecedentes_id`),
  ADD KEY `fk_personas_has_antecedentes_personas1_idx` (`personas_id`);

--
-- Indices de la tabla `per_sujeciones`
--
ALTER TABLE `per_sujeciones`
  ADD PRIMARY KEY (`personas`,`sujeciones`,`fecha`),
  ADD KEY `fk_personas_has_sujeciones_sujeciones1_idx` (`sujeciones`),
  ADD KEY `fk_personas_has_sujeciones_personas1_idx` (`personas`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sujeciones`
--
ALTER TABLE `sujeciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `casos`
--
ALTER TABLE `casos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `circunscripciones`
--
ALTER TABLE `circunscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `com_etnica`
--
ALTER TABLE `com_etnica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `defensores`
--
ALTER TABLE `defensores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `defensorias`
--
ALTER TABLE `defensorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `distritos`
--
ALTER TABLE `distritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `fiscalia`
--
ALTER TABLE `fiscalia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `fueros`
--
ALTER TABLE `fueros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gra_ademicos`
--
ALTER TABLE `gra_ademicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `juzgados`
--
ALTER TABLE `juzgados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `nacionalidades`
--
ALTER TABLE `nacionalidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `salidas`
--
ALTER TABLE `salidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sujeciones`
--
ALTER TABLE `sujeciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `casos`
--
ALTER TABLE `casos`
  ADD CONSTRAINT `fk_casos_defensorias1` FOREIGN KEY (`defensoria`) REFERENCES `defensorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_casos_distritos1` FOREIGN KEY (`distrito`) REFERENCES `distritos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_casos_fiscalia1` FOREIGN KEY (`fiscalia`) REFERENCES `fiscalia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_casos_juzgados1` FOREIGN KEY (`juzgado`) REFERENCES `juzgados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `dat_proceso`
--
ALTER TABLE `dat_proceso`
  ADD CONSTRAINT `fk_dat_proceso_defensores1` FOREIGN KEY (`defensor`) REFERENCES `defensores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dat_proceso_etapas1` FOREIGN KEY (`etapa`) REFERENCES `etapas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dat_proceso_salidas1` FOREIGN KEY (`salida`) REFERENCES `salidas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personas_has_casos_casos1` FOREIGN KEY (`casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personas_has_casos_personas1` FOREIGN KEY (`personas`) REFERENCES `personas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `defensorias`
--
ALTER TABLE `defensorias`
  ADD CONSTRAINT `fk_defensorias_fueros1` FOREIGN KEY (`fueros_id`) REFERENCES `fueros` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_defensorias_localidades1` FOREIGN KEY (`localidades_id`) REFERENCES `localidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `dep_personas`
--
ALTER TABLE `dep_personas`
  ADD CONSTRAINT `fk_personas_has_dependencias_dependencias1` FOREIGN KEY (`dependencia`) REFERENCES `dependencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personas_has_dependencias_personas1` FOREIGN KEY (`persona`) REFERENCES `personas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `juzgados`
--
ALTER TABLE `juzgados`
  ADD CONSTRAINT `fk_juzgados_localidades1` FOREIGN KEY (`localidades_id`) REFERENCES `localidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `fk_localidades_circunscripciones` FOREIGN KEY (`circunscripciones`) REFERENCES `circunscripciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `fk_personas_com_etnica1` FOREIGN KEY (`com_etnica`) REFERENCES `com_etnica` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personas_gra_ademicos1` FOREIGN KEY (`gra_ademicos_id`) REFERENCES `gra_ademicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personas_nacionalidades1` FOREIGN KEY (`nacionalidad`) REFERENCES `nacionalidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `per_antecedentes`
--
ALTER TABLE `per_antecedentes`
  ADD CONSTRAINT `fk_personas_has_antecedentes_antecedentes1` FOREIGN KEY (`antecedentes_id`) REFERENCES `antecedentes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personas_has_antecedentes_personas1` FOREIGN KEY (`personas_id`) REFERENCES `personas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `per_sujeciones`
--
ALTER TABLE `per_sujeciones`
  ADD CONSTRAINT `fk_personas_has_sujeciones_personas1` FOREIGN KEY (`personas`) REFERENCES `personas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personas_has_sujeciones_sujeciones1` FOREIGN KEY (`sujeciones`) REFERENCES `sujeciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
