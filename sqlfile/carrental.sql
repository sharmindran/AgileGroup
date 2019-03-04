-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 03:15 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-01-13 18:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE IF NOT EXISTS `tblbooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2018', '25/06/2018', 'nice ', 1, '2018-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2018', '02/07/2018', 'better price', 1, '2018-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2018', '07/07/2018', 'cgnfhkgdjh.,dghvm', 0, '2018-06-26 21:10:06'),
(4, 'test@gmail.com', 1, '23/01/2019', '25/01/2019', 'dtthdyfj', 1, '2019-01-15 04:42:47'),
(5, 'test@gmail.com', 1, '2019-01-15', '2019-01-17', 'dagrtjtikyfs', 0, '2019-01-15 15:31:16'),
(6, 'ruthrashini@gmail.com', 1, '2019-01-17', '2019-01-18', 'need air cond', 0, '2019-01-16 02:14:27'),
(7, 'bob@gmail.com', 7, '2019-02-15', '2019-02-16', ' vchcgvjvgk', 1, '2019-02-14 07:56:03'),
(8, 'vim@gmail.com', 8, '2019-02-16', '2019-02-18', 'urgently', 1, '2019-02-15 02:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE IF NOT EXISTS `tblbrands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(6, 'Proton', '2019-01-16 02:16:55', NULL),
(7, 'Perodua', '2019-02-14 07:44:35', NULL),
(8, 'Subaru', '2019-02-15 02:07:10', NULL),
(9, 'Toyota', '2019-02-15 02:12:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE IF NOT EXISTS `tblcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) NOT NULL,
  `Comments` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `UserEmail`, `Comments`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Test Test', '2017-06-18 07:44:31', 1),
(2, 'test@gmail.com', 'best car rental service', '2017-06-18 07:46:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, '78, Jalan Tengah, Bayan Baru,, Bayan Lepas, 11900 Bayan Lepas, Pulau Pinang																							', 'kushabobcarrental@yahoo.com', '+0129654309');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `RegDate`, `UpdationDate`) VALUES
(1, 'Harry Den', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2147483647', '2017-06-17 19:59:27', '2017-06-26 21:02:58'),
(2, 'AK', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', '2017-06-17 20:00:49', '2017-06-26 21:03:09'),
(3, 'Mark K', 'webhostingamigo@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '2017-06-17 20:01:43', '2017-06-17 21:07:41'),
(4, 'Tom K', 'test@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9999857868', '2017-06-17 20:03:36', '2019-01-15 13:28:38'),
(5, 'ruthrashini', 'ruthra@yahoo.com', '3ed24cd5e7d14f42315228b81e429929', '0182356234', '2019-01-13 19:28:48', NULL),
(6, 'ruthrashini', 'ruthrashini@gmail.com', '77963b91269a5109fdfd71606913515a', '0175817893', '2019-01-16 02:12:52', NULL),
(7, 'Bob', 'bob@gmail.com', 'efc1a6c51e2e2ec8e6bf592cf142d313', '0120120121', '2019-01-31 23:44:32', '2019-01-31 23:46:28'),
(8, 'vimala', 'ffghh@gg.com', '202cb962ac59075b964b07152d234b70', '0134231111', '2019-02-01 02:03:13', '2019-02-01 02:05:23'),
(9, 'Vim', 'vim@gmail.com', '4c2c65bafdaebe9aaeb3348242e225d3', '1218823627', '2019-02-15 02:05:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE IF NOT EXISTS `tblvehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'SERIES 2', 2, 'BMW 2-Series is ranked #3 in Luxury Small Cars', 850, 'Diesel', 2014, 5, 'cosySec.jpg', '20170523_145633.jpg', 'phpgurukul-1.png', 'social-icons.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2019-01-13 18:12:52'),
(2, 'SERIES 3', 2, 'The BMW 3 Series is the embodiment of a sporty sedan.', 900, 'Petrol', 2018, 5, 'bmw_3_series_gt.jpg', 'bmw3.png', 'download.jpg', '2018-bmw-3-series-05-z-inline3-photo-694636-s-original.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2019-01-13 18:28:36'),
(3, 'NISSAN ROGUE SPORT', 4, 'Currently the Nissan Rogue Sport has a score of 7.8 out of 10 which is based on our evaluation of 20 pieces of research ', 900, 'Petrol', 2018, 5, 'nissan_rogue1.png', 'nissan_rogue2.jpg', 'nissan_rogue3.png', 'nissan_rogue4.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2019-01-13 18:42:27'),
(4, 'Lorem ipsum', 1, 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum', 5636, 'CNG', 2012, 5, 'featured-img-3.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2017-06-20 18:44:12'),
(5, 'ALPHARD', 5, 'Strong performance and ultimate efficiency are the prime requirements of a luxury cruiser and the Toyota Alphard thoroughly surpasses this and gives the best to you.', 700, 'Petrol', 2016, 7, 'Alphard1.jpg', 'Toyota-Alphard-2016.jpg', 'interior-Toyota-Alphard-Facelift-2018.jpg', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2019-01-13 18:51:10'),
(6, 'Saga', 6, 'malaysia model', 200, 'Petrol', 2018, 5, 'about_services_faq_bg.jpg', 'car_755x430.png', 'bmw3.png', 'featured-img-3.jpg', '', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '2019-01-16 02:19:41', NULL),
(7, 'Azia', 7, 'Fuel efficient ', 150, 'Petrol', 2015, 4, 'axia1.jpg', 'axia2.jpg', 'axia3.jpg', 'axia4.jpg', '', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-02-14 07:48:57', NULL),
(8, 'Impreza Wrx Sti', 8, 'High Performance', 450, 'Petrol', 2019, 5, 'subaru1.jpg', 'subaru2.jpg', 'subaru3.jpg', 'subaru4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-02-15 02:09:03', '2019-03-01 01:07:07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
