-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2022 a las 19:13:50
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
-- Base de datos: `dblosprisioneros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discografia`
--

CREATE TABLE `discografia` (
  `id_disco` int(8) NOT NULL,
  `año` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `portada` varchar(500) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `contenido` varchar(500) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `discografia`
--

INSERT INTO `discografia` (`id_disco`, `año`, `nombre`, `portada`, `contenido`) VALUES
(1, '1984', 'La Voz De Los 80', 'https://lastfm.freetls.fastly.net/i/u/770x0/a77a8d3c33b647aba79a1e02630d6eb4.jpg#a77a8d3c33b647aba79a1e02630d6eb4', 'https://www.rockandpop.cl/wp-content/uploads/2019/12/los-prisioneros-la-voz-de-los-80-cassette.jpg'),
(2, '1986', 'Pateando Piedras', 'https://lastfm.freetls.fastly.net/i/u/770x0/ae1df16a50d44195897a30ef36918584.jpg', 'https://www.laizquierdadiario.cl/IMG/jpg/01-29.jpg'),
(3, '1987', 'La Cultura De La Basura', 'https://i.discogs.com/cY3smtIEIWX8Xh9mHkk6BRzBU1a7Iez1BMPkGkJJKqQ/rs:fit/g:sm/q:90/h:600/w:589/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU3Mzg4/NTAtMTU2MTI2NjEw/MC03ODUzLmpwZWc.jpeg', 'https://i.discogs.com/OsfuLM8WEBlx4AIQFQFG-NpzZqRLT5IQxAztROPYrVU/rs:fit/g:sm/q:90/h:600/w:582/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU3Mzg4/NTAtMTU2MTI2NjEw/My02ODAyLmpwZWc.jpeg'),
(4, '1990', 'Corazones', 'https://i.discogs.com/OgmLOXM_d95F3WFVpII72GQgfP_KMBlyCrNKKkA4fH8/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI3Mjgz/NzktMTQ5NjcxNDYy/Mi0zNTIwLmpwZWc.jpeg', 'https://i.discogs.com/xmOA1FxqhuIAqf_FsmuL6ZBhhZC4u-_cJEZlQ8664KY/rs:fit/g:sm/q:90/h:466/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI3Mjgz/NzktMTQ5NjcxNDYx/Ni0xNDcwLmpwZWc.jpeg'),
(5, '1996', 'Ni Por La Razón, Ni Por La Fuerza', 'https://i.discogs.com/vyPVLUtNxlaYpVy7yp-T_sX_C3oSvSBu2N2cGQHJTt8/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzNTMx/NDQtMTU2NTA0MzY4/Ny05NDAyLmpwZWc.jpeg', 'https://i.discogs.com/qfNJrfhr_9qDAWd71ZZMVekFbGwSTxJ-cb-wFAryc1c/rs:fit/g:sm/q:90/h:541/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzNTMx/NDQtMTU3NjM2Nzky/NS02OTA5LmpwZWc.jpeg'),
(6, '2002', 'Estadio Nacional', 'https://i.discogs.com/h_9k8y6u5xAONenZdnPhI5pMcwrN4oxtDOBUdHq3pio/rs:fit/g:sm/q:90/h:589/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3NjEw/NDMtMTU2NTM2MDQ3/OS0zOTMyLmpwZWc.jpeg', 'https://i.discogs.com/XY1MduhfakKZ1rHAV5aRmznhKfUq7s4nTiA21poiqpg/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3NjEw/NDMtMTU2NTM2MDQ4/MC0xNjIyLmpwZWc.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `user_pass` varchar(32) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`) VALUES
(1, 'luismagana', '2622b6a1c97380d51c3588eecc03ff85');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `discografia`
--
ALTER TABLE `discografia`
  ADD PRIMARY KEY (`id_disco`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `discografia`
--
ALTER TABLE `discografia`
  MODIFY `id_disco` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
