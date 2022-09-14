-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 19, 2019 at 10:34 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `data`
--
CREATE DATABASE IF NOT EXISTS `data` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `data`;

-- --------------------------------------------------------

--
-- Table structure for table `leakfile`
--

CREATE TABLE IF NOT EXISTS `leakfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` varchar(25) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `senderid` varchar(25) NOT NULL,
  `ofsid` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `leakfile`
--

INSERT INTO `leakfile` (`id`, `fileid`, `filename`, `username`, `senderid`, `ofsid`) VALUES
(1, '1', 'abc', 'sathish', '2', '1'),
(2, '1', 'abc', 'sathi4', '2', '1'),
(3, '2', 'MCA', 'sathish', '6', '4'),
(4, '2', 'MCA', 'sathish', '6', '4');

-- --------------------------------------------------------

--
-- Table structure for table `senduser`
--

CREATE TABLE IF NOT EXISTS `senduser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(20) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `sid` varchar(20) NOT NULL,
  `userid` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `encryptkey` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `senduser`
--

INSERT INTO `senduser` (`id`, `fid`, `filename`, `sid`, `userid`, `username`, `encryptkey`) VALUES
(1, '1', 'abc', '1', '2', 'jkl', 'VXTcyRmiJIbZctKFYHMRWoMIxDeH'),
(2, '1', 'abc', '1', '2', 'jkl', 'iZwRBGKzOfsNNbZGViTRTiytnMxH'),
(3, '1', 'abc', '1', '2', 'jkl', 'CNXlD=nkiRpFaPZUCtavcQDapCVv'),
(4, '2', 'MCA', '4', '6', 'Raghu', 'utqrJakhozxlqCIOKsZRsqCpbnfp');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `filename` varchar(60) NOT NULL,
  `subject` varchar(70) NOT NULL,
  `upload` longblob NOT NULL,
  `time` varchar(50) NOT NULL,
  `securitykey` int(20) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `sid`, `filename`, `subject`, `upload`, `time`, `securitykey`, `status`) VALUES
(1, 1, 'abc', 'java', 0x31323539702e747874, '11-04-2019 20:23:23', 1259, 0),
(2, 4, 'MCA', 'Android', 0x36393730702e747874, '09-08-2019 10:43:45', 6970, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `gender`, `email`, `phoneno`, `password`, `status`) VALUES
(1, 'sathish', 'Male', 'sathish.coign@gmail.com', '7842500932', '12345', 0),
(2, 'jkl', 'Male', 'sathishburra10@gmail.com', '456', '15782', 0),
(3, 'sathi4', 'Male', 'sathicoolguy10@gmail.com', '75655', '14617', 0),
(4, 'abhinay', 'Male', 'abhinay.coign@gmail.com', '9874563210', '12345', 0),
(6, 'Raghu', 'Male', 'raghu.coign@gmail.com', '9632587410', '12345', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
