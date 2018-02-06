-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2018 at 07:21 PM
-- Server version: 5.6.17-log
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ma3points`
--

-- --------------------------------------------------------

--
-- Table structure for table `filtered`
--

CREATE TABLE IF NOT EXISTS `filtered` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `destination` varchar(250) NOT NULL,
  `route_number` varchar(5) NOT NULL,
  `road_used` varchar(250) NOT NULL,
  `price_range` varchar(20) DEFAULT NULL,
  `sacco_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `filtered`
--

INSERT INTO `filtered` (`id`, `latitude`, `longitude`, `destination`, `route_number`, `road_used`, `price_range`, `sacco_name`) VALUES
(1, -1.283876, 36.827671, 'Thika', '237', 'Thika Rd.', '50/= to 80/=', 'Kenya Mpya');

-- --------------------------------------------------------

--
-- Table structure for table `terminus`
--

CREATE TABLE IF NOT EXISTS `terminus` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `destination` varchar(250) CHARACTER SET latin1 NOT NULL,
  `route_number` varchar(5) NOT NULL,
  `road_used` varchar(250) CHARACTER SET latin1 NOT NULL,
  `price_range` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `sacco_name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `terminus`
--

INSERT INTO `terminus` (`id`, `latitude`, `longitude`, `destination`, `route_number`, `road_used`, `price_range`, `sacco_name`) VALUES
(1, -1.283876, 36.827671, 'Thika', '237', 'Thika Rd.', '50/= to 80/=', 'Kenya Mpya'),
(2, -1.285069, 36.829037, 'Githurai 45', '45', 'Thika Rd.', '10/= to 70/=', 'Virginia Coach'),
(3, -1.284219, 36.825275, 'Juja', '236', 'Thika Rd.', '40/= to 80/=', 'Metro Trans'),
(4, -1.282546, 36.823616, 'Kahawa West', '44', 'Thika Rd.', '30/= to 80/=', 'Zuri Sacco | Marimba Sacco'),
(5, -1.286122, 36.828434, 'Madaraka Estate', '40', 'Lang''ata Rd.', '40/= to 100/=', 'Lucky BD. Travellers'),
(6, -1.283741, 36.826534, 'Pangani', '9', 'Ring Rd.', '20 - 50', NULL),
(7, -1.287978, 36.833630, 'Pipeline', '33', 'Lungalunga', '50 - 100', NULL),
(8, -1.283741, 36.825344, 'Ridgeways', '109', 'Kiambu Road', NULL, 'Bakaki 101 Travellers'),
(9, -1.287978, 36.833630, 'Rikana', '33', 'Landhies. Jogoo Rd.', '20', 'CBET'),
(10, -1.283741, 36.825344, 'Rock city', '100', 'Kiambu Rd.', NULL, 'Bakaki 101 Travellers'),
(12, -1.285071, 36.827095, 'Ruiru', '146', 'Thika Rd.', '30 - 50', 'Cheetah travellers'),
(13, -1.281424, 36.822727, 'Runda', '106', 'Murang''a Rd.', NULL, 'Thimu Travellers'),
(14, -1.283172, 36.824692, 'Kangemi', '23', 'Waiyaki Way', '30 - 70', NULL),
(15, -1.284202, 36.825977, 'Saika', '18', 'Juja Rd.', NULL, 'Eastleigh Route Sacco'),
(17, -1.282625, 36.823776, 'Santon', '17', 'Kasarani Mwiki Rd.', NULL, 'Mwirona Sacco'),
(18, -1.289650, 36.827759, 'South B', '11', 'Workshop road', '70 - 100', 'County Link'),
(19, -1.289650, 36.827759, 'South C', '12', 'Mombasa Rd.', NULL, 'Nguso Travellers'),
(20, -1.286207, 36.828693, 'Strathmore School', '48', 'Aerodrome Rd.', NULL, NULL),
(21, -1.285939, 36.825977, 'Taj Mall', '34', 'Jogoo Rd.', NULL, NULL),
(22, -1.285628, 36.825024, 'Toi Market', '8', 'Ngong'' Rd.', '50 - 70', 'Compliant Mgnmt. Co.'),
(23, -1.285682, 36.827995, 'Umoja', '17', 'Jogoo Rd.', '30 - 80', 'Ummoinner'),
(24, -1.281348, 36.822704, 'Gigiri', '106', 'Limuru Rd.', '80 - 100', 'Lopha'),
(25, -1.285746, 36.825687, 'Upper Hill', '7', 'Valley Rd.', '30 - 50', 'Kenya Bus Service');

-- --------------------------------------------------------

--
-- Table structure for table `terminus_location`
--

CREATE TABLE IF NOT EXISTS `terminus_location` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `destination` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `terminus_location`
--

INSERT INTO `terminus_location` (`id`, `latitude`, `longitude`, `destination`) VALUES
(1, -1.283876, 36.827671, 'Thika'),
(2, -1.285069, 36.829037, 'Githurai 45'),
(3, -1.284219, 36.825275, 'Juja'),
(4, -1.282546, 36.823616, 'Kahawa West'),
(5, -1.286122, 36.828434, 'Madaraka Estate'),
(6, -1.283741, 36.826534, 'Pangani'),
(7, -1.287978, 36.833630, 'Pipeline'),
(8, -1.283741, 36.825344, 'Ridgeways'),
(9, -1.287978, 36.833630, 'Rikana'),
(10, -1.283741, 36.825344, 'Rock city'),
(12, -1.285071, 36.827095, 'Ruiru'),
(13, -1.281424, 36.822727, 'Runda'),
(14, -1.283172, 36.824692, 'Kangemi'),
(15, -1.284202, 36.825977, 'Saika'),
(17, -1.282625, 36.823776, 'Santon'),
(18, -1.289650, 36.827759, 'South B'),
(19, -1.289650, 36.827759, 'South C'),
(20, -1.286207, 36.828693, 'Strathmore School'),
(21, -1.285939, 36.825977, 'Taj Mall'),
(22, -1.285628, 36.825024, 'Toi Market'),
(23, -1.285682, 36.827995, 'Umoja'),
(24, -1.281348, 36.822704, 'Gigiri'),
(25, -1.285746, 36.825687, 'Upper Hill');

-- --------------------------------------------------------

--
-- Table structure for table `terminus_road`
--

CREATE TABLE IF NOT EXISTS `terminus_road` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `road_used` varchar(250) NOT NULL,
  `sacco_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `terminus_road`
--

INSERT INTO `terminus_road` (`id`, `road_used`, `sacco_name`) VALUES
(1, 'Thika Rd.', 'Kenya Mpya'),
(2, 'Thika Rd.', 'Virginia Coach'),
(3, 'Thika Rd.', 'Metro Trans'),
(4, 'Thika Rd.', 'Zuri Sacco | Marimba Sacco'),
(5, 'Lang''ata Rd.', 'Lucky BD. Travellers'),
(6, 'Ring Rd.', 'Ring Sacco'),
(7, 'Lungalunga', 'Lunga Trans'),
(8, 'Kiambu Road', 'Bakaki 101 Travellers'),
(9, 'Landhies. Jogoo Rd.', 'CBET'),
(10, 'Kiambu Rd.', 'Bakaki 101 Travellers'),
(12, 'Thika Rd.', 'Cheetah travellers'),
(13, 'Murang''a Rd.', 'Thimu Travellers'),
(14, 'Waiyaki Way', 'Metro Trans'),
(15, 'Juja Rd.', 'Eastleigh Route Sacco'),
(17, 'Kasarani Mwiki Rd.', 'Mwirona Sacco'),
(18, 'Workshop road', 'County Link'),
(19, 'Mombasa Rd.', 'Nguso Travellers'),
(20, 'Aerodrome Rd.', 'Sacco Ltd.'),
(21, 'Jogoo Rd.', 'Insert Sacco Name'),
(22, 'Ngong'' Rd.', 'Compliant Mgnmt. Co.'),
(23, 'Jogoo Rd.', 'Ummoinner'),
(24, 'Limuru Rd.', 'Lopha'),
(25, 'Valley Rd.', 'Kenya Bus Service');

-- --------------------------------------------------------

--
-- Table structure for table `terminus_route`
--

CREATE TABLE IF NOT EXISTS `terminus_route` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `route_number` varchar(5) NOT NULL,
  `price_range` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `terminus_route`
--

INSERT INTO `terminus_route` (`id`, `route_number`, `price_range`) VALUES
(1, '237', '50/= to 80/='),
(2, '45', '10/= to 70/='),
(3, '236', '40/= to 80/='),
(4, '44', '30/= to 80/='),
(5, '40', '40/= to 100/='),
(6, '9', '20/= to 50/='),
(7, '33', '50/= to 100/='),
(8, '109', '50/= to 100/='),
(9, '33', '20/= to 70/='),
(10, '100', '50/= to 100/='),
(12, '146', '30/= to 50/='),
(13, '106', '50/= to 100/='),
(14, '23', '30/= to 70/='),
(15, '18', '50/= to 100/='),
(17, '17', '50/= to 100/='),
(18, '11', '70/= to 100/='),
(19, '12', '40/= to 90/='),
(20, '48', '70/= to 100/='),
(21, '34', '50/= to 100/='),
(22, '8', '50/= to 70/='),
(23, '17', '30/= to 80/='),
(24, '106', '80/= to 100/='),
(25, '7', '30/= to 50/=');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
