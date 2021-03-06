-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 09, 2019 at 09:52 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `runbuddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `eventName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `eventDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `eventName`, `eventDate`) VALUES
(3, 'Marathon', '2019-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `miles`
--

CREATE TABLE `miles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` mediumint(9) UNSIGNED NOT NULL,
  `mileage` float(7,2) UNSIGNED NOT NULL,
  `run_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `miles`
--

INSERT INTO `miles` (`id`, `time`, `mileage`, `run_id`) VALUES
(1, 700, 1.00, 1),
(2, 800, 1.00, 2),
(3, 900, 1.00, 3),
(4, 1800, 2.00, 3),
(5, 2700, 3.00, 3),
(6, 900, 1.00, 4),
(7, 1800, 2.00, 4),
(8, 2700, 3.00, 4),
(9, 3600, 4.00, 4),
(10, 4500, 5.00, 4),
(11, 5400, 6.00, 4),
(12, 10300, 7.00, 4),
(13, 11200, 8.00, 4),
(14, 12100, 9.00, 4),
(15, 13000, 10.00, 4),
(16, 22031, 1.00, 1),
(17, 22042, 1.00, 1),
(18, 21255, 2.00, 1),
(19, 8139, 3.00, 1),
(20, 0, 4.00, 1),
(36, 45, 1.00, 150),
(37, 45, 2.00, 150),
(77, 45, 1.00, 159),
(78, 45, 1.00, 161),
(79, 45, 1.00, 162),
(84, 45, 1.00, 165),
(86, 8, 0.20, 165),
(87, 45, 1.00, 166),
(88, 5, 1.12, 166),
(89, 45, 1.00, 167),
(90, 3, 1.06, 167),
(91, 45, 1.00, 168),
(92, 45, 2.00, 168),
(93, 6, 2.13, 168),
(96, 28, 0.62, 170),
(97, 45, 1.00, 171),
(98, 2, 1.06, 171),
(99, 45, 1.00, 172),
(100, 45, 1.00, 173),
(101, 3, 1.08, 173),
(102, 45, 1.00, 174),
(103, 4, 1.08, 174),
(104, 11, 0.24, 175),
(105, 45, 1.00, 176),
(106, 1, 1.04, 176),
(107, 1, 0.03, 177),
(108, 45, 1.00, 0),
(109, 44, 2.00, 0),
(110, 2, 2.05, 0),
(111, 5, 0.10, 0),
(112, 5, 0.10, 0),
(113, 3, 0.07, 179),
(114, 2, 0.00, 0),
(115, 4, 0.09, 181),
(116, 3, 0.00, 0),
(117, 3, 0.07, 183),
(118, 2, 0.00, 0),
(119, 8, 0.18, 185),
(120, 5, 0.10, 186),
(121, 3, 0.07, 187),
(122, 9, 0.19, 188),
(123, 3, 0.07, 189),
(124, 45, 1.00, 190),
(125, 6, 1.14, 190),
(126, 45, 1.00, 191),
(127, 14, 1.31, 191),
(128, 13, 0.29, 192),
(129, 34, 0.75, 193),
(130, 45, 1.00, 194),
(131, 45, 2.00, 194),
(132, 6, 2.13, 194),
(133, 12, 0.27, 195),
(134, 26, 0.58, 196),
(135, 6, 0.14, 197),
(136, 8, 0.18, 198),
(137, 5, 0.12, 199),
(138, 6, 0.13, 200),
(139, 6, 0.13, 201),
(140, 45, 1.00, 202),
(141, 45, 1.00, 203),
(142, 5, 1.12, 203),
(143, 3, 0.08, 204),
(144, 45, 1.00, 207),
(145, 9, 1.22, 207),
(146, 5, 0.11, 208),
(147, 45, 1.00, 209),
(148, 6, 1.14, 209),
(149, 3, 0.06, 210),
(150, 2, 0.05, 211),
(151, 2, 0.05, 212),
(152, 4, 0.09, 213),
(153, 3, 0.07, 214),
(154, 3, 0.08, 215),
(155, 9, 0.20, 216),
(156, 4, 0.09, 217),
(157, 2, 0.04, 218),
(158, 3, 0.00, 219),
(159, 3, 0.07, 220),
(160, 3, 0.06, 221),
(161, 0, 0.05, 222),
(162, 5, 0.10, 230),
(163, 5, 0.11, 231),
(164, 3, 0.05, 232),
(165, 5, 0.12, 233),
(166, 2, 0.04, 235),
(167, 2, 0.05, 236),
(168, 2, 0.04, 237),
(169, 6, 0.13, 238),
(170, 45, 1.00, 239),
(171, 45, 1.00, 239),
(172, 45, 1.00, 239),
(173, 45, 1.00, 239),
(174, 46, 1.00, 239),
(175, 46, 1.00, 239),
(176, 46, 1.00, 239),
(177, 46, 1.00, 239),
(178, 46, 1.00, 239),
(179, 47, 1.00, 239),
(180, 47, 1.00, 239),
(181, 47, 1.00, 239),
(182, 47, 1.00, 239),
(183, 47, 1.00, 239),
(184, 48, 1.00, 239),
(185, 48, 1.00, 239),
(186, 48, 1.00, 239),
(187, 48, 1.00, 239),
(188, 48, 1.00, 239),
(189, 49, 1.00, 239),
(190, 49, 1.00, 239),
(191, 49, 1.00, 239),
(192, 49, 1.00, 239),
(193, 49, 1.00, 239),
(194, 50, 1.00, 239),
(195, 50, 1.00, 239),
(196, 50, 1.12, 239),
(197, 4, 0.08, 241),
(198, 5, 0.12, 242),
(199, 45, 1.00, 243),
(200, 17, 1.38, 243),
(201, 16, 0.35, 244),
(202, 9, 0.20, 245),
(203, 10, 0.22, 246),
(204, 10, 0.22, 247),
(205, 14, 0.32, 248),
(206, 12, 0.28, 249),
(207, 14, 0.21, 250),
(208, 11, 0.12, 251),
(209, 21, 0.23, 252),
(210, 14, 0.15, 253),
(211, 10, 0.11, 254),
(212, 16, 0.17, 255),
(213, 10, 0.11, 257),
(214, 8, 0.09, 258),
(215, 4, 0.05, 259),
(216, 13, 0.14, 260),
(217, 11, 0.12, 261),
(218, 43, 0.48, 262),
(219, 7, 0.08, 263),
(220, 12, 0.14, 264),
(221, 11, 0.12, 265),
(222, 23, 0.25, 266),
(223, 11, 0.13, 267),
(224, 6, 0.07, 268),
(225, 9, 0.11, 269),
(226, 89, 1.00, 270),
(227, 19, 1.22, 270),
(228, 23, 0.27, 271),
(229, 13, 0.16, 272),
(230, 1, 0.02, 273),
(231, 10, 0.12, 275),
(232, 9, 0.11, 276),
(233, 11, 0.12, 277),
(234, 6, 0.07, 278),
(235, 45, 0.51, 280),
(236, 29, 0.33, 281),
(237, 88, 1.00, 282),
(238, 6, 1.07, 282),
(239, 89, 1.00, 283),
(240, 13, 1.15, 283),
(241, 11, 0.18, 285),
(242, 19, 0.40, 286),
(243, 14, 0.28, 287),
(244, 31, 0.61, 288),
(245, 13, 0.23, 289),
(246, 4, 0.09, 290),
(247, 2, 0.03, 292),
(248, 2, 0.04, 293),
(249, 2, 0.05, 297),
(250, 2, 0.03, 300),
(251, 2, 0.04, 304),
(252, 5, 0.00, 312),
(253, 7, 0.00, 313),
(254, 6, 0.00, 314),
(255, 4, 0.00, 315),
(256, 0, 0.00, 319),
(257, 0, 0.00, 320),
(258, 6, 0.00, 321),
(259, 4, 0.00, 322),
(260, 6, 0.00, 323),
(261, 1, 0.00, 326),
(262, 2, 0.00, 327),
(263, 3, 0.00, 328),
(264, 3, 0.00, 329),
(265, 3, 0.00, 0),
(266, 3, 0.00, 333),
(267, 9, 0.00, 334),
(268, 2, 0.00, 335),
(269, 4, 0.00, 336),
(270, 3, 0.00, 337),
(271, 2, 0.00, 338),
(272, 4, 0.00, 339),
(273, 6, 0.00, 340),
(274, 4, 0.00, 341),
(275, 3, 0.00, 342),
(276, 2, 0.00, 343),
(277, 2, 0.00, 344),
(278, 5, 0.00, 345),
(279, 4, 0.00, 346),
(280, 3, 0.00, 347),
(281, 0, 0.00, 348),
(282, 2, 0.00, 349);

-- --------------------------------------------------------

--
-- Table structure for table `run_stats`
--

CREATE TABLE `run_stats` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `distance` float(7,2) UNSIGNED NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `time` mediumint(8) UNSIGNED NOT NULL,
  `heart_rate` tinyint(3) UNSIGNED NOT NULL,
  `calories` mediumint(8) UNSIGNED NOT NULL,
  `pace` mediumint(8) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `run_stats`
--

INSERT INTO `run_stats` (`id`, `distance`, `lat`, `lng`, `city`, `time`, `heart_rate`, `calories`, `pace`, `date`, `user_id`) VALUES
(1, 1.00, 0.000000, 0.000000, '', 700, 0, 0, 700, '2019-04-16 07:12:00', 1),
(2, 4.00, 0.000000, 0.000000, '', 3200, 0, 0, 800, '2019-04-15 08:14:10', 2),
(17, 0.00, 0.000000, 0.000000, '', 1378, 0, 100, 100, '2019-04-25 15:41:28', 1),
(18, 0.00, 0.000000, 0.000000, '', 16889, 0, 100, 100, '2019-04-25 15:47:37', 1),
(171, 1.06, 0.000000, 0.000000, '', 47, 0, 100, 100, '2019-04-28 17:40:56', 3),
(173, 1.08, 0.000000, 0.000000, '', 48, 0, 100, 100, '2019-04-28 18:08:55', 3),
(174, 1.08, 0.000000, 0.000000, '', 48, 0, 100, 100, '2019-04-28 22:29:29', 3),
(176, 1.04, 0.000000, 0.000000, '', 46, 0, 100, 100, '2019-04-29 10:55:46', 3),
(180, 0.00, 0.000000, 0.000000, '', 0, 0, 0, 0, '2019-05-01 19:21:54', 4),
(181, 0.09, 33.634911, -117.740509, '', 4, 0, 1, 100, '2019-05-01 19:22:56', 4),
(182, 0.00, 0.000000, 0.000000, '', 0, 0, 0, 0, '2019-05-01 19:25:32', 4),
(183, 0.07, 33.634907, -117.740494, '', 3, 0, 0, 100, '2019-05-01 19:25:45', 4),
(185, 0.18, 33.634903, -117.740509, '', 8, 0, 2, 100, '2019-05-01 19:36:19', 4),
(190, 1.14, 33.816128, -118.125854, '', 50, 0, 15, 100, '2019-05-02 21:08:19', 3),
(203, 1.12, 33.816128, -118.125862, '', 50, 0, 14, 100, '2019-05-04 16:04:56', 3),
(207, 1.22, 33.816097, -118.125854, '', 54, 0, 16, 100, '2019-05-04 16:24:26', 3),
(209, 1.14, 33.816284, -118.125877, '', 50, 0, 15, 100, '2019-05-04 18:14:19', 3),
(243, 1.38, 33.816269, -118.126015, '', 61, 0, 18, 100, '2019-05-04 19:34:12', 3),
(283, 1.15, 33.816284, -118.125870, '', 102, 0, 30, 100, '2019-05-05 09:40:46', 3),
(334, 0.00, 33.634907, -117.740501, 'Irvine', 9, 0, 0, 100, '2019-05-09 13:03:36', 3),
(343, 0.00, 33.634895, -117.740486, 'Irvine', 2, 0, 0, 100, '2019-05-09 13:14:17', 3),
(345, 0.00, 33.634914, -117.740463, 'Irvine', 5, 0, 0, 100, '2019-05-09 13:18:10', 3),
(346, 0.00, 33.634892, -117.740456, 'Irvine', 4, 0, 0, 100, '2019-05-09 13:21:28', 3),
(347, 0.00, 33.634918, -117.740463, '', 3, 0, 0, 100, '2019-05-09 13:24:00', 3),
(348, 0.00, 33.634930, -117.740471, '', 0, 0, 0, 100, '2019-05-09 13:26:39', 3),
(349, 0.00, 33.634911, -117.740463, 'Irvine', 2, 0, 0, 100, '2019-05-09 14:50:28', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `age` tinyint(3) UNSIGNED NOT NULL,
  `height` smallint(5) UNSIGNED NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `age`, `height`, `weight`, `email`, `password`, `date`) VALUES
(1, 'Alice', 'Le', 'female', 30, 63, 120, 'lealice927@gmail.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', '0000-00-00 00:00:00'),
(2, 'Jaime', 'Kim', 'female', 28, 66, 130, 'jaimekim@email.com', '2aa60a8ff7fcd473d321e0146afd9e26df395147', '0000-00-00 00:00:00'),
(3, 'Johnny', 'Pham', 'male', 22, 70, 150, 'johnnypham@email.com', '1119cfd37ee247357e034a08d844eea25f6fd20f', '0000-00-00 00:00:00'),
(4, 'David', 'Lee', 'male', 28, 68, 150, 'davidlee@email.com', 'a1d7584daaca4738d499ad7082886b01117275d8', '0000-00-00 00:00:00'),
(30, 'Johnny', 'Pham', 'male', 22, 60, 160, 'johnnypham@google.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2019-04-28 18:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_connections`
--

CREATE TABLE `user_connections` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `ip_address` varchar(14) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_connections`
--

INSERT INTO `user_connections` (`id`, `token`, `users_id`, `created`, `ip_address`) VALUES
(1, '5e4fb80b11594ea2d523ff4d5a5dc8dcbeff0b5e', 1, '2019-04-23 15:41:28', '127.0.0.1'),
(2, 'a6909d7e31723d3959e51ec752d45efe1e951181', 1, '2019-04-23 15:42:27', '127.0.0.1'),
(3, 'e4ab0222863d8875d218e8e78d372dd65365b29b', 1, '2019-04-23 16:25:35', '127.0.0.1'),
(4, '74d43091b566c0ec8cd192bc296eef7eccac5c77', 1, '2019-04-24 12:04:13', '127.0.0.1'),
(5, '165be81d5299ab2a8051112d04e28d957e69c7f7', 2, '2019-04-24 12:15:22', '127.0.0.1'),
(6, 'fcf1062331f91e66399b491aacc265bb8630b3fe', 1, '2019-04-24 12:43:14', '127.0.0.1'),
(7, '5cda3a390670b4e972576947a7f4071621d4c072', 1, '2019-04-24 13:21:58', '127.0.0.1'),
(8, 'bc224c493447e0f45c85c770cf21c08b95807579', 20, '2019-04-24 15:56:20', '127.0.0.1'),
(9, 'fa74d79fffe7170559427e5d52aad3adc84fc4dc', 21, '2019-04-24 16:29:40', '127.0.0.1'),
(10, 'e7b73705a5cd00e36e94722931dc028f6ccb33c1', 22, '2019-04-24 16:36:10', '127.0.0.1'),
(11, '8f37c789ad8f49a2647a550ea2612095481337b7', 1, '2019-04-24 18:15:28', '127.0.0.1'),
(12, '5727c86bb97fe08500735e435363f5d0d1244030', 23, '2019-04-24 18:15:50', '127.0.0.1'),
(13, '77391d6cdfeec619d9354c08139c202c3be3bc11', 24, '2019-04-24 18:27:25', '127.0.0.1'),
(14, 'afe4b7afc8d44b67c7e5a8478a7f9186d328a001', 28, '2019-04-24 18:30:14', '127.0.0.1'),
(15, '462270427cdb4cd524fa92a6dcefb882a8970955', 29, '2019-04-24 19:06:14', '127.0.0.1'),
(16, '4718e215e3a6c50b2304394e610ded360049a10c', 3, '2019-04-25 11:57:25', '127.0.0.1'),
(17, '10caca23315fc238a42c4d363116f00a372299e8', 3, '2019-04-25 15:51:20', '127.0.0.1'),
(18, 'c5f103dcc0b4fd94e566fb22bfe2fde202210100', 3, '2019-04-26 13:03:01', '127.0.0.1'),
(19, 'f6644e8ee74c3c4316b095db556958f57edeaa8e', 3, '2019-04-26 13:14:57', '127.0.0.1'),
(20, '07fb8abddc57ed2f0348eeede481695251094a97', 3, '2019-04-26 13:19:05', '127.0.0.1'),
(21, 'f20839f20088a487b67efa69b2a7d4b5da2219f6', 3, '2019-04-26 13:29:29', '127.0.0.1'),
(22, '98fdac6e7e45abf1cde72ab99f0e7cf19036eba5', 3, '2019-04-26 13:29:41', '127.0.0.1'),
(23, '188776c49f18bc82a3f6f3d97007ba685f74f3e6', 3, '2019-04-26 13:29:55', '127.0.0.1'),
(24, '54f55818503d1465add3885068272426659c74dd', 3, '2019-04-26 13:31:56', '127.0.0.1'),
(25, '1043b16722a6fa7bd2a07b0d8170721c6f28aba4', 3, '2019-04-26 13:31:58', '127.0.0.1'),
(26, 'd53dcf2a9cc02a980bc984b035ecc6b285fc51a5', 3, '2019-04-26 13:31:58', '127.0.0.1'),
(27, '6b40e867f2823628b045d0d82812cc446c521251', 3, '2019-04-26 13:31:58', '127.0.0.1'),
(28, 'a39ab1250406f6022130d85ea9c3408367998984', 3, '2019-04-26 13:31:58', '127.0.0.1'),
(29, 'df7a48fe7013ef15372ffcf4c4e61508f6c1936e', 3, '2019-04-26 13:33:29', '127.0.0.1'),
(30, '534192a652d7f5b3586884386fc42effa19c92e7', 3, '2019-04-26 13:36:46', '127.0.0.1'),
(31, 'cd99d580c4ab0b967b53851d5fd86e296e82fb05', 3, '2019-04-26 13:48:20', '127.0.0.1'),
(32, '0e6a377d4dac6b1ea427cd6b8f24cc7ac02578b0', 3, '2019-04-26 13:52:47', '127.0.0.1'),
(33, '5ac42a782399a5a797bf319e5db0f317e3009adf', 3, '2019-04-26 13:55:26', '127.0.0.1'),
(34, '6fe35416d8102d6f59bf1766df25d94154d3511f', 3, '2019-04-26 14:01:42', '127.0.0.1'),
(35, 'fc0d11deb8165e4508e29d22fcb762b7b9a38bfb', 3, '2019-04-26 14:02:45', '127.0.0.1'),
(36, '6e23cf8fcb9491f41f1bf2211389aac03d67b35a', 3, '2019-04-26 14:10:34', '127.0.0.1'),
(37, 'd0d5b64bbd949e1027c116c32fb002015de1ad94', 3, '2019-04-26 17:00:53', '127.0.0.1'),
(38, '9f7328a3b742cd9d3b80e50bcb860edc426152a5', 3, '2019-04-26 17:03:31', '127.0.0.1'),
(39, '65ef17b3777077db61bdb518a5c9cf66028deb39', 3, '2019-04-26 17:14:45', '127.0.0.1'),
(40, 'e108b0c884f20339ba87473442f11bb9d2ed555b', 3, '2019-04-26 17:17:23', '127.0.0.1'),
(41, 'd08dc6e02d22cae80b7bb348c1abe7ba50d911ca', 3, '2019-04-26 17:22:18', '127.0.0.1'),
(42, '6408e8e11f22fa5a325a3c1cb8836f83ead5cfad', 3, '2019-04-28 13:43:37', '127.0.0.1'),
(43, 'cbba1568e40691723c1bafa158456753a14030bf', 30, '2019-04-28 18:41:05', '127.0.0.1'),
(44, 'ccc33e597a073fee51d1d407e0ef1c3fbc49550a', 3, '2019-04-28 18:41:46', '127.0.0.1'),
(45, 'db36e93ea111530491819a7656f4b1d0b104bef7', 3, '2019-04-29 00:50:28', '127.0.0.1'),
(46, '0c778678ae8363b169216f60a8392bc86787fb97', 4, '2019-05-01 19:21:51', '127.0.0.1'),
(47, '336ed62716c8eb001fec7f0c960a165a68f71037', 4, '2019-05-01 19:21:51', '127.0.0.1'),
(48, '2a2f4a278edc3ab745c6fc62996a3c07bf1d1874', 4, '2019-05-01 19:22:46', '127.0.0.1'),
(49, '7e763ea266b94c32ad28c6962613d17c04013601', 4, '2019-05-01 19:22:46', '127.0.0.1'),
(50, 'd88f128f1b9db039077fd43645866f1b8ba2fdd4', 4, '2019-05-01 19:35:56', '127.0.0.1'),
(51, '448f2a57c4788e5404c37921247043d5e0dba90b', 4, '2019-05-01 19:35:56', '127.0.0.1'),
(52, '0a2a957e2fd1187756fda1e035699cd03f03a15c', 4, '2019-05-01 19:37:48', '127.0.0.1'),
(53, '25dca76653c2971a180483e46282ca494428d617', 4, '2019-05-01 19:37:48', '127.0.0.1'),
(54, '43d3a2b9ceb17666e7814c9f4b0d0fa1117f60d7', 4, '2019-05-01 19:39:50', '127.0.0.1'),
(55, '66ac426b0e7c54e3ef83343b3925d3ff92496746', 4, '2019-05-01 19:39:50', '127.0.0.1'),
(56, '0485f05501bc6c4b479254b1b0af999c6206eded', 3, '2019-05-02 15:56:41', '127.0.0.1'),
(57, '0be79e26e962ccbd2a3318d1e6a7543f4b976656', 3, '2019-05-02 15:56:41', '127.0.0.1'),
(58, '73d96cc4aceeb9ca1b1de31d18ca00de11776358', 3, '2019-05-02 23:51:48', '127.0.0.1'),
(59, 'd44fabd9d3751c8ed538b985d9fc7c902ca4a1ca', 3, '2019-05-02 23:51:48', '127.0.0.1'),
(60, '9e1446147e1c6ccca703917eb1cb5a2c999ba842', 3, '2019-05-04 15:03:19', '127.0.0.1'),
(61, '0f51ff040a5ab9c5742ca542f0ea7bb69779f40f', 3, '2019-05-04 15:03:19', '127.0.0.1'),
(62, '9c3c8b1d62761357c73250201f6e28267ef61e83', 3, '2019-05-04 15:31:00', '127.0.0.1'),
(63, '9a57a45263e2906c183d4ec4b73b676032de87b9', 3, '2019-05-04 15:31:00', '127.0.0.1'),
(64, '545a0f25e637c6e5d4fec07a5002ee66909494c6', 3, '2019-05-04 16:03:21', '127.0.0.1'),
(65, '6a2ce2f7c40e259499571ccde8435936c6a03b8c', 3, '2019-05-04 16:03:21', '127.0.0.1'),
(66, 'a5407c210c3a0868597bd15c895cdc656b865e8e', 3, '2019-05-04 16:03:56', '127.0.0.1'),
(67, '27d77a16b32e2413070ef012e770253c0205a785', 3, '2019-05-04 16:03:56', '127.0.0.1'),
(68, '0f72a43ea5b621714f102816ab869a7b5592b5d6', 3, '2019-05-04 16:09:12', '127.0.0.1'),
(69, 'a19cbfb67dbb45d848ea0843bc57a5c839ef5bb3', 3, '2019-05-04 16:09:12', '127.0.0.1'),
(70, '540c821200a722a7be58b240ce7d4aee6675ce06', 3, '2019-05-04 22:46:43', '127.0.0.1'),
(71, 'ae5770d7a85891c4cb48355e030213cc9442b170', 3, '2019-05-04 22:46:43', '127.0.0.1'),
(72, '3e231ed7718d8efcaf93f21b1f93fa10d6cbf91e', 3, '2019-05-05 09:23:39', '127.0.0.1'),
(73, '6624d0ceccb96c871f2ae365720bdef3080ed30a', 3, '2019-05-05 09:23:39', '127.0.0.1'),
(74, '0238fdba643b7dd5a6224f014f1e03b2350c1e5c', 3, '2019-05-05 09:24:09', '127.0.0.1'),
(75, 'cf1ea4fb225865df33e011eb9e4be550c33ad173', 3, '2019-05-05 09:24:09', '127.0.0.1'),
(76, '794467271d5e9b9aa56da18c27341f8370364b4e', 3, '2019-05-05 09:24:26', '127.0.0.1'),
(77, '64d343c954b5d2a0ac843aebe66be168e6c711fc', 3, '2019-05-05 09:24:26', '127.0.0.1'),
(78, 'e64307a7115f35f6077a5ace3452fc1c3c50e7eb', 3, '2019-05-05 09:24:43', '127.0.0.1'),
(79, 'a38a4cad6463fe50e22dc6ce04597e0ca2fdbcc5', 3, '2019-05-05 09:24:43', '127.0.0.1'),
(80, '1eadca5a66c56a88607dbe7badd27fa0af041cf5', 3, '2019-05-05 10:15:20', '127.0.0.1'),
(81, 'eb71fb9f5f7caf42cc263afa8545bfc731603795', 3, '2019-05-05 10:15:20', '127.0.0.1'),
(82, 'cbfb021d67b7d6df79467d7b4e2c072ab06cdc0d', 3, '2019-05-05 11:16:12', '127.0.0.1'),
(83, '19929b03dcb107db3650b7bf75d9562d237043be', 3, '2019-05-05 11:16:12', '127.0.0.1'),
(84, '16f2f31313dac03b92126cd3a80b26a8374a17e6', 3, '2019-05-07 14:36:48', '127.0.0.1'),
(85, '8ca16582ab0ac3b968ba0731aff233965dcead05', 3, '2019-05-07 14:36:48', '127.0.0.1'),
(86, 'bfb1cf876f3d1fcbef02c28ba6c40bc36d586757', 3, '2019-05-07 14:40:25', '127.0.0.1'),
(87, '385052a8d3913269b8921040cec312feec1090dc', 3, '2019-05-07 14:40:25', '127.0.0.1'),
(88, 'b7334ea820d4039420a140d003ca5b8dbce8f87c', 3, '2019-05-07 21:52:07', '127.0.0.1'),
(89, '1ce01a35eab8435675d56faa9cb4a0ba1e421312', 3, '2019-05-07 21:52:07', '127.0.0.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `miles`
--
ALTER TABLE `miles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `run_stats`
--
ALTER TABLE `run_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users` ADD FULLTEXT KEY `last_name` (`last_name`);

--
-- Indexes for table `user_connections`
--
ALTER TABLE `user_connections`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `miles`
--
ALTER TABLE `miles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `run_stats`
--
ALTER TABLE `run_stats`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_connections`
--
ALTER TABLE `user_connections`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
