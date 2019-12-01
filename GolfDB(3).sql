-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2019 at 12:28 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GolfDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `appro_tab`
--

CREATE TABLE `appro_tab` (
  `id_appro` int(11) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `qte` float(11,4) NOT NULL,
  `unite` text NOT NULL,
  `date_appro` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appro_tab`
--

INSERT INTO `appro_tab` (`id_appro`, `Designation`, `qte`, `unite`, `date_appro`) VALUES
(17, 'Boomer', 10.0000, 'kilogramme', '23/11/2019'),
(18, 'Pain', 2.0000, 'gramme', '23/11/2019'),
(19, 'Sucre', 50.0000, 'kilogramme', '23/11/2019'),
(20, 'Sucre', 40.0000, 'kilogramme', '23/11/2019'),
(21, 'Huile', 50.0000, 'Litre', '23/11/2019');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id_art` int(11) NOT NULL,
  `desig` int(11) NOT NULL,
  `pt_critik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `destin_tab`
--

CREATE TABLE `destin_tab` (
  `id_destin` int(11) NOT NULL,
  `design` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destin_tab`
--

INSERT INTO `destin_tab` (`id_destin`, `design`) VALUES
(1, 'Cuisine'),
(2, 'Bar');

-- --------------------------------------------------------

--
-- Table structure for table `sortie_tab`
--

CREATE TABLE `sortie_tab` (
  `id_sort` int(11) NOT NULL,
  `destin_sort` varchar(100) NOT NULL,
  `article_sort` varchar(100) NOT NULL,
  `qte_sort` float(11,4) NOT NULL,
  `unite_sort` text NOT NULL,
  `date_sort` text NOT NULL,
  `heure_sort` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sortie_tab`
--

INSERT INTO `sortie_tab` (`id_sort`, `destin_sort`, `article_sort`, `qte_sort`, `unite_sort`, `date_sort`, `heure_sort`) VALUES
(1, 'Cuisine', 'Laptop', 2.0000, '', '12/11/2019', '22:16:46'),
(2, 'Cuisine', 'Pain', 5.0000, '', '12/11/2019', '22:20:21'),
(3, 'Cuisine', 'Laptop', 3.0000, '', '12/11/2019', '22:20:37'),
(4, 'Bar', 'Laptop', 4.0000, '', '12/11/2019', '22:22:10'),
(5, 'Bar', 'Pain', 3.0000, '', '12/11/2019', '22:25:02'),
(6, 'Bar', 'Pain', 4.0000, '', '12/11/2019', '22:25:26'),
(7, 'Cuisine', 'Laptop', 1.0000, '', '13/11/2019', '11:04:17'),
(8, 'Cuisine', 'Laptop', 5.0000, '', '13/11/2019', '11:04:28'),
(9, 'Cuisine', 'Laptop', 10.0000, '', '13/11/2019', '11:04:35'),
(10, 'Cuisine', 'Laptop', 4.0000, '', '13/11/2019', '11:04:41'),
(11, 'Cuisine', 'Pain', 2.0000, '', '14/11/2019', '00:56:44'),
(12, 'Cuisine', 'Laptop', 2.4000, '', '14/11/2019', '01:06:52'),
(13, 'Cuisine', 'Boomer', 20.0000, '', '14/11/2019', '02:13:04'),
(14, 'Cuisine', 'Moto', 3.0000, '', '14/11/2019', '08:23:07'),
(15, 'Cuisine', 'Mayonnaise', 3.0000, '', '14/11/2019', '09:08:10'),
(16, 'Cuisine', 'Laptop', 5.0000, '', '15/11/2019', '10:02:52'),
(17, 'Cuisine', 'Boomer', 10.0000, '', '15/11/2019', '23:10:04'),
(18, 'Cuisine', 'Laptop', 3.0000, '', '16/11/2019', '00:31:43'),
(19, 'Cuisine', 'Boomer', 10.0000, 'gramme', '23/11/2019', '12:11:51'),
(20, 'Bar', 'Boomer', 19.0000, 'gramme', '23/11/2019', '12:16:34'),
(21, 'Bar', 'Sucre', 4.0000, 'kilogramme', '23/11/2019', '12:19:02'),
(22, 'Cuisine', 'Huile', 20.0000, 'Litre', '23/11/2019', '12:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id_art` int(11) NOT NULL,
  `desig` text NOT NULL,
  `qte` float(11,4) NOT NULL,
  `pt_critik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id_art`, `desig`, `qte`, `pt_critik`) VALUES
(1, 'Laptop', 73.0000, 10),
(2, 'Pain', 12.5000, 10),
(3, 'PC', 0.0000, 5),
(4, 'Moto', 37.0000, 5),
(5, 'Boomer', 51.0000, 3),
(6, 'Jambo', 40.0000, 2),
(7, 'Mayonnaise', 21.0000, 5),
(8, 'Verre', 50.0000, 10),
(9, 'Sucre', 86.0000, 4),
(10, 'Huile', 30.0000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `unit_tab`
--

CREATE TABLE `unit_tab` (
  `id_unit` int(11) NOT NULL,
  `unite_design` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_tab`
--

INSERT INTO `unit_tab` (`id_unit`, `unite_design`) VALUES
(2, 'kilogramme'),
(3, 'gramme'),
(4, 'Litre');

-- --------------------------------------------------------

--
-- Table structure for table `update_tab`
--

CREATE TABLE `update_tab` (
  `id_upd` int(11) NOT NULL,
  `objetUp` varchar(30) NOT NULL,
  `article_upd` varchar(30) NOT NULL,
  `old_qte` float(11,4) NOT NULL,
  `new_qte` float(11,4) NOT NULL,
  `date_upd` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `update_tab`
--

INSERT INTO `update_tab` (`id_upd`, `objetUp`, `article_upd`, `old_qte`, `new_qte`, `date_upd`) VALUES
(1, 'Sortie', 'Laptop', 10.0000, 5.0000, '15/11/2019'),
(2, 'Entrees', 'Laptop', 5.0000, 15.0000, '15/11/2019'),
(3, 'Entrees', 'Laptop', 15.0000, 10.0000, '15/11/2019'),
(4, 'Entrees', 'Laptop', 10.0000, 5.0000, '15/11/2019'),
(5, 'Sortie', 'Laptop', 5.0000, 5.0000, '15/11/2019'),
(6, 'Sortie', 'Boomer', 5.0000, 10.0000, '15/11/2019'),
(7, 'Entrees', 'Huile', 100.0000, 50.0000, '23/11/2019');

-- --------------------------------------------------------

--
-- Table structure for table `user_tab`
--

CREATE TABLE `user_tab` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tab`
--

INSERT INTO `user_tab` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'DG', 'adminn', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appro_tab`
--
ALTER TABLE `appro_tab`
  ADD PRIMARY KEY (`id_appro`);

--
-- Indexes for table `destin_tab`
--
ALTER TABLE `destin_tab`
  ADD PRIMARY KEY (`id_destin`);

--
-- Indexes for table `sortie_tab`
--
ALTER TABLE `sortie_tab`
  ADD PRIMARY KEY (`id_sort`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_art`);

--
-- Indexes for table `unit_tab`
--
ALTER TABLE `unit_tab`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indexes for table `update_tab`
--
ALTER TABLE `update_tab`
  ADD PRIMARY KEY (`id_upd`);

--
-- Indexes for table `user_tab`
--
ALTER TABLE `user_tab`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appro_tab`
--
ALTER TABLE `appro_tab`
  MODIFY `id_appro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `destin_tab`
--
ALTER TABLE `destin_tab`
  MODIFY `id_destin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sortie_tab`
--
ALTER TABLE `sortie_tab`
  MODIFY `id_sort` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id_art` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `unit_tab`
--
ALTER TABLE `unit_tab`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `update_tab`
--
ALTER TABLE `update_tab`
  MODIFY `id_upd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_tab`
--
ALTER TABLE `user_tab`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
