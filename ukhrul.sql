-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 07:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukhrul`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2023-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 0, 'Rejected', '', '2023-03-09 18:26:35'),
(2, 0, 'Pending', '', '2023-03-09 18:26:35'),
(3, 0, 'Processed', '', '2023-03-09 18:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `complaintsprocess`
--

CREATE TABLE `complaintsprocess` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `complainantName` varchar(255) NOT NULL,
  `complainantMobile` varchar(11) NOT NULL,
  `complainantAddress` varchar(255) DEFAULT NULL,
  `schemes` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `deptEmail` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL,
  `remark` mediumtext NOT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaintsprocess`
--

INSERT INTO `complaintsprocess` (`id`, `complaintNumber`, `complainantName`, `complainantMobile`, `complainantAddress`, `schemes`, `dept`, `deptEmail`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `remark`, `lastUpdationDate`) VALUES
(106, 41, 'Angampo', '9612692793', 'Hamleikhong', 'NICNET', 'NIC', 'kmodar@gmail.com', 'Pl provide internet connection', '', '2023-03-16 14:43:25', 'Processed', 'Connection Provided', '2023-03-16 15:48:47'),
(107, 40, 'Tomba', '9436280474', 'Ukhrul', 'CMHT', 'NIC', 'kmodar@gmail.com', 'I need a CM-HT card', '', '2023-03-16 15:47:15', 'Pending', 'Need to querry', '2023-03-16 16:50:25'),
(108, 42, 'Mashun', '9774532342', 'Phungreitang', 'Others', 'NIC', 'kmodar@gmail.com', 'I want to Join CCC course', '', '2023-03-16 16:22:16', '', '', '2023-03-16 16:22:16'),
(109, 43, 'Rishang', '9774068521', 'Wino Bazar', 'Ration Card', 'CAF & PD', 'golmei@gmail.com', 'I have lost my Ration card', '', '2023-03-16 17:55:53', '', '', '2023-03-16 17:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `complaintsreceived`
--

CREATE TABLE `complaintsreceived` (
  `complaintNumber` int(11) NOT NULL,
  `complainantName` varchar(255) NOT NULL,
  `complainantMobile` varchar(11) NOT NULL,
  `complainantAddress` varchar(255) DEFAULT NULL,
  `schemes` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaintsreceived`
--

INSERT INTO `complaintsreceived` (`complaintNumber`, `complainantName`, `complainantMobile`, `complainantAddress`, `schemes`, `dept`, `complaintDetails`, `complaintFile`, `status`, `regDate`, `lastUpdationDate`) VALUES
(40, 'Tomba', '9436280474', 'Ukhrul', 'CMHT', 'DIT', 'I need a CM-HT card', '', '1', '2023-03-16 14:40:24', '2023-03-16 15:47:15'),
(41, 'Angampo', '9612692793', 'Hamleikhong', 'NICNET', 'NIC', 'Pl provide internet connection', '', '1', '2023-03-16 14:41:05', '2023-03-16 14:43:25'),
(42, 'Mashun', '9774532342', 'Phungreitang', 'Others', 'NIC', 'I want to Join CCC course', '', '1', '2023-03-16 14:42:21', '2023-03-16 16:22:16'),
(43, 'Rishang', '9774068521', 'Wino Bazar', 'Ration Card', 'CAF&PD', 'I have lost my Ration card', '', '1', '2023-03-16 16:39:33', '2023-03-16 17:55:53'),
(44, 'Thotreishang', '9612692793', 'Khangkhui Khunou', 'MGNREGA', 'DRDA', 'I am not getting my wages', 'Sarah.pdf', '', '2023-03-16 17:36:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `id` int(11) NOT NULL,
  `deptName` varchar(250) NOT NULL,
  `districtName` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`id`, `deptName`, `districtName`, `postingDate`, `updationDate`) VALUES
(1, 'DIT', 'Ukhrul', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'NIC', 'Ukhrul', '2023-03-01 07:06:03', NULL),
(3, 'Election', 'Ukhrul', '2023-03-03 07:59:58', NULL),
(4, 'Fisheries', 'Ukhrul', '2023-03-03 08:00:52', NULL),
(5, 'Agri', 'Ukhrul', '2023-03-03 08:02:12', NULL),
(6, 'Revenue', 'Ukhrul', '2023-03-03 08:03:19', NULL),
(9, 'DRDA', 'Ukhrul', '2023-03-03 08:05:09', NULL),
(10, 'CAF&PD', 'Ukhrul', '2023-03-04 16:10:18', NULL),
(11, 'MSPDCL', 'Ukhrul', '2023-03-04 16:10:41', NULL),
(12, 'Statistics', 'Ukhrul', '2023-03-04 16:11:03', NULL),
(13, 'DIPR', 'Ukhrul', '2023-03-04 16:11:12', NULL),
(14, 'Transport', 'Ukhrul', '2023-03-04 16:11:50', NULL),
(15, 'Education(s)', 'Ukhrul', '2023-03-07 17:18:00', NULL),
(16, 'Education(U)', 'Ukhrul', '2023-03-07 17:19:04', NULL),
(17, 'Police', 'Ukhrul', '2023-03-07 17:19:56', NULL),
(18, 'PHED', 'Ukhrul', '2023-03-07 17:20:34', NULL),
(19, 'PWD', 'Ukhrul', '2023-03-07 17:20:46', NULL),
(20, 'Social Welfare', 'Ukhrul', '2023-03-07 17:22:39', NULL),
(21, 'CMO(Medical)', 'Ukhrul', '2023-03-07 17:23:15', NULL),
(22, 'Others', 'Ukhrul', '2023-03-16 06:52:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deptusers`
--

CREATE TABLE `deptusers` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `deptName` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `deptusers`
--

INSERT INTO `deptusers` (`id`, `fullName`, `deptName`, `userEmail`, `password`, `contactNo`, `userImage`, `regDate`, `status`) VALUES
(1, 'Dishingam Golmei', 'CAF & PD', 'golmei@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9436280474, '3c3bec700a271d057567944d8eb2c56f.jpg', '2023-02-28 07:17:52', 1),
(48, 'K Modar Maring', 'NIC', 'kmodar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9436123435, '11f6c80c6c8d318abe7a74dd627e5619.jpg', '2023-03-06 13:55:57', 1),
(50, 'K Angphun', 'Agri', 'kam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9436280474, 'b6dd9fa8f6b2a7b7a526d1374fd07fb9.jpg', '2023-03-06 19:30:55', 1),
(51, 'K Korung Maring', 'CMO(Medical)', 'kkmaring@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9612692793, '8ef3a319e47614f1b8a62911036b79d1.jpg', '2023-03-08 13:59:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

CREATE TABLE `schemes` (
  `id` int(11) NOT NULL,
  `schemeName` varchar(255) DEFAULT NULL,
  `schemeDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`id`, `schemeName`, `schemeDescription`, `creationDate`, `updationDate`) VALUES
(1, 'CMHT', 'CM Health gi Tengbang', '2019-07-28 06:10:55', '2019-08-06 04:49:25'),
(2, 'Old Age Pension', 'Pension', '2019-06-10 10:54:06', '2019-08-06 04:49:40'),
(8, 'Ration Card', 'under FCS', '2023-03-03 08:20:18', NULL),
(9, 'Birth Certificate', 'Health', '2023-03-04 16:15:30', NULL),
(10, 'NICNET', 'NIC', '2023-03-04 16:17:59', NULL),
(11, 'MGNREGA', 'DRDA', '2023-03-04 16:18:36', NULL),
(12, 'PMKissan', 'For Farmers', '2023-03-07 16:56:41', NULL),
(13, 'AAY', 'SDOs ', '2023-03-07 17:21:45', NULL),
(14, 'Job Card', 'under MGNREGA', '2023-03-07 17:24:10', NULL),
(15, 'VAHAN & SARATHI', 'under Transport', '2023-03-07 17:24:54', NULL),
(16, 'Others', 'NA', '2023-03-16 06:52:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(0, 51, 'kkmaring@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 12:22:39', '', 1),
(1, 2, 'modar.k@nic.in', 0x3a3a3100000000000000000000000000, '2023-03-01 15:19:12', '01-03-2023 10:07:47 PM', 1),
(2, 2, 'modar.k@nic.in', 0x3a3a3100000000000000000000000000, '2023-03-01 15:20:10', '', 1),
(3, 0, 'modar.k@nic.in', 0x3a3a3100000000000000000000000000, '2023-03-01 16:03:26', '', 0),
(4, 0, 'modar.k@nic.in', 0x3a3a3100000000000000000000000000, '2023-03-01 16:03:41', '', 0),
(5, 0, 'modar.k@nic.in', 0x3a3a3100000000000000000000000000, '2023-03-01 16:03:50', '', 0),
(6, 3, 'modar.k@nic.in', 0x3a3a3100000000000000000000000000, '2023-03-01 16:11:00', '', 1),
(7, 3, 'modar.k@nic.in', 0x3a3a3100000000000000000000000000, '2023-03-01 16:20:55', '', 1),
(8, 0, 'modar.k@nic.in', 0x3a3a3100000000000000000000000000, '2023-03-01 16:36:38', '', 0),
(9, 3, 'modar.k@nic.in', 0x3a3a3100000000000000000000000000, '2023-03-01 16:37:08', '', 1),
(10, 4, 'popo@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-03 16:03:25', '03-03-2023 09:44:23 PM', 1),
(11, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-03 16:14:52', '03-03-2023 09:46:05 PM', 1),
(12, 47, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-03 18:38:21', '04-03-2023 12:08:53 AM', 1),
(13, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 12:48:46', '05-03-2023 06:19:36 PM', 1),
(14, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 12:56:36', '05-03-2023 06:27:11 PM', 1),
(15, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 13:42:12', '05-03-2023 07:20:29 PM', 1),
(16, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 18:26:10', '05-03-2023 11:58:53 PM', 1),
(17, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 18:29:09', '06-03-2023 12:23:40 AM', 1),
(18, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 12:34:50', '06-03-2023 06:27:20 PM', 1),
(19, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 13:07:25', '06-03-2023 07:25:23 PM', 1),
(20, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 13:56:19', '', 1),
(21, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 14:11:29', '', 1),
(22, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 14:12:04', '', 1),
(23, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 16:24:55', '', 1),
(24, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 16:31:40', '', 1),
(25, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 16:32:06', '06-03-2023 10:40:19 PM', 1),
(26, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 17:12:15', '06-03-2023 10:44:03 PM', 1),
(27, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 17:32:08', '06-03-2023 11:30:55 PM', 1),
(28, 1, 'golmei@gmail.com', 0x00000000000000000000000000000000, '2023-03-06 18:13:23', '06-03-2023 11:43:36 PM', 1),
(29, 49, 'koko@gmail.com', 0x00000000000000000000000000000000, '2023-03-06 18:15:25', '06-03-2023 11:47:37 PM', 1),
(30, 49, 'koko@gmail.com', 0x00000000000000000000000000000000, '2023-03-06 18:17:52', '06-03-2023 11:53:17 PM', 1),
(31, 49, 'koko@gmail.com', 0x00000000000000000000000000000000, '2023-03-06 18:23:31', '07-03-2023 12:09:04 AM', 1),
(32, 49, 'koko@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 18:39:19', '07-03-2023 12:22:29 AM', 1),
(33, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 18:55:15', '07-03-2023 12:34:43 AM', 1),
(34, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 19:20:38', '07-03-2023 12:59:48 AM', 1),
(35, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 19:31:11', '07-03-2023 01:01:18 AM', 1),
(36, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 19:35:26', '07-03-2023 01:26:38 AM', 1),
(37, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 20:47:58', '07-03-2023 02:26:26 AM', 1),
(38, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 20:58:02', '07-03-2023 02:29:40 AM', 1),
(39, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 20:59:51', '07-03-2023 02:30:14 AM', 1),
(40, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 21:00:31', '07-03-2023 02:40:21 AM', 1),
(41, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 21:11:07', '07-03-2023 02:41:44 AM', 1),
(42, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 21:11:58', '07-03-2023 02:42:21 AM', 1),
(43, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 13:07:21', '07-03-2023 06:37:41 PM', 1),
(44, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 13:08:59', '07-03-2023 06:40:21 PM', 1),
(45, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 13:10:46', '07-03-2023 06:40:56 PM', 1),
(46, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 13:12:33', '07-03-2023 06:48:06 PM', 1),
(47, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 13:28:11', '07-03-2023 06:58:29 PM', 1),
(48, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 13:31:17', '07-03-2023 07:42:00 PM', 1),
(49, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 14:25:15', '07-03-2023 07:55:31 PM', 1),
(50, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 14:25:44', '07-03-2023 09:11:37 PM', 1),
(51, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 15:57:09', '07-03-2023 09:29:04 PM', 1),
(52, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 15:59:13', '07-03-2023 09:29:33 PM', 1),
(53, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:10:06', '07-03-2023 09:40:28 PM', 1),
(54, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:13:06', '07-03-2023 09:43:52 PM', 1),
(55, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:14:06', '07-03-2023 09:44:17 PM', 1),
(56, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:15:48', '07-03-2023 10:18:23 PM', 1),
(57, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:49:50', '07-03-2023 10:19:55 PM', 1),
(58, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:50:06', '07-03-2023 10:20:12 PM', 1),
(59, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:50:23', '07-03-2023 10:21:20 PM', 1),
(60, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:51:30', '07-03-2023 10:22:53 PM', 1),
(61, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:54:23', '07-03-2023 10:24:30 PM', 1),
(62, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:55:23', '07-03-2023 10:25:49 PM', 1),
(63, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:57:14', '07-03-2023 10:27:21 PM', 1),
(64, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:57:33', '07-03-2023 10:27:43 PM', 1),
(65, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 16:57:52', '07-03-2023 10:28:09 PM', 1),
(66, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 17:00:47', '07-03-2023 10:31:40 PM', 1),
(67, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 17:01:50', '07-03-2023 10:32:00 PM', 1),
(68, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 17:02:13', '07-03-2023 10:35:04 PM', 1),
(69, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 17:09:33', '07-03-2023 10:39:42 PM', 1),
(70, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 17:09:56', '07-03-2023 10:40:08 PM', 1),
(71, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 17:10:21', '07-03-2023 10:40:37 PM', 1),
(72, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 17:35:42', '07-03-2023 11:06:43 PM', 1),
(73, 51, 'kkmaring@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-08 14:00:40', '08-03-2023 07:31:30 PM', 1),
(74, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-09 12:43:24', '09-03-2023 06:15:15 PM', 1),
(75, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-09 12:46:41', '', 1),
(76, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-09 13:27:53', '', 1),
(77, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-09 13:29:31', '', 1),
(78, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-09 13:30:50', '09-03-2023 11:27:39 PM', 1),
(79, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-09 17:57:49', '09-03-2023 11:27:59 PM', 1),
(80, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-09 17:58:11', '10-03-2023 12:05:38 AM', 1),
(81, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-09 18:36:44', '10-03-2023 12:07:18 AM', 1),
(82, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:46:32', '10-03-2023 12:16:35 PM', 1),
(83, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:46:47', '10-03-2023 12:17:20 PM', 1),
(84, 51, 'kkmaring@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:48:30', '10-03-2023 12:18:38 PM', 1),
(85, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:48:48', '10-03-2023 12:22:00 PM', 1),
(86, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:52:11', '10-03-2023 12:22:43 PM', 1),
(87, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:52:52', '10-03-2023 12:23:32 PM', 1),
(88, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:57:07', '', 1),
(89, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:57:27', '', 1),
(90, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:58:19', '', 1),
(91, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:58:52', '10-03-2023 12:29:37 PM', 1),
(92, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 06:59:46', '10-03-2023 12:31:34 PM', 1),
(93, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 07:01:48', '10-03-2023 12:31:55 PM', 1),
(94, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 10:40:32', '10-03-2023 04:11:09 PM', 1),
(95, 51, 'kkmaring@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 17:40:55', '10-03-2023 11:11:49 PM', 1),
(96, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 17:42:05', '10-03-2023 11:12:41 PM', 1),
(97, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 17:42:53', '10-03-2023 11:14:35 PM', 1),
(98, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 17:44:47', '10-03-2023 11:51:58 PM', 1),
(99, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 18:22:13', '10-03-2023 11:56:33 PM', 1),
(100, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-10 18:28:47', '10-03-2023 11:58:56 PM', 1),
(101, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-11 15:16:45', '11-03-2023 08:47:17 PM', 1),
(102, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-11 15:18:09', '11-03-2023 08:49:07 PM', 1),
(103, 51, 'kkmaring@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-11 16:17:06', '15-03-2023 05:54:04 PM', 1),
(104, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-12 08:34:53', '12-03-2023 02:05:54 PM', 1),
(105, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-12 18:08:09', '12-03-2023 11:39:03 PM', 1),
(106, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-13 17:11:12', '13-03-2023 10:41:59 PM', 1),
(107, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-13 17:48:06', '13-03-2023 11:20:57 PM', 1),
(108, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-14 10:05:57', '14-03-2023 03:36:27 PM', 1),
(109, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 06:07:28', '15-03-2023 11:39:02 AM', 1),
(110, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 06:12:12', '15-03-2023 12:00:18 PM', 1),
(111, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 07:06:02', '15-03-2023 12:36:57 PM', 1),
(112, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:31:00', '15-03-2023 02:03:41 PM', 1),
(113, 48, 'kmodar@gmail.com', 0x31302e3137382e3132312e3200000000, '2023-03-15 09:06:12', '', 1),
(114, 48, 'kmodar@gmail.com', 0x31302e3137382e3132312e3130300000, '2023-03-15 09:14:00', '15-03-2023 02:45:14 PM', 1),
(115, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 10:20:51', '15-03-2023 03:51:53 PM', 1),
(116, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 11:08:33', '15-03-2023 04:50:14 PM', 1),
(117, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 12:25:22', '15-03-2023 05:55:48 PM', 1),
(118, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 17:36:06', '15-03-2023 11:07:18 PM', 1),
(119, 1, 'golmei@gmail.com', 0x31302e3137382e3132312e3800000000, '2023-03-16 08:11:53', '16-03-2023 01:42:18 PM', 1),
(120, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-16 13:45:57', '16-03-2023 07:16:33 PM', 1),
(121, 50, 'kam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-16 13:48:04', '16-03-2023 07:18:28 PM', 1),
(122, 1, 'golmei@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-16 14:29:43', '16-03-2023 07:59:54 PM', 1),
(123, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-16 15:48:22', '16-03-2023 09:18:57 PM', 1),
(124, 48, 'kmodar@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-16 16:49:55', '16-03-2023 10:20:35 PM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintsprocess`
--
ALTER TABLE `complaintsprocess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintsreceived`
--
ALTER TABLE `complaintsreceived`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deptusers`
--
ALTER TABLE `deptusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schemes`
--
ALTER TABLE `schemes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `complaintsprocess`
--
ALTER TABLE `complaintsprocess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `complaintsreceived`
--
ALTER TABLE `complaintsreceived`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `deptusers`
--
ALTER TABLE `deptusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `schemes`
--
ALTER TABLE `schemes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
