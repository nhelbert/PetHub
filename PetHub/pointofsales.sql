-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2021 at 07:14 AM
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
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `productID` varchar(100) DEFAULT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `productType` varchar(100) DEFAULT NULL,
  `productBrand` varchar(100) DEFAULT NULL,
  `expirationDate` date DEFAULT NULL,
  `productPrice` varchar(100) DEFAULT NULL,
  `productStock` int(100) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `dateDeleted` datetime DEFAULT NULL,
  `groomingSvc` int(11) NOT NULL DEFAULT '0',
  `productSack` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `productID`, `productName`, `productType`, `productBrand`, `expirationDate`, `productPrice`, `productStock`, `deleted`, `dateDeleted`, `groomingSvc`, `productSack`) VALUES
(1, '234', '234', '456', '456', '2021-04-06', '645', 234, 1, NULL, 0, '25'),
(2, 'asdqqwe', 'erter', 'ert', 'weqwe', '2021-04-07', '1414', 52234, 1, NULL, 0, '25'),
(3, '45678-456', 'HP Pavillion', 'monitor', 'HP', '2021-04-23', '500', 10, 0, NULL, 0, '25'),
(4, '234-2', '234', '234', '123', '2021-04-21', '6546456', 456456, 0, NULL, 0, '25'),
(5, 'dfgdfg', 'dfgdf', 'dfgd', 'gdfgdfg', '2021-04-23', '23452', 23423, 0, NULL, 0, '25'),
(6, '15464887-416', 'GALAX RTX 2070 SUPER', 'GPU', 'GALAX', '2021-04-30', '123', 123, 1, NULL, 0, '25'),
(8, 'asd', 'GALAX RTX 2070 SUPER', 'asd', 'asd', '2021-04-21', '5600', 5115, 0, NULL, 0, '25'),
(9, 'asdasd', 'asdasd', 'sadf', 'asdas', '2021-04-29', '53434', 3453, 0, NULL, 0, '25'),
(10, '4564659879-55', 'paulnikko', 'villar', 'sdf', '2021-04-23', '90000', 5, 0, NULL, 0, '25'),
(12, 'dfdfgdfg', 'dfgdfg', 'dfgdfg', '', '2050-12-30', '6000', 1, 0, NULL, 0, '25'),
(13, 'nikko', 'ghjghjg', 'ghjghj', 'fgsd', '2050-12-30', '3', 1, 0, NULL, 0, '25'),
(14, 'sample', 'dfgdfg', 'dfgdf', '', '2050-12-30', '400', 0, 0, NULL, 0, '25'),
(15, '2121', 'asd', 'asd', 'asd', '2050-12-30', '500', 998, 1, '2021-04-12 17:30:57', 0, '25'),
(18, '31336', 'asd', 'asd', 'asd', '2021-05-08', '500', 100, 0, NULL, 0, '25'),
(21, '321', 'as', 'Service', '-', '2021-04-06', '3', 1, 0, NULL, 1, '1'),
(22, '123', 'das', '423', 'asd', '2021-04-15', '123', 23, 0, NULL, 0, '2'),
(23, '234-2', '234', '234', '123', '2021-05-21', '6546456', 456456, 0, NULL, 0, '25'),
(24, 'dfgdfg', 'dfgdf', 'dfgd', 'gdfgdfg', '2021-06-23', '23452', 23423, 0, NULL, 0, '25'),
(25, 'DO16320210425', 'dog food', 'asd', 'asd', '2021-04-25', '23', 23, 0, NULL, 0, '1'),
(26, 'AS17020210425', 'asd', 'asd', 'asd', '2021-04-25', '', 0, 0, NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `productID` varchar(100) DEFAULT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `dateofPurchase` datetime DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `seller` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `productID`, `productName`, `qty`, `price`, `amount`, `dateofPurchase`, `discount`, `seller`) VALUES
(1, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 00:00:00', '0', NULL),
(2, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 00:00:00', '0.05', NULL),
(3, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 00:00:00', '0.10', NULL),
(4, 'asd', 'GALAX RTX 2070 SUPER', '6', '5600', '33600', '2021-04-04 10:46:01', '0.10', NULL),
(5, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 10:49:20', '0', NULL),
(6, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 10:50:53', '0', NULL),
(7, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 10:52:16', '0', NULL),
(8, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 11:08:33', '0', NULL),
(9, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 11:10:22', '0', NULL),
(10, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 14:07:04', '0.15', NULL),
(11, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:34:53', '0', NULL),
(12, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:34:53', '0', NULL),
(13, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:35:19', '0', NULL),
(14, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:35:19', '0', NULL),
(15, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:35:20', '0', NULL),
(16, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:35:21', '0', NULL),
(17, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-05 17:30:25', '0', NULL),
(18, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-05 17:35:30', '0', NULL),
(19, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-05 17:37:42', '0', NULL),
(20, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-05 17:38:02', '0.10', NULL),
(21, 'sample', 'dfgdfg', '1', '400', '400', '2021-04-05 21:03:43', '0', NULL),
(22, '2121', 'asd', '1', '500', '500', '2021-04-05 21:10:26', '0', NULL),
(23, '123', 'hair', '1', '500', '500', '2021-04-13 18:09:29', '0', NULL),
(24, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-14 19:37:12', '0', NULL),
(25, '123', 'hair', '1', '500', '500', '2021-04-15 19:18:52', '0', NULL),
(26, '123', 'hair', '1', '500', '500', '2021-04-15 19:20:59', '0', 'nikko'),
(27, '123', 'hair', '1', '500', '500', '2021-04-15 19:24:33', '0', 'nikko'),
(28, '123', 'hair', '1', '500', '500', '2021-04-15 19:33:53', '0', NULL),
(29, 'sample', 'dfgdfg', '1', '400', '400', '2021-04-25 10:18:30', '0', 'asd');

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
(1, '2021-06-10 12:24:12', 'Nhel', NULL),
(2, '2021-06-10 12:24:12', 'Nhel', NULL);

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
  `employeeCode` int(5) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `rights` varchar(2) DEFAULT NULL,
  `contactnumber` varchar(11) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `fristQ` int(10) DEFAULT NULL,
  `secondQ` int(10) DEFAULT NULL,
  `thirdQ` int(10) DEFAULT NULL,
  `firstAns` varchar(100) DEFAULT NULL,
  `secondAns` varchar(100) DEFAULT NULL,
  `thirdAns` varchar(100) DEFAULT NULL,
  `RegisteredDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employeeCode`, `fullName`, `address`, `rights`, `contactnumber`, `password`, `fristQ`, `secondQ`, `thirdQ`, `firstAns`, `secondAns`, `thirdAns`, `RegisteredDate`) VALUES
(1, 31336, 'Paul Nikko Villar', 'asd', '0', 'asd', '31336', 1, 2, 3, NULL, NULL, NULL, '2021-06-10 13:37:59'),
(5, 31335, 'asd', 'asd', '1', 'asd', '31335', 1, 2, 2, 'asd', 'asd', 'asd', '2021-06-10 13:37:59'),
(8, 34983, 'Nhel', NULL, '0', NULL, '34983', 1, 2, 3, '', '', '', '2021-06-10 15:11:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
