-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2018 at 10:57 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `doctorid`
--

CREATE TABLE `doctorid` (
  `DoctorNo` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `LocationNo` int(11) NOT NULL,
  `Specialty` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locationid`
--

CREATE TABLE `locationid` (
  `LocationNo` int(11) NOT NULL,
  `StreetAddress` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicineid`
--

CREATE TABLE `medicineid` (
  `MedicineNo` int(11) NOT NULL,
  `SerialNo` int(11) NOT NULL,
  `MedicineName` int(11) NOT NULL,
  `SupplyAvailable` int(11) NOT NULL,
  `StorageLocation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patientid`
--

CREATE TABLE `patientid` (
  `PatientNo` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `StreetAddress` varchar(30) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Age` int(3) NOT NULL,
  `Height` int(4) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Weight` int(4) NOT NULL,
  `ArrivalDate` date NOT NULL,
  `ExpectedOuttakeDate` date NOT NULL,
  `Treatment` varchar(30) NOT NULL,
  `DoctorNo` int(11) NOT NULL,
  `MedicinePrescribed` int(11) NOT NULL,
  `MeetingLocation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctorid`
--
ALTER TABLE `doctorid`
  ADD PRIMARY KEY (`DoctorNo`),
  ADD KEY `DoctorNo` (`DoctorNo`),
  ADD KEY `LocationNo` (`LocationNo`);

--
-- Indexes for table `locationid`
--
ALTER TABLE `locationid`
  ADD PRIMARY KEY (`LocationNo`),
  ADD KEY `LocationNo` (`LocationNo`);

--
-- Indexes for table `medicineid`
--
ALTER TABLE `medicineid`
  ADD PRIMARY KEY (`MedicineNo`),
  ADD KEY `MedicineNo` (`MedicineNo`),
  ADD KEY `MedicineNo_2` (`MedicineNo`);

--
-- Indexes for table `patientid`
--
ALTER TABLE `patientid`
  ADD PRIMARY KEY (`PatientNo`),
  ADD KEY `MeetingLocation` (`MeetingLocation`),
  ADD KEY `DoctorNo` (`DoctorNo`),
  ADD KEY `PatientNo` (`PatientNo`),
  ADD KEY `MedicinePrescribed` (`MedicinePrescribed`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctorid`
--
ALTER TABLE `doctorid`
  MODIFY `DoctorNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locationid`
--
ALTER TABLE `locationid`
  MODIFY `LocationNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicineid`
--
ALTER TABLE `medicineid`
  MODIFY `MedicineNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patientid`
--
ALTER TABLE `patientid`
  MODIFY `PatientNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctorid`
--
ALTER TABLE `doctorid`
  ADD CONSTRAINT `doctorid_ibfk_1` FOREIGN KEY (`LocationNo`) REFERENCES `locationid` (`LocationNo`),
  ADD CONSTRAINT `doctorid_ibfk_2` FOREIGN KEY (`DoctorNo`) REFERENCES `patientid` (`DoctorNo`);

--
-- Constraints for table `locationid`
--
ALTER TABLE `locationid`
  ADD CONSTRAINT `locationid_ibfk_1` FOREIGN KEY (`LocationNo`) REFERENCES `patientid` (`MeetingLocation`);

--
-- Constraints for table `medicineid`
--
ALTER TABLE `medicineid`
  ADD CONSTRAINT `medicineid_ibfk_1` FOREIGN KEY (`MedicineNo`) REFERENCES `patientid` (`MedicinePrescribed`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
