-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2026 at 01:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `bed_id` int(11) NOT NULL,
  `month` varchar(20) DEFAULT NULL,
  `bed_occupied` int(11) DEFAULT NULL,
  `bed_total` int(11) DEFAULT NULL,
  `department` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`bed_id`, `month`, `bed_occupied`, `bed_total`, `department`) VALUES
(1, 'January', 80, 100, 'orthropedics'),
(2, 'February', 85, 100, 'orthropedics'),
(3, 'March', 90, 100, 'orthropedics'),
(4, 'April', 75, 100, 'orthropedics');

-- --------------------------------------------------------

--
-- Table structure for table `demand`
--

CREATE TABLE `demand` (
  `demand_id` int(11) NOT NULL,
  `surgery_name` varchar(100) DEFAULT NULL,
  `performed_count` int(11) DEFAULT NULL,
  `unmet_count` int(11) DEFAULT NULL,
  `equipment_count` int(11) DEFAULT NULL,
  `department` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `demand`
--

INSERT INTO `demand` (`demand_id`, `surgery_name`, `performed_count`, `unmet_count`, `equipment_count`, `department`) VALUES
(1, 'Arthroscopy', 50, 10, 5, 'Orthropedics'),
(2, ' Arthroplasty', 30, 8, 3, 'Orthropedics'),
(3, 'Knee Replacement', 40, 12, 6, 'Orthropedics');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `patient_count` int(11) DEFAULT NULL,
  `department` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `name`, `id`, `specialization`, `date`, `start_time`, `end_time`, `patient_count`, `department`) VALUES
(1, 'Dr. Anil Kumar', 'D001', 'Arthroplasty', '2026-09-29', '09:00:00', '13:00:00', 20, 'Orthropedics'),
(2, 'Dr. Meera Nair', 'D002', 'Orthropedic trauma', '2026-09-29', '10:00:00', '14:00:00', 15, 'Orthropedics'),
(3, 'Dr. Rahul Menon', 'D003', 'orthropedic oncology', '2026-09-29', '09:30:00', '13:30:00', 25, 'Orthropedics'),
(4, 'Dr. Arun Thomas', 'D004', 'Orthopedic Surgery', '2026-09-29', '09:00:00', '12:00:00', 18, 'Orthropedics'),
(5, 'Dr. Priya Nair', 'D005', 'Orthopedic Trauma', '2026-09-29', '12:00:00', '15:00:00', 16, 'Orthropedics'),
(6, 'Dr. Vivek Raj', 'D006', 'Orthopedic Oncology', '2026-09-29', '15:00:00', '18:00:00', 22, 'Orthropedics');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`bed_id`);

--
-- Indexes for table `demand`
--
ALTER TABLE `demand`
  ADD PRIMARY KEY (`demand_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `bed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `demand`
--
ALTER TABLE `demand`
  MODIFY `demand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
