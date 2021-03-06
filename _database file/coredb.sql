-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2017 at 05:16 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coredb`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `malepersons`
-- (See below for the actual view)
--
CREATE TABLE `malepersons` (
`id` int(11)
,`name` varchar(30)
,`email` varchar(25)
,`gender` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(25) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `name`, `email`, `gender`) VALUES
(6, 'Princess Hagan', 'priceless@gmai.com', 0),
(7, 'Fresh Prince', 'freshpee@gmail.com', 1),
(8, 'Gloria Fresh', 'Geefresh@gmail.com', 0),
(9, 'Issac Baah', 'ikebaa@gmail.com', 1),
(10, 'Kwabena Appiah', 'kwaben@air.com', 1),
(13, 'Henry Sarkodie', 'sarkNation@gmail.com', 1),
(14, 'Abena Kwateng', 'abena@gmail.com', 0),
(17, 'Safo Appiah', 'moniesbill@gmail.com', 1),
(18, 'Kingsley Agyei', 'kings@gmail.com', 1),
(21, 'Precious Holy Spirit', 'spirit@god.com', 1),
(24, 'Holy Word', 'word@god.com', 1),
(27, 'God, The Father', 'father@god.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `othername` varchar(25) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `email` varchar(30) NOT NULL,
  `hash_word` text NOT NULL,
  `access_failed_count` int(11) NOT NULL,
  `account_enabled` bit(1) NOT NULL,
  `concurrency_stamp` int(11) NOT NULL,
  `email_confirm` bit(1) NOT NULL,
  `lockout_enabled` bit(1) NOT NULL,
  `lockout_end` text NOT NULL,
  `next_login_change_password` bit(1) NOT NULL,
  `normalized_email` bit(1) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `phone_number_confirmed` bit(1) NOT NULL,
  `security_stamp` int(11) NOT NULL,
  `two_factor_enabled` bit(1) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `surname`, `othername`, `gender`, `email`, `hash_word`, `access_failed_count`, `account_enabled`, `concurrency_stamp`, `email_confirm`, `lockout_enabled`, `lockout_end`, `next_login_change_password`, `normalized_email`, `phone_number`, `phone_number_confirmed`, `security_stamp`, `two_factor_enabled`, `reg_date`) VALUES
(1, 'admin', 'Owusu-Afriyie', 'Kofi', 1, 'koathecedi@gmail.com', '$2y$10$cZYAJFbspO8XHfR9DnMBkOLGxCTtBdJ9lOfKPpJy4OclTLprwCgN6', 0, b'1', 0, b'0', b'0', '0', b'0', b'0', '0501359922', b'0', 0, b'0', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure for view `malepersons`
--
DROP TABLE IF EXISTS `malepersons`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `malepersons`  AS  select `persons`.`id` AS `id`,`persons`.`name` AS `name`,`persons`.`email` AS `email`,`persons`.`gender` AS `gender` from `persons` where (`persons`.`gender` = 1) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
