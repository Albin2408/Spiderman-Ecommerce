-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 22, 2023 at 06:40 PM
-- Server version: 5.7.42
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lopeza21_SpiderMan-TheMultiVerseShop`
--

-- --------------------------------------------------------

--
-- Table structure for table `CART`
--

CREATE TABLE `CART` (
  `Cart_ID` int(11) NOT NULL,
  `Client_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CART_INFO`
--

CREATE TABLE `CART_INFO` (
  `CART_INFO_ID` int(11) NOT NULL,
  `CART_ID` int(11) DEFAULT NULL,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT`
--

CREATE TABLE `CLIENT` (
  `Client_ID` int(11) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Sex` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CLIENT`
--

INSERT INTO `CLIENT` (`Client_ID`, `FirstName`, `LastName`, `password`, `username`, `Sex`) VALUES
(1, 'Michael', 'Jordan', 'goat', 'michaeljordan', 'M'),
(2, 'David', 'Cruz', 'coderguy', 'Dcruz', 'M'),
(3, 'Kobe', 'Bryant', 'kobe24', 'kobe08', 'M'),
(4, 'Albin', 'Lopez', 'league', 'albin24', 'M'),
(5, 'Jeffrey', 'Lopez', 'cedar', 'tacobell', 'M'),
(6, 'John', 'Cena', 'code', 'johncena12', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `Employee_id` int(11) UNSIGNED NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Minit` char(1) DEFAULT NULL,
  `Lname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Ssn` char(9) NOT NULL,
  `Bdate` date DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Salary` decimal(6,0) DEFAULT NULL,
  `Super_ssn` char(9) DEFAULT NULL,
  `Dno` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`Employee_id`, `Fname`, `Minit`, `Lname`, `username`, `password`, `Ssn`, `Bdate`, `Address`, `Sex`, `Salary`, `Super_ssn`, `Dno`) VALUES
(1, 'Albin', NULL, 'Lopez', 'John', 'walmart', '12345678', NULL, '416 Newark, NJ', 'M', 50000, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ORDER_HISTORY`
--

CREATE TABLE `ORDER_HISTORY` (
  `ID` int(11) NOT NULL,
  `CLIENT_ID` varchar(50) NOT NULL,
  `PRODUCT_NAME` varchar(100) NOT NULL,
  `PRODUCT_PRICE` decimal(10,2) NOT NULL,
  `ORDER_DATE` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ORDER_HISTORY`
--

INSERT INTO `ORDER_HISTORY` (`ID`, `CLIENT_ID`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `ORDER_DATE`) VALUES
(1, 'kobe08', 'SpiderMan Action Figure', 25.00, NULL),
(2, 'kobe08', 'SpiderMan Action Figure', 25.00, NULL),
(3, 'Dcruz', 'SpiderMan Web Slinger', 25.00, NULL),
(4, 'Dcruz', 'Spider Mobile', 30.00, NULL),
(5, 'kobe08', 'Venom Action Figure', 25.00, NULL),
(6, 'kobe08', 'SpiderMan Action Figure', 25.00, NULL),
(7, 'kobe08', 'SpiderMan Action Figure', 25.00, '2023-06-22'),
(8, 'kobe08', 'SpiderMan Action Figure', 25.00, '2023-06-22'),
(9, 'kobe08', 'SpiderMan VENOM Galaxy s21 Ultra Case', 30.00, '2023-06-22'),
(10, 'kobe08', 'SpiderMan VENOM Galaxy s21 Ultra Case', 30.00, '2023-06-22'),
(11, 'kobe08', 'SpiderMan Action Figure', 25.00, '2023-06-22'),
(12, 'kobe08', 'SpiderMan Action Figure', 25.00, '2023-06-22'),
(13, 'kobe08', 'SpiderMan: No Way Home Autographed Tom Holland, Toby McGuire, Andrew Garfield Poster', 5000.00, '2023-06-22'),
(14, 'kobe08', 'SpiderMan Action Figure', 25.00, '2023-06-22'),
(15, 'kobe08', 'SpiderMan Web Slinger', 25.00, '2023-06-22'),
(16, 'kobe08', 'SpiderMan Action Figure', 25.00, '2023-06-22'),
(17, 'johncena12', 'SpiderMan Action Figure', 25.00, '2023-06-22'),
(18, 'johncena12', 'SpiderMan VENOM iPhone 12 Case', 50.00, '2023-06-22'),
(19, 'johncena12', 'SpiderMan Samsung Galaxy s21 Ultra Case', 30.00, '2023-06-22'),
(20, 'johncena12', 'SpiderMan Action Figure', 25.00, '2023-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `Product_ID` int(11) NOT NULL,
  `Product_Stock` int(11) DEFAULT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Category_ID` int(11) DEFAULT NULL,
  `Product_Price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PRODUCT`
--

INSERT INTO `PRODUCT` (`Product_ID`, `Product_Stock`, `Product_Name`, `Category_ID`, `Product_Price`) VALUES
(1, 18, 'SpiderMan Action Figure', 1, 25),
(2, 18, 'SpiderMan Web Slinger', 1, 25),
(3, 20, 'Spider Mobile', 1, 30),
(4, 18, 'Venom Action Figure', 1, 25),
(5, 20, 'Toby McGuire Action Figure', 1, 25),
(6, 20, 'Andrew Garfield and Toby McGuire Action Figure', 1, 50),
(7, 20, 'SpiderMan Revenge Hoodie', 2, 30),
(8, 20, 'SpiderMan SuperPants', 2, 50),
(9, 20, 'SpiderMan Multiverse T-Shirt', 2, 50),
(10, 20, 'SpiderMan Glow in the Dark Shorts', 2, 50),
(11, 20, 'SpiderMan Joggers', 2, 20),
(12, 20, 'SpiderMan The Multiverse Shop Exclusive Venom Costume', 2, 100),
(13, 20, 'SpiderMan Villain shirt', 2, 40),
(14, 20, 'SpiderMan: Across The Spider-Verse', 3, 20),
(15, 20, 'SpiderMan: Into The Spider-Verse', 3, 20),
(16, 20, 'SpiderMan: Far From Home', 3, 20),
(17, 20, 'SpiderMan: No Way Home', 3, 20),
(18, 20, 'SpiderMan: Homecoming', 3, 20),
(19, 20, 'SpiderMan: Tom Holland Trilogy Pack', 3, 60),
(20, 20, 'SpiderMan iPhone 12 Case WATERPROOF', 4, 50),
(21, 20, 'SpiderMan VENOM iPhone 12 Case', 4, 50),
(22, 19, 'SpiderMan Samsung Galaxy s21 Ultra Case', 4, 40),
(23, 19, 'SpiderMan Samsung Galaxy s21 Ultra Case', 4, 30),
(24, 20, 'SpiderMan VENOM Galaxy s21 Ultra Case', 4, 30),
(25, 18, 'SpiderMan No Way Home Exclusive iPhone Case', 4, 70),
(26, 19, 'SpiderMan: No Way Home Autographed Tom Holland, Toby McGuire, Andrew Garfield Poster', 5, 5000),
(27, 20, 'SpiderMan: Homecoming Autographed Tom Holland Poster', 5, 500),
(28, 20, 'SpiderMan: Far From Home Autographed Tom Holland Poster', 5, 500),
(29, 20, 'SpiderMan: VENOM The MultiVerse Shop Exclusive Poster', 5, 300),
(30, 20, 'SpiderMan: Mary Jane and Peter Parker Poster', 5, 300),
(31, 20, 'SpiderMan: Exclusive Green Goblin Poster', 5, 300);

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT_CATEGORY`
--

CREATE TABLE `PRODUCT_CATEGORY` (
  `Category_ID` int(11) NOT NULL,
  `Category` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PRODUCT_CATEGORY`
--

INSERT INTO `PRODUCT_CATEGORY` (`Category_ID`, `Category`) VALUES
(1, 'Toys'),
(2, 'Clothes'),
(3, 'DVD'),
(4, 'Phone Cases'),
(5, 'Posters');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CART`
--
ALTER TABLE `CART`
  ADD PRIMARY KEY (`Cart_ID`);

--
-- Indexes for table `CART_INFO`
--
ALTER TABLE `CART_INFO`
  ADD PRIMARY KEY (`CART_INFO_ID`),
  ADD KEY `CART_ID` (`CART_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`Client_ID`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`Employee_id`);

--
-- Indexes for table `ORDER_HISTORY`
--
ALTER TABLE `ORDER_HISTORY`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `PRODUCT_CATEGORY`
--
ALTER TABLE `PRODUCT_CATEGORY`
  ADD PRIMARY KEY (`Category_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CART`
--
ALTER TABLE `CART`
  MODIFY `Cart_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CART_INFO`
--
ALTER TABLE `CART_INFO`
  MODIFY `CART_INFO_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CLIENT`
--
ALTER TABLE `CLIENT`
  MODIFY `Client_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  MODIFY `Employee_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ORDER_HISTORY`
--
ALTER TABLE `ORDER_HISTORY`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `PRODUCT_CATEGORY`
--
ALTER TABLE `PRODUCT_CATEGORY`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
