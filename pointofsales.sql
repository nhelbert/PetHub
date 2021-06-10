-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 02:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

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
  `GroomId` int(11) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `TransDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `ItemId` varchar(50) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `ExDate` date DEFAULT NULL,
  `Max` int(11) NOT NULL,
  `Min` int(11) NOT NULL,
  `QTY` int(11) DEFAULT NULL,
  `Unit` varchar(50) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `ActPrice` decimal(10,0) NOT NULL,
  `Remarks` varchar(250) DEFAULT NULL,
  `EntDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grooming`
--
ALTER TABLE `grooming`
  MODIFY `GroomId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
