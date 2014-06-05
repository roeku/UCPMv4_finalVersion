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
-- Table structure for table `UCPM_appointments`
--

CREATE TABLE IF NOT EXISTS `UCPM_appointments` (
  `appID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `location` varchar(32) NOT NULL,
  `starttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inviteesID` int(11) NOT NULL,
  `notes` text NOT NULL,
  `label` varchar(32) NOT NULL,
  `secret` int(1) NOT NULL,
  PRIMARY KEY (`appID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `UCPM_appointments`
--

INSERT INTO `UCPM_appointments` (`appID`, `userID`, `title`, `location`, `starttime`, `endtime`, `inviteesID`, `notes`, `label`, `secret`) VALUES
(183, 1, 'appointment', 'aachen', '2014-05-16 14:00:00', '2014-05-16 15:00:00', 2, '', 'professional', 0),
(187, 3, '', 'City hotel Aachen', '2014-05-26 12:10:00', '2014-05-26 18:00:00', 2, '', 'private', 0),
(178, 2, 'Work', 'Aachen', '2014-05-16 10:00:00', '2014-05-16 12:00:00', 1, '', 'professional', 0),
(179, 1, 'Work', 'Aachen', '2014-05-16 10:00:00', '2014-05-16 12:00:00', 2, '', 'professional', 0),
(248, 1, 'Presentation', 'KÃ¶ln', '2014-05-23 16:00:00', '2014-05-23 17:00:00', 3, '', 'professional', 0),
(181, 1, 'Appoint,ent&', 'Aachen', '2014-05-16 13:00:00', '2014-05-16 15:00:00', 2, '', 'professional', 0),
(173, 1, 'Lunch', 'Aachen', '2014-05-16 11:00:00', '2014-05-16 14:00:00', 2, '', 'professional', 0),
(190, 2, 'Trip to Paris', 'Paris Gare du Nord', '2014-05-24 10:00:00', '2014-05-26 22:00:00', 0, '', 'holiday', 1),
(177, 3, 'Tennis', 'Aachen', '2014-05-16 16:00:00', '2014-05-16 19:00:00', 2, '', 'private', 0),
(174, 2, 'Holidays', 'Milano', '2014-05-25 08:00:00', '2014-05-25 00:00:00', 1, '', 'holiday', 0),
(175, 1, 'Holidays', 'Milano', '2014-07-01 08:00:00', '2014-07-14 00:00:00', 2, '', 'holiday', 0),
(171, 1, 'presnetation', 'aachen', '2014-05-16 13:00:00', '2014-05-16 15:00:00', 2, '', 'professional', 0),
(162, 1, 'Holiday', 'Nepal', '2014-05-27 10:00:00', '2014-05-31 13:00:00', 0, '', 'holiday', 0),
(164, 1, 'UCPM Presentation', 'FH Aachen', '2014-05-16 18:30:00', '2014-05-16 19:00:00', 0, '', 'professional', 0),
(184, 2, 'some appointment', 'Gent', '2014-05-23 13:00:00', '2014-05-23 15:00:00', 1, '', 'professional', 0),
(168, 1, 'Presentation', 'Aachen', '2014-05-17 15:00:00', '2014-05-17 17:00:00', 3, '', 'professional', 0),
(169, 3, 'Presentation', 'Aachen', '2014-05-17 15:00:00', '2014-05-17 17:00:00', 1, '', 'professional', 0),
(161, 3, 'Marketing Meeting (urgent)', 'Wayne Schlegel HQ', '2014-05-16 14:00:00', '2014-05-16 15:00:00', 2, '', 'professional', 0),
(158, 2, 'Getting a Coffee', 'Starbucks Genk', '2014-05-23 07:05:00', '2014-05-23 07:25:00', 0, '', 'private', 1),
(159, 2, 'Sales Pitch', 'Wayne Schlegel HQ', '2014-05-21 11:00:00', '2014-05-21 14:00:00', 0, '', 'professional', 0),
(156, 1, 'Gym', 'Gym Club Aachen', '2014-05-16 17:05:00', '2014-05-16 17:35:00', 0, '', 'private', 0),
(188, 2, '', '', '2014-05-16 00:00:00', '2014-05-16 00:00:00', 0, '', 'professional', 0),
(189, 2, 'Trip to Paris', 'Paris', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 'private', 0),
(153, 3, 'Meeting with the CEO', 'Wayne Schlegel HQ', '2014-05-16 13:00:00', '2014-05-16 13:30:00', 1, '', 'professional', 0),
(154, 1, 'Picking Up Kids', 'Kindergarten Aachen', '2014-05-16 16:05:00', '2014-05-16 16:30:00', 0, '', 'private', 0),
(152, 1, 'Meeting with the CEO', 'Wayne Schlegel HQ', '2014-05-16 13:00:00', '2014-05-16 13:30:00', 3, '', 'professional', 0),
(147, 2, 'Breakfast Sales Meeting', 'Brussels', '2014-05-16 08:00:00', '2014-05-16 10:00:00', 1, '', 'professional', 0),
(166, 1, 'Running', 'Genk Running Center', '2014-05-17 09:00:00', '2014-05-17 12:00:00', 0, '', 'private', 0),
(149, 2, 'Date Night', 'Cocktailbar Aachen', '2014-05-16 21:00:00', '2014-05-16 23:00:00', 0, '', 'private', 0),
(191, 2, 'Meeting with the CEO', 'Loc', '2014-05-19 22:00:00', '2014-05-19 23:00:00', 0, '', 'professional', 0),
(193, 2, 'Gym time', 'Sport Club Aachen', '2014-05-23 15:05:00', '2014-05-23 16:05:00', 0, '', 'private', 1),
(250, 1, 'vhgsdg', 'vfudrhg', '2014-05-23 18:00:00', '2014-05-23 22:00:00', 0, '', 'professional', 0),
(230, 2, 'Working on UCPM ', 'Genk', '2014-05-22 20:00:00', '2014-05-22 23:00:00', 0, '', 'private', 1),
(232, 3, 'Usability testing', 'Antwerp', '2014-05-23 08:00:00', '2014-05-23 09:00:00', 1, '', 'professional', 0),
(234, 1, 'Team bulding weekend', 'Paris', '2014-05-24 09:00:00', '2014-05-25 18:00:00', 0, '', 'professional', 0),
(247, 1, 'Buy Present for Susi', 'Aachen', '2014-05-26 14:00:00', '2014-05-28 15:00:00', 0, '', 'private', 1),
(240, 2, 'Getting ma nailz done', 'Beauty Salon', '2014-05-23 08:25:00', '2014-05-23 10:25:00', 0, '', 'private', 1),
(236, 1, 'Content management', 'Genk', '2014-05-26 09:30:00', '2014-05-26 16:00:00', 2, '', 'professional', 0),
(237, 2, 'Content management', 'Genk', '2014-05-26 09:30:00', '2014-05-26 16:00:00', 1, '', 'professional', 0),
(241, 2, 'Shopping till I drop with ma BFF', 'Berlin', '2014-05-23 18:30:00', '2014-05-23 20:00:00', 0, '', 'private', 0),
(249, 3, 'Presentation', 'KÃ¶ln', '2014-05-23 16:00:00', '2014-05-23 17:00:00', 1, '', 'professional', 0),
(243, 1, 'Birthday wife', 'Aachen', '2014-05-30 14:20:00', '2014-05-30 15:20:00', 0, '', 'private', 0),
(251, 1, '', '', '2014-05-23 22:30:00', '2014-05-23 23:00:00', 0, '', 'professional', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
