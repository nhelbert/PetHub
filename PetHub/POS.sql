-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 08:23 AM
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
  `deleted` int(1) NOT NULL DEFAULT 0,
  `dateDeleted` datetime DEFAULT NULL,
  `groomingSvc` int(11) NOT NULL DEFAULT 0,
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
(5, '2021-04-04 18:39:43', 'Paul Nikko Villar', 'Log-out'),
(6, '2021-04-04 18:44:12', 'Paul Nikko Villar', 'Log-in'),
(7, '2021-04-04 18:44:52', 'Paul Nikko Villar', 'Log-in'),
(8, '2021-04-04 18:44:58', 'Paul Nikko Villar', 'Log-out'),
(9, '2021-04-05 04:17:04', 'Paul Nikko Villar', 'Log-in'),
(10, '2021-04-05 04:19:21', 'Paul Nikko Villar', 'Log-in'),
(11, '2021-04-05 04:19:42', 'Paul Nikko Villar', 'Log-in'),
(12, '2021-04-05 04:19:53', 'Paul Nikko Villar', 'Log-out'),
(13, '2021-04-05 04:20:00', 'asdqwe', 'Log-in'),
(14, '2021-04-05 04:21:21', 'asdqwe', 'Log-in'),
(15, '2021-04-05 04:22:21', 'asdqwe', 'Log-in'),
(16, '2021-04-05 04:22:25', 'asdqwe', 'Log-out'),
(17, '2021-04-05 04:22:31', 'Paul Nikko Villar', 'Log-in'),
(18, '2021-04-05 04:23:08', 'Paul Nikko Villar', 'Log-in'),
(19, '2021-04-05 04:23:11', 'Paul Nikko Villar', 'Log-out'),
(20, '2021-04-05 04:23:16', 'asdqwe', 'Log-in'),
(21, '2021-04-05 04:23:18', 'asdqwe', 'Log-out'),
(22, '2021-04-05 04:23:24', 'Paul Nikko Villar', 'Log-in'),
(23, '2021-04-05 04:23:49', 'Paul Nikko Villar', 'Log-in'),
(24, '2021-04-05 17:28:20', 'Paul Nikko Villar', 'Log-in'),
(25, '2021-04-05 17:33:18', 'Paul Nikko Villar', 'Log-in'),
(26, '2021-04-05 17:35:17', 'Paul Nikko Villar', 'Log-in'),
(27, '2021-04-05 17:37:30', 'Paul Nikko Villar', 'Log-in'),
(28, '2021-04-05 20:14:49', 'Paul Nikko Villar', 'Log-in'),
(29, '2021-04-05 20:15:43', 'Paul Nikko Villar', 'Log-in'),
(30, '2021-04-05 20:28:03', 'Paul Nikko Villar', 'Log-in'),
(31, '2021-04-05 20:28:52', 'Paul Nikko Villar', 'Log-in'),
(32, '2021-04-05 20:30:42', 'Paul Nikko Villar', 'Log-in'),
(33, '2021-04-05 20:34:02', 'Paul Nikko Villar', 'Log-in'),
(34, '2021-04-05 20:42:45', 'Paul Nikko Villar', 'Log-in'),
(35, '2021-04-05 20:47:31', 'Paul Nikko Villar', 'Log-in'),
(36, '2021-04-05 20:55:42', 'Paul Nikko Villar', 'Log-in'),
(37, '2021-04-05 20:58:45', 'Paul Nikko Villar', 'Log-in'),
(38, '2021-04-05 21:01:44', 'Paul Nikko Villar', 'Log-in'),
(39, '2021-04-05 21:02:39', 'Paul Nikko Villar', 'Log-in'),
(40, '2021-04-05 21:05:39', 'Paul Nikko Villar', 'Log-in'),
(41, '2021-04-05 21:06:32', 'Paul Nikko Villar', 'Log-in'),
(42, '2021-04-05 21:08:38', 'Paul Nikko Villar', 'Log-in'),
(43, '2021-04-05 21:10:12', 'Paul Nikko Villar', 'Log-in'),
(44, '2021-04-05 21:12:33', 'Paul Nikko Villar', 'Log-in'),
(45, '2021-04-10 16:59:47', 'Paul Nikko Villar', 'Log-in'),
(46, '2021-04-10 17:08:05', 'Paul Nikko Villar', 'Log-in'),
(47, '2021-04-10 17:26:01', 'Paul Nikko Villar', 'Log-in'),
(48, '2021-04-10 17:29:04', 'Paul Nikko Villar', 'Log-in'),
(49, '2021-04-10 17:30:31', 'Paul Nikko Villar', 'Log-in'),
(50, '2021-04-10 17:32:50', 'Paul Nikko Villar', 'Log-in'),
(51, '2021-04-10 18:00:37', 'Paul Nikko Villar', 'Log-in'),
(52, '2021-04-10 18:06:04', 'Paul Nikko Villar', 'Log-in'),
(53, '2021-04-10 18:08:22', 'Paul Nikko Villar', 'Log-in'),
(54, '2021-04-12 17:13:22', 'Paul Nikko Villar', 'Log-in'),
(55, '2021-04-12 17:17:29', 'Paul Nikko Villar', 'Log-in'),
(56, '2021-04-12 17:19:35', 'Paul Nikko Villar', 'Log-in'),
(57, '2021-04-12 17:21:41', 'Paul Nikko Villar', 'Log-in'),
(58, '2021-04-12 17:22:39', 'Paul Nikko Villar', 'Log-in'),
(59, '2021-04-12 17:23:12', 'Paul Nikko Villar', 'Log-in'),
(60, '2021-04-12 17:26:15', 'Paul Nikko Villar', 'Log-in'),
(61, '2021-04-12 17:30:48', 'Paul Nikko Villar', 'Log-in'),
(62, '2021-04-12 17:42:53', 'Paul Nikko Villar', 'Log-in'),
(63, '2021-04-12 17:46:17', 'Paul Nikko Villar', 'Log-in'),
(64, '2021-04-12 18:02:19', 'Paul Nikko Villar', 'Log-in'),
(65, '2021-04-12 18:25:33', 'Paul Nikko Villar', 'Log-in'),
(66, '2021-04-12 18:26:03', 'Paul Nikko Villar', 'Log-in'),
(67, '2021-04-12 18:28:20', 'Paul Nikko Villar', 'Log-in'),
(68, '2021-04-12 18:30:01', 'Paul Nikko Villar', 'Log-in'),
(69, '2021-04-12 18:32:47', 'Paul Nikko Villar', 'Log-in'),
(70, '2021-04-12 18:36:11', 'Paul Nikko Villar', 'Log-in'),
(71, '2021-04-12 18:43:18', 'Paul Nikko Villar', 'Log-in'),
(72, '2021-04-12 18:44:03', 'Paul Nikko Villar', 'Log-in'),
(73, '2021-04-13 17:59:27', 'Paul Nikko Villar', 'Log-in'),
(74, '2021-04-13 18:08:39', 'Paul Nikko Villar', 'Log-in'),
(75, '2021-04-13 18:17:10', 'Paul Nikko Villar', 'Log-in'),
(76, '2021-04-13 18:28:52', 'Paul Nikko Villar', 'Log-in'),
(77, '2021-04-13 18:38:57', 'Paul Nikko Villar', 'Log-in'),
(78, '2021-04-13 18:40:12', 'Paul Nikko Villar', 'Log-in'),
(79, '2021-04-13 18:48:34', 'Paul Nikko Villar', 'Log-in'),
(80, '2021-04-13 18:50:12', 'Paul Nikko Villar', 'Log-in'),
(81, '2021-04-13 18:52:16', 'Paul Nikko Villar', 'Log-in'),
(82, '2021-04-13 18:54:24', 'Paul Nikko Villar', 'Log-in'),
(83, '2021-04-13 18:56:49', 'Paul Nikko Villar', 'Log-in'),
(84, '2021-04-13 18:57:52', 'Paul Nikko Villar', 'Log-in'),
(85, '2021-04-13 19:00:19', 'Paul Nikko Villar', 'Log-in'),
(86, '2021-04-13 19:01:49', 'Paul Nikko Villar', 'Log-in'),
(87, '2021-04-13 19:02:42', 'Paul Nikko Villar', 'Log-in'),
(88, '2021-04-13 19:04:48', 'Paul Nikko Villar', 'Log-in'),
(89, '2021-04-13 19:05:38', 'Paul Nikko Villar', 'Log-in'),
(90, '2021-04-14 19:25:53', 'Paul Nikko Villar', 'Log-in'),
(91, '2021-04-14 19:30:24', 'Paul Nikko Villar', 'Log-in'),
(92, '2021-04-14 19:34:16', 'Paul Nikko Villar', 'Log-in'),
(93, '2021-04-14 19:36:41', 'Paul Nikko Villar', 'Log-in'),
(94, '2021-04-14 19:40:06', 'Paul Nikko Villar', 'Log-in'),
(95, '2021-04-14 19:42:46', 'Paul Nikko Villar', 'Log-in'),
(96, '2021-04-14 19:44:37', 'Paul Nikko Villar', 'Log-in'),
(97, '2021-04-14 19:46:45', 'Paul Nikko Villar', 'Log-in'),
(98, '2021-04-14 19:48:12', 'Paul Nikko Villar', 'Log-in'),
(99, '2021-04-15 04:19:48', 'Paul Nikko Villar', 'Log-in'),
(100, '2021-04-15 04:22:05', 'Paul Nikko Villar', 'Log-in'),
(101, '2021-04-15 04:24:11', 'Paul Nikko Villar', 'Log-in'),
(102, '2021-04-15 19:17:47', 'Paul Nikko Villar', 'Log-in'),
(103, '2021-04-15 19:20:38', 'Paul Nikko Villar', 'Log-in'),
(104, '2021-04-15 19:23:35', 'Paul Nikko Villar', 'Log-in'),
(105, '2021-04-15 19:25:53', 'Paul Nikko Villar', 'Log-in'),
(106, '2021-04-15 19:31:33', 'Paul Nikko Villar', 'Log-in'),
(107, '2021-04-15 19:33:45', 'Paul Nikko Villar', 'Log-in'),
(108, '2021-04-15 19:34:07', 'Paul Nikko Villar', 'Log-out'),
(109, '2021-04-15 20:10:21', 'Paul Nikko Villar', 'Log-in'),
(110, '2021-04-23 16:42:05', 'Paul Nikko Villar', 'Log-in'),
(111, '2021-04-23 16:43:22', 'Paul Nikko Villar', 'Log-in'),
(112, '2021-04-23 16:43:54', 'Paul Nikko Villar', 'Log-out'),
(113, '2021-04-23 16:49:56', 'Paul Nikko Villar', 'Log-in'),
(114, '2021-04-23 16:50:02', 'Paul Nikko Villar', 'Log-out'),
(115, '2021-04-23 16:52:33', 'Paul Nikko Villar', 'Log-in'),
(116, '2021-04-23 16:55:14', 'asd', 'Log-in'),
(117, '2021-04-23 16:56:52', 'asd', 'Log-in'),
(118, '2021-04-23 17:03:42', 'asd', 'Log-in'),
(119, '2021-04-23 17:05:46', 'Paul Nikko Villar', 'Log-in'),
(120, '2021-04-23 17:06:21', 'Paul Nikko Villar', 'Log-in'),
(121, '2021-04-23 17:07:18', 'Paul Nikko Villar', 'Log-in'),
(122, '2021-04-23 17:08:01', 'Paul Nikko Villar', 'Log-in'),
(123, '2021-04-23 17:11:37', 'asd', 'Log-in'),
(124, '2021-04-23 17:11:49', 'asd', 'Log-out'),
(125, '2021-04-23 17:11:55', 'Paul Nikko Villar', 'Log-in'),
(126, '2021-04-23 17:11:58', 'Paul Nikko Villar', 'Log-out'),
(127, '2021-04-23 17:12:12', 'asd', 'Log-in'),
(128, '2021-04-23 17:15:04', 'asd', 'Log-in'),
(129, '2021-04-23 17:18:31', 'asd', 'Log-in'),
(130, '2021-04-23 17:49:14', 'asd', 'Log-in'),
(131, '2021-04-23 18:07:47', 'asd', 'Log-in'),
(132, '2021-04-23 18:08:58', 'asd', 'Log-in'),
(133, '2021-04-23 18:11:40', 'asd', 'Log-in'),
(134, '2021-04-23 18:30:15', 'asd', 'Log-in'),
(135, '2021-04-23 18:31:35', 'asd', 'Log-in'),
(136, '2021-04-23 18:34:27', 'asd', 'Log-in'),
(137, '2021-04-23 18:36:02', 'asd', 'Log-in'),
(138, '2021-04-23 18:36:55', 'asd', 'Log-in'),
(139, '2021-04-23 18:38:02', 'asd', 'Log-in'),
(140, '2021-04-23 18:39:20', 'asd', 'Log-in'),
(141, '2021-04-23 18:40:00', 'asd', 'Log-in'),
(142, '2021-04-23 18:41:02', 'asd', 'Log-in'),
(143, '2021-04-23 18:42:33', 'asd', 'Log-in'),
(144, '2021-04-23 18:44:47', 'asd', 'Log-in'),
(145, '2021-04-23 18:47:45', 'asd', 'Log-in'),
(146, '2021-04-23 18:48:09', 'asd', 'Log-in'),
(147, '2021-04-23 18:49:03', 'Paul Nikko Villar', 'Log-in'),
(148, '2021-04-23 18:49:06', 'Paul Nikko Villar', 'Log-out'),
(149, '2021-04-23 18:49:14', 'asd', 'Log-in'),
(150, '2021-04-23 18:49:47', 'asd', 'Log-in'),
(151, '2021-04-23 18:50:48', 'asd', 'Log-in'),
(152, '2021-04-23 18:53:45', 'asd', 'Log-in'),
(153, '2021-04-23 18:55:28', 'asd', 'Log-in'),
(154, '2021-04-23 18:55:54', 'asd', 'Log-in'),
(155, '2021-04-23 18:56:31', 'asd', 'Log-in'),
(156, '2021-04-23 18:57:04', 'Paul Nikko Villar', 'Log-in'),
(157, '2021-04-23 18:57:09', 'Paul Nikko Villar', 'Log-out'),
(158, '2021-04-23 18:57:14', 'asd', 'Log-in'),
(159, '2021-04-23 18:58:29', 'asd', 'Log-in'),
(160, '2021-04-23 18:59:03', 'asd', 'Log-in'),
(161, '2021-04-23 19:00:38', 'asd', 'Log-in'),
(162, '2021-04-24 17:01:49', 'Paul Nikko Villar', 'Log-in'),
(163, '2021-04-24 17:02:23', 'Paul Nikko Villar', 'Log-out'),
(164, '2021-04-24 17:46:07', 'Paul Nikko Villar', 'Log-in'),
(165, '2021-04-24 17:50:19', 'Paul Nikko Villar', 'Log-in'),
(166, '2021-04-24 18:05:24', 'asd', 'Log-in'),
(167, '2021-04-24 18:06:03', 'asd', 'Log-in'),
(168, '2021-04-24 18:09:31', 'asd', 'Log-in'),
(169, '2021-04-24 19:39:01', 'asd', 'Log-in'),
(170, '2021-04-24 19:44:00', 'asd', 'Log-in'),
(171, '2021-04-24 19:45:25', 'asd', 'Log-in'),
(172, '2021-04-24 19:47:12', 'asd', 'Log-in'),
(173, '2021-04-24 19:52:05', 'asd', 'Log-in'),
(174, '2021-04-24 19:53:27', 'asd', 'Log-in'),
(175, '2021-04-25 08:39:40', 'asd', 'Log-in'),
(176, '2021-04-25 08:41:22', 'asd', 'Log-in'),
(177, '2021-04-25 08:41:56', 'asd', 'Log-in'),
(178, '2021-04-25 08:42:19', 'Paul Nikko Villar', 'Log-in'),
(179, '2021-04-25 08:42:24', 'Paul Nikko Villar', 'Log-out'),
(180, '2021-04-25 08:42:30', 'asd', 'Log-in'),
(181, '2021-04-25 08:43:57', 'asd', 'Log-in'),
(182, '2021-04-25 08:45:32', 'asd', 'Log-in'),
(183, '2021-04-25 08:47:10', 'asd', 'Log-in'),
(184, '2021-04-25 08:47:58', 'asd', 'Log-in'),
(185, '2021-04-25 09:47:14', 'Paul Nikko Villar', 'Log-in'),
(186, '2021-04-25 09:47:16', 'Paul Nikko Villar', 'Log-out'),
(187, '2021-04-25 09:47:24', 'asd', 'Log-in'),
(188, '2021-04-25 09:48:11', 'asd', 'Log-in'),
(189, '2021-04-25 09:48:31', 'asd', 'Log-in'),
(190, '2021-04-25 09:48:35', 'asd', 'Log-out'),
(191, '2021-04-25 09:55:02', 'Paul Nikko Villar', 'Log-in'),
(192, '2021-04-25 09:55:04', 'Paul Nikko Villar', 'Log-out'),
(193, '2021-04-25 10:01:47', '', 'Log-out'),
(194, '2021-04-25 10:04:05', 'asd', 'Log-in'),
(195, '2021-04-25 10:09:22', '', 'Log-out'),
(196, '2021-04-25 10:11:11', '', 'Log-out'),
(197, '2021-04-25 10:13:08', '', 'Log-out'),
(198, '2021-04-25 10:13:13', '', 'Log-out'),
(199, '2021-04-25 10:18:06', 'asd', 'Log-in'),
(200, '2021-04-25 10:18:07', 'asd', 'Log-out'),
(201, '2021-04-25 10:18:16', 'asd', 'Log-in'),
(202, '2021-04-25 10:21:02', 'Paul Nikko Villar', 'Log-in'),
(203, '2021-04-25 10:21:52', 'asd', 'Log-in'),
(204, '2021-04-25 10:22:34', 'asd', 'Log-out'),
(205, '2021-04-25 10:22:49', 'Paul Nikko Villar', 'Log-in'),
(206, '2021-04-25 10:22:51', 'Paul Nikko Villar', 'Log-out'),
(207, '2021-04-25 10:22:56', 'asd', 'Log-in'),
(208, '2021-04-25 10:23:46', 'asd', 'Log-in');

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
  `fristQ` varchar(100) DEFAULT NULL,
  `secondeQ` varchar(100) DEFAULT NULL,
  `thirdQ` varchar(100) DEFAULT NULL,
  `firstAns` varchar(100) DEFAULT NULL,
  `secondAns` varchar(100) DEFAULT NULL,
  `thirdAns` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employeeCode`, `fullName`, `address`, `rights`, `contactnumber`, `password`, `fristQ`, `secondeQ`, `thirdQ`, `firstAns`, `secondAns`, `thirdAns`) VALUES
(1, 31336, 'Paul Nikko Villar', 'asd', '0', 'asd', '31336', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 31335, '31335', 'qweqwtrwe', '0', 'asd', 'asd', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 31335, 'asd', 'asd', '1', 'asd', '31335', 'What was the model of your first car?', 'What was your father\'s middle name?', 'In what city were you born?', 'asd', 'asd', 'asd'),
(7, 31332, 'asd', 'asd', '1', 'asd', '31332', 'What was your father\'s middle name?', 'What was your father\'s middle name?', 'What was the model of your first car?', '1', '2', '3');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
