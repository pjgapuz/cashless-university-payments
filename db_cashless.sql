-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 09:17 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cashless`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `id` int(255) NOT NULL,
  `username` text NOT NULL,
  `pword` text NOT NULL,
  `lname` text NOT NULL,
  `fname` text NOT NULL,
  `mi` text NOT NULL,
  `level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `username`, `pword`, `lname`, `fname`, `mi`, `level`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'r', 'admin'),
(2, 'captleer', '246895', 'Sernadilla', 'Michael', 'D', 'teller');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `seller_id` text NOT NULL,
  `qty` text NOT NULL,
  `prodname` text NOT NULL,
  `price` text NOT NULL,
  `total` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logactivity`
--

CREATE TABLE `tbl_logactivity` (
  `id` int(255) NOT NULL,
  `user` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_logactivity`
--

INSERT INTO `tbl_logactivity` (`id`, `user`, `date`, `time`) VALUES
(1, 'admin', '2021-12-05', '23:02:52'),
(2, '03-1617-07229', '2021-12-05', '23:09:36'),
(3, 'captleer', '2021-12-05', '23:14:01'),
(4, 'fernando', '2021-12-05', '23:26:30'),
(5, 'admin', '2021-12-06', '18:30:03'),
(6, '03-1617-07229', '2021-12-06', '18:32:49'),
(7, '03-1617-07228', '2021-12-06', '18:33:24'),
(8, '03-1617-07229', '2021-12-06', '18:54:18'),
(9, '03-1617-07229', '2021-12-04', '23:56:35'),
(10, '03-1617-07229', '2021-12-05', '00:01:01'),
(11, '03-1617-07229', '2021-12-05', '00:02:47'),
(12, '03-1617-07228', '2021-12-05', '00:03:30'),
(13, '03-1617-07228', '2021-12-05', '00:03:30'),
(14, 'captleer', '2021-12-08', '15:08:46'),
(15, 'admin', '2021-12-08', '15:21:48'),
(16, 'captleer', '2021-12-10', '13:17:54'),
(17, '03-1617-07229', '2021-12-10', '15:36:39'),
(18, 'admin', '2021-12-10', '18:44:43'),
(19, 'admin', '2021-12-10', '18:44:43'),
(20, 'captleer', '2021-12-11', '10:38:52'),
(21, '03-1617-07229', '2021-12-11', '16:04:28'),
(22, 'captleer', '2021-12-11', '20:35:25'),
(23, '03-1617-07229', '2021-12-11', '20:36:29'),
(24, 'admin', '2021-12-11', '21:30:46'),
(25, 'captleer', '2021-12-12', '13:58:50'),
(26, '03-1617-07229', '2021-12-12', '14:05:09'),
(27, 'admin', '2021-12-12', '20:16:28'),
(28, '03-1617-07229', '2021-12-12', '20:55:25'),
(29, 'admin', '2021-12-12', '20:55:55'),
(30, 'captleer', '2021-12-12', '21:09:15'),
(31, 'fernando', '2021-12-12', '21:57:52'),
(32, 'fernando', '2021-12-12', '22:26:51'),
(33, 'fernando', '2021-12-12', '23:09:25'),
(34, 'captleer', '2021-12-12', '23:28:50'),
(35, 'fernando', '2021-12-13', '13:23:53'),
(36, '03-1617-07229', '2021-12-13', '13:38:56'),
(37, 'captleer', '2021-12-13', '15:21:01'),
(38, 'admin', '2021-12-13', '15:44:06'),
(39, 'captleer', '2021-12-14', '19:19:26'),
(40, 'admin', '2021-12-14', '23:10:39'),
(41, '03-1617-07229', '2021-12-14', '23:12:53'),
(42, 'captleer', '2021-12-14', '23:50:04'),
(43, 'admin', '2021-12-15', '00:42:59'),
(44, 'admin', '2021-12-15', '01:27:13'),
(45, 'captleer', '2021-12-15', '01:37:19'),
(46, '03-1617-07229', '2021-12-15', '01:44:17'),
(47, 'fernando', '2021-12-15', '02:20:03'),
(48, '03-1617-07229', '2021-12-15', '02:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_others`
--

CREATE TABLE `tbl_others` (
  `id` int(11) NOT NULL,
  `eventname` text NOT NULL,
  `eventprice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_others`
--

INSERT INTO `tbl_others` (`id`, `eventname`, `eventprice`) VALUES
(1, 'Kompsayahan Party', '250.00'),
(2, '520 Wild Party', '1000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paymethod`
--

CREATE TABLE `tbl_paymethod` (
  `id` int(11) NOT NULL,
  `payid` text NOT NULL,
  `payname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(255) NOT NULL,
  `franchise` text NOT NULL,
  `prodname` text NOT NULL,
  `prodprice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `franchise`, `prodname`, `prodprice`) VALUES
(1, 'Franchinatics', 'Large Fries', '30.00'),
(2, 'Franchinatics', '5pcs Cookies', '225.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` int(11) NOT NULL,
  `studnum` text NOT NULL,
  `pword` text NOT NULL,
  `lname` text NOT NULL,
  `fname` text NOT NULL,
  `mi` varchar(2) NOT NULL,
  `email` text NOT NULL,
  `rfidnum` text NOT NULL,
  `balance` text DEFAULT NULL,
  `pay1` text DEFAULT NULL,
  `pay2` text DEFAULT NULL,
  `pay3` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `studnum`, `pword`, `lname`, `fname`, `mi`, `email`, `rfidnum`, `balance`, `pay1`, `pay2`, `pay3`) VALUES
(2, '03-1617-07228', 'FINULIAR', 'Finuliar', 'Goldah May', 'G', 'goldah_may@gmail.com', '5065C71E', '2250.00', '0.00', '0.00', '0.00'),
(4, '03-1617-07229', 'GAPUZ', 'Gapuz', 'Paul John Laurence', 'F.', 'brinkster1298@gmail.com', '26C5AEF8', '2640.00', '0.00', '0.00', '3300.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tennants`
--

CREATE TABLE `tbl_tennants` (
  `id` int(255) NOT NULL,
  `user` text NOT NULL,
  `pword` text NOT NULL,
  `lname` text NOT NULL,
  `fname` text NOT NULL,
  `mi` text NOT NULL,
  `email` text NOT NULL,
  `franchise` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tennants`
--

INSERT INTO `tbl_tennants` (`id`, `user`, `pword`, `lname`, `fname`, `mi`, `email`, `franchise`) VALUES
(1, 'fernando', '3576891', 'Hernando', 'Maestro', 'D', 'herman_maestro@gmail.com', 'Franchinatics'),
(2, 'maryjoyce', '1592637', 'Cruz', 'Mary Jane', 'E', 'joymary@gmail.com', 'Franchinatics');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `id` int(10) NOT NULL,
  `transnumber` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `desc` text NOT NULL,
  `studnum` text NOT NULL,
  `rfid` text NOT NULL,
  `transid` text DEFAULT NULL,
  `paymethod` text NOT NULL,
  `direct` text DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `amount` text NOT NULL,
  `cart` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`id`, `transnumber`, `desc`, `studnum`, `rfid`, `transid`, `paymethod`, `direct`, `date`, `time`, `amount`, `cart`) VALUES
(1, 0000000001, 'Deposit via Teller', '03-1617-07229', '26C5AEF8', 'captleer', 'TELLER', 'TELLER', '2021-12-15', '01:43:30', '9000.00', NULL),
(2, 0000000002, 'Tuition Fee Payment via Teller', '03-1617-07229', '26C5AEF8', 'captleer', 'TELLER', 'TELLER', '2021-12-15', '01:45:14', '5000.00', NULL),
(3, 0000000003, 'Pay Kompsayahan Party via Teller', '03-1617-07229', '26C5AEF8', 'captleer', 'TELLER', 'TELLER', '2021-12-15', '01:45:44', '250.00', NULL),
(4, 0000000004, 'Deposit via Teller', '03-1617-07228', '5065C71E', 'captleer', 'TELLER', 'TELLER', '2021-12-15', '01:46:45', '3000.00', NULL),
(5, 0000000005, 'Pay 520 Wild Party via Teller', '03-1617-07228', '5065C71E', 'captleer', 'TELLER', 'TELLER', '2021-12-16', '01:49:03', '1000.00', NULL),
(6, 0000000006, 'Pay PHP 1125.00 for buying Franchinatics Products', '03-1617-07229', '26C5AEF8', 'Franchinatics', 'TENANT', '', '2021-12-15', '02:47:50', '1125.00', 'Qty: 5------ Product name: 5pcs Cookies------ Price: 225.00------ Total Price: 1125'),
(7, 0000000007, 'Deposit via Tenant', '03-1617-07229', '26C5AEF8', 'Franchinatics', 'TENANT', '', '2021-12-15', '03:00:49', '500.00', NULL),
(8, 0000000008, 'Pay PHP 285.00 for buying Franchinatics Products', '03-1617-07229', '26C5AEF8', 'Franchinatics', 'TENANT', '', '2021-12-15', '03:02:41', '285.00', 'Qty: 2------ Product name: Large Fries------ Price: 30.00------ Total Price: 60Qty: 1------ Product name: 5pcs Cookies------ Price: 225.00------ Total Price: 225'),
(9, 0000000009, 'Deposit via Paymaya via Online', '03-1617-07229', '26C5AEF8', 'STUDENT', 'ONLINE', 'PAYMAYA', '2021-12-15', '03:39:29', '5000.00', NULL),
(10, 0000000010, 'Deposit via G-Cash via Online', '03-1617-07229', '26C5AEF8', 'STUDENT', 'ONLINE', 'GCASH', '2021-12-15', '03:39:41', '500.00', NULL),
(11, 0000000011, 'Tuition Fee Transaction using Online', '03-1617-07229', '26C5AEF8', 'STUDENT', 'ONLINE', 'TELLER', '2021-12-15', '03:39:54', '200.00', NULL),
(12, 0000000012, 'Pay 520 Wild Party via Online', '03-1617-07229', '26C5AEF8', 'STUDENT', 'ONLINE', 'TELLER', '2021-12-15', '03:40:12', '1000.00', NULL),
(13, 0000000013, 'Deposit via Paymaya via Online', '03-1617-07229', '26C5AEF8', 'STUDENT', 'ONLINE', 'PAYMAYA', '2021-12-15', '03:45:23', '250.00', NULL),
(14, 0000000014, 'Deposit via G-Cash via Online', '03-1617-07229', '26C5AEF8', 'STUDENT', 'ONLINE', 'GCASH', '2021-12-15', '03:45:33', '250.00', NULL),
(15, 0000000014, 'Deposit via G-Cash via Online', '03-1617-07229', '26C5AEF8', 'STUDENT', 'ONLINE', 'GCASH', '2021-12-15', '03:45:34', '250.00', NULL),
(16, 0000000016, 'Tuition Fee Transaction using Online', '03-1617-07229', '26C5AEF8', 'STUDENT', 'ONLINE', 'TELLER', '2021-12-15', '03:45:44', '5000.00', NULL),
(17, 0000000017, 'Pay Kompsayahan Party via Online', '03-1617-07229', '26C5AEF8', 'STUDENT', 'ONLINE', 'TELLER', '2021-12-15', '03:45:53', '250.00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logactivity`
--
ALTER TABLE `tbl_logactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_others`
--
ALTER TABLE `tbl_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paymethod`
--
ALTER TABLE `tbl_paymethod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tennants`
--
ALTER TABLE `tbl_tennants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_logactivity`
--
ALTER TABLE `tbl_logactivity`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_others`
--
ALTER TABLE `tbl_others`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_paymethod`
--
ALTER TABLE `tbl_paymethod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_tennants`
--
ALTER TABLE `tbl_tennants`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
