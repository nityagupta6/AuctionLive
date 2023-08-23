-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2023 at 12:15 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21019451_auctionlive`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile number` bigint(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `mobile number`, `name`, `surname`) VALUES
(1, 'admin', 'admin', 1234567095, 'Nitya', 'Gupta');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`cid`, `cname`) VALUES
(1, 'India'),
(2, 'USA'),
(3, 'Australia'),
(4, 'China'),
(5, 'Japan'),
(6, 'Russia'),
(7, 'Dubai'),
(8, 'South Africa'),
(9, 'South Korea'),
(10, 'Srilanka'),
(11, 'UK'),
(12, 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bid`
--

CREATE TABLE `tbl_bid` (
  `pro_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `bid_amount` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_bid`
--

INSERT INTO `tbl_bid` (`pro_id`, `uid`, `bid_amount`, `bid_id`) VALUES
(93, 15, 80000, 50),
(93, 17, 85000, 51),
(97, 17, 600, 52),
(97, 15, 700, 53),
(98, 17, 2000, 54),
(98, 15, 3000, 55);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_img`
--

CREATE TABLE `tbl_img` (
  `img_id` int(11) NOT NULL,
  `img_name` varchar(100) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_img`
--

INSERT INTO `tbl_img` (`img_id`, `img_name`, `pro_id`) VALUES
(97, '64abc7acc3a599.78718377.jpg', 89),
(98, '64abc85e370298.70689369.jpeg', 90),
(99, '64abc93fcf8420.87557634.jpeg', 91),
(100, '64d23d803fafe0.92357968.jpg', 92),
(101, '64d23fd1538b28.32876558.jpg', 93),
(102, '64d23fe603f9a5.54049364.jpg', 94),
(103, '64d4e66b0644b6.96130997.jpg', 95),
(104, '64d508ce45ae95.61886973.jpg', 96),
(105, '64d62eaa2d1cf0.77991792.jpg', 97),
(106, '64d7154d289959.64212231.jpg', 98),
(107, '64d8f5a18fa265.25843725.jpg', 99),
(108, '64d8f60e601765.76705258.jpg', 100),
(109, '64d928979b15d5.08082790.png', 101),
(110, '64db636fe52022.03527233.png', 102);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `uid` int(11) NOT NULL,
  `bidstarttime` datetime NOT NULL,
  `bidendtime` datetime NOT NULL,
  `status` enum('On Sale','Sold','Disable') NOT NULL DEFAULT 'On Sale'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `name`, `price`, `description`, `uid`, `bidstarttime`, `bidendtime`, `status`) VALUES
(89, 'A guitar', 4500, 'A acoustic yamaha guitar of classics brown colour', 15, '2023-07-10 14:26:00', '2023-07-10 14:30:00', 'Sold'),
(90, 'A guitar', 3500, 'A classic acoustic guitar', 15, '2023-07-10 14:30:00', '2023-07-10 14:35:00', 'Sold'),
(91, 'A guitar', 3500, 'A classic acoustic guitar', 15, '2023-07-10 14:30:00', '2023-07-10 14:35:00', 'Sold'),
(92, 'Painting', 10000, 'Mordern Art', 15, '2023-08-08 18:32:00', '2023-08-08 18:40:00', 'Sold'),
(93, 'iPhone', 75000, 'iphone 14', 16, '2023-08-08 18:44:00', '2023-08-08 18:50:00', 'Sold'),
(94, 'iPhone', 75000, 'iphone 14', 16, '2023-08-08 18:44:00', '2023-08-08 18:50:00', 'Sold'),
(96, 'FJNKJNF', 9821937, 'EKJRBF', 16, '2023-08-10 21:26:00', '2023-08-10 22:26:00', 'Sold'),
(97, 'kn,', 577, 'mjbb ', 16, '2023-08-11 18:20:00', '2023-08-11 19:20:00', 'Sold'),
(98, 'kjehf', 1000, 'ljargn', 16, '2023-08-12 10:44:00', '2023-08-12 10:50:00', 'Sold'),
(99, 'ksvmk', 1020, 'lkerfmnk', 16, '2023-08-13 20:54:00', '2023-08-13 20:59:00', 'Sold'),
(100, 'sjdcn', 1200, 'aejgn', 16, '2023-08-13 20:55:00', '2023-08-13 20:59:00', 'Sold'),
(101, 'kwene', 10302, 'ekfw', 16, '2023-08-14 00:31:00', '2023-08-14 01:31:00', 'Sold'),
(102, 'test', 1200, 'sadhfkj sadg', 16, '2023-08-15 17:07:00', '2023-08-16 17:07:00', 'On Sale');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `purchase_id` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`purchase_id`, `bid_id`, `buyer_id`) VALUES
(16, 51, 17),
(17, 53, 15),
(18, 55, 15);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `hobby` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `dor` datetime NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `email`, `password`, `name`, `surname`, `gender`, `hobby`, `country`, `dor`, `status`) VALUES
(15, 'tango@gmail.com', 'tango123', 'Tanmay ', 'Garg', 'Male', 'Singing', 1, '2023-07-10 02:24:48', 'Enable'),
(16, 'nitya@gmail.com', 'nitya123', 'Nitya', 'Gupta', 'Female', 'Music', 1, '2023-08-08 06:43:29', 'Enable'),
(17, 'thik@gmail.com', 'adi123', 'adi', 'k', 'Male', 'Running', 2, '2023-08-08 06:46:41', 'Enable');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_bid`
--
ALTER TABLE `tbl_bid`
  ADD PRIMARY KEY (`bid_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `tbl_img`
--
ALTER TABLE `tbl_img`
  ADD PRIMARY KEY (`img_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `bid_id` (`bid_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_bid`
--
ALTER TABLE `tbl_bid`
  MODIFY `bid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_img`
--
ALTER TABLE `tbl_img`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bid`
--
ALTER TABLE `tbl_bid`
  ADD CONSTRAINT `tbl_bid_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `tbl_product` (`pro_id`),
  ADD CONSTRAINT `tbl_bid_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD CONSTRAINT `tbl_purchase_ibfk_1` FOREIGN KEY (`bid_id`) REFERENCES `tbl_bid` (`bid_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
