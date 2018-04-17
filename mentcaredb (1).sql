-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 04:59 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mentcaredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `DoctorId` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `LocationNo` int(11) NOT NULL,
  `Specialty` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `LocationID` int(11) NOT NULL,
  `StreetAddress` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `MedicineId` int(11) NOT NULL,
  `SerialNo` int(11) NOT NULL,
  `MedicineName` int(11) NOT NULL,
  `SupplyAvailable` int(11) NOT NULL,
  `StorageLocation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `PatientId` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `StreetAddress` varchar(30) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Age` int(3) DEFAULT '0',
  `Height` int(4) DEFAULT '0',
  `Gender` varchar(6) DEFAULT NULL,
  `Weight` int(4) DEFAULT '0',
  `ArrivalDate` varchar(10) DEFAULT NULL,
  `ExpectedOuttakeDate` varchar(10) DEFAULT NULL,
  `Treatment` varchar(30) DEFAULT NULL,
  `DoctorNo` int(11) DEFAULT '0',
  `MedicinePrescribed` int(11) DEFAULT '0',
  `MeetingLocation` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientId`, `FirstName`, `LastName`, `StreetAddress`, `City`, `State`, `Age`, `Height`, `Gender`, `Weight`, `ArrivalDate`, `ExpectedOuttakeDate`, `Treatment`, `DoctorNo`, `MedicinePrescribed`, `MeetingLocation`) VALUES
(1, 'dasg', 'asdg', 'asdg', 'adg', 'ga', 345, 34, '34', 3, '2008-10-21', '2008-10-21', 'sdfsda', 234, 3, 3),
(2, 'Blake', 'Bellinger', '2334 Rivercliff Dr.', 'Gainesville', 'GA', 27, 74, 'Unsure', 200, '2008-10-20', '2008-10-20', '', 123, 12, 12),
(3, 'daf', 'sd', 'sdat', '435', 'ga', 43, 43, 'gf', 543, '08', '', '', 435, 54, 54);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorId`),
  ADD KEY `DoctorNo` (`DoctorId`),
  ADD KEY `LocationNo` (`LocationNo`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`),
  ADD KEY `LocationNo` (`LocationID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`MedicineId`),
  ADD KEY `MedicineNo` (`MedicineId`),
  ADD KEY `MedicineNo_2` (`MedicineId`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientId`),
  ADD KEY `MeetingLocation` (`MeetingLocation`),
  ADD KEY `DoctorNo` (`DoctorNo`),
  ADD KEY `PatientNo` (`PatientId`),
  ADD KEY `MedicinePrescribed` (`MedicinePrescribed`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DoctorId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LocationID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `MedicineId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PatientId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`LocationNo`) REFERENCES `location` (`LocationID`),
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`DoctorId`) REFERENCES `patient` (`DoctorNo`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `patient` (`MeetingLocation`);

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`MedicineId`) REFERENCES `patient` (`MedicinePrescribed`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
