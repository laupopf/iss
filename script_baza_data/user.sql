-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2017 at 01:52 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplicatie_colectiv`
--

-- --------------------------------------------------------

--
-- Table structure for table `articol`
--

CREATE TABLE `articol` (
  `id` int(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `titlu` varchar(255) NOT NULL,
  `domeniu` varchar(200) DEFAULT NULL,
  `keywords` varchar(255) NOT NULL,
  `brochure` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `articol`
--

INSERT INTO `articol` (`id`, `autor`, `titlu`, `domeniu`, `keywords`, `brochure`) VALUES
(1, 'bulgare', '0', '2', '0', ''),
(3, 'bulgare', 'webAdeverinta de venitbulgareCorneliu.pdf', '2', '1451215215', ''),
(4, 'bulgare', 'webCerere de concediubulgareCorneliu.pdf', '1', '1451215215', ''),
(5, 'bulgare', 'webCerere de concediubulgareCorneliu.pdf', '1', '1451215215', ''),
(6, 'Rec', 'webCopie dupa contractul de angajareRecMircea.pdf', '3', '12345678912345', ''),
(7, 'admin', 'webCerere de concediuadmin.pdf', '1', '0', ''),
(8, 'bulgare', 'webCerere de concediubulgareCorneliu.pdf', '1', '1451215215', ''),
(9, 'Rec', 'webAdeverinta de venitRecMircea.pdf', '2', '12345678912345', ''),
(10, 'admin', 'webAdeverinta de venitadmin.pdf', '2', '0', ''),
(11, 'bulgare', 'webAdeverinta de venitbulgareCorneliu.pdf', '2', '1451215215', ''),
(12, 'ion@ion.ion', 'Logo', 'info', 'ddd', 'c86fc79dee604b4995f2982a4454e3da.pdf'),
(13, 'ion@ion.ion', 'Logo', 'info', 'ddd', '7012ed4d37ca9fc5d91fe114ff16ae59.pdf'),
(14, 'ion@ion.ion', 'test', 'fizica', 'k', '13c730060aa8553160b42d61db7a230c.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `evaluari`
--

CREATE TABLE `evaluari` (
  `id` int(255) NOT NULL,
  `titlu` varchar(255) NOT NULL,
  `evaluator` varchar(255) NOT NULL,
  `nota` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluari`
--

INSERT INTO `evaluari` (`id`, `titlu`, `evaluator`, `nota`) VALUES
(1, 'webCerere de concediubulgareCorneliu.pdf', 'bulga@bulga.ro', 5),
(2, 'webAdeverinta de venitRecMircea.pdf', 'bulga@bulga.ro', 4),
(3, 'Logo', 'ion@ion.ion', 4),
(4, 'webCerere de concediubulgareCorneliu.pdf', 'ion@ion.ion', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `surename` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `role`, `password`, `surename`, `phone_number`) VALUES
(1, 'admin@admin.ro', 'admin', 'ROLE_ADMIN', '$2y$13$Byv/g1cbjUvfZ5utpoMJAelOa0Brm9oqkhyHYMemr0J6h0f9WOe6.', '', ''),
(2, 'ion@ion.com', 'Ion', 'ROLE_USER', '$2y$13$8LXnAUKQrgmtOJ6J2lV6vOroXEvFoWHckaCaXUY60GAVUYO73E4Gu', 'Ioan', '754264658'),
(3, 'stefana.pop@stefi.ro', 'Pop', 'ROLE_USER', '$2y$13$svUI11SfjfXECeTQEF2eXeg1NE3fThPv3yL5EI3T0HFF.1yiTLaTS', 'Stefana', '744682471'),
(7, 'bulga@bulga.ro', 'bulgare', 'ROLE_ADMIN', '$2y$13$oEXIKr1yXJHkPz.1J70ble05NNp1WUtR0U7eXbNzfgaTkLzQzJABC', 'Corneliu', '745412452'),
(10, 'mircea@mircea.com', 'Rec', 'ROLE_AUTOR', '$2y$13$5fDsacmShqRzZX8xt5RVN.05aPcgy25WwGIX6BYCXAjGvbQNcyZRa', 'Mircea', '756434434'),
(11, 'ion@ion.ion', 'Ion', 'ROLE_RW', '$2y$13$RCOrYus7WmKGcXmNXoDIdeBnQzBmKXyNnD8i8P21CPO74V7TVG96a', 'Pirv', '75456585');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articol`
--
ALTER TABLE `articol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluari`
--
ALTER TABLE `evaluari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articol`
--
ALTER TABLE `articol`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `evaluari`
--
ALTER TABLE `evaluari`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
