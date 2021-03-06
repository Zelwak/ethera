-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 16 Janvier 2018 à 13:50
-- Version du serveur :  5.7.20-0ubuntu0.17.10.1
-- Version de PHP :  7.1.12-3+ubuntu17.10.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dip_sql_ethera`
--

-- --------------------------------------------------------

--
-- Structure de la table `bag`
--

CREATE TABLE `bag` (
  `id` int(11) NOT NULL,
  `bagType_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bag`
--

INSERT INTO `bag` (`id`, `bagType_id`) VALUES
(8, 1),
(12, 1),
(29, 1),
(37, 1),
(43, 2),
(45, 2),
(48, 2),
(52, 2),
(57, 2),
(60, 2),
(18, 3),
(32, 3),
(10, 4),
(22, 4),
(31, 4),
(41, 4),
(56, 4),
(4, 5),
(15, 5),
(21, 5),
(55, 5),
(59, 5),
(16, 6),
(36, 6),
(9, 7),
(28, 7),
(33, 7),
(39, 7),
(40, 7),
(2, 8),
(3, 8),
(14, 8),
(27, 8),
(34, 8),
(35, 8),
(46, 8),
(50, 8),
(5, 9),
(7, 9),
(11, 9),
(19, 9),
(47, 9),
(51, 9),
(17, 10),
(26, 10),
(53, 10),
(54, 10),
(1, 11),
(25, 11),
(30, 11),
(38, 11),
(42, 11),
(44, 11);

-- --------------------------------------------------------

--
-- Structure de la table `bagType`
--

CREATE TABLE `bagType` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bagType`
--

INSERT INTO `bagType` (`id`, `name`, `size`) VALUES
(1, 'Sacoche modeste', 10),
(2, 'Bagage du dément', 55),
(3, 'Sac totémique', 35),
(4, 'Sacoche royale', 65),
(5, 'Sac illusoire', 55),
(6, 'Paquetage grumelot', 85),
(7, 'Sac en peau de dragon', 55),
(8, 'Sac abyssal', 85),
(9, 'Sac en tisse-givre', 80),
(10, 'Sac sans fond', 55),
(11, 'Sac en peau de démon', 40);

-- --------------------------------------------------------

--
-- Structure de la table `field`
--

CREATE TABLE `field` (
  `id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `fieldType_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `field`
--

INSERT INTO `field` (`id`, `x`, `y`, `width`, `height`, `fieldType_id`) VALUES
(1, 0, 0, 100, 100, 1),
(2, 0, 100, 100, 100, 11),
(3, 0, 200, 100, 100, 5),
(4, 0, 300, 100, 100, 10),
(5, 0, 400, 100, 100, 7),
(6, 0, 500, 100, 100, 10),
(7, 0, 600, 100, 100, 6),
(8, 0, 700, 100, 100, 7),
(9, 0, 800, 100, 100, 6),
(10, 0, 900, 100, 100, 11),
(11, 0, 1000, 100, 100, 9),
(12, 0, 1100, 100, 100, 4),
(13, 0, 1200, 100, 100, 11),
(14, 0, 1300, 100, 100, 2),
(15, 0, 1400, 100, 100, 2),
(16, 0, 1500, 100, 100, 5),
(17, 0, 1600, 100, 100, 10),
(18, 0, 1700, 100, 100, 2),
(19, 0, 1800, 100, 100, 1),
(20, 0, 1900, 100, 100, 6),
(21, 100, 0, 100, 100, 9),
(22, 100, 100, 100, 100, 6),
(23, 100, 200, 100, 100, 7),
(24, 100, 300, 100, 100, 1),
(25, 100, 400, 100, 100, 7),
(26, 100, 500, 100, 100, 1),
(27, 100, 600, 100, 100, 7),
(28, 100, 700, 100, 100, 11),
(29, 100, 800, 100, 100, 1),
(30, 100, 900, 100, 100, 1),
(31, 100, 1000, 100, 100, 7),
(32, 100, 1100, 100, 100, 11),
(33, 100, 1200, 100, 100, 5),
(34, 100, 1300, 100, 100, 4),
(35, 100, 1400, 100, 100, 10),
(36, 100, 1500, 100, 100, 9),
(37, 100, 1600, 100, 100, 2),
(38, 100, 1700, 100, 100, 7),
(39, 100, 1800, 100, 100, 5),
(40, 100, 1900, 100, 100, 6),
(41, 200, 0, 100, 100, 11),
(42, 200, 100, 100, 100, 10),
(43, 200, 200, 100, 100, 2),
(44, 200, 300, 100, 100, 11),
(45, 200, 400, 100, 100, 4),
(46, 200, 500, 100, 100, 6),
(47, 200, 600, 100, 100, 3),
(48, 200, 700, 100, 100, 7),
(49, 200, 800, 100, 100, 3),
(50, 200, 900, 100, 100, 8),
(51, 200, 1000, 100, 100, 5),
(52, 200, 1100, 100, 100, 7),
(53, 200, 1200, 100, 100, 7),
(54, 200, 1300, 100, 100, 11),
(55, 200, 1400, 100, 100, 10),
(56, 200, 1500, 100, 100, 11),
(57, 200, 1600, 100, 100, 4),
(58, 200, 1700, 100, 100, 7),
(59, 200, 1800, 100, 100, 11),
(60, 200, 1900, 100, 100, 8),
(61, 300, 0, 100, 100, 5),
(62, 300, 100, 100, 100, 7),
(63, 300, 200, 100, 100, 1),
(64, 300, 300, 100, 100, 3),
(65, 300, 400, 100, 100, 2),
(66, 300, 500, 100, 100, 1),
(67, 300, 600, 100, 100, 1),
(68, 300, 700, 100, 100, 3),
(69, 300, 800, 100, 100, 4),
(70, 300, 900, 100, 100, 10),
(71, 300, 1000, 100, 100, 7),
(72, 300, 1100, 100, 100, 3),
(73, 300, 1200, 100, 100, 6),
(74, 300, 1300, 100, 100, 4),
(75, 300, 1400, 100, 100, 9),
(76, 300, 1500, 100, 100, 9),
(77, 300, 1600, 100, 100, 9),
(78, 300, 1700, 100, 100, 10),
(79, 300, 1800, 100, 100, 8),
(80, 300, 1900, 100, 100, 2),
(81, 400, 0, 100, 100, 9),
(82, 400, 100, 100, 100, 4),
(83, 400, 200, 100, 100, 10),
(84, 400, 300, 100, 100, 6),
(85, 400, 400, 100, 100, 7),
(86, 400, 500, 100, 100, 11),
(87, 400, 600, 100, 100, 6),
(88, 400, 700, 100, 100, 9),
(89, 400, 800, 100, 100, 9),
(90, 400, 900, 100, 100, 6),
(91, 400, 1000, 100, 100, 11),
(92, 400, 1100, 100, 100, 5),
(93, 400, 1200, 100, 100, 9),
(94, 400, 1300, 100, 100, 3),
(95, 400, 1400, 100, 100, 8),
(96, 400, 1500, 100, 100, 4),
(97, 400, 1600, 100, 100, 1),
(98, 400, 1700, 100, 100, 8),
(99, 400, 1800, 100, 100, 3),
(100, 400, 1900, 100, 100, 4),
(101, 500, 0, 100, 100, 11),
(102, 500, 100, 100, 100, 11),
(103, 500, 200, 100, 100, 3),
(104, 500, 300, 100, 100, 5),
(105, 500, 400, 100, 100, 3),
(106, 500, 500, 100, 100, 11),
(107, 500, 600, 100, 100, 8),
(108, 500, 700, 100, 100, 1),
(109, 500, 800, 100, 100, 1),
(110, 500, 900, 100, 100, 11),
(111, 500, 1000, 100, 100, 7),
(112, 500, 1100, 100, 100, 1),
(113, 500, 1200, 100, 100, 10),
(114, 500, 1300, 100, 100, 6),
(115, 500, 1400, 100, 100, 6),
(116, 500, 1500, 100, 100, 7),
(117, 500, 1600, 100, 100, 7),
(118, 500, 1700, 100, 100, 9),
(119, 500, 1800, 100, 100, 10),
(120, 500, 1900, 100, 100, 6),
(121, 600, 0, 100, 100, 11),
(122, 600, 100, 100, 100, 7),
(123, 600, 200, 100, 100, 1),
(124, 600, 300, 100, 100, 2),
(125, 600, 400, 100, 100, 8),
(126, 600, 500, 100, 100, 11),
(127, 600, 600, 100, 100, 8),
(128, 600, 700, 100, 100, 6),
(129, 600, 800, 100, 100, 5),
(130, 600, 900, 100, 100, 9),
(131, 600, 1000, 100, 100, 8),
(132, 600, 1100, 100, 100, 11),
(133, 600, 1200, 100, 100, 3),
(134, 600, 1300, 100, 100, 2),
(135, 600, 1400, 100, 100, 7),
(136, 600, 1500, 100, 100, 8),
(137, 600, 1600, 100, 100, 8),
(138, 600, 1700, 100, 100, 6),
(139, 600, 1800, 100, 100, 3),
(140, 600, 1900, 100, 100, 11),
(141, 700, 0, 100, 100, 2),
(142, 700, 100, 100, 100, 11),
(143, 700, 200, 100, 100, 3),
(144, 700, 300, 100, 100, 9),
(145, 700, 400, 100, 100, 8),
(146, 700, 500, 100, 100, 8),
(147, 700, 600, 100, 100, 10),
(148, 700, 700, 100, 100, 5),
(149, 700, 800, 100, 100, 6),
(150, 700, 900, 100, 100, 4),
(151, 700, 1000, 100, 100, 7),
(152, 700, 1100, 100, 100, 8),
(153, 700, 1200, 100, 100, 10),
(154, 700, 1300, 100, 100, 8),
(155, 700, 1400, 100, 100, 9),
(156, 700, 1500, 100, 100, 8),
(157, 700, 1600, 100, 100, 10),
(158, 700, 1700, 100, 100, 1),
(159, 700, 1800, 100, 100, 5),
(160, 700, 1900, 100, 100, 5),
(161, 800, 0, 100, 100, 9),
(162, 800, 100, 100, 100, 9),
(163, 800, 200, 100, 100, 6),
(164, 800, 300, 100, 100, 5),
(165, 800, 400, 100, 100, 9),
(166, 800, 500, 100, 100, 5),
(167, 800, 600, 100, 100, 9),
(168, 800, 700, 100, 100, 6),
(169, 800, 800, 100, 100, 4),
(170, 800, 900, 100, 100, 9),
(171, 800, 1000, 100, 100, 3),
(172, 800, 1100, 100, 100, 7),
(173, 800, 1200, 100, 100, 10),
(174, 800, 1300, 100, 100, 3),
(175, 800, 1400, 100, 100, 3),
(176, 800, 1500, 100, 100, 10),
(177, 800, 1600, 100, 100, 6),
(178, 800, 1700, 100, 100, 3),
(179, 800, 1800, 100, 100, 6),
(180, 800, 1900, 100, 100, 2),
(181, 900, 0, 100, 100, 8),
(182, 900, 100, 100, 100, 4),
(183, 900, 200, 100, 100, 10),
(184, 900, 300, 100, 100, 7),
(185, 900, 400, 100, 100, 8),
(186, 900, 500, 100, 100, 4),
(187, 900, 600, 100, 100, 10),
(188, 900, 700, 100, 100, 7),
(189, 900, 800, 100, 100, 10),
(190, 900, 900, 100, 100, 10),
(191, 900, 1000, 100, 100, 9),
(192, 900, 1100, 100, 100, 8),
(193, 900, 1200, 100, 100, 11),
(194, 900, 1300, 100, 100, 7),
(195, 900, 1400, 100, 100, 11),
(196, 900, 1500, 100, 100, 8),
(197, 900, 1600, 100, 100, 4),
(198, 900, 1700, 100, 100, 3),
(199, 900, 1800, 100, 100, 2),
(200, 900, 1900, 100, 100, 1),
(201, 1000, 0, 100, 100, 4),
(202, 1000, 100, 100, 100, 3),
(203, 1000, 200, 100, 100, 7),
(204, 1000, 300, 100, 100, 1),
(205, 1000, 400, 100, 100, 6),
(206, 1000, 500, 100, 100, 10),
(207, 1000, 600, 100, 100, 2),
(208, 1000, 700, 100, 100, 6),
(209, 1000, 800, 100, 100, 7),
(210, 1000, 900, 100, 100, 10),
(211, 1000, 1000, 100, 100, 4),
(212, 1000, 1100, 100, 100, 2),
(213, 1000, 1200, 100, 100, 11),
(214, 1000, 1300, 100, 100, 1),
(215, 1000, 1400, 100, 100, 2),
(216, 1000, 1500, 100, 100, 8),
(217, 1000, 1600, 100, 100, 1),
(218, 1000, 1700, 100, 100, 7),
(219, 1000, 1800, 100, 100, 10),
(220, 1000, 1900, 100, 100, 10),
(221, 1100, 0, 100, 100, 5),
(222, 1100, 100, 100, 100, 7),
(223, 1100, 200, 100, 100, 7),
(224, 1100, 300, 100, 100, 9),
(225, 1100, 400, 100, 100, 5),
(226, 1100, 500, 100, 100, 2),
(227, 1100, 600, 100, 100, 4),
(228, 1100, 700, 100, 100, 1),
(229, 1100, 800, 100, 100, 2),
(230, 1100, 900, 100, 100, 6),
(231, 1100, 1000, 100, 100, 6),
(232, 1100, 1100, 100, 100, 3),
(233, 1100, 1200, 100, 100, 1),
(234, 1100, 1300, 100, 100, 2),
(235, 1100, 1400, 100, 100, 6),
(236, 1100, 1500, 100, 100, 5),
(237, 1100, 1600, 100, 100, 10),
(238, 1100, 1700, 100, 100, 2),
(239, 1100, 1800, 100, 100, 5),
(240, 1100, 1900, 100, 100, 2),
(241, 1200, 0, 100, 100, 6),
(242, 1200, 100, 100, 100, 5),
(243, 1200, 200, 100, 100, 7),
(244, 1200, 300, 100, 100, 11),
(245, 1200, 400, 100, 100, 10),
(246, 1200, 500, 100, 100, 8),
(247, 1200, 600, 100, 100, 7),
(248, 1200, 700, 100, 100, 6),
(249, 1200, 800, 100, 100, 6),
(250, 1200, 900, 100, 100, 3),
(251, 1200, 1000, 100, 100, 3),
(252, 1200, 1100, 100, 100, 1),
(253, 1200, 1200, 100, 100, 3),
(254, 1200, 1300, 100, 100, 10),
(255, 1200, 1400, 100, 100, 7),
(256, 1200, 1500, 100, 100, 7),
(257, 1200, 1600, 100, 100, 6),
(258, 1200, 1700, 100, 100, 4),
(259, 1200, 1800, 100, 100, 4),
(260, 1200, 1900, 100, 100, 5),
(261, 1300, 0, 100, 100, 6),
(262, 1300, 100, 100, 100, 11),
(263, 1300, 200, 100, 100, 10),
(264, 1300, 300, 100, 100, 11),
(265, 1300, 400, 100, 100, 5),
(266, 1300, 500, 100, 100, 9),
(267, 1300, 600, 100, 100, 6),
(268, 1300, 700, 100, 100, 1),
(269, 1300, 800, 100, 100, 11),
(270, 1300, 900, 100, 100, 9),
(271, 1300, 1000, 100, 100, 9),
(272, 1300, 1100, 100, 100, 6),
(273, 1300, 1200, 100, 100, 1),
(274, 1300, 1300, 100, 100, 7),
(275, 1300, 1400, 100, 100, 11),
(276, 1300, 1500, 100, 100, 9),
(277, 1300, 1600, 100, 100, 5),
(278, 1300, 1700, 100, 100, 11),
(279, 1300, 1800, 100, 100, 2),
(280, 1300, 1900, 100, 100, 4),
(281, 1400, 0, 100, 100, 8),
(282, 1400, 100, 100, 100, 11),
(283, 1400, 200, 100, 100, 6),
(284, 1400, 300, 100, 100, 1),
(285, 1400, 400, 100, 100, 3),
(286, 1400, 500, 100, 100, 9),
(287, 1400, 600, 100, 100, 5),
(288, 1400, 700, 100, 100, 3),
(289, 1400, 800, 100, 100, 7),
(290, 1400, 900, 100, 100, 1),
(291, 1400, 1000, 100, 100, 10),
(292, 1400, 1100, 100, 100, 2),
(293, 1400, 1200, 100, 100, 2),
(294, 1400, 1300, 100, 100, 9),
(295, 1400, 1400, 100, 100, 9),
(296, 1400, 1500, 100, 100, 6),
(297, 1400, 1600, 100, 100, 9),
(298, 1400, 1700, 100, 100, 3),
(299, 1400, 1800, 100, 100, 10),
(300, 1400, 1900, 100, 100, 4),
(301, 1500, 0, 100, 100, 8),
(302, 1500, 100, 100, 100, 3),
(303, 1500, 200, 100, 100, 11),
(304, 1500, 300, 100, 100, 5),
(305, 1500, 400, 100, 100, 3),
(306, 1500, 500, 100, 100, 3),
(307, 1500, 600, 100, 100, 10),
(308, 1500, 700, 100, 100, 2),
(309, 1500, 800, 100, 100, 6),
(310, 1500, 900, 100, 100, 7),
(311, 1500, 1000, 100, 100, 1),
(312, 1500, 1100, 100, 100, 2),
(313, 1500, 1200, 100, 100, 1),
(314, 1500, 1300, 100, 100, 3),
(315, 1500, 1400, 100, 100, 2),
(316, 1500, 1500, 100, 100, 7),
(317, 1500, 1600, 100, 100, 9),
(318, 1500, 1700, 100, 100, 7),
(319, 1500, 1800, 100, 100, 10),
(320, 1500, 1900, 100, 100, 2),
(321, 1600, 0, 100, 100, 4),
(322, 1600, 100, 100, 100, 5),
(323, 1600, 200, 100, 100, 4),
(324, 1600, 300, 100, 100, 10),
(325, 1600, 400, 100, 100, 1),
(326, 1600, 500, 100, 100, 7),
(327, 1600, 600, 100, 100, 11),
(328, 1600, 700, 100, 100, 9),
(329, 1600, 800, 100, 100, 10),
(330, 1600, 900, 100, 100, 11),
(331, 1600, 1000, 100, 100, 3),
(332, 1600, 1100, 100, 100, 11),
(333, 1600, 1200, 100, 100, 8),
(334, 1600, 1300, 100, 100, 3),
(335, 1600, 1400, 100, 100, 6),
(336, 1600, 1500, 100, 100, 2),
(337, 1600, 1600, 100, 100, 10),
(338, 1600, 1700, 100, 100, 7),
(339, 1600, 1800, 100, 100, 10),
(340, 1600, 1900, 100, 100, 7),
(341, 1700, 0, 100, 100, 5),
(342, 1700, 100, 100, 100, 1),
(343, 1700, 200, 100, 100, 8),
(344, 1700, 300, 100, 100, 4),
(345, 1700, 400, 100, 100, 1),
(346, 1700, 500, 100, 100, 3),
(347, 1700, 600, 100, 100, 6),
(348, 1700, 700, 100, 100, 8),
(349, 1700, 800, 100, 100, 10),
(350, 1700, 900, 100, 100, 1),
(351, 1700, 1000, 100, 100, 5),
(352, 1700, 1100, 100, 100, 1),
(353, 1700, 1200, 100, 100, 9),
(354, 1700, 1300, 100, 100, 9),
(355, 1700, 1400, 100, 100, 11),
(356, 1700, 1500, 100, 100, 9),
(357, 1700, 1600, 100, 100, 1),
(358, 1700, 1700, 100, 100, 9),
(359, 1700, 1800, 100, 100, 4),
(360, 1700, 1900, 100, 100, 10),
(361, 1800, 0, 100, 100, 11),
(362, 1800, 100, 100, 100, 6),
(363, 1800, 200, 100, 100, 1),
(364, 1800, 300, 100, 100, 8),
(365, 1800, 400, 100, 100, 3),
(366, 1800, 500, 100, 100, 11),
(367, 1800, 600, 100, 100, 5),
(368, 1800, 700, 100, 100, 5),
(369, 1800, 800, 100, 100, 5),
(370, 1800, 900, 100, 100, 3),
(371, 1800, 1000, 100, 100, 8),
(372, 1800, 1100, 100, 100, 4),
(373, 1800, 1200, 100, 100, 10),
(374, 1800, 1300, 100, 100, 3),
(375, 1800, 1400, 100, 100, 1),
(376, 1800, 1500, 100, 100, 11),
(377, 1800, 1600, 100, 100, 9),
(378, 1800, 1700, 100, 100, 4),
(379, 1800, 1800, 100, 100, 9),
(380, 1800, 1900, 100, 100, 2),
(381, 1900, 0, 100, 100, 3),
(382, 1900, 100, 100, 100, 8),
(383, 1900, 200, 100, 100, 11),
(384, 1900, 300, 100, 100, 5),
(385, 1900, 400, 100, 100, 9),
(386, 1900, 500, 100, 100, 4),
(387, 1900, 600, 100, 100, 7),
(388, 1900, 700, 100, 100, 11),
(389, 1900, 800, 100, 100, 5),
(390, 1900, 900, 100, 100, 4),
(391, 1900, 1000, 100, 100, 1),
(392, 1900, 1100, 100, 100, 7),
(393, 1900, 1200, 100, 100, 9),
(394, 1900, 1300, 100, 100, 5),
(395, 1900, 1400, 100, 100, 6),
(396, 1900, 1500, 100, 100, 1),
(397, 1900, 1600, 100, 100, 11),
(398, 1900, 1700, 100, 100, 4),
(399, 1900, 1800, 100, 100, 6),
(400, 1900, 1900, 100, 100, 7);

-- --------------------------------------------------------

--
-- Structure de la table `fieldType`
--

CREATE TABLE `fieldType` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `fieldType`
--

INSERT INTO `fieldType` (`id`, `name`) VALUES
(1, 'Marais'),
(2, 'Forêt'),
(3, 'Taïga'),
(4, 'Désert'),
(5, 'Plaine'),
(6, 'Toundra'),
(7, 'Jungle'),
(8, 'Océan'),
(9, 'Colline'),
(10, 'Montagne'),
(11, 'Enfer');

-- --------------------------------------------------------

--
-- Structure de la table `objectType`
--

CREATE TABLE `objectType` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `durability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `objectType`
--

INSERT INTO `objectType` (`id`, `name`, `durability`) VALUES
(1, 'Batôn', 230),
(2, 'Baguette', 910),
(3, 'Gantelets', 1610),
(4, 'Collier', 1830),
(5, 'Bague', 590),
(6, 'Cuirasse', 1190),
(7, 'Veste', 360),
(8, 'Pantalon', 1210),
(9, 'Chaussures', 180),
(10, 'Pierre de lune', 1),
(11, 'Pierre de souvenir', 1),
(12, 'Artéfact', 1),
(13, 'Viande', 1),
(14, 'Poisson', 1),
(15, 'Bière', 1),
(16, 'Potion de vie', 1),
(17, 'Potion de mana', 1),
(18, 'Livre', 1),
(19, 'Herbes médicinales', 1);

-- --------------------------------------------------------

--
-- Structure de la table `objectType_bag`
--

CREATE TABLE `objectType_bag` (
  `objectType_id` int(11) NOT NULL,
  `bag_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `objectType_bag`
--

INSERT INTO `objectType_bag` (`objectType_id`, `bag_id`, `quantity`) VALUES
(1, 1, 20),
(1, 2, 9),
(1, 3, 44),
(1, 4, 26),
(1, 5, 8),
(1, 9, 28),
(1, 10, 8),
(1, 12, 8),
(1, 14, 27),
(1, 16, 32),
(1, 17, 24),
(1, 22, 3),
(1, 28, 41),
(1, 43, 4),
(2, 1, 40),
(2, 11, 13),
(2, 14, 17),
(2, 15, 3),
(2, 16, 24),
(2, 17, 15),
(2, 18, 18),
(2, 30, 36),
(2, 34, 7),
(2, 35, 14),
(2, 38, 41),
(2, 45, 37),
(2, 56, 10),
(3, 8, 26),
(3, 9, 5),
(3, 12, 42),
(3, 15, 43),
(3, 27, 32),
(3, 30, 12),
(3, 44, 22),
(4, 1, 31),
(4, 7, 1),
(4, 12, 31),
(4, 16, 42),
(4, 25, 15),
(4, 27, 1),
(4, 28, 29),
(4, 30, 8),
(4, 34, 26),
(5, 1, 1),
(5, 2, 20),
(5, 3, 44),
(5, 9, 46),
(5, 14, 45),
(5, 15, 39),
(5, 19, 27),
(5, 35, 3),
(6, 3, 31),
(6, 5, 22),
(6, 8, 21),
(6, 9, 37),
(6, 16, 36),
(6, 18, 2),
(6, 25, 39),
(6, 29, 38),
(7, 1, 42),
(7, 2, 7),
(7, 3, 12),
(7, 4, 50),
(7, 5, 50),
(7, 7, 48),
(7, 8, 24),
(7, 11, 0),
(7, 28, 31),
(7, 35, 20),
(7, 43, 44),
(7, 55, 42),
(7, 59, 46),
(8, 2, 3),
(8, 3, 15),
(8, 4, 42),
(8, 5, 3),
(8, 7, 48),
(8, 14, 14),
(8, 17, 35),
(8, 18, 5),
(8, 21, 4),
(8, 22, 34),
(8, 46, 32),
(9, 8, 47),
(9, 11, 40),
(9, 15, 35),
(9, 31, 31),
(10, 5, 43),
(10, 8, 40),
(10, 9, 18),
(10, 12, 29),
(10, 15, 41),
(10, 18, 2),
(10, 33, 29),
(11, 2, 33),
(11, 4, 25),
(11, 5, 24),
(11, 31, 42),
(11, 36, 24),
(11, 42, 38),
(12, 1, 9),
(12, 2, 4),
(12, 5, 17),
(12, 8, 4),
(12, 9, 50),
(12, 12, 35),
(12, 14, 45),
(12, 26, 49),
(12, 38, 46),
(13, 3, 33),
(13, 5, 28),
(13, 7, 16),
(13, 10, 42),
(13, 11, 32),
(13, 19, 29),
(13, 25, 18),
(13, 26, 12),
(13, 27, 35),
(13, 40, 50),
(14, 1, 47),
(14, 3, 47),
(14, 4, 40),
(14, 10, 1),
(14, 17, 35),
(14, 18, 8),
(14, 19, 22),
(15, 11, 26),
(15, 15, 29),
(15, 16, 2),
(15, 30, 48),
(15, 39, 26),
(16, 2, 47),
(16, 3, 46),
(16, 5, 24),
(16, 15, 42),
(16, 18, 34),
(16, 21, 12),
(16, 33, 47),
(17, 2, 22),
(17, 4, 0),
(17, 5, 29),
(17, 8, 29),
(17, 16, 17),
(17, 17, 13),
(17, 22, 32),
(17, 28, 27),
(17, 32, 40),
(17, 33, 18),
(18, 2, 25),
(18, 5, 19),
(18, 7, 12),
(18, 11, 8),
(18, 17, 17),
(18, 26, 39),
(18, 37, 41),
(18, 41, 4),
(19, 2, 46),
(19, 5, 27),
(19, 7, 27),
(19, 8, 16),
(19, 10, 32),
(19, 12, 39),
(19, 15, 33),
(19, 18, 36),
(19, 26, 47),
(19, 41, 19),
(19, 57, 8);

-- --------------------------------------------------------

--
-- Structure de la table `objectType_spell`
--

CREATE TABLE `objectType_spell` (
  `objectType_id` int(11) NOT NULL,
  `spell_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `objectType_spell`
--

INSERT INTO `objectType_spell` (`objectType_id`, `spell_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 9),
(1, 10),
(2, 5),
(2, 6),
(2, 7),
(2, 11),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 11),
(4, 2),
(4, 8),
(4, 9),
(4, 11),
(5, 1),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(6, 2),
(6, 4),
(6, 5),
(6, 7),
(6, 8),
(6, 10),
(7, 1),
(8, 1),
(8, 3),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 11),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 9),
(9, 11),
(10, 1),
(10, 2),
(10, 5),
(10, 7),
(10, 8),
(10, 9),
(10, 11),
(11, 1),
(11, 4),
(11, 5),
(11, 7),
(11, 9),
(11, 11),
(12, 1),
(12, 4),
(12, 7),
(12, 11),
(13, 1),
(13, 3),
(13, 4),
(13, 10),
(13, 11),
(14, 2),
(14, 3),
(14, 5),
(14, 10),
(15, 2),
(15, 3),
(15, 7),
(15, 8),
(15, 9),
(15, 10),
(16, 1),
(16, 2),
(16, 5),
(16, 6),
(16, 10),
(16, 11),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(17, 6),
(17, 7),
(17, 8),
(18, 1),
(18, 3),
(18, 11),
(19, 6),
(19, 8),
(19, 11);

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `player`
--

INSERT INTO `player` (`id`, `name`) VALUES
(1, 'Will'),
(2, 'Davis'),
(3, 'Murazik'),
(4, 'Boyle'),
(5, 'Abernathy'),
(6, 'Mante'),
(7, 'Kshlerin'),
(8, 'Schamberger'),
(9, 'Ortiz'),
(10, 'Casper'),
(11, 'Jacobi'),
(12, 'Hickle'),
(13, 'Runte'),
(14, 'Ferry'),
(15, 'Windler'),
(16, 'Bergstrom'),
(17, 'Willms'),
(18, 'Pfeffer'),
(19, 'Mayer'),
(20, 'Champlin');

-- --------------------------------------------------------

--
-- Structure de la table `spell`
--

CREATE TABLE `spell` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `damage` int(11) DEFAULT NULL,
  `heal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `spell`
--

INSERT INTO `spell` (`id`, `name`, `cost`, `damage`, `heal`) VALUES
(1, 'Boule de feu', 20, 37, NULL),
(2, 'Piques de glace', 42, 70, NULL),
(3, 'Tourbillon', 19, NULL, 46),
(4, 'Cataclysme', 38, 62, NULL),
(5, 'Epée de lumière', 13, 21, NULL),
(6, 'Mercurocrum', 44, NULL, 64),
(7, 'Hansaplastum', 37, NULL, 63),
(8, 'Trempette', 25, NULL, 33),
(9, 'Aura de lumière', 22, NULL, 29),
(10, 'Lames des 7 purgateurs', 28, 44, NULL),
(11, 'Silence', 43, NULL, 66);

-- --------------------------------------------------------

--
-- Structure de la table `spell_fieldType`
--

CREATE TABLE `spell_fieldType` (
  `spell_id` int(11) NOT NULL,
  `fieldType_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `spell_fieldType`
--

INSERT INTO `spell_fieldType` (`spell_id`, `fieldType_id`) VALUES
(1, 4),
(4, 8),
(5, 4),
(6, 1),
(6, 10),
(8, 1),
(8, 2),
(9, 7),
(10, 7),
(10, 8),
(10, 10),
(10, 11);

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `team`
--

INSERT INTO `team` (`id`, `player_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Structure de la table `wizard`
--

CREATE TABLE `wizard` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hp` int(11) NOT NULL,
  `mp` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `bag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wizard`
--

INSERT INTO `wizard` (`id`, `name`, `hp`, `mp`, `x`, `y`, `field_id`, `team_id`, `bag_id`) VALUES
(1, 'Schmeler', 6, 16, 449, 673, 2, 1, 1),
(2, 'Brown', 72, 31, 710, 1965, 2, 2, 2),
(3, 'Stoltenberg', 47, 36, 1096, 689, 8, 3, 3),
(4, 'Schinner', 25, 22, 1542, 1779, 4, 1, 4),
(5, 'Larson', 31, 33, 709, 895, 1, 2, 5),
(7, 'Windler', 50, 79, 300, 1786, 7, 1, 7),
(8, 'Howe', 87, 66, 1181, 915, 1, 2, 8),
(9, 'Bailey', 93, 55, 1011, 1813, 8, 3, 9),
(10, 'Ritchie', 57, 40, 832, 1509, 1, 1, 10),
(11, 'Nicolas', 20, 2, 1583, 546, 2, 2, 11),
(12, 'Denesik', 73, 62, 1466, 60, 8, 3, 12),
(14, 'Heaney', 35, 65, 330, 792, 3, 2, 14),
(15, 'Wehner', 80, 93, 1237, 1806, 8, 3, 15),
(16, 'Friesen', 55, 66, 462, 1150, 2, 1, 16),
(17, 'Mills', 33, 6, 343, 415, 6, 2, 17),
(18, 'Huels', 22, 72, 1463, 1775, 11, 3, 18),
(19, 'Boyer', 96, 95, 1665, 1781, 2, 1, 19),
(21, 'Dicki', 65, 79, 106, 1624, 7, 3, 21),
(24, 'Beatty', 95, 67, 1097, 1585, 3, 1, 25),
(25, 'Terry', 25, 54, 1941, 1060, 3, 2, 26),
(26, 'Volkman', 38, 28, 1226, 1210, 2, 3, 27),
(27, 'Grimes', 93, 8, 384, 49, 5, 1, 28),
(28, 'Corkery', 68, 17, 1479, 300, 9, 2, 29),
(29, 'Connelly', 94, 24, 1826, 622, 8, 3, 30),
(30, 'Dicki', 25, 69, 1491, 1123, 8, 1, 31),
(31, 'Towne', 22, 67, 1784, 1429, 1, 2, 32),
(32, 'Cruickshank', 23, 59, 692, 1333, 3, 3, 33),
(33, 'Boyer', 85, 80, 1561, 1169, 11, 1, 34),
(34, 'Reichert', 34, 19, 11, 146, 1, 2, 35),
(35, 'Ferry', 78, 55, 976, 1855, 6, 3, 36),
(36, 'Turner', 96, 35, 760, 918, 9, 1, 37),
(37, 'Koelpin', 38, 99, 272, 694, 4, 2, 38),
(38, 'Waelchi', 12, 73, 24, 1370, 9, 3, 39),
(39, 'Cartwright', 23, 61, 681, 1413, 8, 1, 40),
(40, 'Huels', 74, 18, 499, 368, 11, 2, 41),
(41, 'Kihn', 61, 21, 439, 210, 8, 3, 42),
(42, 'Barton', 50, 17, 1585, 1735, 1, 1, 43),
(43, 'Bins', 21, 57, 711, 262, 6, 2, 44),
(44, 'Buckridge', 48, 9, 176, 153, 11, 3, 45),
(45, 'Hoeger', 31, 36, 1236, 900, 9, 1, 46),
(46, 'Gusikowski', 33, 46, 1844, 836, 1, 2, 47),
(47, 'Ledner', 24, 84, 1915, 469, 6, 3, 48),
(49, 'Bogan', 64, 85, 106, 1336, 3, 2, 50),
(50, 'Cruickshank', 10, 100, 1605, 1059, 1, 3, 51),
(51, 'Glover', 59, 51, 194, 1032, 1, 1, 52),
(52, 'Lueilwitz', 3, 80, 263, 1134, 9, 2, 53),
(53, 'Mayer', 24, 58, 1379, 1386, 2, 3, 54),
(54, 'Aufderhar', 61, 43, 858, 1140, 7, 1, 55),
(55, 'Franecki', 47, 49, 1099, 1026, 5, 2, 56),
(56, 'Towne', 89, 16, 1376, 396, 7, 3, 57),
(58, 'Klocko', 45, 52, 296, 1547, 5, 2, 59),
(59, 'Windler', 72, 97, 1789, 338, 5, 3, 60);

-- --------------------------------------------------------

--
-- Structure de la table `wizard_spell`
--

CREATE TABLE `wizard_spell` (
  `wizard_id` int(11) NOT NULL,
  `spell_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wizard_spell`
--

INSERT INTO `wizard_spell` (`wizard_id`, `spell_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 10),
(1, 11),
(2, 2),
(2, 4),
(2, 5),
(2, 6),
(2, 8),
(2, 11),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 8),
(3, 10),
(4, 3),
(4, 4),
(4, 5),
(4, 7),
(4, 11),
(5, 2),
(5, 3),
(5, 9),
(5, 11),
(7, 2),
(7, 4),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(8, 2),
(8, 3),
(8, 5),
(8, 7),
(9, 1),
(9, 3),
(9, 4),
(9, 6),
(9, 7),
(9, 9),
(9, 10),
(9, 11),
(10, 1),
(10, 2),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10),
(11, 2),
(11, 7),
(11, 10),
(12, 4),
(12, 5),
(12, 9),
(14, 1),
(14, 3),
(14, 4),
(14, 7),
(15, 2),
(15, 6),
(15, 7),
(15, 9),
(15, 11),
(16, 2),
(16, 5),
(16, 6),
(16, 8),
(17, 1),
(17, 6),
(17, 9),
(18, 2),
(18, 8),
(18, 11),
(19, 8),
(19, 9),
(21, 1),
(21, 4),
(21, 7),
(21, 11),
(25, 7),
(26, 8),
(26, 11),
(28, 7),
(28, 8),
(29, 2),
(29, 5),
(29, 6),
(30, 8),
(30, 11),
(31, 8),
(31, 9),
(32, 3),
(32, 6),
(33, 10),
(34, 6),
(34, 9),
(35, 6),
(35, 7),
(35, 8),
(35, 11),
(36, 1),
(36, 9),
(37, 7),
(38, 2),
(40, 6),
(40, 8),
(42, 1),
(43, 2),
(43, 4),
(44, 1),
(44, 8),
(46, 9),
(51, 8);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bag`
--
ALTER TABLE `bag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bag_id` (`bagType_id`);

--
-- Index pour la table `bagType`
--
ALTER TABLE `bagType`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldType_id` (`fieldType_id`);

--
-- Index pour la table `fieldType`
--
ALTER TABLE `fieldType`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `objectType`
--
ALTER TABLE `objectType`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `objectType_bag`
--
ALTER TABLE `objectType_bag`
  ADD PRIMARY KEY (`objectType_id`,`bag_id`),
  ADD KEY `objectType_id` (`objectType_id`),
  ADD KEY `bag_id` (`bag_id`);

--
-- Index pour la table `objectType_spell`
--
ALTER TABLE `objectType_spell`
  ADD PRIMARY KEY (`objectType_id`,`spell_id`),
  ADD KEY `object_id` (`objectType_id`),
  ADD KEY `spell_id` (`spell_id`);

--
-- Index pour la table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `spell`
--
ALTER TABLE `spell`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `spell_fieldType`
--
ALTER TABLE `spell_fieldType`
  ADD PRIMARY KEY (`spell_id`,`fieldType_id`),
  ADD KEY `spell_id` (`spell_id`),
  ADD KEY `fieldType_id` (`fieldType_id`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Index pour la table `wizard`
--
ALTER TABLE `wizard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `bag_id` (`bag_id`);

--
-- Index pour la table `wizard_spell`
--
ALTER TABLE `wizard_spell`
  ADD PRIMARY KEY (`wizard_id`,`spell_id`),
  ADD KEY `wizard_id` (`wizard_id`),
  ADD KEY `spell_id` (`spell_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bag`
--
ALTER TABLE `bag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `bagType`
--
ALTER TABLE `bagType`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `field`
--
ALTER TABLE `field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;
--
-- AUTO_INCREMENT pour la table `fieldType`
--
ALTER TABLE `fieldType`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `objectType`
--
ALTER TABLE `objectType`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `spell`
--
ALTER TABLE `spell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `wizard`
--
ALTER TABLE `wizard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `bag`
--
ALTER TABLE `bag`
  ADD CONSTRAINT `bag_ibfk_1` FOREIGN KEY (`bagType_id`) REFERENCES `bagType` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `field`
--
ALTER TABLE `field`
  ADD CONSTRAINT `field_ibfk_1` FOREIGN KEY (`fieldType_id`) REFERENCES `fieldType` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `objectType_bag`
--
ALTER TABLE `objectType_bag`
  ADD CONSTRAINT `objectType_bag_ibfk_1` FOREIGN KEY (`objectType_id`) REFERENCES `objectType` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `objectType_bag_ibfk_2` FOREIGN KEY (`bag_id`) REFERENCES `bag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `objectType_spell`
--
ALTER TABLE `objectType_spell`
  ADD CONSTRAINT `objectType_spell_ibfk_2` FOREIGN KEY (`spell_id`) REFERENCES `spell` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `objectType_spell_ibfk_3` FOREIGN KEY (`objectType_id`) REFERENCES `objectType` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `spell_fieldType`
--
ALTER TABLE `spell_fieldType`
  ADD CONSTRAINT `spell_fieldType_ibfk_1` FOREIGN KEY (`spell_id`) REFERENCES `spell` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `spell_fieldType_ibfk_2` FOREIGN KEY (`fieldType_id`) REFERENCES `fieldType` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `fk_team_player` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `wizard`
--
ALTER TABLE `wizard`
  ADD CONSTRAINT `wizard_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `field` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wizard_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wizard_ibfk_3` FOREIGN KEY (`bag_id`) REFERENCES `bag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `wizard_spell`
--
ALTER TABLE `wizard_spell`
  ADD CONSTRAINT `wizard_spell_ibfk_1` FOREIGN KEY (`spell_id`) REFERENCES `spell` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wizard_spell_ibfk_2` FOREIGN KEY (`wizard_id`) REFERENCES `wizard` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
