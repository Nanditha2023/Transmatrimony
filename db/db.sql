-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 08:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrimony`
--
CREATE DATABASE IF NOT EXISTS `matrimony` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `matrimony`;

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE `admintable` (
  `adm_id` int(11) NOT NULL,
  `adm_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_no` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`adm_id`, `adm_name`, `password`, `phone_no`) VALUES
(1, 'admin', '1234', 7907751406);

-- --------------------------------------------------------

--
-- Table structure for table `banktable`
--

CREATE TABLE `banktable` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `card_no` bigint(20) NOT NULL,
  `cvv` int(11) NOT NULL,
  `IFSC` varchar(100) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banktable`
--

INSERT INTO `banktable` (`bank_id`, `bank_name`, `card_no`, `cvv`, `IFSC`, `balance`) VALUES
(1, 'sbi', 321456987, 118, 'sbi345434234', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `dateAndTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `notification` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `from_id`, `to_id`, `message`, `dateAndTime`, `notification`) VALUES
(1, 1, 7, 'hello\n', '2022-04-18 12:23:09', 0),
(2, 7, 1, 'hey', '2022-04-18 12:23:17', 0),
(3, 1, 7, 'sugalle', '2022-04-18 12:25:10', 0),
(4, 1, 7, '', '2022-04-18 12:25:10', 0),
(5, 7, 1, 'alla nari', '2022-04-18 12:25:20', 0),
(6, 1, 7, '', '2022-04-18 12:25:23', 0),
(7, 1, 7, '', '2022-04-18 12:31:52', 0),
(8, 1, 7, '', '2022-04-18 12:32:26', 0),
(9, 14, 1, 'hi', '2022-05-10 10:53:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `requesttable`
--

CREATE TABLE `requesttable` (
  `req_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `sender_status` int(11) NOT NULL,
  `recipient_status` int(11) NOT NULL,
  `notify` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requesttable`
--

INSERT INTO `requesttable` (`req_id`, `fk_user_id`, `recipient_id`, `sender_status`, `recipient_status`, `notify`) VALUES
(37, 14, 7, 0, 1, 2),
(38, 7, 1, 0, 1, 2),
(39, 14, 4, 0, 0, 2),
(40, 14, 6, 0, 0, 2),
(41, 14, 12, 0, 0, 2),
(42, 14, 1, 0, 1, 2),
(43, 3, 14, 0, 0, 0),
(44, 14, 2, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transactiontable`
--

CREATE TABLE `transactiontable` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactiontable`
--

INSERT INTO `transactiontable` (`transaction_id`, `user_id`, `bank_id`, `amount`, `date`) VALUES
(1, 14, 0, 800, '2022-05-09 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `reg_id` int(11) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `dob` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mother's_name` varchar(50) NOT NULL,
  `father's_name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `educational_qualification` text NOT NULL,
  `state` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `pin_code` int(11) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `mother_tongue` varchar(20) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `hobbies` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `account_type` int(50) NOT NULL COMMENT '0=silver,1=gold,2=platinum',
  `isactive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`reg_id`, `user_name`, `gender`, `dob`, `mother's_name`, `father's_name`, `address`, `educational_qualification`, `state`, `district`, `pin_code`, `religion`, `caste`, `mother_tongue`, `occupation`, `nationality`, `hobbies`, `email`, `phone_no`, `password`, `height`, `weight`, `account_type`, `isactive`) VALUES
(1, 'lala', 'transwomen', '2022-03-14 09:45:54', 'dsdff', 'ghy', 'fghfdgh', 'mba', 'kerala', 'kannur', 670011, 'hindhu', 'ghg', 'dfhg', 'dgdfg', 'indian', 'dgthfdg', 'gfhgf@gmail.com', 877887787, '12345', 46, 657, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `user_Id` int(11) NOT NULL,
  `userFirstName` varchar(50) NOT NULL,
  `userLastName` varchar(100) NOT NULL,
  `gender` int(11) NOT NULL COMMENT '0=transmen,1=transwomen',
  `DOB` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `caste` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `state` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `mothertongue` varchar(100) NOT NULL,
  `phone_no` bigint(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `educational_qualification` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `mother's_name` varchar(100) NOT NULL,
  `father's_name` varchar(100) NOT NULL,
  `about_yourself` varchar(200) NOT NULL,
  `height` double NOT NULL,
  `weight` double NOT NULL,
  `isactive` tinyint(11) NOT NULL,
  `account_type` int(11) DEFAULT NULL COMMENT '0=silver,1=gold,2=platinum',
  `profilepic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`user_Id`, `userFirstName`, `userLastName`, `gender`, `DOB`, `password`, `religion`, `caste`, `address`, `nationality`, `state`, `district`, `pincode`, `mothertongue`, `phone_no`, `Email`, `educational_qualification`, `occupation`, `mother's_name`, `father's_name`, `about_yourself`, `height`, `weight`, `isactive`, `account_type`, `profilepic`) VALUES
(1, 'nimzz', 'vp', 0, '2022-02-14', '1', 'gded', 'gae', 'aDgeE', 'AGSDS', 'SGAW', 'SDGSAEG', 346, 'DFHGDAF', 362277, '1', 'SDGASDG', 'SDGSDG', '', '', 'SDGSG', 356, 3643, 0, 1, ''),
(2, 'fsaas', 'sdgadsg', 0, '0000-00-00', 'SDGSDGSD', 'gded', 'gae', 'aDgeE', 'AGSDS', 'SGAW', 'SDGSAEG', 346, 'DFHGDAF', 362277, 'SDGSDGSD@GMAIL.COM', 'SDGASDG', 'SDGSDG', '', '', 'SDGSG', 356, 3643, 0, 0, ''),
(3, 'DDVBKGQ', 'QDQGDGQ', 0, '0000-00-00', '114', 'D', 'QBDB', 'QJHD', 'QDHUQBUDHB', 'QDQQJBDGQ', 'DQBDUQ', 5775, 'QDHGVGD', 46787, 'dev2@gmail.com', 'GVSDG', 'SDGASD', '', '', 'SDAG', 346, 36, 0, 0, ''),
(4, 'DDVBKGQ', 'QDQGDGQ', 1, '0000-00-00', '114', 'D', 'QBDB', 'QJHD', 'QDHUQBUDHB', 'QDQQJBDGQ', 'DQBDUQ', 5775, 'QDHGVGD', 46787, 'dev2@gmail.com', 'GVSDG', 'SDGASD', '', '', 'SDAG', 346, 36, 0, 2, ''),
(6, 'FGJSF', 'FJSF', 1, '0000-00-00', 'DFHJSRF', 'FJFS', 'FGJSF', 'FJFS', 'FGJHFS', 'FGHJF', 'FHJF', 0, 'FGJF', 0, 'dev@2gmail.com', 'DFHDF', 'FGHSFD', 'FGHFD', 'FGHFDS', 'FHFS', 4, 43, 0, 1, ''),
(12, 'chandra ', 'BABU', 0, '1998-05-18', '123', 'HINDU', 'MALAYA', 'KANNUR', 'INDIAN', 'KERALA', 'KANNUR', 670001, 'MALAYALAM', 9685748596, 'TEST@GMAI.COM', 'sslc', 'nil', 'shantha', 'babu', 'young and handsome', 162, 47, 0, 0, 'APU_0454.JPG'),
(13, 'sd', 'sd', 1, '2022-05-26', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 43, 'd', 343, 'asd@asdd.asds', 'we', 'we', 'we', 'we', 'we', 23, 23, 0, NULL, 'bg_image_1.jpg'),
(14, 'asd', 'asd', 1, '2019-06-03', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 123, 'asd', 123, 'asd@gmail.com', 'asd', 'asd', 'asd', 'asd', 'asd', 212, 12, 0, 2, 'bg_2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintable`
--
ALTER TABLE `admintable`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `banktable`
--
ALTER TABLE `banktable`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `requesttable`
--
ALTER TABLE `requesttable`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `transactiontable`
--
ALTER TABLE `transactiontable`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintable`
--
ALTER TABLE `admintable`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banktable`
--
ALTER TABLE `banktable`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `requesttable`
--
ALTER TABLE `requesttable`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `transactiontable`
--
ALTER TABLE `transactiontable`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
