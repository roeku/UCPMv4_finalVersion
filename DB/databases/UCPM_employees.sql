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
-- Table structure for table `UCPM_employees`
--

CREATE TABLE IF NOT EXISTS `UCPM_employees` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `function` varchar(32) NOT NULL,
  `transport` varchar(32) NOT NULL,
  `kids` int(11) NOT NULL,
  `img` varchar(64) NOT NULL,
  `hobbies` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` bigint(20) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `UCPM_employees`
--

INSERT INTO `UCPM_employees` (`userID`, `name`, `function`, `transport`, `kids`, `img`, `hobbies`, `email`, `telephone`) VALUES
(1, 'John Brown', 'Senior Sales Manager', '', 2, 'john_brown.jpg', 'Music, petanque, travelling, horseback riding', 'Johnbrown@hotmail.com', 32485643763),
(2, 'Vanessa Belcastro', 'Accountant', '', 0, 'vanessa_belcastro.jpg', 'Photography, modelling, binge watching series, shopping, going out', 'vanessax3@gmail.com', 31694367957),
(3, 'Jens Kaufman', 'Business Analyst', '', 3, 'jens_kaufman.jpg', 'Fishing, motor riding and hitting the gym', 'Jensiepensie@hotmail.com', 31609347689);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
