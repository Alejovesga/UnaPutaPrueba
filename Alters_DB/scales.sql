-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2022 a las 00:25:18
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scales`
--

DROP TABLE IF EXISTS `scales`;

CREATE TABLE `scales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `procentaje` double NOT NULL,
  `recommendation` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `scales`
--

INSERT INTO `scales` (`id`, `scale`, `valor`, `procentaje`, `recommendation`, `created_at`, `updated_at`) VALUES
(1, 'las directrices planteadas en la recomendación están cumplidas en su totalidad (se cumplen 7 de los 7 criterios para la recomendación)\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 5, 100, 1, NULL, NULL),
(2, 'las directrices planteadas en la recomendación están cumplidas pero no en su totalidad (se cumplen 5 a 6 de los 7 criterios para la recomendación) \r\n\r\n\r\n\r\n\r\n\r\n\r\n', 4, 80, 1, NULL, NULL),
(3, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen 3 a 4 de los 7 criterios para la recomendación) \r\n\r\n\r\n\r\n\r\n\r\n\r\n', 3, 60, 1, NULL, NULL),
(4, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 1 a 2 de los 7 criterios para la recomendación) \r\n\r\n\r\n\r\n\r\n\r\n\r\n', 2, 40, 1, NULL, NULL),
(5, 'las directrices planteadas en la recomendación o no están o no son identificables. (no se cumple ninguno de los 7 criterios para la recomendación)\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 1, 20, 1, NULL, NULL),
(6, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumple 9 de los 9 criterios para la recomendación)	 ', 5, 100, 2, NULL, NULL),
(7, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen  7 a 8 de los 9 criterios para la recomendación) 	 ', 4, 80, 2, NULL, NULL),
(8, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen  5 a 6  de los 9 criterios para la recomendación) 	 ', 3, 60, 2, NULL, NULL),
(9, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 3 a 4 de los 9 criterios para la recomendación) 	 ', 2, 40, 2, NULL, NULL),
(10, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 a 2 de los 9  criterios para la recomendación)	 ', 1, 20, 2, NULL, NULL),
(11, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 5 de los 5 criterios para la recomendación)', 5, 100, 3, NULL, NULL),
(12, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 4  de los 5 criterios para la recomendación) ', 4, 80, 3, NULL, NULL),
(13, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen  3 de los 5 criterios para la recomendación) ', 3, 60, 3, NULL, NULL),
(14, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 2 de los 5 criterios para la recomendación) 	', 2, 40, 3, NULL, NULL),
(15, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 de los 5 criterios para la recomendación)', 1, 20, 3, NULL, NULL),
(16, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 4, NULL, NULL),
(17, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 4, NULL, NULL),
(18, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 4, NULL, NULL),
(19, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 4, NULL, NULL),
(20, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 4, NULL, NULL),
(21, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (Se cumplen 4 de los 4 criterios para la recomendación)	 ', 5, 100, 5, NULL, NULL),
(22, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen 3 de los 4 criterios para la recomendación) 	 ', 4, 80, 5, NULL, NULL),
(23, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 2 de los 4 criterios para la recomendación)  ', 3, 60, 5, NULL, NULL),
(24, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los 4 criterios para la recomendación)  ', 2, 40, 5, NULL, NULL),
(25, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	', 1, 20, 5, NULL, NULL),
(26, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 6, NULL, NULL),
(27, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 6, NULL, NULL),
(28, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 6, NULL, NULL),
(29, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 6, NULL, NULL),
(30, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 6, NULL, NULL),
(31, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 9 de los 9 criterios para la recomendación)	 ', 5, 100, 7, NULL, NULL),
(32, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 7 a 8 de los 9 criterios para la recomendación) 	 ', 4, 80, 7, NULL, NULL),
(33, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen 5 a 6 de los 9 criterios para la recomendación) 	 ', 3, 60, 7, NULL, NULL),
(34, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 3 a 4 de los 9 criterios para la recomendación) 	 ', 2, 40, 7, NULL, NULL),
(35, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumplen de 1 a 2 de los 9 criterios para la recomendación)	 ', 1, 20, 7, NULL, NULL),
(36, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 8, NULL, NULL),
(37, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 8, NULL, NULL),
(38, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 8, NULL, NULL),
(39, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 8, NULL, NULL),
(40, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 8, NULL, NULL),
(41, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 6 de los 6 criterios para la recomendación)	 ', 5, 100, 9, NULL, NULL),
(42, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 4 a 5  de los 6 criterios para la recomendación) 	 ', 4, 80, 9, NULL, NULL),
(43, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen  3 de los 6 criterios para la recomendación) 	 ', 3, 60, 9, NULL, NULL),
(44, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 2 a 3 de los 6 criterios para la recomendación) 	 ', 2, 40, 9, NULL, NULL),
(45, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 0 a 1 de los 6 criterios para la recomendación)	 ', 1, 20, 9, NULL, NULL),
(46, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se encuentran todos los elementos del criterio para la recomendación)	 ', 5, 100, 10, NULL, NULL),
(47, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se encuentran los elementos del criterio para la recomendación de forma no total)	 ', 4, 80, 10, NULL, NULL),
(48, 'las directrices planteadas en la recomendación se dan de forma parcial (Se encuentran algunos elementos del criterio para la recomendación )	 ', 3, 60, 10, NULL, NULL),
(49, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple de forma anecdotica el criterio para la recomendación) 	 ', 2, 40, 10, NULL, NULL),
(50, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se encuentran el criterio para la recomendación)	 ', 1, 20, 10, NULL, NULL),
(51, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se encuentran todos los elementos del criterio para la recomendación)	 ', 5, 100, 11, NULL, NULL),
(52, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se encuentran los elementos del criterio para la recomendación de forma no total)	 ', 4, 80, 11, NULL, NULL),
(53, 'las directrices planteadas en la recomendación se dan de forma parcial (Se encuentran algunos elementos del criterio para la recomendación )	 ', 3, 60, 11, NULL, NULL),
(54, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple de forma anecdotica el criterio para la recomendación) 	 ', 2, 40, 11, NULL, NULL),
(55, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se encuentran el criterio para la recomendación)	 ', 1, 20, 11, NULL, NULL),
(56, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 7 de los 7 criterios para la recomendación)	 ', 5, 100, 12, NULL, NULL),
(57, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 5 a 6 de los 7 criterios para la recomendación) 	 ', 4, 80, 12, NULL, NULL),
(58, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen 3 a 4 de los 7 criterios para la recomendación) 	 ', 3, 60, 12, NULL, NULL),
(59, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 1 a 2 de los 7 criterios para la recomendación) 	 ', 2, 40, 12, NULL, NULL),
(60, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los 7 criterios para la recomendación)	 ', 1, 20, 12, NULL, NULL),
(61, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 13, NULL, NULL),
(62, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 13, NULL, NULL),
(63, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 13, NULL, NULL),
(67, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 13, NULL, NULL),
(68, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 13, NULL, NULL),
(69, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 14, NULL, NULL),
(70, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 14, NULL, NULL),
(71, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 14, NULL, NULL),
(72, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 14, NULL, NULL),
(73, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 14, NULL, NULL),
(74, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumple 10 de los 10 criterios para la recomendación)	 ', 5, 100, 15, NULL, NULL),
(75, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen  8 a 9 de los 10 criterios para la recomendación) 	 ', 4, 80, 15, NULL, NULL),
(76, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen  6 a 7  de los 10 criterios para la recomendación) 	 ', 3, 60, 15, NULL, NULL),
(77, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 3 a 5 de los 10 criterios para la recomendación) 	 ', 2, 40, 15, NULL, NULL),
(78, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 a 2 de los 10  criterios para la recomendación)	 ', 1, 20, 15, NULL, NULL),
(79, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 16, NULL, NULL),
(80, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 16, NULL, NULL),
(81, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 16, NULL, NULL),
(82, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 16, NULL, NULL),
(83, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 16, NULL, NULL),
(84, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 17, NULL, NULL),
(85, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 17, NULL, NULL),
(86, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 17, NULL, NULL),
(87, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 17, NULL, NULL),
(88, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 17, NULL, NULL),
(89, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 6 de los 6 criterios para la recomendación)	 ', 5, 100, 18, NULL, NULL),
(90, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 4 a 5  de los 6 criterios para la recomendación) 	 ', 4, 80, 18, NULL, NULL),
(91, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen  2 a 3 de los 6 criterios para la recomendación)', 3, 60, 18, NULL, NULL),
(92, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumple 1 de los 6 criterios para la recomendación) 	 ', 2, 40, 18, NULL, NULL),
(93, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendacion)	 ', 1, 20, 18, NULL, NULL),
(94, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (Se cumplen 4 de los 4 criterios para la recomendación)	 ', 5, 100, 19, NULL, NULL),
(95, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen 3 de los 4 criterios para la recomendación) 	 ', 4, 80, 19, NULL, NULL),
(96, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 2 de los 4 criterios para la recomendación) 	 ', 3, 60, 19, NULL, NULL),
(97, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los 4 criterios para la recomendación) 	 ', 2, 40, 19, NULL, NULL),
(98, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 19, NULL, NULL),
(99, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 20, NULL, NULL),
(100, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 20, NULL, NULL),
(101, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 20, NULL, NULL),
(102, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 20, NULL, NULL),
(103, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 20, NULL, NULL),
(104, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 21, NULL, NULL),
(105, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 21, NULL, NULL),
(106, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 21, NULL, NULL),
(107, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 21, NULL, NULL),
(108, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 21, NULL, NULL),
(109, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 24, NULL, NULL),
(110, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 24, NULL, NULL),
(111, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 24, NULL, NULL),
(112, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 24, NULL, NULL),
(113, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 24, NULL, NULL),
(114, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 22, NULL, NULL),
(115, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 22, NULL, NULL),
(116, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 22, NULL, NULL),
(117, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 22, NULL, NULL),
(118, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 22, NULL, NULL),
(119, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 23, NULL, NULL),
(120, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 23, NULL, NULL),
(121, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 23, NULL, NULL),
(122, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 23, NULL, NULL),
(123, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 23, NULL, NULL),
(124, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se encuentran todos los elementos del criterio para la recomendación)	 ', 5, 100, 25, NULL, NULL),
(125, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se encuentran los elementos del criterio para la recomendación de forma no total)	 ', 4, 80, 25, NULL, NULL),
(126, 'las directrices planteadas en la recomendación se dan de forma parcial (Se encuentran algunos elementos del criterio para la recomendación )	 ', 3, 60, 25, NULL, NULL),
(127, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple de forma anecdotica el criterio para la recomendación) 	 ', 2, 40, 25, NULL, NULL),
(128, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se encuentran el criterio para la recomendación)	 ', 1, 20, 25, NULL, NULL),
(129, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 26, NULL, NULL),
(130, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 26, NULL, NULL),
(131, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 26, NULL, NULL),
(132, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 26, NULL, NULL),
(133, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 26, NULL, NULL),
(134, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 27, NULL, NULL),
(135, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 27, NULL, NULL),
(136, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 27, NULL, NULL),
(137, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 27, NULL, NULL),
(138, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 27, NULL, NULL),
(139, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 28, NULL, NULL),
(140, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 28, NULL, NULL),
(141, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 28, NULL, NULL),
(142, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 28, NULL, NULL),
(143, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 28, NULL, NULL),
(144, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 29, NULL, NULL),
(145, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 29, NULL, NULL),
(146, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 29, NULL, NULL),
(147, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 29, NULL, NULL),
(148, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 29, NULL, NULL),
(149, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumple 10 de los 10 criterios para la recomendación)	 ', 5, 100, 30, NULL, NULL),
(150, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen  8 a 9 de los 10 criterios para la recomendación) 	 ', 4, 80, 30, NULL, NULL),
(151, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen  6 a 7  de los 10 criterios para la recomendación) 	 ', 3, 60, 30, NULL, NULL),
(152, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 3 a 5 de los 10 criterios para la recomendación) 	 ', 2, 40, 30, NULL, NULL),
(153, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 a 2 de los 10  criterios para la recomendación)	 ', 1, 20, 30, NULL, NULL),
(154, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 6 de los 6 criterios para la recomendación)	 ', 5, 100, 31, NULL, NULL),
(155, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 4 a 5  de los 6 criterios para la recomendación) 	 ', 4, 80, 31, NULL, NULL),
(156, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen de 2 a 3 de los 6 criterios para la recomendación) ', 3, 60, 31, NULL, NULL),
(157, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los 6 criterios para la recomendación) ', 2, 40, 31, NULL, NULL),
(158, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación) ', 1, 20, 31, NULL, NULL),
(159, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (Se cumplen 4 de los 4 criterios para la recomendación)	 ', 5, 100, 32, NULL, NULL),
(160, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen 3 de los 4 criterios para la recomendación) 	 ', 4, 80, 32, NULL, NULL),
(161, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 2 a 3 de los 4 criterios para la recomendación ) ', 3, 60, 32, NULL, NULL),
(162, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los 4 criterios para la recomendación) 	 ', 2, 40, 32, NULL, NULL),
(163, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 32, NULL, NULL),
(164, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 6 de los 6 criterios para la recomendación)	 ', 5, 100, 33, NULL, NULL),
(165, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen de 4 a 5  de los 6 criterios para la recomendación) 	 ', 4, 80, 33, NULL, NULL),
(166, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen de 2 a 3 de los 6 criterios para la recomendación) 	 ', 3, 60, 33, NULL, NULL),
(167, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los 6 criterios para la recomendación)  ', 2, 40, 33, NULL, NULL),
(168, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 33, NULL, NULL),
(169, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 34, NULL, NULL),
(170, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 34, NULL, NULL),
(171, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 34, NULL, NULL),
(172, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 34, NULL, NULL),
(173, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 34, NULL, NULL),
(174, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 35, NULL, NULL),
(175, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 35, NULL, NULL),
(176, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 35, NULL, NULL),
(177, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 35, NULL, NULL),
(178, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 35, NULL, NULL),
(179, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 36, NULL, NULL),
(180, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 36, NULL, NULL),
(181, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 36, NULL, NULL),
(182, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 36, NULL, NULL),
(183, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 36, NULL, NULL),
(184, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 37, NULL, NULL),
(185, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 37, NULL, NULL),
(186, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 37, NULL, NULL),
(187, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 37, NULL, NULL),
(188, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 37, NULL, NULL),
(189, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 38, NULL, NULL),
(190, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 38, NULL, NULL),
(191, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 38, NULL, NULL),
(192, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 38, NULL, NULL),
(193, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 38, NULL, NULL),
(194, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 5  de los 5 criterios para la recomendación)	 ', 5, 100, 39, NULL, NULL),
(195, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen 4 de los 5 criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 39, NULL, NULL),
(196, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 3  de los 5 criterios para la recomendación de forma total)	 ', 3, 60, 39, NULL, NULL),
(197, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen 2 de los  5 criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 39, NULL, NULL),
(198, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 de los criterios para la recomendación)	 ', 1, 20, 39, NULL, NULL),
(199, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 5  de los 5 criterios para la recomendación)	 ', 5, 100, 40, NULL, NULL),
(200, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen 4 de los 5 criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 40, NULL, NULL),
(201, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 3  de los 5 criterios para la recomendación de forma total)	 ', 3, 60, 40, NULL, NULL),
(202, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen 2 de los  5 criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 40, NULL, NULL),
(203, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 de los criterios para la recomendación)	 ', 1, 20, 40, NULL, NULL),
(204, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 41, NULL, NULL),
(205, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 41, NULL, NULL),
(206, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 41, NULL, NULL),
(207, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 41, NULL, NULL),
(208, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 41, NULL, NULL),
(209, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (Se cumplen 4 de los 4 criterios para la recomendación)	 ', 5, 100, 42, NULL, NULL),
(210, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen 3 de los 4 criterios para la recomendación) 	 ', 4, 80, 42, NULL, NULL),
(211, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 2 de los 4 criterios para la recomendación) 	 ', 3, 60, 42, NULL, NULL),
(212, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los 4 criterios para la recomendación) 	 ', 2, 40, 42, NULL, NULL),
(213, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 42, NULL, NULL),
(214, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 43, NULL, NULL),
(215, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 43, NULL, NULL),
(216, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 43, NULL, NULL),
(217, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 43, NULL, NULL),
(218, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 43, NULL, NULL),
(219, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 9 de los 9 criterios para la recomendación)	 ', 5, 100, 44, NULL, NULL),
(220, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 7 a 8 de los 9 criterios para la recomendación) 	 ', 4, 80, 44, NULL, NULL),
(221, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen de 4 a 6  de los 9 criterios para la recomendación) ', 3, 60, 44, NULL, NULL),
(222, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen  1 a 3 de los 9 criterios para la recomendación)  ', 2, 40, 44, NULL, NULL),
(223, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 44, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `scales`
--
ALTER TABLE `scales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `scales`
--
ALTER TABLE `scales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
