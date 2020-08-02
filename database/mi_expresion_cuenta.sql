-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2020 a las 17:23:19
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miexpresioncuenta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `nombrecorto` varchar(150) DEFAULT NULL,
  `descrpcion` varchar(191) NOT NULL,
  `idsubtema` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `nombre`, `nombrecorto`, `descrpcion`, `idsubtema`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Actividades Artículos', 'ActividadArticulos', 'actividades del subtema de articulo', 2, NULL, NULL, NULL),
(3, 'Actividades Demostrativos', 'ActividadDemostrativo', '', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `homes`
--

CREATE TABLE `homes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_07_12_160340_create_homes_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `nombrecorto` varchar(150) DEFAULT NULL,
  `Descripcion` varchar(150) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`id`, `nombre`, `nombrecorto`, `Descripcion`, `Score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Módulo I:Mi expresión básica', 'modulo1_mi_expresion_basica', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id` int(11) NOT NULL,
  `nombre` longtext NOT NULL,
  `puntos` int(11) DEFAULT NULL,
  `id_pregunta` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `nombre`, `puntos`, `id_pregunta`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'La', 10, 1, NULL, NULL, NULL),
(10, 'Los', 0, 1, NULL, NULL, NULL),
(11, 'El', 0, 1, NULL, NULL, NULL),
(12, 'Las', 0, 1, NULL, NULL, NULL),
(13, 'Un', 0, 1, NULL, NULL, NULL),
(14, 'Unos', 0, 1, NULL, NULL, NULL),
(15, 'Unas', 0, 1, NULL, NULL, NULL),
(16, 'Esta', 10, 2, NULL, NULL, NULL),
(17, 'Aquella', 0, 2, NULL, NULL, NULL),
(18, 'Ese', 0, 2, NULL, NULL, NULL),
(19, 'Aquel', 0, 2, NULL, NULL, NULL),
(20, 'Este', 0, 2, NULL, NULL, NULL),
(21, 'Esa', 0, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `nombre_pregunta` longtext NOT NULL,
  `id_actividad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `nombre_pregunta`, `id_actividad`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Seleccione el artículo que corresponde a la imagen.', 2, NULL, NULL, NULL),
(2, 'Seleccione el demostrativo que corresponde a la imagen.', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `puntos_totales` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_de_preguntas`
--

CREATE TABLE `resultado_de_preguntas` (
  `id` int(11) NOT NULL,
  `id_resultado` int(11) NOT NULL,
  `id_preguntas` int(11) NOT NULL,
  `id_opciones` int(11) NOT NULL,
  `puntos` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subtemas`
--

CREATE TABLE `subtemas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `nombrecorto` varchar(150) DEFAULT NULL,
  `Descripcion` varchar(150) DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `idtema` int(11) NOT NULL,
  `esvisible` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `subtemas`
--

INSERT INTO `subtemas` (`id`, `nombre`, `nombrecorto`, `Descripcion`, `imagen`, `idtema`, `esvisible`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Artículos', 'Articulos', NULL, '/images/articulos.svg', 2, 0, NULL, NULL, NULL),
(3, 'Demostrativo', 'Demostrativo', NULL, '/images/demostrativo.svg', 2, 0, NULL, NULL, NULL),
(4, 'Posesivo', 'Posesivo', NULL, '/images/posesivo.svg', 2, 0, NULL, NULL, NULL),
(5, 'Numerales', 'Numerales', NULL, '/images/numerales.svg', 2, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `nombrecorto` varchar(150) DEFAULT NULL,
  `Descripcion` varchar(150) DEFAULT NULL,
  `esvisible` tinyint(1) NOT NULL DEFAULT 0,
  `imagen` varchar(45) DEFAULT NULL,
  `idmodulo` int(11) NOT NULL,
  `idteoria` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `nombre`, `nombrecorto`, `Descripcion`, `esvisible`, `imagen`, `idmodulo`, `idteoria`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Determinantes', 'Determinantes', NULL, 0, '/images/Adjetivos.svg', 1, 1, NULL, NULL, NULL),
(3, 'Preposiciones', 'Preposiciones', NULL, 0, '/images/Preposiciones.svg', 1, 2, NULL, NULL, NULL),
(4, 'Adjetivos', 'Adjetivos', NULL, 0, '/images/conectores.svg', 1, 3, NULL, NULL, NULL),
(5, 'Conjunciones', 'Conjunciones', NULL, 0, '/images/conectores.svg', 1, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teoria`
--

CREATE TABLE `teoria` (
  `id` int(11) NOT NULL,
  `Descripcion` varchar(150) DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `teoria`
--

INSERT INTO `teoria` (`id`, `Descripcion`, `imagen`) VALUES
(1, 'PRUEBA DE INTRODUCCION INFORMACION - TEMA 1', NULL),
(2, 'PRUEBA DE INTRODUCCION INFORMACION - TEMA 2', NULL),
(3, 'PRUEBA DE INTRODUCCION INFORMACION - TEMA 3', NULL),
(4, 'PRUEBA DE INTRODUCCION INFORMACION - TEMA 4', NULL),
(5, 'PRUEBA DE INTRODUCCION INFORMACION - TEMA 5', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Byron Clemente Mejia Carrion', 'carrionmejia756@gmail.com', '$2y$10$g.gt4A4j/bjODcP7axnVgOHFtikVTTyySi8G0q1IJsoFBvJy1chjC', NULL, '2020-07-30 14:17:08', '2020-07-30 14:17:08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idsubtema` (`idsubtema`);

--
-- Indices de la tabla `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pregunta` (`id_pregunta`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_actividad` (`id_actividad`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultado_de_preguntas`
--
ALTER TABLE `resultado_de_preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_resultado` (`id_resultado`),
  ADD KEY `id_opciones` (`id_opciones`),
  ADD KEY `id_preguntas` (`id_preguntas`);

--
-- Indices de la tabla `subtemas`
--
ALTER TABLE `subtemas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idtemas` (`idtema`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idmodulo` (`idmodulo`),
  ADD KEY `idteoria` (`idteoria`);

--
-- Indices de la tabla `teoria`
--
ALTER TABLE `teoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `homes`
--
ALTER TABLE `homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resultado_de_preguntas`
--
ALTER TABLE `resultado_de_preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subtemas`
--
ALTER TABLE `subtemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `teoria`
--
ALTER TABLE `teoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `idsubtema` FOREIGN KEY (`idsubtema`) REFERENCES `subtemas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `id_pregunta` FOREIGN KEY (`id_pregunta`) REFERENCES `preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `id_actividad` FOREIGN KEY (`id_actividad`) REFERENCES `actividades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `resultado_de_preguntas`
--
ALTER TABLE `resultado_de_preguntas`
  ADD CONSTRAINT `id_opciones` FOREIGN KEY (`id_opciones`) REFERENCES `opciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_preguntas` FOREIGN KEY (`id_preguntas`) REFERENCES `preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_resultado` FOREIGN KEY (`id_resultado`) REFERENCES `resultados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subtemas`
--
ALTER TABLE `subtemas`
  ADD CONSTRAINT `idtemas` FOREIGN KEY (`idtema`) REFERENCES `temas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `temas`
--
ALTER TABLE `temas`
  ADD CONSTRAINT `idmodulo` FOREIGN KEY (`idmodulo`) REFERENCES `modulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idteoria` FOREIGN KEY (`idteoria`) REFERENCES `teoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


