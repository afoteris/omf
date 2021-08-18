-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 16, 2021 at 10:01 AM
-- Server version: 8.0.19
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `_meta`
--

-- --------------------------------------------------------

--
-- Table structure for table `k-tn`
--

CREATE TABLE `k-tn` (
  `idn` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Sets in Cyrillic';

--
-- Dumping data for table `k-tn`
--

INSERT INTO `k-tn` (`idn`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Table structure for table `k-ts`
--

CREATE TABLE `k-ts` (
  `ids` int UNSIGNED NOT NULL,
  `s` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Word',
  `kol` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Amount',
  `f` tinyint UNSIGNED NOT NULL DEFAULT '7' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Words in Cyrillic';

--
-- Dumping data for table `k-ts`
--

INSERT INTO `k-ts` (`ids`, `s`, `kol`, `f`) VALUES
(1, 'вкусно', 0, 7),
(2, 'глюкоза', 0, 7),
(3, 'конфета', 0, 7),
(4, 'мёд', 0, 7),
(5, 'печенье', 0, 7),
(6, 'пирожное', 0, 7),
(7, 'сахар', 0, 7),
(8, 'сладость', 0, 7),
(9, 'дерево', 0, 7),
(10, 'деталь', 0, 7),
(11, 'камень', 0, 7),
(12, 'керамика', 0, 7),
(13, 'металл', 0, 7),
(14, 'пластик', 0, 1),
(15, 'стекло', 0, 1),
(16, 'ткань', 0, 1),
(122, 'йййй', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `k-t_s`
--

CREATE TABLE `k-t_s` (
  `id_sv` int UNSIGNED NOT NULL,
  `id_n` int UNSIGNED NOT NULL COMMENT 'Set ID',
  `id_s` int UNSIGNED NOT NULL COMMENT 'Word ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Links for Cyrillic';

--
-- Dumping data for table `k-t_s`
--

INSERT INTO `k-t_s` (`id_sv`, `id_n`, `id_s`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 3, 9),
(18, 3, 10),
(19, 3, 11),
(20, 3, 12),
(21, 3, 13),
(22, 3, 14),
(23, 3, 15),
(24, 3, 16),
(25, 4, 9),
(26, 4, 10),
(27, 4, 11),
(28, 4, 12),
(29, 4, 13),
(30, 4, 14),
(31, 4, 15),
(32, 4, 16),
(33, 5, 9),
(34, 5, 10),
(35, 5, 11),
(36, 5, 12),
(37, 5, 13),
(38, 5, 14),
(39, 5, 15),
(40, 5, 16),
(41, 6, 9),
(42, 6, 10),
(43, 6, 11),
(44, 6, 12),
(45, 6, 13),
(46, 6, 14),
(47, 6, 15),
(48, 6, 16),
(49, 7, 9),
(50, 7, 10),
(51, 7, 11),
(52, 7, 12),
(53, 7, 13),
(54, 7, 14),
(55, 7, 15),
(56, 7, 16),
(57, 8, 9),
(58, 8, 10),
(59, 8, 11),
(60, 8, 12),
(61, 8, 13),
(62, 8, 14),
(63, 8, 15),
(64, 8, 16),
(65, 9, 9),
(66, 9, 10),
(67, 9, 11),
(68, 9, 12),
(69, 9, 13),
(70, 9, 14),
(71, 9, 15),
(72, 9, 16),
(73, 10, 9),
(74, 10, 10),
(75, 10, 11),
(76, 10, 12),
(77, 10, 13),
(78, 10, 14),
(79, 10, 15),
(80, 10, 16),
(81, 11, 9),
(82, 11, 10),
(83, 11, 11),
(84, 11, 12),
(85, 11, 13),
(86, 11, 14),
(87, 11, 15),
(88, 11, 16),
(89, 12, 9),
(90, 12, 10),
(91, 12, 11),
(92, 12, 12),
(93, 12, 13),
(94, 12, 14),
(95, 12, 15),
(96, 12, 16),
(97, 13, 9),
(98, 13, 10),
(99, 13, 11),
(100, 13, 12),
(101, 13, 13),
(102, 13, 14),
(103, 13, 15),
(104, 13, 16),
(105, 14, 9),
(106, 14, 10),
(107, 14, 11),
(108, 14, 12),
(109, 14, 13),
(110, 14, 14),
(111, 14, 15),
(112, 14, 16),
(114, 15, 9),
(115, 15, 10),
(116, 15, 11),
(117, 15, 12),
(118, 15, 13),
(119, 15, 14),
(120, 15, 15),
(121, 15, 16),
(113, 15, 113),
(123, 16, 9),
(124, 16, 10),
(125, 16, 11),
(126, 16, 12),
(127, 16, 13),
(128, 16, 14),
(129, 16, 15),
(130, 16, 16),
(122, 16, 122),
(132, 17, 9),
(133, 17, 10),
(134, 17, 11),
(135, 17, 12),
(136, 17, 13),
(137, 17, 14),
(138, 17, 15),
(139, 17, 16),
(131, 17, 122),
(141, 18, 9),
(142, 18, 10),
(143, 18, 11),
(144, 18, 12),
(145, 18, 13),
(146, 18, 14),
(147, 18, 15),
(148, 18, 16),
(140, 18, 122),
(150, 19, 9),
(151, 19, 10),
(152, 19, 11),
(153, 19, 12),
(154, 19, 13),
(155, 19, 14),
(156, 19, 15),
(157, 19, 16),
(149, 19, 122),
(159, 20, 9),
(160, 20, 10),
(161, 20, 11),
(162, 20, 12),
(163, 20, 13),
(164, 20, 14),
(165, 20, 15),
(166, 20, 16),
(158, 20, 122),
(168, 21, 9),
(169, 21, 10),
(170, 21, 11),
(171, 21, 12),
(172, 21, 13),
(173, 21, 14),
(174, 21, 15),
(175, 21, 16),
(167, 21, 122),
(177, 22, 9),
(178, 22, 10),
(179, 22, 11),
(180, 22, 12),
(181, 22, 13),
(182, 22, 14),
(183, 22, 15),
(184, 22, 16),
(176, 22, 122),
(186, 23, 9),
(187, 23, 10),
(188, 23, 11),
(189, 23, 12),
(190, 23, 13),
(191, 23, 14),
(192, 23, 15),
(193, 23, 16),
(185, 23, 122),
(194, 24, 9),
(195, 24, 10),
(197, 24, 11),
(198, 24, 12),
(199, 24, 13),
(200, 24, 14),
(201, 24, 15),
(202, 24, 16),
(196, 24, 122),
(203, 25, 9),
(204, 25, 10),
(206, 25, 11),
(207, 25, 12),
(208, 25, 13),
(209, 25, 14),
(210, 25, 15),
(211, 25, 16),
(205, 25, 122),
(212, 26, 9),
(213, 26, 10),
(215, 26, 11),
(216, 26, 12),
(217, 26, 13),
(218, 26, 14),
(219, 26, 15),
(220, 26, 16),
(214, 26, 122),
(221, 27, 9),
(222, 27, 10),
(224, 27, 11),
(225, 27, 12),
(226, 27, 13),
(227, 27, 14),
(228, 27, 15),
(229, 27, 16),
(223, 27, 122),
(230, 28, 9),
(231, 28, 10),
(233, 28, 11),
(234, 28, 12),
(235, 28, 13),
(236, 28, 14),
(237, 28, 15),
(238, 28, 16),
(232, 28, 122),
(239, 29, 9),
(240, 29, 10),
(242, 29, 11),
(243, 29, 12),
(244, 29, 13),
(245, 29, 14),
(246, 29, 15),
(247, 29, 16),
(241, 29, 122),
(248, 30, 9),
(249, 30, 10),
(251, 30, 11),
(252, 30, 12),
(253, 30, 13),
(254, 30, 14),
(255, 30, 15),
(256, 30, 16),
(250, 30, 122),
(257, 31, 9),
(258, 31, 10),
(260, 31, 11),
(261, 31, 12),
(262, 31, 13),
(263, 31, 14),
(264, 31, 15),
(265, 31, 16),
(259, 31, 122);

-- --------------------------------------------------------

--
-- Table structure for table `k_l`
--

CREATE TABLE `k_l` (
  `idk_l` int UNSIGNED NOT NULL,
  `idk` int UNSIGNED NOT NULL COMMENT 'Cyrillic word ID',
  `idl` int UNSIGNED NOT NULL COMMENT 'Latin word ID',
  `idz` int UNSIGNED NOT NULL COMMENT 'Meaning ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Links for translation';

--
-- Dumping data for table `k_l`
--

INSERT INTO `k_l` (`idk_l`, `idk`, `idl`, `idz`) VALUES
(1, 16, 1, 1),
(2, 16, 2, 1),
(3, 15, 3, 3),
(4, 14, 4, 4),
(5, 14, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `l-ts`
--

CREATE TABLE `l-ts` (
  `ids` int UNSIGNED NOT NULL,
  `s` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Word',
  `f` tinyint UNSIGNED NOT NULL DEFAULT '7' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Words in Latin';

--
-- Dumping data for table `l-ts`
--

INSERT INTO `l-ts` (`ids`, `s`, `f`) VALUES
(1, 'qwer', 7),
(2, 'sdfg', 7),
(3, 'rtyu', 7),
(4, 'ghjk', 7),
(5, 'bnm', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tz`
--

CREATE TABLE `tz` (
  `idz` int UNSIGNED NOT NULL,
  `z` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Meaning'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Meanings for translation';

--
-- Dumping data for table `tz`
--

INSERT INTO `tz` (`idz`, `z`) VALUES
(4, 'пластик'),
(3, 'стекло'),
(1, 'ткань');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `k-tn`
--
ALTER TABLE `k-tn`
  ADD PRIMARY KEY (`idn`);

--
-- Indexes for table `k-ts`
--
ALTER TABLE `k-ts`
  ADD PRIMARY KEY (`ids`),
  ADD UNIQUE KEY `s` (`s`),
  ADD KEY `f` (`f`),
  ADD KEY `kol` (`kol`);

--
-- Indexes for table `k-t_s`
--
ALTER TABLE `k-t_s`
  ADD PRIMARY KEY (`id_sv`),
  ADD UNIQUE KEY `sost` (`id_n`,`id_s`),
  ADD KEY `id_s` (`id_s`),
  ADD KEY `id_n` (`id_n`);

--
-- Indexes for table `k_l`
--
ALTER TABLE `k_l`
  ADD PRIMARY KEY (`idk_l`),
  ADD KEY `idk` (`idk`),
  ADD KEY `idl` (`idl`),
  ADD KEY `idz` (`idz`);

--
-- Indexes for table `l-ts`
--
ALTER TABLE `l-ts`
  ADD PRIMARY KEY (`ids`),
  ADD UNIQUE KEY `s` (`s`),
  ADD KEY `f` (`f`);

--
-- Indexes for table `tz`
--
ALTER TABLE `tz`
  ADD PRIMARY KEY (`idz`),
  ADD UNIQUE KEY `z` (`z`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `k-tn`
--
ALTER TABLE `k-tn`
  MODIFY `idn` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `k-ts`
--
ALTER TABLE `k-ts`
  MODIFY `ids` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `k-t_s`
--
ALTER TABLE `k-t_s`
  MODIFY `id_sv` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `k_l`
--
ALTER TABLE `k_l`
  MODIFY `idk_l` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `l-ts`
--
ALTER TABLE `l-ts`
  MODIFY `ids` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tz`
--
ALTER TABLE `tz`
  MODIFY `idz` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
