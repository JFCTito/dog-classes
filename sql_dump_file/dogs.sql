-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-01-2024 a las 23:49:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dogs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dogs`
--

/* CREATE TABLE `dogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `hairColor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; */

--
-- Volcado de datos para la tabla `dogs`
--

INSERT INTO `dogs` (`id`, `photo`, `breed`, `size`, `hairColor`, `created_at`, `updated_at`) VALUES
(1, 'https://res.cloudinary.com/deywcelcp/image/upload/v1706049734/kofjpcktvek5b7hiw75y.jpg', 'affenpinscher', 'pequeño', 'negro', '2024-01-23 21:42:14', '2024-01-23 21:42:14'),
(2, 'https://res.cloudinary.com/deywcelcp/image/upload/v1706049773/oi9pqt0c6qa1gvggwrjf.jpg', 'golden retriever', 'grande', 'marron', '2024-01-23 21:42:53', '2024-01-23 21:42:53'),
(3, 'https://res.cloudinary.com/deywcelcp/image/upload/v1706049795/i5bilir6nl7ogodk4rgj.jpg', 'beagle', 'mediano', 'marron', '2024-01-23 21:43:15', '2024-01-23 21:43:15'),
(4, 'https://res.cloudinary.com/deywcelcp/image/upload/v1706049819/bbul5cjqy7vctmlxkzld.jpg', 'norwegian buhund', 'mediano', 'amarillo', '2024-01-23 21:43:39', '2024-01-23 21:43:39'),
(5, 'https://res.cloudinary.com/deywcelcp/image/upload/v1706049839/ngirqtdmle2iqbxp2rsl.jpg', 'bichon frise', 'pequeño', 'blanco', '2024-01-23 21:43:59', '2024-01-23 21:43:59'),
(6, 'https://res.cloudinary.com/deywcelcp/image/upload/v1706049858/ab2buqkl6bzvmrwvgtr8.jpg', 'Chihuahua', 'pequeño', 'negro', '2024-01-23 21:44:18', '2024-01-23 21:44:18'),
(7, 'https://res.cloudinary.com/deywcelcp/image/upload/v1706049878/dfudaxedsdmrzm8g5ybd.jpg', 'bloodhound', 'grande', 'marron', '2024-01-23 21:44:38', '2024-01-23 21:44:38'),
(8, 'https://res.cloudinary.com/deywcelcp/image/upload/v1706049902/hphnkglog1zycfbsm4ba.jpg', 'Bulldog', 'mediano', 'marron', '2024-01-23 21:45:02', '2024-01-23 21:45:02'),
(9, 'https://res.cloudinary.com/deywcelcp/image/upload/v1706049929/y68cgeh1jwpwlusiyqxu.jpg', 'boston terrier', 'mediano', 'negro', '2024-01-23 21:45:29', '2024-01-23 21:45:29'),
(10, 'https://res.cloudinary.com/deywcelcp/image/upload/v1706049950/spjv9sjaemwjo7bqv8ym.jpg', 'bull terrier', 'mediano', 'blanco', '2024-01-23 21:45:50', '2024-01-23 21:45:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dogs`
--
/* ALTER TABLE `dogs`
  ADD PRIMARY KEY (`id`); */

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dogs`
--
ALTER TABLE `dogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
