-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2018 at 03:18 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_red_002`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `dbAdminSerialNo` int(20) NOT NULL AUTO_INCREMENT,
  `dbAdminFname` varchar(100) DEFAULT NULL,
  `dbAdminLname` varchar(100) DEFAULT NULL,
  `dbAdminEmail` varchar(100) DEFAULT NULL,
  `dbAdminPassword` varchar(100) DEFAULT 'eisti@321',
  `dbAdminMobile` varchar(100) DEFAULT 'NULL',
  PRIMARY KEY (`dbAdminSerialNo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`dbAdminSerialNo`, `dbAdminFname`, `dbAdminLname`, `dbAdminEmail`, `dbAdminPassword`, `dbAdminMobile`) VALUES
(1, 'Induraj', 'PR', 'indu', '6291', '754259307'),
(2, 'Murali Krishna', 'Mopidevi', 'murali', '7116', '766110847');

-- --------------------------------------------------------

--
-- Table structure for table `appointmet`
--

DROP TABLE IF EXISTS `appointmet`;
CREATE TABLE IF NOT EXISTS `appointmet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbTeacherID` varchar(11) NOT NULL,
  `dbTeacherName` varchar(50) NOT NULL,
  `dbStudentID` varchar(11) NOT NULL,
  `dbStudentName` varchar(100) NOT NULL,
  `dBPhone` varchar(15) NOT NULL,
  `dbTeacherrequest` varchar(100) DEFAULT NULL,
  `dbstudentrequest` varchar(100) NOT NULL,
  `dbAppDescription` text,
  `dbAppstatus` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dbTeacherID` (`dbTeacherID`),
  KEY `dbStudentID` (`dbStudentID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmet`
--

INSERT INTO `appointmet` (`id`, `dbTeacherID`, `dbTeacherName`, `dbStudentID`, `dbStudentName`, `dBPhone`, `dbTeacherrequest`, `dbstudentrequest`, `dbAppDescription`, `dbAppstatus`) VALUES
(1, '12201811', 'MM MM', '20181208', 'Viet z', '62587564123', 'Teacher', '0', 'Regarding attendance', 'Accepted'),
(2, '12201811', 'MM MM', '20181207', 'AURJUN Dd', '3698521476', 'Teacher', '0', 'Regading Marks', 'Meet me'),
(3, '12201811', 'MM MM', '20181207', 'AURJUN Dd', '3698521476', 'Teacher', '0', '', 'Meet me'),
(4, '12201811', 'MM MM', '20181208', 'Viet z', '62587564123', 'Student', '1', 'regarding marks', 'Accepted'),
(5, '12201811', 'MM MM', '20181202', 'Induraj PR', '3698521476', 'Teacher', '0', 'regarding something', 'Meet me');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `dbCourseSerial` int(11) NOT NULL AUTO_INCREMENT,
  `dbCourseSec` varchar(100) DEFAULT NULL,
  `dbCourseCredit` int(11) DEFAULT NULL,
  `dbCourseCode` varchar(100) DEFAULT NULL,
  `dbCourseTitle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dbCourseSerial`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`dbCourseSerial`, `dbCourseSec`, `dbCourseCredit`, `dbCourseCode`, `dbCourseTitle`) VALUES
(1, 'SB,A,B', 1, 'CSE211', 'OOP LAB'),
(2, 'SC,D,E', 3, 'CSE212', 'OOP'),
(4, 'C,D,E', 1, 'CSE111', 'SPL LAB'),
(5, 'A,B,C,D', 3, 'CSE112', 'SPL'),
(6, 'A,B,C,SD', 3, 'CSE123', 'Electronics'),
(7, 'A,B,C,D', 1, 'CSE124', 'Electronics Laboratory'),
(8, 'A,B,SC', 3, 'ACT111', 'Financial and Managerial Accounting'),
(9, 'NA,NB,NC,ND', 3, 'MATH187', 'Fourier & Laplace Transformations & Complex Variable'),
(10, 'A,SB,C', 3, 'CSI233', 'Theory of Computing');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
CREATE TABLE IF NOT EXISTS `enrollment` (
  `dbstudentgpaSerial` int(11) NOT NULL AUTO_INCREMENT,
  `dbstudentgpaID` varchar(100) DEFAULT NULL,
  `dbstudentgpaCurrentCourse` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dbstudentgpaSerial`),
  KEY `dbstudentgpaID` (`dbstudentgpaID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`dbstudentgpaSerial`, `dbstudentgpaID`, `dbstudentgpaCurrentCourse`) VALUES
(1, '20181201', 'CSE111:C,CSE211:A,CSE111:D,CSE111:C'),
(2, '20181202', 'CSE111:D,CSE111:C'),
(3, '20181203', 'CSE111:C,CSE211:B'),
(4, '20181204', 'CSE111:C'),
(5, '20181205', 'CSE111:C,CSE211:A,CSE111:D,CSE111:C'),
(6, '20181206', 'CSE111:C,MATH187:NB,CSE124:B'),
(7, '20181207', 'CSE111:C,CSE211:A,CSE111:D,CSE111:C'),
(8, '20181208', 'ACT111:B,CSE111:C');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `dbStudentID` varchar(100) NOT NULL,
  `dbStudentFname` varchar(100) DEFAULT NULL,
  `dbStudentLname` varchar(100) DEFAULT NULL,
  `dbStudentPassword` varchar(100) DEFAULT 'eisti@std357',
  `dbStudentDepartment` varchar(100) DEFAULT NULL,
  `dbStudentEmail` varchar(100) DEFAULT NULL,
  `dbStudentPhone` varchar(100) DEFAULT NULL,
  `dbStudentAddress` varchar(100) DEFAULT NULL,
  `dbStudentDOB` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dbStudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`dbStudentID`, `dbStudentFname`, `dbStudentLname`, `dbStudentPassword`, `dbStudentDepartment`, `dbStudentEmail`, `dbStudentPhone`, `dbStudentAddress`, `dbStudentDOB`) VALUES
('20181201', 'Murali', 'Mopidevi', '7116', 'CSE', 'murali@gmail.com', '9491717116', 'Room no:D262,Crous,La Corix,CERGY', '1992-09-02'),
('20181202', 'Induraj', 'PR', '6291', 'ECE', 'induraj@gmail.com', '3698521476', 'Room no:D262,Crous,La Corix,CERGY', '1985-12-31'),
('20181203', 'sachin', 'GJ', '6291', 'EEE', 'sachin@gmail.com', '3698521476', 'Room no:D262,Crous,La Corix,CERGY', '1985-12-31'),
('20181204', 'KOFI', 'MD', '6291', 'BBA', 'kofi@gmail.com', '3698521476', 'Room no:D262,Crous,La Corix,CERGY', '1985-12-31'),
('20181205', 'SATISH', 'GOLII', '6291', 'CSE', 'satish@gmail.com', '3698521476', 'Room no:D262,Crous,La Corix,CERGY', '1985-12-31'),
('20181206', 'TEJAS', 'BORES', '6291', 'EEE', 'tejas@gmail.com', '3698521476', 'Room no:D262,Crous,La Corix,CERGY', '1985-12-31'),
('20181207', 'AURJUN', 'Dd', '6291', 'CSE', 'arjun@gmail.com', '3698521476', 'Room no:D262,Crous,La Corix,CERGY', '1985-12-31'),
('20181208', 'Viet', 'z', 'eisti@std357', 'CSE', 'viet@gmail.com', '62587564123', 'Room no:102, quartier, paris', '1987-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `dbTeacherID` varchar(100) NOT NULL,
  `dbTeacherFname` varchar(100) DEFAULT NULL,
  `dbTeacherLname` varchar(100) DEFAULT NULL,
  `dbTeacherEmail` varchar(100) DEFAULT NULL,
  `dbTeacherPassword` varchar(100) DEFAULT 'eisti@253',
  `dbTeacherDepartment` varchar(100) DEFAULT NULL,
  `dbTeacherCourse` varchar(100) DEFAULT NULL,
  `dbAppFreeDate` varchar(20) DEFAULT NULL,
  `dbAppFreeTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dbTeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`dbTeacherID`, `dbTeacherFname`, `dbTeacherLname`, `dbTeacherEmail`, `dbTeacherPassword`, `dbTeacherDepartment`, `dbTeacherCourse`, `dbAppFreeDate`, `dbAppFreeTime`) VALUES
('12201810', 'Tahar', 'Gherbi', 'TGI@eisti.fr', 'eisti@253', 'CSE', 'CSE211:A,CSE111:C', NULL, NULL),
('12201811', 'MM', 'MM', 'mm@eisti.fr', 'eisti@253', 'EEE', 'CSE111:D,CSE111:C', '2018-12-11', '09:21-11:21'),
('12201812', 'Esma', 'Talhi', 'et@eisti.fr', 'eisti@253', 'CSE', 'CSE111:D,CSE111:C', NULL, NULL),
('12201814', 'irnia', 'kersiwoski', 'IK@eisti.fr', 'eisti@253', 'CSE', 'CSE111:D,CSE111:C', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`dbstudentgpaID`) REFERENCES `student` (`dbStudentID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
