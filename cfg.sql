-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 11, 2015 at 11:27 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cfg`
--

-- --------------------------------------------------------

--
-- Table structure for table `acad`
--

CREATE TABLE IF NOT EXISTS `acad` (
  `st_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `a_year` int(11) NOT NULL,
  `a_percent` float NOT NULL,
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_result` varchar(20) NOT NULL,
  `is_computer` varchar(20) NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `s_id` (`s_id`),
  KEY `st_id` (`st_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=308 ;

--
-- Dumping data for table `acad`
--

INSERT INTO `acad` (`st_id`, `s_id`, `a_year`, `a_percent`, `a_id`, `a_result`, `is_computer`) VALUES
(200, 1, 2012, 79, 300, 'pas', 'yes'),
(201, 1, 2012, 79, 301, 'pas', 'yes'),
(202, 2, 2012, 79, 302, 'pas', 'yes'),
(203, 2, 2012, 79, 303, 'pas', 'yes'),
(204, 3, 2012, 79, 304, 'pas', 'yes'),
(205, 4, 2012, 79, 305, 'pas', 'yes'),
(206, 2, 2012, 79, 306, 'pas', 'yes'),
(0, 0, 2000, 60, 307, 'Pass', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE IF NOT EXISTS `community` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_loc` varchar(50) NOT NULL,
  `com_country` varchar(50) NOT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`com_id`, `com_loc`, `com_country`) VALUES
(1, 'Mumbai', 'India'),
(2, 'Delhi', 'India'),
(3, 'Kolkata', 'India'),
(4, 'Texas', 'USA'),
(5, 'Texas', 'USA'),
(6, 'Texas', 'USA'),
(7, 'Texas', 'USA'),
(8, 'Texas', 'USA'),
(9, 'Texas', 'USA'),
(10, 'Texas', 'USA'),
(11, 'Texas', 'USA'),
(12, 'Texas', 'USA'),
(13, 'Texas', 'USA'),
(14, 'Texas', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE IF NOT EXISTS `maintenance` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `m_post` date NOT NULL,
  `m_area` varchar(20) NOT NULL,
  `m_priority_rate` int(11) NOT NULL,
  `m_status` varchar(20) NOT NULL,
  `m_est_cost` varchar(20) NOT NULL,
  `m_description` varchar(20) NOT NULL,
  PRIMARY KEY (`m_id`),
  KEY `s_id` (`s_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=406 ;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`m_id`, `s_id`, `m_post`, `m_area`, `m_priority_rate`, `m_status`, `m_est_cost`, `m_description`) VALUES
(400, 1, '2015-07-02', 'Roof', 5, 'Pending', '$20000', 'Needed Urgently'),
(401, 2, '2015-07-02', 'Roof', 5, 'Pending', '$20000', 'Needed Urgently'),
(402, 3, '2015-07-02', 'Pool', 1, 'In process', '$20000', 'Needed Urgently'),
(403, 4, '2015-07-02', 'Roof', 5, 'Pending', '$20000', 'Needed Urgently'),
(404, 6, '2015-07-02', 'Roof', 5, 'Pending', '$20000', 'Needed Urgently'),
(405, 5, '2015-07-02', 'Roof', 5, 'Pending', '$20000', 'Needed Urgently');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NOT NULL,
  `is_hhf` varchar(20) NOT NULL,
  `dir_name` varchar(30) NOT NULL,
  `dir_cont` double NOT NULL,
  `no_teacher` int(11) NOT NULL,
  `s_type` varchar(30) NOT NULL,
  `s_est_year` int(11) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `com_id` (`com_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`s_id`, `com_id`, `is_hhf`, `dir_name`, `dir_cont`, `no_teacher`, `s_type`, `s_est_year`) VALUES
(1, 100, 'yes', 'Ying Yang', 987546799, 20, 'Private', 2001),
(2, 101, 'no', 'priyasha', 9867453245, 10, 'govt', 2006),
(3, 100, 'no', 'venali', 6627182930, 30, 'govt', 2000),
(4, 101, 'yes', 'Amit', 9876543219, 20, 'govt', 2010),
(5, 102, 'yes', 'Amita', 9876543219, 20, 'govt', 2008),
(6, 101, 'no', 'Tejas', 9876543219, 20, 'private', 2002),
(7, 102, 'yes', 'Mohit', 9876543219, 80, 'govt', 2014),
(8, 100, 'no', 'Varsha', 9876543219, 60, 'govt', 2011),
(9, 100, 'yes', 'Amit', 9876543219, 20, 'govt', 2000),
(10, 102, 'no', 'Mohit', 9876543219, 11, 'Private', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `st_gender` varchar(30) NOT NULL,
  `do_joining` date NOT NULL,
  `do_leaving` date NOT NULL,
  `left_school` varchar(20) NOT NULL,
  PRIMARY KEY (`st_id`),
  KEY `s_id` (`s_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=207 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `s_id`, `st_gender`, `do_joining`, `do_leaving`, `left_school`) VALUES
(200, 1, 'male', '2007-07-12', '2015-07-13', 'yes'),
(201, 1, 'female', '2003-07-09', '2010-07-20', 'yes'),
(202, 2, 'male', '2006-07-12', '2013-07-23', 'no'),
(203, 2, 'female', '2012-07-11', '2015-07-23', 'no'),
(204, 3, 'female', '2005-07-06', '2014-07-17', 'yes'),
(205, 4, 'female', '2015-07-15', '2015-07-30', 'no'),
(206, 2, 'male', '2015-07-16', '2015-07-31', 'no');

-- --------------------------------------------------------

--
-- Table structure for table ` user`
--

CREATE TABLE IF NOT EXISTS ` user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_type` varchar(20) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table ` user`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
