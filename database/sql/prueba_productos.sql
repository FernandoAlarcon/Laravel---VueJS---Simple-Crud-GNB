-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2020 a las 12:32:25
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas`
--

CREATE TABLE `bodegas` (
  `id_bodega` int(11) NOT NULL,
  `bodega` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `bodegas`
--

INSERT INTO `bodegas` (`id_bodega`, `bodega`) VALUES
(1, 'Centro'),
(2, 'Oriente'),
(3, 'Occidente'),
(4, 'Sur');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega_productos`
--

CREATE TABLE `bodega_productos` (
  `id_productos` bigint(20) UNSIGNED NOT NULL,
  `Nombre_Producto` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodega` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estados` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cantidad` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Observaciones` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bodega_productos`
--

INSERT INTO `bodega_productos` (`id_productos`, `Nombre_Producto`, `bodega`, `Estados`, `Cantidad`, `Observaciones`, `created_at`, `updated_at`) VALUES
(1, 'Erick Fernando', '1', '1', '2323', 'dasdsaasd', NULL, NULL),
(2, 'eri', '1', '1', '1221', 'asdas', NULL, NULL),
(3, 'datos', '1', '0', '223', 'das', NULL, NULL),
(4, 'Erick Fernando', '1', '0', '2323', 'dasdsaasd', NULL, NULL),
(5, 'eri', '1', '1', '1221', 'asdas', NULL, NULL),
(6, 'datos', '1', '0', '223', 'das', NULL, NULL),
(7, 'Erick Fernando', '1', '0', '2323', 'dasdsaasd', NULL, NULL),
(8, 'eri', '1', '0', '1221', 'asdas', NULL, NULL),
(9, 'datos', '1', '0', '223', 'das', NULL, NULL),
(10, 'Erick Fernando', '1', '1', '2323', 'dasdsaasd', NULL, NULL),
(11, 'eri', '1', '0', '1221', 'asdas', NULL, NULL),
(12, 'datos', '1', '1', '223', 'das', NULL, NULL),
(13, 'Erick Fernando', '1', '0', '2323', 'dasdsaasd', NULL, NULL),
(14, 'eri', '1', '1', '1221', 'asdas', NULL, NULL),
(15, 'datos', '1', '0', '223', 'das', NULL, NULL),
(16, 'Erick Fernando', '1', '0', '2323', 'dasdsaasd', NULL, NULL),
(17, 'eri', '1', '1', '1221', 'asdas', NULL, NULL),
(18, 'datos', '1', '1', '223', 'das', NULL, NULL),
(19, 'ERICKSON', '4', '1', '2121', 'asdasda', '2020-02-14 06:04:56', '2020-02-14 06:04:56'),
(20, 'JSON', '1', '0', '22', 'dadadada', '2020-02-14 06:05:18', '2020-02-14 06:05:18'),
(21, 'tito', '1', '0', '1212', '123', '2020-02-14 04:44:27', '2020-02-14 04:44:27'),
(22, 'Erick Fernandoqw21', '1', '1', '12', '1adasdsa', '2020-02-14 04:49:41', '2020-02-14 04:49:41'),
(23, 'Andres', '3', '0', '4', 'Hola', '2020-02-17 04:37:31', '2020-02-17 04:37:31'),
(24, 'datos', '4', '1', '2', 'tata', '2020-10-03 10:23:28', '2020-10-03 10:23:28'),
(25, 'MasterMind', '4', '1', '22', 'tek', '2020-10-03 10:23:49', '2020-10-03 10:23:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2020_02_13_163914_create_tasks_table', 1),
(21, '2020_02_13_183401_create_bodega_productos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keep` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(60) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(22) DEFAULT NULL,
  `tipoUser` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `username`, `password`, `fullname`, `email`, `telefono`, `tipoUser`) VALUES
(1, 'ajohn', 'password1', 'John Carter', NULL, NULL, ''),
(2, 'berick', '$2a$10$eghGqQayHN3fz8T0XvE4V.IPpRvWBL4R35GesAh5RGfpdbJlQhIH.', 'Erick', 'erickfernand_@hotmail.com', NULL, ''),
(3, 'erick fernando', '$2a$10$J/8if6x49BNWhh2tlicljOmRpVD0MWNpAILvTJHvx/GFMm4qi2ptm', '', 'erickfernando_20@hotmail.com', NULL, '1'),
(4, 'cfer', '$2a$10$1OYKbn7wSWXg1zvGv7lvoumCWq81fMbQuCwV6yYBPvDPMQT3Ssl92', '', 'er@hot.com', '323256412', '1'),
(5, 'erick', '$2a$10$nJQiu2nmmP16UYtgG89AduO/F7xsDBLtpoZrK3Lgt7WOniSHNzodW', 'Fernando', NULL, NULL, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bodegas`
--
ALTER TABLE `bodegas`
  ADD PRIMARY KEY (`id_bodega`);

--
-- Indices de la tabla `bodega_productos`
--
ALTER TABLE `bodega_productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bodegas`
--
ALTER TABLE `bodegas`
  MODIFY `id_bodega` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `bodega_productos`
--
ALTER TABLE `bodega_productos`
  MODIFY `id_productos` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
