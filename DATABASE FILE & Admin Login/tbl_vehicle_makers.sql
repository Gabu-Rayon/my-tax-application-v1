-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 12:18 PM
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
-- Database: `my-tax-application-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_makers`
--

CREATE TABLE `tbl_vehicle_makers` (
  `ID` int(11) NOT NULL,
  `vehicle_makers` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vehicle_makers`
--

INSERT INTO `tbl_vehicle_makers` (`ID`, `vehicle_makers`) VALUES
(1, 'Acura'),
(2, 'Alfa Romeo'),
(3, 'Aston Martin'),
(4, 'Audi'),
(5, 'Bentley'),
(6, 'BMW'),
(7, 'Buick'),
(8, 'Cadillac'),
(9, 'Chevrolet'),
(10, 'Chrysler'),
(11, 'Citroën'),
(12, 'Dodge'),
(13, 'Ferrari'),
(14, 'Fiat'),
(15, 'Ford'),
(16, 'Genesis'),
(17, 'GMC'),
(18, 'Honda'),
(19, 'Hyundai'),
(20, 'Infiniti'),
(21, 'Jaguar'),
(22, 'Jeep'),
(23, 'Kia'),
(24, 'Lamborghini'),
(25, 'Land Rover'),
(26, 'Lexus'),
(27, 'Lincoln'),
(28, 'Lotus'),
(29, 'Maserati'),
(30, 'Mazda'),
(31, 'McLaren'),
(32, 'Mercedes-Benz'),
(33, 'Mini'),
(34, 'Mitsubishi'),
(35, 'Nissan'),
(36, 'Peugeot'),
(37, 'Porsche'),
(38, 'Ram'),
(39, 'Renault'),
(40, 'Rolls-Royce'),
(41, 'Subaru'),
(42, 'Tesla'),
(43, 'Toyota'),
(44, 'Volkswagen'),
(45, 'Volvo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_vehicle_makers`
--
ALTER TABLE `tbl_vehicle_makers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_vehicle_makers`
--
ALTER TABLE `tbl_vehicle_makers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
