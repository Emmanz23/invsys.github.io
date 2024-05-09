-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 08:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smi_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `smi_borrowed_tbl`
--

CREATE TABLE `smi_borrowed_tbl` (
  `smi_borrowed_id` int(11) NOT NULL,
  `smi_borrow_equipment_name` varchar(255) NOT NULL,
  `smi_borrow_equipment_qty` varchar(255) NOT NULL,
  `smi_borrower_name` varchar(255) NOT NULL,
  `smi_borrower_idnumber` int(11) NOT NULL,
  `smi_borrower_collateral` varchar(255) NOT NULL,
  `smi_borrowed_date` datetime NOT NULL,
  `smi_borrowed_expreturn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smi_delete_tbl`
--

CREATE TABLE `smi_delete_tbl` (
  `smi_delete_id` int(11) NOT NULL,
  `smi_delete_equipmentName` varchar(255) NOT NULL,
  `smi_delete_equipmentBrand` varchar(255) NOT NULL,
  `smi_delete_equipmentQty` int(11) NOT NULL,
  `smi_delete_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smi_delete_tbl`
--

INSERT INTO `smi_delete_tbl` (`smi_delete_id`, `smi_delete_equipmentName`, `smi_delete_equipmentBrand`, `smi_delete_equipmentQty`, `smi_delete_date`) VALUES
(1, '81', '', 21, '2023-11-23 17:50:28'),
(2, '82', '', 21, '2023-11-23 17:51:09'),
(3, 'Volleyball', 'None', 21, '2023-11-23 17:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `smi_dispose_tbl`
--

CREATE TABLE `smi_dispose_tbl` (
  `smi_dispose_id` int(11) NOT NULL,
  `smi_dispose_equipmentName` varchar(255) NOT NULL,
  `smi_dispose_equipmentQty` int(11) NOT NULL,
  `smi_dispose_studentName` varchar(255) NOT NULL,
  `smi_dispose_studentId` int(11) NOT NULL,
  `smi_dispose_reason` varchar(255) NOT NULL,
  `smi_dispose_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smi_dispose_tbl`
--

INSERT INTO `smi_dispose_tbl` (`smi_dispose_id`, `smi_dispose_equipmentName`, `smi_dispose_equipmentQty`, `smi_dispose_studentName`, `smi_dispose_studentId`, `smi_dispose_reason`, `smi_dispose_date`) VALUES
(12, 'Basketball', 1, 'Criswel', 58821, 'rolandadwa', '2023-11-24 15:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `smi_equipmentlist_tbl`
--

CREATE TABLE `smi_equipmentlist_tbl` (
  `smi_equipmentlist_id` int(11) NOT NULL,
  `smi_equipmentlist_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smi_equipmentlist_tbl`
--

INSERT INTO `smi_equipmentlist_tbl` (`smi_equipmentlist_id`, `smi_equipmentlist_name`) VALUES
(1, 'Basketball'),
(2, 'Volleyball');

-- --------------------------------------------------------

--
-- Table structure for table `smi_equipment_tbl`
--

CREATE TABLE `smi_equipment_tbl` (
  `equipment_id` int(11) NOT NULL,
  `equipment_name` varchar(255) NOT NULL,
  `equipment_brand` varchar(255) NOT NULL,
  `equipment_stock` int(11) NOT NULL,
  `equipment_borrowed` int(11) NOT NULL,
  `equipment_dateadd` datetime NOT NULL,
  `equipment_dateupdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smi_equipment_tbl`
--

INSERT INTO `smi_equipment_tbl` (`equipment_id`, `equipment_name`, `equipment_brand`, `equipment_stock`, `equipment_borrowed`, `equipment_dateadd`, `equipment_dateupdate`) VALUES
(84, 'Basketball', 'Molten', 9, 0, '2023-11-23 18:48:32', '2023-11-23 18:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `smi_user_tbl`
--

CREATE TABLE `smi_user_tbl` (
  `smi_user_id` int(11) NOT NULL,
  `smi_user_username` varchar(255) NOT NULL,
  `smi_user_name` varchar(255) NOT NULL,
  `smi_user_email` varchar(255) NOT NULL,
  `smi_user_password` varchar(255) NOT NULL,
  `smi_user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smi_user_tbl`
--

INSERT INTO `smi_user_tbl` (`smi_user_id`, `smi_user_username`, `smi_user_name`, `smi_user_email`, `smi_user_password`, `smi_user_type`) VALUES
(18, 'admin', 'administrator', 'admin@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `smi_borrowed_tbl`
--
ALTER TABLE `smi_borrowed_tbl`
  ADD PRIMARY KEY (`smi_borrowed_id`);

--
-- Indexes for table `smi_delete_tbl`
--
ALTER TABLE `smi_delete_tbl`
  ADD PRIMARY KEY (`smi_delete_id`);

--
-- Indexes for table `smi_dispose_tbl`
--
ALTER TABLE `smi_dispose_tbl`
  ADD PRIMARY KEY (`smi_dispose_id`);

--
-- Indexes for table `smi_equipment_tbl`
--
ALTER TABLE `smi_equipment_tbl`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `smi_user_tbl`
--
ALTER TABLE `smi_user_tbl`
  ADD PRIMARY KEY (`smi_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `smi_borrowed_tbl`
--
ALTER TABLE `smi_borrowed_tbl`
  MODIFY `smi_borrowed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `smi_delete_tbl`
--
ALTER TABLE `smi_delete_tbl`
  MODIFY `smi_delete_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `smi_dispose_tbl`
--
ALTER TABLE `smi_dispose_tbl`
  MODIFY `smi_dispose_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `smi_equipment_tbl`
--
ALTER TABLE `smi_equipment_tbl`
  MODIFY `equipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `smi_user_tbl`
--
ALTER TABLE `smi_user_tbl`
  MODIFY `smi_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
