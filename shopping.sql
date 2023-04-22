-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2022 a las 20:32:42
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '27-07-2021 02:27:49 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Damas', 'Calzado para Damas\r\n', '2022-12-11 22:25:52', NULL),
(8, 'Niñas', 'Calzado para niñas', '2022-12-11 22:27:07', NULL),
(10, 'Caballeros', 'Calzado para Caballero', '2022-12-11 23:46:54', NULL),
(11, 'Niños', 'Calzado para niños', '2022-12-11 23:47:07', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 1, '2', 1, '2020-06-22 13:58:56', 'Internet Banking', NULL),
(8, 1, '1', 1, '2020-06-22 14:06:25', 'COD', NULL),
(9, 1, '12', 1, '2020-06-22 14:06:25', 'COD', NULL),
(10, 4, '2', 3, '2020-06-23 00:58:37', 'Debit / Credit card', NULL),
(11, 4, '18', 1, '2020-06-23 01:54:11', 'Internet Banking', NULL),
(12, 4, '20', 1, '2020-06-23 03:02:41', 'Internet Banking', NULL),
(13, 4, '15', 1, '2020-06-23 03:04:45', 'COD', NULL),
(14, 4, '12', 1, '2020-06-23 03:07:50', NULL, NULL),
(15, 4, '15', 1, '2020-06-23 03:07:50', NULL, NULL),
(16, 4, '2', 1, '2020-06-23 03:23:40', NULL, NULL),
(17, 5, '1', 1, '2021-07-27 19:59:30', 'COD', 'En proceso'),
(18, 6, '29', 1, '2022-12-12 17:29:30', 'Debit / Credit card', 'Entregado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 17, 'En proceso', 'ninguna', '2021-07-27 20:01:12'),
(6, 18, 'Entregado', 'si', '2022-12-12 17:31:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 15, 5, 5, 5, 'asfdsdf', 'sfdf', 'sdsdgd', '2021-07-27 19:55:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 8, 13, 'Zapatilla para niña ', 'Flexi', 250, 250, 'Tallas&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>9 - 15&nbsp;</b><div>Color&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>Rosado</b>&nbsp;</div><div><br><div><br></div><div><br></div></div>', '29264ea23ae43c6970d3de870b0d568a-product.jpg', '29264ea23ae43c6970d3de870b0d568a-product.jpg', '29264ea23ae43c6970d3de870b0d568a-product.jpg', 10, 'En Stock', '2022-12-11 23:06:50', NULL),
(22, 8, 16, 'Sandalias Rosas con Perlas', 'Flexi', 300, 350, 'Tallas&nbsp; &nbsp; &nbsp;9 - 15<div>Color&nbsp; &nbsp; &nbsp; Rosa con brillo</div>', '66b048a6902736d26f53f23ad9bb0124.jpg', '66b048a6902736d26f53f23ad9bb0124.jpg', '66b048a6902736d26f53f23ad9bb0124.jpg', 10, 'En Stock', '2022-12-11 23:58:44', NULL),
(23, 8, 13, 'Zapatilla Rosa', 'Flexi ', 400, 400, 'Tallas&nbsp; &nbsp; &nbsp; 9 -&nbsp; 15<div>Color&nbsp; &nbsp; &nbsp; &nbsp;Rosa</div>', 'niña1.jpg', 'niña1.jpg', 'niña1.jpg', 10, 'En Stock', '2022-12-12 04:14:54', NULL),
(24, 10, 18, 'Tenis Casuales Hombre', 'BOGGI', 500, 500, 'Talla&nbsp; &nbsp; 24 - 29&nbsp;<div>Color&nbsp; Varios</div>', 'b3ed2dfd37f779db18a4b125835f6eab.jpg', 'b3ed2dfd37f779db18a4b125835f6eab.jpg', 'b3ed2dfd37f779db18a4b125835f6eab.jpg', 10, 'En Stock', '2022-12-12 04:54:12', NULL),
(25, 10, 19, 'Zapatos de Vestir tipo Monk Hombre', 'BRUNELLO CUCINELLI', 600, 600, '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:black;mso-themecolor:text1;mso-ansi-language:ES-MX;mso-fareast-language:\r\nES-MX;mso-bidi-language:AR-SA\">&nbsp;Tallas&nbsp;&nbsp;&nbsp; 24 - 30</span><div><span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:black;mso-themecolor:text1;mso-ansi-language:ES-MX;mso-fareast-language:\r\nES-MX;mso-bidi-language:AR-SA\">Color Negro, Café&nbsp;</span><br></div>', '61UFW6ADcbL._AC_SY395_.jpg', '61UFW6ADcbL._AC_SY395_.jpg', '61UFW6ADcbL._AC_SY395_.jpg', 10, 'En Stock', '2022-12-12 04:55:35', NULL),
(26, 10, 20, 'Zapatos casuales estilo bostianos Hombre', 'BRUNELLO CUCINELLI', 600, 600, '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:black;mso-themecolor:text1;mso-ansi-language:ES-MX;mso-fareast-language:\r\nES-MX;mso-bidi-language:AR-SA\">Tallas&nbsp;&nbsp;&nbsp; 24 - 30</span><div><span style=\"color: black; font-family: Calibri, sans-serif; font-size: 11pt;\">Color&nbsp; &nbsp; &nbsp;Varios&nbsp;</span><br></div>', '614JhlEeAeL._AC_SY395_.jpg', '614JhlEeAeL._AC_SY395_.jpg', '614JhlEeAeL._AC_SY395_.jpg', 10, 'En Stock', '2022-12-12 05:03:02', NULL),
(27, 10, 18, 'Tenis Vitello Scritta Hombre', 'VERSACE', 700, 700, '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:black;mso-themecolor:text1;mso-ansi-language:ES-MX;mso-fareast-language:\r\nES-MX;mso-bidi-language:AR-SA\">Tallas&nbsp;&nbsp;&nbsp;\r\n24 - 30</span><div><span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:black;mso-themecolor:text1;mso-ansi-language:ES-MX;mso-fareast-language:\r\nES-MX;mso-bidi-language:AR-SA\">Color&nbsp; &nbsp; Varios&nbsp;</span><br></div>', 'images (3).jfif', 'images (3).jfif', 'images (3).jfif', 10, 'En Stock', '2022-12-12 05:15:52', NULL),
(28, 10, 19, 'Zapato de suela romana', 'GIANNI VERSACE', 700, 700, '<p class=\"MsoNormal\"><span style=\"color:black;\r\nmso-themecolor:text1;mso-fareast-language:ES-MX\">Tallas&nbsp;&nbsp;&nbsp; 24 - 30</span></p><p class=\"MsoNormal\"><span style=\"color: black;\">Color&nbsp; &nbsp; Varios&nbsp;</span></p>', '8196652-1.jpg', '8196652-1.jpg', '8196652-1.jpg', 10, 'En Stock', '2022-12-12 05:19:37', NULL),
(29, 10, 18, 'Tenis casuales Hombre', 'SALVATORE FERRAGAMO', 500, 500, '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:black;mso-themecolor:text1;mso-ansi-language:ES-MX;mso-fareast-language:\r\nES-MX;mso-bidi-language:AR-SA\">Tallas&nbsp;&nbsp;&nbsp;\r\n24 - 30</span><div><span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:black;mso-themecolor:text1;mso-ansi-language:ES-MX;mso-fareast-language:\r\nES-MX;mso-bidi-language:AR-SA\">Color&nbsp; &nbsp;Varios&nbsp;</span><br></div>', 'D_NQ_NP_655885-MLM46295734634_062021-W.jpg', 'D_NQ_NP_655885-MLM46295734634_062021-W.jpg', 'D_NQ_NP_655885-MLM46295734634_062021-W.jpg', 10, 'En Stock', '2022-12-12 05:28:51', NULL),
(30, 10, 19, 'zapato punta curva de caballero', 'OFFICINE CREATIVE', 650, 650, '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:black;mso-themecolor:text1;mso-ansi-language:ES-MX;mso-fareast-language:\r\nES-MX;mso-bidi-language:AR-SA\">Tallas&nbsp;&nbsp;&nbsp; 24 - 30</span><div><span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:black;mso-themecolor:text1;mso-ansi-language:ES-MX;mso-fareast-language:\r\nES-MX;mso-bidi-language:AR-SA\">Color&nbsp; &nbsp; Negros</span><br></div>', '8247122-1.jpg', '8247122-1.jpg', '8247122-1.jpg', 10, 'En Stock', '2022-12-12 05:30:09', NULL),
(31, 10, 20, 'Zapatos casuales Derby Hombre', 'GIANNI VERSACE', 600, 600, 'Tallas&nbsp; &nbsp;24 - 30<div>Color&nbsp; &nbsp;Varios</div>', 'D_NQ_NP_953139-MLM42723215813_072020-W.jpg', 'D_NQ_NP_953139-MLM42723215813_072020-W.jpg', 'D_NQ_NP_953139-MLM42723215813_072020-W.jpg', 10, 'En Stock', '2022-12-12 05:31:17', NULL),
(32, 10, 19, 'Zapato Estilo Egipcio', 'PALM ANGELS', 600, 600, 'Tallas&nbsp; 24 - 30&nbsp;<div>Color&nbsp; &nbsp;Varios</div>', 'Botines.jpg', 'Botines.jpg', 'Botines.jpg', 10, 'En Stock', '2022-12-12 05:34:06', NULL),
(33, 10, 19, 'Zapatos de Vestir Elegantes', 'VERSACE', 800, 800, 'Tallas&nbsp; 24 - 30<div>Color&nbsp; &nbsp;Varios</div>', 'images (4).jfif', 'images (4).jfif', 'images (4).jfif', 10, 'En Stock', '2022-12-12 05:36:48', NULL),
(34, 7, 22, 'zapatilla tacón de aguja', 'shara', 689, 459, 'Lucir cómodos al tacto.', '51kfWzu-QtL._AC_UY1000_.jpg', '51kfWzu-QtL._AC_UY1000_.jpg', '51kfWzu-QtL._AC_UY1000_.jpg', 10, 'En Stock', '2022-12-12 19:08:30', NULL),
(35, 7, 22, 'zapatilla plateada', 'Balenciaga', 1600, 1999, 'confortabilidad en los pies', '61X8GKpnoxL._AC_UY1000_.jpg', '61X8GKpnoxL._AC_UY1000_.jpg', '61X8GKpnoxL._AC_UY1000_.jpg', 100, 'En Stock', '2022-12-12 19:10:51', NULL),
(36, 7, 23, 'sandalias basicas', 'Avila moda', 150, 160, 'Sandalias básicas para salir', '51YdP9cfjtL._AC_UY1000_.jpg', '51YdP9cfjtL._AC_UY1000_.jpg', '51YdP9cfjtL._AC_UY1000_.jpg', 10, 'En Stock', '2022-12-12 19:14:53', NULL),
(37, 7, 23, 'sandalias blak', 'GIANNI VERSACE', 299, 349, 'Sandalias básicas', '51ZOmpJ-rLL._AC_SL1024_.jpg', '51ZOmpJ-rLL._AC_SL1024_.jpg', '51ZOmpJ-rLL._AC_SL1024_.jpg', 10, 'En Stock', '2022-12-12 19:17:16', NULL),
(38, 7, 23, 'Sandalia parche negro', 'BOGGI', 200, 234, 'sandalias cómodas para salir ', '61EIK94Kp8S._AC_UY1000_.jpg', '61EIK94Kp8S._AC_UY1000_.jpg', '61EIK94Kp8S._AC_UY1000_.jpg', 10, 'En Stock', '2022-12-12 19:19:53', NULL),
(39, 7, 23, 'Sandalia básica dorada', 'sushi', 170, 189, 'sandalia básica color dorada para salir', 'D_NQ_NP_708158-MLM49880959513_052022-W.jpg', 'D_NQ_NP_708158-MLM49880959513_052022-W.jpg', 'D_NQ_NP_708158-MLM49880959513_052022-W.jpg', 10, 'En Stock', '2022-12-12 19:25:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 8, 'Zapatillas', '2022-12-11 23:01:57', NULL),
(15, 8, 'Balerinas', '2022-12-11 23:51:37', NULL),
(16, 8, 'Sandalias Niña', '2022-12-11 23:51:51', '12-12-2022 12:42:20 AM'),
(17, 8, 'Botas', '2022-12-11 23:52:04', NULL),
(18, 10, 'Tenis', '2022-12-12 04:49:41', NULL),
(19, 10, 'Zapatos de vestir', '2022-12-12 04:49:52', NULL),
(20, 10, 'Casual', '2022-12-12 04:51:39', NULL),
(21, 10, 'Sandalias Hombre', '2022-12-12 04:52:02', '12-12-2022 12:42:31 AM'),
(22, 7, 'Zapatillas', '2022-12-12 18:44:57', NULL),
(23, 7, 'Sandalias ', '2022-12-12 19:13:02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 13:49:46', NULL, 0),
(25, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 13:54:27', '22-06-2020 07:42:06 PM', 1),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 20:37:14', NULL, 1),
(27, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 00:58:24', '22-06-2020 08:40:53 PM', 1),
(28, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 01:45:10', NULL, 1),
(29, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 03:23:26', NULL, 0),
(30, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 03:23:36', NULL, 1),
(31, 'prueba@prueba.com', 0x3a3a3100000000000000000000000000, '2021-07-27 19:58:06', NULL, 1),
(32, 'cj92399@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-12 17:29:19', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'prueba@prueba.com', 'prueba@prueba.com', 654654654, '0617ecd178b4f2d159070705bdce6764', 'direccion 1', 'estado 1', 'ciudad 1', 65464, NULL, NULL, NULL, NULL, '2021-07-27 19:57:56', NULL),
(6, 'Gerardo Antonino ', 'cj92399@gmail.com', 9931004153, '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-12 17:28:54', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 12, '2020-06-23 03:05:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
