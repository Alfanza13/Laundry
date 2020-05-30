-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 12:48 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `ID` int(22) NOT NULL,
  `Adm_Name` text NOT NULL,
  `Adm_Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`ID`, `Adm_Name`, `Adm_Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `ID` int(22) NOT NULL,
  `User_ID` int(22) NOT NULL,
  `Order_Code` int(20) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `Total_Item` int(22) NOT NULL,
  `Total_Price` int(22) NOT NULL,
  `Pick_up_date` date NOT NULL,
  `Delivery_date` date NOT NULL,
  `Phone_No` int(20) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Pick_Up_status` text NOT NULL,
  `Delivery_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`ID`, `User_ID`, `Order_Code`, `User_Name`, `Total_Item`, `Total_Price`, `Pick_up_date`, `Delivery_date`, `Phone_No`, `Address`, `Pick_Up_status`, `Delivery_status`) VALUES
(26, 9, 94152, 'Afanza', 1, 6000, '2020-05-09', '2020-05-10', 81998585, 'Karawang', 'No', 'Deliver'),
(27, 9, 843524, 'Afanza', 1, 6000, '2020-05-10', '2020-05-11', 2147483647, 'Karawang', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `order_temp`
--

CREATE TABLE `order_temp` (
  `ID` int(22) NOT NULL,
  `User_ID` int(22) NOT NULL,
  `Services_Name` text NOT NULL,
  `Services_Type` text NOT NULL,
  `Laundry_Price` int(100) NOT NULL,
  `Dry_Price` int(100) NOT NULL,
  `Total_Item` int(100) NOT NULL,
  `Pick_Delivery_Status` text NOT NULL,
  `Order_Status` text NOT NULL,
  `Order_code` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_temp`
--

INSERT INTO `order_temp` (`ID`, `User_ID`, `Services_Name`, `Services_Type`, `Laundry_Price`, `Dry_Price`, `Total_Item`, `Pick_Delivery_Status`, `Order_Status`, `Order_code`) VALUES
(32, 5, 'Suit', 'woman', 0, 100, 4, '2', 'active', '823544'),
(33, 5, 'Cote121', 'Men,s', 50, 100, 10, '2', 'active', '972038'),
(34, 5, 'Suit', 'woman', 0, 100, 1, '2', 'active', '817848'),
(37, 7, 'Suit', 'woman', 0, 100, 1, '2', 'active', '853927'),
(38, 5, 'Suit', 'woman', 0, 100, 1, '2', 'active', '91748'),
(39, 6, 'Cote121', 'Men,s', 50, 100, 1, '2', 'active', '863120'),
(40, 6, 'Suit', 'woman', 0, 100, 1, '2', 'active', '863120'),
(41, 5, 'Cote121', 'Men,s', 50, 100, 12, '2', 'active', '91748'),
(42, 8, 'jacket', 'Children', 0, 250, 3, '2', 'active', '656240'),
(43, 8, 'shirt', 'Men,s', 200, 100, 1, '2', 'active', '656240'),
(44, 9, 'shirt', 'Men,s', 200, 0, 1, '2', 'active', '94152'),
(45, 9, 'Baju', 'Pakaian', 6000, 0, 1, '2', 'active', '843524');

-- --------------------------------------------------------

--
-- Table structure for table `services_type`
--

CREATE TABLE `services_type` (
  `ID` int(22) NOT NULL,
  `Services_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services_type`
--

INSERT INTO `services_type` (`ID`, `Services_Name`) VALUES
(2, 'Pakaian'),
(6, 'Selimut'),
(7, 'Boneka'),
(8, 'Sepatu'),
(9, 'Tas');

-- --------------------------------------------------------

--
-- Table structure for table `services_uploade`
--

CREATE TABLE `services_uploade` (
  `ID` int(22) NOT NULL,
  `Services_Name` varchar(100) NOT NULL,
  `Services_Type` varchar(100) NOT NULL,
  `Delivery_Price` int(120) NOT NULL,
  `Laundry_Price` int(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services_uploade`
--

INSERT INTO `services_uploade` (`ID`, `Services_Name`, `Services_Type`, `Delivery_Price`, `Laundry_Price`) VALUES
(9, 'Baju', 'Pakaian', 2000, 6000),
(13, 'Seragam', 'Pakaian', 1000, 6000),
(14, 'Bulu', 'Selimut', 1000, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `ID` int(22) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`ID`, `User_Name`, `Password`) VALUES
(5, 'imran', '1234'),
(6, 'usman', '1212'),
(7, 'admin', '123'),
(8, 'Sikander', 'shikari'),
(9, 'Afanza', '81998585884'),
(10, 'Alfanza', '081213940989'),
(11, 'Rahmat', '081213940989'),
(12, 'admin', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `ID` int(22) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `Father_Name` varchar(255) NOT NULL,
  `Password` int(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Contact_No` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`ID`, `User_Name`, `Father_Name`, `Password`, `Address`, `Contact_No`) VALUES
(16, 'Afanza', 'Sapa', 0, 'Karawang', '81998585884'),
(17, 'Alfanza', '', 0, 'Bekasi', '081213940989'),
(18, 'Rahmat', '', 0, 'Bekasi', '081213940989'),
(19, 'admin', '', 0, 'world', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order_temp`
--
ALTER TABLE `order_temp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `services_type`
--
ALTER TABLE `services_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `services_uploade`
--
ALTER TABLE `services_uploade`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_temp`
--
ALTER TABLE `order_temp`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `services_type`
--
ALTER TABLE `services_type`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services_uploade`
--
ALTER TABLE `services_uploade`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
