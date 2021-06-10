-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2021 at 03:33 PM
-- Server version: 8.0.22
-- PHP Version: 8.0.1

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
-- Table structure for table `grooming`
--

CREATE TABLE `grooming` (
  `GroomId` int NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grooming`
--

INSERT INTO `grooming` (`GroomId`, `Description`, `Price`, `EntryDate`) VALUES
(1, 'Dog Complete cut hair', '300', '2021-06-10 13:31:10'),
(2, 'Dog Complete cut hair', '300', '2021-06-10 13:32:03'),
(3, 'Cut hair rebond', '280', '2021-06-10 13:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `h_sales`
--

CREATE TABLE `h_sales` (
  `InvoiceNo` varchar(30) NOT NULL,
  `TotalPrice` decimal(10,0) NOT NULL,
  `Cash` decimal(10,0) NOT NULL,
  `Change` decimal(10,0) DEFAULT NULL,
  `Cashier` varchar(30) NOT NULL,
  `TransDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `h_sales`
--

INSERT INTO `h_sales` (`InvoiceNo`, `TotalPrice`, `Cash`, `Change`, `Cashier`, `TransDate`) VALUES
('PTH20210610092521', '820', '1000', '180', 'Demsent', '2021-06-10 13:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `seq` int NOT NULL,
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
(1, 'PTH20210610092521', 'CA20210610091820', '1', '600', '820');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `ItemId` varchar(50) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `ExDate` date DEFAULT NULL,
  `Max` int NOT NULL,
  `Min` int NOT NULL,
  `QTY` int DEFAULT NULL,
  `Unit` varchar(50) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `ActPrice` decimal(10,0) NOT NULL,
  `Remarks` varchar(250) DEFAULT NULL,
  `EntDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`ItemId`, `Name`, `Brand`, `ExDate`, `Max`, `Min`, `QTY`, `Unit`, `Price`, `ActPrice`, `Remarks`, `EntDate`) VALUES
('CA20210610091820', 'Cat Feeds', 'BowWow', '2021-06-08', 15, 3, 12, 'sck', '820', '600', 'Expired', '2021-06-10 21:25:04'),
('DF20210610091820', 'Dog Feeds', 'BowWow', '2021-06-30', 20, 5, 5, 'sck', '650', '500', 'Low Stock', '2021-06-10 21:20:49'),
('DV20210610091820', 'Dog Vitamins', 'BowWow', '2021-06-30', 15, 5, 16, 'scht', '25', '20', 'Over Stock', '2021-06-10 21:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `useractivity`
--

CREATE TABLE `useractivity` (
  `id` int NOT NULL,
  `LoginDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(100) DEFAULT NULL,
  `LogoutDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useractivity`
--

INSERT INTO `useractivity` (`id`, `LoginDate`, `user`, `LogoutDate`) VALUES
(1, '2021-06-10 12:24:12', 'Nhel', NULL),
(2, '2021-06-10 12:24:12', 'Nhel', NULL),
(8, '2021-06-10 23:29:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userquestions`
--

CREATE TABLE `userquestions` (
  `ID` int NOT NULL,
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
  `id` int NOT NULL,
  `employeeCode` int DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `rights` varchar(2) DEFAULT NULL,
  `contactnumber` varchar(11) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `fristQ` int DEFAULT NULL,
  `secondQ` int DEFAULT NULL,
  `thirdQ` int DEFAULT NULL,
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
(8, 1, 'Nhel', NULL, '0', NULL, '1', 1, 2, 3, '', '', '', '2021-06-10 15:11:39');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `grooming`
--
ALTER TABLE `grooming`
  MODIFY `GroomId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `seq` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `useractivity`
--
ALTER TABLE `useractivity`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userquestions`
--
ALTER TABLE `userquestions`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
