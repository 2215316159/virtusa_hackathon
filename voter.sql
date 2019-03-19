-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2019 at 06:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voter`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `voter_id` int(5) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) NOT NULL,
  `age` varchar(2) NOT NULL,
  `phn` varchar(10) NOT NULL,
  `aid` varchar(12) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `const` varchar(20) NOT NULL,
  `mom_name` varchar(20) NOT NULL,
  `dad_name` varchar(20) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`voter_id`, `f_name`, `m_name`, `l_name`, `age`, `phn`, `aid`, `pincode`, `city`, `const`, `mom_name`, `dad_name`, `dob`, `status`, `gender`) VALUES
(10001, 'Lokesh', '', 'Balla', '20', '9705561827', '673254328345', '500070', 'Hyderabad', 'LB nagar', 'Lalitha', 'Sudhakar', '1999-02-22', '0', 'M'),
(10002, 'Aditya', '', 'Nuthalapati', '20', '9866148996', '789867895678', '500092', 'Hyderabad', 'Uppal', 'rajeshwari', 'gopal', '1998-11-19', '0', 'M'),
(10003, 'sai', '', 'adu', '21', '3456546461', '234567891011', '500062', 'Hyderabad', 'ECIL', 'varalakshmi', 'mohan', '1998-04-30', '1', 'M'),
(10004, 'Jayanth', 'Sai', 'Yennana', '21', '9573908349', '123456789101', '500090', 'Chennai', 'Egmore', 'RamaDevi', 'Pratap', '1997-10-11', '1', 'M'),
(10005, 'Ram', '', 'L', '23', '8333011089', '123456789345', '500010', 'Hyderabad', 'Uppal', 'sammy', 'SAM', '1995-02-16', '1', 'M'),
(10001, 'Lokesh', '', 'Balla', '20', '9705561827', '673254328345', '500070', 'Hyderabad', 'Uppal', 'Lalitha', 'Sudhakar', '1999-02-22', '1', 'M'),
(10006, 'sita', '', 'ram', '23', '1234567890', '123456789101', '500062', 'Bangalore', 'Sarjapur', 'Lalitha', 'Sudhakar', '1995-03-09', '1', 'F'),
(10002, 'Aditya', '', 'Nuthalapati', '20', '9866148996', '789867895678', '500092', 'Chennai', 'T nagar', 'rajeshwari', 'gopal', '1998-11-19', '1', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `idcount`
--

CREATE TABLE `idcount` (
  `count` int(5) NOT NULL,
  `dummy` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT 'X'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idcount`
--

INSERT INTO `idcount` (`count`, `dummy`) VALUES
(10007, 'X');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
