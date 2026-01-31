-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 19, 2021 at 04:18 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `appId` int(3) NOT NULL AUTO_INCREMENT,
  `patientIc` bigint(12) NOT NULL,
  `scheduleId` int(10) NOT NULL,
  `appSymptom` varchar(100) NOT NULL,
  `appComment` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'process',
  PRIMARY KEY (`appId`),
  UNIQUE KEY `scheduleId_2` (`scheduleId`),
  KEY `patientIc` (`patientIc`),
  KEY `scheduleId` (`scheduleId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appId`, `patientIc`, `scheduleId`, `appSymptom`, `appComment`, `status`) VALUES
(86, 920517105553, 40, 'headache', 'too much pain', 'done'),
(87, 12, 45, 'bp', 'bp hai', 'done'),
(88, 12, 47, 'SARDI KHASI', 'HAI BAHUT', 'process'),
(89, 5656, 48, 'SARDI KHASI', 'like corona', 'done');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `icDoctor` bigint(12) NOT NULL,
  `password` varchar(20) NOT NULL,
  `doctorId` int(3) NOT NULL,
  `doctorFirstName` varchar(50) NOT NULL,
  `doctorLastName` varchar(50) NOT NULL,
  `doctorAddress` varchar(100) NOT NULL,
  `doctorPhone` varchar(15) NOT NULL,
  `doctorEmail` varchar(20) NOT NULL,
  `doctorDOB` date NOT NULL,
  PRIMARY KEY (`icDoctor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`icDoctor`, `password`, `doctorId`, `doctorFirstName`, `doctorLastName`, `doctorAddress`, `doctorPhone`, `doctorEmail`, `doctorDOB`) VALUES
(1122, '123', 123, 'Amit', 'Chourasiya', 'sagar', '9827699538', 'amitchourasiya@gmail', '1990-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `doctorschedule`
--

CREATE TABLE IF NOT EXISTS `doctorschedule` (
  `scheduleId` int(11) NOT NULL AUTO_INCREMENT,
  `scheduleDate` date NOT NULL,
  `scheduleDay` varchar(15) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `bookAvail` varchar(10) NOT NULL,
  PRIMARY KEY (`scheduleId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `doctorschedule`
--

INSERT INTO `doctorschedule` (`scheduleId`, `scheduleDate`, `scheduleDay`, `startTime`, `endTime`, `bookAvail`) VALUES
(40, '2015-12-13', 'Sunday', '09:00:00', '10:00:00', 'notavail'),
(41, '2015-12-13', 'Sunday', '10:00:00', '11:00:00', 'available'),
(42, '2015-12-13', 'Sunday', '11:00:00', '12:00:00', 'available'),
(43, '2015-12-14', 'Monday', '11:00:00', '12:00:00', 'available'),
(45, '2021-03-07', 'Sunday', '03:00:00', '06:00:00', 'notavail'),
(47, '2021-07-19', 'Monday', '10:00:00', '12:00:00', 'notavail'),
(48, '2021-07-19', 'Monday', '11:00:00', '12:00:00', 'notavail');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `icPatient` bigint(12) NOT NULL,
  `password` varchar(20) NOT NULL,
  `patientFirstName` varchar(20) NOT NULL,
  `patientLastName` varchar(20) NOT NULL,
  `patientMaritialStatus` varchar(10) NOT NULL,
  `patientDOB` date NOT NULL,
  `patientGender` varchar(10) NOT NULL,
  `patientAddress` varchar(100) NOT NULL,
  `patientPhone` varchar(15) NOT NULL,
  `patientEmail` varchar(100) NOT NULL,
  PRIMARY KEY (`icPatient`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`icPatient`, `password`, `patientFirstName`, `patientLastName`, `patientMaritialStatus`, `patientDOB`, `patientGender`, `patientAddress`, `patientPhone`, `patientEmail`) VALUES
(5656, 'raju@123', 'sameer', 'jain', 'single', '1997-10-12', 'male', 'near hanuman temple', '7879888107', 'raju@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblvaccine`
--

CREATE TABLE IF NOT EXISTS `tblvaccine` (
  `vid` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `adharcard` varchar(100) NOT NULL,
  `otp` int(100) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tblvaccine`
--

INSERT INTO `tblvaccine` (`vid`, `firstname`, `lastname`, `city`, `gender`, `phone`, `address`, `mail`, `zipcode`, `adharcard`, `otp`) VALUES
(1, 'shivam', 'chourasiya', 'Indore', 'Male', 9827699537, 'fsdfsdf', 'prashant.noble@gmail.com', '34324', '123456781234', 1122),
(2, 'steps', 'namdeo', 'Indore', 'Male', 9827667888, 'fsdfsdf', 'prashant.ji@gmail.com', '34324', '0', 0),
(3, 'sd', 'namdeo', 'Jabalpur', 'Male', 7879888107, 'bada bazar saugor', 'prashant.ji@gmail.com', '12345', '0', 0),
(4, 'sajay', 'jain', 'Saugor', 'Male', 887887877, '  \r\ncivil line sagar', 'sanjayjain@gmail.com', '470002', '2147483647', 0),
(5, 'mukul', 'nema', 'Indore', 'Male', 9827667788, '  \r\nregal chouraha indore', 'mukulraj@gmail.com', '456677', '453245326767', 0),
(6, 'vikky', 'makkad', 'Indore', 'Male', 9425667788, '  \r\nnew palasia indore', 'vikkymakkad@gmail.com', '454567', '2323454567678989', 6505),
(7, 'pinki', 'namdev', 'Bhopal', 'Female', 9425667788, '  \r\nsahpura', 'pinkkijain@gmail.com', '456677', '121212', 6265),
(8, 'ranu', 'shrivastav', 'Gwaliar', 'Female', 982766222, '  \r\nmoti nagar', 'sageeta@gmail.com', '470002', '12333333', 1459),
(9, 'shivam', 'jain', 'Indore', 'Male', 7879888107, '  civil line', 'shivam@gmail.com', '454567', '22', 1026),
(10, 'sdas', 'sadas', 'Bhopal', 'Male', 7888234558, '  \r\nmoti nagar', 'sageeta@gmail.com', '456677', '1212', 3043),
(11, 'mukul', 'namdev', 'Bhopal', 'Male', 988787889, '  ssqsqas', 'sageeta@gmail.com', '470002', '121212', 7191),
(12, 'sajay', 'namdev', 'Bhopal', 'Male', 9827667788, '  wetwetwet\r\n', 'teenajain@gmail.com', '456677', '122233', 7976),
(13, 'fddf', 'nema', 'Indore', 'Female', 9425667788, '  edqw', 'teenajain@gmail.com', '677878', '6534', 4853),
(14, 'vivek', 'namdev', 'Bhopal', 'Male', 7879888107, '  \r\ndwaraka nagar', 'viveknamdeo@gmail.com', '677878', '6767', 8569),
(15, 'ranu', 'namdev', 'Indore', 'Male', 7879888107, '  \r\nfwefwefwe', 'vikkymakkad@gmail.com', '456677', '3434', 4342),
(16, 'sajay', 'namdev', 'Saugor', 'Male', 9425667788, '  grsjtr', 'sanjayjain@gmail.com', '470002', '5656 8989 9090', 5063),
(17, 'sonali ', 'namdev', 'Saugor', 'Female', 7746846184, '  sanichari sagar\r\n', 'sonaliprashant28@gmail.com', '470004', '4534 7889 9088', 3073),
(18, 'kapil', 'kushwaha', 'Bhopal', 'Male', 8878987889, '  \r\nsemra bag makrinoa', 'kapilkushwa@gmail.com', '470003', '7656 8978 9211', 2516);
