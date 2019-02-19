-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 19, 2019 at 01:59 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `information system`
--

-- --------------------------------------------------------

--
-- Table structure for table `com_course`
--

CREATE TABLE `com_course` (
  `id` varchar(50) NOT NULL,
  `semister` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `credit` varchar(50) NOT NULL,
  `mid` varchar(50) NOT NULL,
  `final` varchar(50) NOT NULL,
  `thirty` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `point` varchar(50) NOT NULL,
  `chk` varchar(10) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_course`
--

INSERT INTO `com_course` (`id`, `semister`, `code`, `title`, `credit`, `mid`, `final`, `thirty`, `total`, `grade`, `point`, `chk`) VALUES
('14152103157', 'Summer,2018', 'CSE457', 'Web Database and Programming', '3', '15', '35', '25', '75', 'A', '3.75', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dep_routine`
--

CREATE TABLE `dep_routine` (
  `dept` varchar(50) NOT NULL,
  `intake` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `class1` varchar(50) NOT NULL,
  `class2` varchar(50) NOT NULL,
  `class3` varchar(50) NOT NULL,
  `class4` varchar(50) NOT NULL,
  `class5` varchar(50) NOT NULL,
  `class6` varchar(50) NOT NULL,
  `class7` varchar(50) NOT NULL,
  `class8` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dep_routine`
--

INSERT INTO `dep_routine` (`dept`, `intake`, `section`, `day`, `class1`, `class2`, `class3`, `class4`, `class5`, `class6`, `class7`, `class8`) VALUES
('CSE', 29, 4, 'MON', '', '', '', '', '', 'cse458  AAG  R416', 'cse458  AAG  R416', 'cse458  AAG  R416'),
('CSE', 29, 4, 'SUN', '', '', '', '', '', 'cse457  AAG  R316', 'CSE453 AAG  R316', 'CSE407 AAG  R316');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `pnumber` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `rnumber` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`name`, `code`, `Department`, `pnumber`, `Email`, `rnumber`, `password`) VALUES
('Ali Azgar', 'AAG', 'CSE', '01634783637', 'aag@gmail.com', '810', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_routine`
--

CREATE TABLE `faculty_routine` (
  `faculty` varchar(50) NOT NULL,
  `day` varchar(50) NOT NULL,
  `class1` varchar(50) NOT NULL,
  `class2` varchar(50) NOT NULL,
  `class3` varchar(50) NOT NULL,
  `class4` varchar(50) NOT NULL,
  `class5` varchar(50) NOT NULL,
  `class6` varchar(50) NOT NULL,
  `class7` varchar(50) NOT NULL,
  `class8` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_routine`
--

INSERT INTO `faculty_routine` (`faculty`, `day`, `class1`, `class2`, `class3`, `class4`, `class5`, `class6`, `class7`, `class8`) VALUES
('AAG', 'Mon', '', '', '', '', '', 'CSE458 R-416', 'CSE458 R-416', 'CSE458 R-416');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `ID` varchar(50) NOT NULL,
  `book` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `issue` varchar(50) NOT NULL,
  `return` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`ID`, `book`, `author`, `issue`, `return`) VALUES
('f', 'f', 'f', 'f', 'f'),
('f', 'f', 'f', 'f', 'f'),
('13143103093', 'Theory of Computation', '', '14-05-17', '14-05-17'),
('13143103093', 'Theory of Computation', '', '14-05-17', '14-05-17'),
('14152103157', 'System Analysis', '', '14-05-17', '18-05-17'),
('14152103157', 'System Analysis', '', '14-05-17', '18-05-17'),
('14152103185', 'Information System Management', 'Laudon', '14-8-2018', '22-8-2018');

-- --------------------------------------------------------

--
-- Table structure for table `pre`
--

CREATE TABLE `pre` (
  `sub` varchar(50) NOT NULL,
  `pre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pre`
--

INSERT INTO `pre` (`sub`, `pre`) VALUES
('CSE200', 'CSE100'),
('CSE411', 'CSE205');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` varchar(50) NOT NULL,
  `semister` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `credit` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `intake` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `mid` varchar(50) NOT NULL,
  `final` varchar(50) NOT NULL,
  `thirty` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `point` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `semister`, `code`, `title`, `credit`, `faculty`, `intake`, `section`, `mid`, `final`, `thirty`, `total`, `grade`, `point`) VALUES
('14152103157', 'Summer,2018', 'CSE457', 'Web Database and Programming', '3', 'AAG', '29', '4', '15', '35', '25', '75', 'A', '3.75'),
('14152103157', 'Summer,2018', 'CSE407', 'Information System Management', '2', 'AAG', '29', '4', '', '', '', '', '', ''),
('14152103157', 'Summer,2018', 'CSE453', 'Software Testing and Quality Assurance', '3', 'AAG', '29', '4', '', '', '', '', '', ''),
('14152103157', 'Summer,2018', 'CSE411', 'Digital Electronics and Pulse Technique', '3', 'DAKA', '30', '2', '', '', '', '', '', ''),
('14152103185', 'Summer,2018', 'CSE407', 'Information System and Management', '2', 'AAG', '29', '4', '', '', '', '', '', ''),
('14152103157', 'Summer,2018', 'CSE458', 'Web Database and programming Lab', '1.5', 'AAG', '29', '4', '', '', '', '', '', ''),
('14152103185', 'Summer,2018', 'CSE458', 'Web Database and Programming Lab', '1.5', 'AAG', '29', '4', '', '', '', '', '', ''),
('14152103143', 'Summer,2018', 'CSE407', 'Information System and Management', '2', 'AAG', '29', '4', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `ID` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `cgpa` varchar(50) NOT NULL,
  `sgpa` varchar(50) NOT NULL,
  `s1` varchar(50) NOT NULL,
  `s2` varchar(50) NOT NULL,
  `s3` varchar(500) NOT NULL,
  `s4` varchar(50) NOT NULL,
  `s5` varchar(50) NOT NULL,
  `s6` varchar(50) NOT NULL,
  `s7` varchar(50) NOT NULL,
  `s8` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`ID`, `semester`, `cgpa`, `sgpa`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`) VALUES
('14152103157', 'Summer,2018', '3.75', '0.90', 'CSE457  A', 'CSE407  ', 'CSE453  ', 'CSE411  ', 'CSE458  ', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_routine`
--

CREATE TABLE `student_routine` (
  `ID` varchar(50) NOT NULL,
  `day` varchar(50) NOT NULL,
  `class1` varchar(50) NOT NULL,
  `class2` varchar(50) NOT NULL,
  `class3` varchar(50) NOT NULL,
  `class4` varchar(50) NOT NULL,
  `class5` varchar(50) NOT NULL,
  `class6` varchar(50) NOT NULL,
  `class7` varchar(50) NOT NULL,
  `class8` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `type` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `intake` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `topic` varchar(500) NOT NULL,
  `date` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`type`, `dept`, `intake`, `section`, `course`, `topic`, `date`, `faculty`) VALUES
('Class Test', 'CSE', '29', '4', 'CSE457', 'chapter 1,2', '20/9/2018', 'AAG'),
('Lab Test', 'CSE', '29', '4', 'CSE458', 'html,css', '26/9/2018', 'AAG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Intake` varchar(50) NOT NULL,
  `Section` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL DEFAULT '',
  `Phone` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Department`, `Intake`, `Section`, `Email`, `Phone`, `Password`) VALUES
('14152103185', 'Monotosh Kumar', 'CSE', '29', '4', 'monochandan@gmail.com', '0185343738', '12345'),
('14152103185', 'Monotosh Kumar', 'CSE', '29', '4', 'monochandan@gmail.com', '0185343738', '12345'),
('14152103185', 'Monotosh Kumar', 'CSE', '29', '4', 'monochandan@gmail.com', '0185343738', '12345');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
