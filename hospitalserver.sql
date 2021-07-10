-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 05:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalserver`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nm` varchar(100) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pw` varchar(100) NOT NULL,
  `admin_ph` bigint(20) NOT NULL,
  `admin_add` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nm`, `admin_email`, `admin_pw`, `admin_ph`, `admin_add`) VALUES
(1, 'Shivu', 'abc@gmail.com', '1234', 81475646, 'Bangalore'),
(2, 'Vipul Wadekar', 'xyz@gmail.com', '456', 99165478, 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `doc1`
--

CREATE TABLE `doc1` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc1`
--

INSERT INTO `doc1` (`doc_id`, `doc_name`, `speciality`, `email`, `mobile`) VALUES
(1, 'Dr.Harish', 'Cardiology', 'har@gmail.com', 8545158982),
(2, 'Dr.Poornima', 'Paediatrics', 'porni@gmail.com', 8645818982);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(11) NOT NULL,
  `doc_nm` varchar(150) NOT NULL,
  `speciality` varchar(200) NOT NULL,
  `doc_email` varchar(150) NOT NULL,
  `doc_pw` varchar(100) NOT NULL,
  `doc_ph` bigint(20) DEFAULT NULL,
  `doc_add` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doc_nm`, `speciality`, `doc_email`, `doc_pw`, `doc_ph`, `doc_add`) VALUES
(1, 'Dr BabuRao', 'Cardiologist', 'pyu@gmail', '789', 99164589, 'aamchi Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` int(11) NOT NULL,
  `p_nm` varchar(100) NOT NULL,
  `p_age` int(11) NOT NULL,
  `p_eid` varchar(200) NOT NULL,
  `p_ph` bigint(20) NOT NULL,
  `speciality` varchar(200) NOT NULL,
  `p_add` varchar(200) NOT NULL,
  `Status` varchar(255) NOT NULL DEFAULT ' Admitted'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `p_nm`, `p_age`, `p_eid`, `p_ph`, `speciality`, `p_add`, `Status`) VALUES
(1, 'GanpathRao Apte', 47, 'gan@gamil.com', 9986446, 'Radiologist', 'Jharkhand', 'Can be Discharged');

-- --------------------------------------------------------

--
-- Table structure for table `pat_history`
--

CREATE TABLE `pat_history` (
  `h_id` int(11) NOT NULL,
  `p_nm` varchar(150) NOT NULL,
  `p_age` int(11) NOT NULL,
  `p_ph` bigint(20) NOT NULL,
  `report` text NOT NULL,
  `comorbid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pat_history`
--

INSERT INTO `pat_history` (`h_id`, `p_nm`, `p_age`, `p_ph`, `report`, `comorbid`) VALUES
(3, 'Aksha', 27, 81272658, 'Chest Pain , fatigue, High fever with Puking sensation', 'Blood Pressure and Knee surgery'),
(5, 'GanpathRao Apte', 37, 89456712, 'Stomach pain And Fatigue \r\nwith head ache', 'Angioplasty ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `doc1`
--
ALTER TABLE `doc1`
  ADD PRIMARY KEY (`doc_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `pat_history`
--
ALTER TABLE `pat_history`
  ADD PRIMARY KEY (`h_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doc1`
--
ALTER TABLE `doc1`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pat_history`
--
ALTER TABLE `pat_history`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
