-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-02-2020 a las 04:26:55
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
-- Estructura de tabla para la tabla `bodega_productos`
--

CREATE TABLE `bodega_productos` (
  `id_productos` bigint(20) UNSIGNED NOT NULL,
  `Nombre_Producto` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bodega` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estados` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cantidad` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Observaciones` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bodega_productos`
--

INSERT INTO `bodega_productos` (`id_productos`, `Nombre_Producto`, `Bodega`, `Estados`, `Cantidad`, `Observaciones`, `created_at`, `updated_at`) VALUES
(1, 'Erick Fernando', 'Oriente', '1', '2323', 'dasdsaasd', NULL, NULL),
(2, 'eri', 'Occidente', '1', '1221', 'asdas', NULL, NULL),
(3, 'datos', 'Oriente', '0', '223', 'das', NULL, NULL),
(4, 'Erick Fernando', 'Oriente', '0', '2323', 'dasdsaasd', NULL, NULL),
(5, 'eri', 'Occidente', '1', '1221', 'asdas', NULL, NULL),
(6, 'datos', 'Oriente', '0', '223', 'das', NULL, NULL),
(7, 'Erick Fernando', 'Oriente', '0', '2323', 'dasdsaasd', NULL, NULL),
(8, 'eri', 'Occidente', '0', '1221', 'asdas', NULL, NULL),
(9, 'datos', 'Oriente', '0', '223', 'das', NULL, NULL),
(10, 'Erick Fernando', 'Oriente', '1', '2323', 'dasdsaasd', NULL, NULL),
(11, 'eri', 'Occidente', '0', '1221', 'asdas', NULL, NULL),
(12, 'datos', 'Oriente', '1', '223', 'das', NULL, NULL),
(13, 'Erick Fernando', 'Oriente', '0', '2323', 'dasdsaasd', NULL, NULL),
(14, 'eri', 'Occidente', '1', '1221', 'asdas', NULL, NULL),
(15, 'datos', 'Oriente', '0', '223', 'das', NULL, NULL),
(16, 'Erick Fernando', 'Oriente', '0', '2323', 'dasdsaasd', NULL, NULL),
(17, 'eri', 'Occidente', '1', '1221', 'asdas', NULL, NULL),
(18, 'datos', 'Oriente', '0', '223', 'das', NULL, NULL),
(19, 'ERICKSON', 'Occidente', '1', '2121', 'asdasda', '2020-02-14 06:04:56', '2020-02-14 06:04:56'),
(20, 'JSON', 'Sur', '0', '22', 'dadadada', '2020-02-14 06:05:18', '2020-02-14 06:05:18'),
(21, 'tito', 'Oriente', '0', '1212', '123', '2020-02-14 04:44:27', '2020-02-14 04:44:27'),
(22, 'Erick Fernandoqw21', 'Oriente', '1', '12', '1adasdsa', '2020-02-14 04:49:41', '2020-02-14 04:49:41');

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

--
-- Índices para tablas volcadas
--

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bodega_productos`
--
ALTER TABLE `bodega_productos`
  MODIFY `id_productos` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
