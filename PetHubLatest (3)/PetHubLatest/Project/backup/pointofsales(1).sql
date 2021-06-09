-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 12:40 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `productID`, `productName`, `productType`, `productBrand`, `expirationDate`, `productPrice`, `productStock`, `deleted`) VALUES
(1, '234', '234', '456', '456', '2021-04-06', '645', 234, 1),
(2, 'asdqqwe', 'erter', 'ert', 'weqwe', '2021-04-07', '1414', 52234, 1),
(3, '45678-456', 'HP Pavillion', 'monitor', 'HP', '2021-04-23', '500', 10, 0),
(4, '234-2', '234', '234', '123', '2021-04-21', '6546456', 456456, 0),
(5, 'dfgdfg', 'dfgdf', 'dfgd', 'gdfgdfg', '2021-04-23', '23452', 23423, 0),
(6, '15464887-416', 'GALAX RTX 2070 SUPER', 'GPU', 'GALAX', '2021-04-30', '123', 123, 1),
(7, '', '', '', '', '2021-04-02', '', 0, 1),
(8, 'asd', 'GALAX RTX 2070 SUPER', 'asd', 'asd', '2021-04-21', '5600', 5120, 0),
(9, 'asdasd', 'asdasd', 'sadf', 'asdas', '2021-04-29', '53434', 3453, 0),
(10, '4564659879-55', 'paulnikko', 'villar', 'sdf', '2021-04-23', '90000', 5, 0);

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
  `discount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `productID`, `productName`, `qty`, `price`, `amount`, `dateofPurchase`, `discount`) VALUES
(1, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 00:00:00', ''),
(2, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 00:00:00', '0.05'),
(3, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 00:00:00', '0.10'),
(4, 'asd', 'GALAX RTX 2070 SUPER', '6', '5600', '33600', '2021-04-04 10:46:01', '0.10'),
(5, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 10:49:20', '0'),
(6, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 10:50:53', '0'),
(7, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 10:52:16', '0'),
(8, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 11:08:33', '0'),
(9, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 11:10:22', '0'),
(10, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 14:07:04', '0.15'),
(11, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:34:53', '0'),
(12, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:34:53', '0'),
(13, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:35:19', '0'),
(14, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:35:19', '0'),
(15, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:35:20', '0'),
(16, 'asd', 'GALAX RTX 2070 SUPER', '1', '5600', '5600', '2021-04-04 18:35:21', '0');

-- --------------------------------------------------------

--
-- Table structure for table `useractivity`
--

CREATE TABLE `useractivity` (
  `id` int(11) NOT NULL,
  `dateLog` datetime DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `activityLog` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useractivity`
--

INSERT INTO `useractivity` (`id`, `dateLog`, `user`, `activityLog`) VALUES
(1, '2021-04-04 18:32:10', 'Paul Nikko Villar', 'Log-out'),
(2, '2021-04-04 18:32:29', 'Paul Nikko Villar', 'Log-in'),
(3, '2021-04-04 18:34:32', 'Paul Nikko Villar', 'Log-in'),
(4, '2021-04-04 18:38:35', 'Nikko', 'Log-in'),
(5, '2021-04-04 18:39:43', 'Paul Nikko Villar', 'Log-out');

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
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employeeCode`, `fullName`, `address`, `rights`, `contactnumber`, `password`) VALUES
(1, 31336, 'Paul Nikko Villar', 'munting mapino naic cavite', '1', '09489966817', '31336'),
(3, 0, 'asdqwe', 'qweqwtrwe', '0', 'asd', 'asd');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `useractivity`
--
ALTER TABLE `useractivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
