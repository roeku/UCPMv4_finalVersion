-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: 10.246.16.112:3306
-- Generation Time: Jun 05, 2014 at 05:20 PM
-- Server version: 5.1.73-1
-- PHP Version: 5.3.3-7+squeeze15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jellevandevelde`
--

-- --------------------------------------------------------

--
-- Table structure for table `UCPM_deliveries`
--

CREATE TABLE IF NOT EXISTS `UCPM_deliveries` (
  `delID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `cuisine` varchar(64) NOT NULL,
  `picture` varchar(128) NOT NULL,
  PRIMARY KEY (`delID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `UCPM_deliveries`
--

INSERT INTO `UCPM_deliveries` (`delID`, `name`, `cuisine`, `picture`) VALUES
(1, 'Mount Everest', 'Indian, Tandoori', 'tandoori.jpg'),
(2, 'Pizza Polo', 'Italian', 'pizza.jpg'),
(3, 'Kebab King', 'Turkish', 'kebab.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
