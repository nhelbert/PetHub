-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2021 at 07:19 AM
-- Server version: 5.7.13
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pointofsales`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `ID` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`ID`, `Name`) VALUES
(1, 'saca'),
(2, 'casda'),
(4, 'Sample');

-- --------------------------------------------------------

--
-- Table structure for table `grooming`
--

CREATE TABLE `grooming` (
  `GroomId` int(11) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grooming`
--

INSERT INTO `grooming` (`GroomId`, `Description`, `Price`, `EntryDate`) VALUES
(1, 'Dog Complete cut hair', '300', '2021-06-10 13:31:10'),
(3, 'Cut hair rebond', '280', '2021-06-10 13:32:35'),
(6, 'Cut hair rebonds', '100', '2021-06-13 13:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `h_sales`
--

CREATE TABLE `h_sales` (
  `InvoiceNo` varchar(30) NOT NULL,
  `TotalPrice` decimal(10,0) NOT NULL,
  `Cash` decimal(10,0) NOT NULL,
  `Changes` decimal(10,0) DEFAULT NULL,
  `Cashier` varchar(30) NOT NULL,
  `TransDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `h_sales`
--

INSERT INTO `h_sales` (`InvoiceNo`, `TotalPrice`, `Cash`, `Changes`, `Cashier`, `TransDate`) VALUES
('PHT20210613233741', '3002', '3500', '498', 'Nhel', '2021-06-13 15:37:41'),
('PHT20210614093209', '1000', '1000', '0', 'Nhel', '2021-06-14 01:32:09'),
('PHT20210614114358', '280', '500', '220', 'Nhel', '2021-06-14 03:43:58'),
('PHT20210614125435', '1580', '2000', '420', 'Nhel', '2021-06-14 04:54:35'),
('PHT20210614130103', '2', '5', '3', 'Nhel', '2021-06-14 05:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `Name`) VALUES
(1, 'samplle'),
(2, 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `seq` int(11) NOT NULL,
  `InvoiceNo` varchar(30) NOT NULL,
  `ItemId` varchar(30) NOT NULL,
  `QTY` decimal(10,0) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `TotalPrice` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`seq`, `InvoiceNo`, `ItemId`, `QTY`, `Price`, `TotalPrice`) VALUES
(1, 'PHT20210613233741', 'S20210613233317', '3', '1000', '3000'),
(2, 'PHT20210613233741', 'S20210613233621', '1', '2', '2'),
(3, 'PHT20210614093209', 'S20210613233317', '1', '1000', '1000'),
(4, 'PHT20210614114358', '3', '1', '280', '280'),
(5, 'PHT20210614125435', '1', '1', '300', '300'),
(6, 'PHT20210614125435', '3', '1', '280', '280'),
(7, 'PHT20210614125435', 'S20210613233317', '1', '1000', '1000'),
(8, 'PHT20210614130103', 'S20210613233621', '1', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `ItemId` varchar(50) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `productname` varchar(200) NOT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `ExDate` date DEFAULT NULL,
  `Max` int(11) NOT NULL,
  `Min` int(11) NOT NULL,
  `QTY` int(11) DEFAULT NULL,
  `Unit` varchar(50) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `ActPrice` decimal(10,0) NOT NULL,
  `Remarks` varchar(250) DEFAULT NULL,
  `EntDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`ItemId`, `Name`, `productname`, `Brand`, `ExDate`, `Max`, `Min`, `QTY`, `Unit`, `Price`, `ActPrice`, `Remarks`, `EntDate`) VALUES
('S20210613233317', 'sample', 'samle', 'saca', '2021-06-13', 100, 25, 5, 'sampl2', '1000', '900', NULL, '2021-06-13 23:33:17'),
('S20210613233621', 'sampl', 'samle', 'saca', '2021-06-14', 10, 1, 3, 'sample', '2', '1', NULL, '2021-06-13 23:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `ID` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`ID`, `Name`) VALUES
(1, 'samples'),
(2, 'sampl2'),
(3, 'sample1');

-- --------------------------------------------------------

--
-- Table structure for table `useractivity`
--

CREATE TABLE `useractivity` (
  `id` int(11) NOT NULL,
  `LoginDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(100) DEFAULT NULL,
  `LogoutDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useractivity`
--

INSERT INTO `useractivity` (`id`, `LoginDate`, `user`, `LogoutDate`) VALUES
(1, '2021-06-14 15:18:08', '1', NULL),
(2, '2021-06-14 12:24:04', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userquestions`
--

CREATE TABLE `userquestions` (
  `ID` int(11) NOT NULL,
  `Question` varchar(500) NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DeletedDate` datetime DEFAULT NULL,
  `UpdatedByCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userquestions`
--

INSERT INTO `userquestions` (`ID`, `Question`, `CreatedDate`, `UpdatedDate`, `DeletedDate`, `UpdatedByCode`) VALUES
(1, 'What was the model of your first car?', '2021-06-10 09:36:40', '2021-06-10 09:36:40', NULL, NULL),
(2, 'What was your father\'s middle name?', '2021-06-10 09:36:40', '2021-06-10 09:36:40', NULL, NULL),
(3, 'In what city were you born?', '2021-06-10 09:37:16', '2021-06-10 09:37:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `employeeCode` int(11) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `rights` varchar(2) DEFAULT NULL,
  `contactnumber` varchar(11) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `fristQ` int(11) DEFAULT NULL,
  `secondQ` int(11) DEFAULT NULL,
  `thirdQ` int(11) DEFAULT NULL,
  `firstAns` varchar(100) DEFAULT NULL,
  `secondAns` varchar(100) DEFAULT NULL,
  `thirdAns` varchar(100) DEFAULT NULL,
  `RegisteredDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employeeCode`, `fullName`, `address`, `rights`, `contactnumber`, `password`, `fristQ`, `secondQ`, `thirdQ`, `firstAns`, `secondAns`, `thirdAns`, `RegisteredDate`) VALUES
(10, 1, 'Nhel', NULL, '0', NULL, '1', 1, 2, 3, '1', '1', '1', '2021-06-13 20:58:50'),
(11, 2, 'Nhelbert', NULL, '1', NULL, '2', 1, 2, 3, '2', '2', '2', '2021-06-13 20:59:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `grooming`
--
ALTER TABLE `grooming`
  ADD PRIMARY KEY (`GroomId`);

--
-- Indexes for table `h_sales`
--
ALTER TABLE `h_sales`
  ADD PRIMARY KEY (`InvoiceNo`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`seq`),
  ADD KEY `InvoiceNo` (`InvoiceNo`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`ItemId`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `useractivity`
--
ALTER TABLE `useractivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userquestions`
--
ALTER TABLE `userquestions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grooming`
--
ALTER TABLE `grooming`
  MODIFY `GroomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `useractivity`
--
ALTER TABLE `useractivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userquestions`
--
ALTER TABLE `userquestions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
