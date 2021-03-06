-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2016 a las 02:07:51
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bookstore`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `autorId` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`autorId`, `nombre`) VALUES
(1, 'Stephen King'),
(2, 'Edgar Allan Poe'),
(3, 'Bram Stoker'),
(4, 'Anna Todd'),
(5, 'Mark Twain');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `categoriaId` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `rewrite` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`categoriaId`, `descripcion`, `rewrite`) VALUES
(1, 'Terror', 'terror'),
(2, 'Juvenil', 'juvenil'),
(3, 'Comedia', 'comedia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `libroId` int(11) NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `categoriaId` int(11) NOT NULL,
  `precioNuevo` decimal(5,2) DEFAULT NULL,
  `precioAntiguo` decimal(5,2) DEFAULT NULL,
  `descripcion` text,
  `imagen` varchar(45) DEFAULT NULL,
  `rewrite` varchar(45) DEFAULT NULL,
  `autorId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`libroId`, `titulo`, `categoriaId`, `precioNuevo`, `precioAntiguo`, `descripcion`, `imagen`, `rewrite`, `autorId`) VALUES
(1, 'El Resplandor', 1, '20.00', '35.00', 'El resplandor (título original The Shining) es la tercera novela de terror del escritor estadounidense Stephen King, publicada en 1977. El título se inspiró en la canción de John Lennon "Instant Karma!", que contiene la línea «We all shine on...» King quiso en un principio ponerle el título The Shine, pero lo cambió cuando se dio cuenta de que "shine" era un título muy despectivo para las personas de color. Fue su primer bestseller en tapa dura, lo que lo posicionó como un preeminente escritor del género de horror.', 'el-resplandor.jpg', 'el-resplandor', 1),
(2, 'Drácula', 1, '15.00', '18.00', 'Drácula es una novela publicada en 1897 por el irlandés Bram Stoker, quien ha convertido a su antagonista en el vampiro más famoso. Se dice que el escritor se basó en las conversaciones que mantuvo con un erudito húngaro llamado Arminius Vámbéry, quien le habló de Vlad Dr?culea. La novela, escrita de manera epistolar, presenta otros temas, como el papel de la mujer en la época victoriana, la sexualidad, la inmigración, el colonialismo o el folclore. Como curiosidad, cabe destacar que Bram Stoker no inventó la leyenda vampírica, pero la influencia de la novela ha logrado llegar al cine, el teatro y la televisión.', 'dracula.jpg', 'dracula', 3),
(3, 'El gato negro', 1, '10.00', '13.00', 'El gato negro (título original en inglés: The Black Cat) es un cuento de horror del escritor estadounidense Edgar Allan Poe, publicado en el periódico Saturday Evening Post de Filadelfia en su número del 19 de agosto de 1843. La crítica lo considera uno de los más espeluznantes de la historia de la literatura.', 'el-gato-negro.jpg', 'el-gato-negro', 2),
(7, 'It', 1, '10.00', '15.00', 'It (en idioma español, «Eso») es una novela de terror publicada en 1986 por el escritor estadounidense Stephen King. Cuenta la historia de un grupo de chicos que son aterrorizados por un malvado monstruo -al que llaman «Eso»- que es capaz de cambiar de forma, alimentándose del terror que produce en sus víctimas.', 'it.jpg', 'it', 1),
(8, 'After. En mil pedazos (Serie After 2)', 2, '12.50', '14.50', 'Una historia que nadie quiere que acabe y todo el mundo quiere vivir.Tessa se acaba de despertar de un sueño. Es consciente de que era todo demasiado bonito para ser cierto… ¿Es posible volver a sonreír cuando todo se rompe en pedazos? Ella y Hardin parecían hechos el uno para el otro, como dos almas gemelas, pero él lo ha roto todo, se ha acabado el sueño para siempre. ¿Cómo ha podido ser tan ingenua? Si quiere recuperarla, Hardin deberá luchar como nunca por lo que ha hecho. ¿Estará preparado? ¿Se puede perdonar todo?', 'after-en-mil-pedazos.jpg', 'after-en-mil-pedazos', 4),
(12, 'Carrie', 1, '15.00', '0.00', 'Carrie es la primera novela publicada del escritor estadounidense Stephen King, publicada en 1974. Es uno de los libros más censurados en las escuelas de EE.UU. y la película incluso estuvo prohibida en Finlandia. La mayor parte del libro está escrito con una estructura epistolar en forma de recortes de noticias, cartas, extractos de libros, etc. A pesar de ser su primera obra publicada y la que lo lanzó a la fama, no fue la primera que escribió. En 1976, el director de cine Brian de Palma hizo la primera película basada en la novela.', 'carrie.jpg', 'carrie', 1),
(13, 'Un yanqui en la corte del rey Arturo', 3, '25.99', NULL, 'Un yanqui en la corte del Rey Arturo (A Connecticut Yankee in King Arthur''s Court) es una obra literaria del escritor estadounidense Mark Twain que enmarca ideas religioso-políticas y conocimientos tecnológicos de la época del autor en una ficción caballeresca satírica.', 'un-yanqui-en-la-corte-del-rey-arturo.jpg', 'un-yanqui-en-la-corte-del-rey-arturo', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_usuario`
--

CREATE TABLE `libros_usuario` (
  `libros_usuarioId` int(11) NOT NULL,
  `usuarioId` int(11) DEFAULT NULL,
  `libroId` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros_usuario`
--

INSERT INTO `libros_usuario` (`libros_usuarioId`, `usuarioId`, `libroId`, `cantidad`, `fecha`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 13, NULL, NULL),
(4, 1, 13, NULL, NULL),
(5, 1, 13, NULL, NULL),
(6, 1, 7, NULL, NULL),
(7, 1, 13, NULL, NULL),
(8, 1, 7, NULL, NULL),
(9, 2, 12, NULL, NULL),
(10, 11, 8, 4, '2016-11-06 23:53:32'),
(11, 11, 12, 5, '2016-11-06 23:53:32'),
(12, 1, 8, 16, '2016-11-06 18:01:39'),
(13, 1, 12, 4, '2016-11-06 18:41:06'),
(14, 1, 12, 4, '2016-11-06 18:41:18'),
(15, 1, 12, 4, '2016-11-06 18:41:32'),
(16, 1, 13, 1, '2016-11-06 18:45:44'),
(17, 1, 13, 1, '2016-11-06 18:47:47'),
(18, 1, 13, 1, '2016-11-06 18:48:14'),
(19, 1, 13, 1, '2016-11-06 18:48:32'),
(20, 1, 12, 1, '2016-11-06 19:07:23'),
(21, 1, 13, 2, '2016-11-06 19:11:17'),
(22, 1, 13, 2, '2016-11-06 19:11:43'),
(23, 1, 12, 1, '2016-11-06 19:21:15'),
(24, 1, 12, 1, '2016-11-06 19:22:11'),
(25, 1, 12, 1, '2016-11-06 19:22:23'),
(26, 1, 12, 1, '2016-11-06 19:23:13'),
(27, 1, 12, 1, '2016-11-06 19:24:44'),
(28, 1, 12, 1, '2016-11-06 19:28:28'),
(29, 1, 12, 1, '2016-11-06 19:31:19'),
(30, 1, 12, 1, '2016-11-06 19:31:41'),
(31, 1, 12, 1, '2016-11-06 19:31:44'),
(32, 1, 12, 1, '2016-11-06 19:32:07'),
(33, 1, 12, 1, '2016-11-06 19:32:27'),
(34, 1, 12, 1, '2016-11-06 19:32:37'),
(35, 1, 12, 1, '2016-11-06 19:32:42'),
(36, 1, 13, 1, '2016-11-06 19:34:03'),
(37, 1, 13, 1, '2016-11-06 19:35:47'),
(38, 1, 13, 1, '2016-11-06 19:35:55'),
(39, 1, 13, 1, '2016-11-06 19:36:41'),
(40, 1, 13, 1, '2016-11-06 19:37:21'),
(41, 1, 13, 1, '2016-11-06 19:38:14'),
(42, 1, 13, 1, '2016-11-06 19:38:24'),
(43, 1, 13, 1, '2016-11-06 19:38:53'),
(44, 1, 13, 2, '2016-11-06 19:39:31'),
(45, 1, 12, 1, '2016-11-06 23:13:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarioId` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL,
  `saldo` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuarioId`, `nombre`, `apellido`, `direccion`, `email`, `contrasena`, `saldo`) VALUES
(1, 'Carlos', 'Chirito', NULL, 'chiritorom@gmail.com', '123', '33.01'),
(2, 'user1', 'user1', NULL, 'webmaster@fastlane.pe', '6ZaxN2Vzm9NUJT2y', '0.00'),
(3, 'Carlos', 'Romero', NULL, 'ccr_kl@hotmail.com', '123456', '0.00'),
(4, '', '', NULL, 'webmaster@fastlane.pes', '6ZaxN2Vzm9NUJT2y', '0.00'),
(5, '', '', NULL, 'webmaster@fastlane.ped', '6ZaxN2Vzm9NUJT2y', '0.00'),
(6, '', '', NULL, 'webmaster@fastlane.pesd', '6ZaxN2Vzm9NUJT2y', '0.00'),
(7, 'Sheyla', NULL, NULL, 'alechirito@hotmail.com', '1234', '0.00'),
(8, 'Sheyla', NULL, NULL, 'alechirito@hotmail.comk', '1234', '0.00'),
(9, 'asd', NULL, NULL, 'webmaster@fa.c', '6ZaxN2Vzm9NUJT2y', '0.00'),
(10, 'Carlos', NULL, NULL, 'webmasterla@fastlane.pe', '6ZaxN2Vzm9NUJT2y', '0.00'),
(11, 'Carlos', 'Chirito', NULL, 'webmasterma@fastlane.pe', '6ZaxN2Vzm9NUJT2y', '0.00'),
(12, 'Carlos', 'Chirito', NULL, 'webmaster123@fastlane.pe', '6ZaxN2Vzm9NUJT2y', '0.00'),
(13, 'Car', 'asd', 'asd', 'chiritorom@gmail.com', 'asd', NULL),
(14, 'Carlos', '123', '123', 'chiritorom2@gmail.com', '123', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`autorId`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoriaId`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`libroId`),
  ADD KEY `fk_libros_categorias_idx` (`categoriaId`),
  ADD KEY `fk_libros_autores_idx` (`autorId`);

--
-- Indices de la tabla `libros_usuario`
--
ALTER TABLE `libros_usuario`
  ADD PRIMARY KEY (`libros_usuarioId`),
  ADD KEY `usuariosId_idx` (`usuarioId`),
  ADD KEY `librosId_idx` (`libroId`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarioId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `autorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categoriaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `libroId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `libros_usuario`
--
ALTER TABLE `libros_usuario`
  MODIFY `libros_usuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `fk_libros_autores` FOREIGN KEY (`autorId`) REFERENCES `autores` (`autorId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_libros_categoria` FOREIGN KEY (`categoriaId`) REFERENCES `categorias` (`categoriaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `libros_usuario`
--
ALTER TABLE `libros_usuario`
  ADD CONSTRAINT `libroId` FOREIGN KEY (`libroId`) REFERENCES `libros` (`libroId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuarioId` FOREIGN KEY (`usuarioId`) REFERENCES `usuarios` (`usuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
