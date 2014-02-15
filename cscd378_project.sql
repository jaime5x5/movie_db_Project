-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 14, 2014 at 11:28 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cscd378_project`
--
CREATE DATABASE IF NOT EXISTS `cscd378_project` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cscd378_project`;

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE IF NOT EXISTS `cast` (
  `cast_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `actor` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_id` (`cast_id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE IF NOT EXISTS `crew` (
  `crew_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `cname` varchar(30) NOT NULL,
  `cjob` varchar(30) NOT NULL,
  PRIMARY KEY (`crew_id`),
  UNIQUE KEY `crew_id` (`crew_id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `mid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `overview` varchar(50) NOT NULL,
  `rel_date` date NOT NULL,
  `director` varchar(30) NOT NULL,
  `writer` varchar(50) NOT NULL,
  `run_time` time NOT NULL,
  `trivia` varchar(100) NOT NULL,
  `watched` tinyint(1) NOT NULL DEFAULT '0',
  `watched_date` date DEFAULT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `mid` (`mid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE IF NOT EXISTS `producers` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `producer_name` varchar(30) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `pid` (`pid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE IF NOT EXISTS `production` (
  `production_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `prod_co` varchar(50) NOT NULL,
  PRIMARY KEY (`production_id`),
  UNIQUE KEY `production_id` (`production_id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `fk_cast_movies` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crew`
--
ALTER TABLE `crew`
  ADD CONSTRAINT `fk_crew_movies` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_movies_users` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producers`
--
ALTER TABLE `producers`
  ADD CONSTRAINT `fk_producers_movies` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `production`
--
ALTER TABLE `production`
  ADD CONSTRAINT `fk_production_movies` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
