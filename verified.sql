-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 27, 2022 at 11:51 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verified`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `file` varchar(144) NOT NULL,
  `workorder_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `joined` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL DEFAULT 'pending',
  `role` varchar(45) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `dob`, `password`, `joined`, `status`, `role`) VALUES
(1, 'Richard', 'Rodgers', 'richard@verifiedproperties.com', NULL, NULL, '$2y$10$u3BwdIbyVkg.vLoghHXuFONmtPsn4MyJHXX6/Xqv3IjgYk/B0SE5m', '2022-04-27 18:21:10', 'active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `work-orders`
--

CREATE TABLE `work-orders` (
  `id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `con` varchar(45) DEFAULT NULL,
  `street_address` varchar(255) NOT NULL,
  `secondary_address` varchar(20) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(45) NOT NULL,
  `county` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `start_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `due_date` date NOT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'open',
  `service` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `assignee` int(11) DEFAULT NULL,
  `approved_by` varchar(255) DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `date_approved` datetime DEFAULT NULL,
  `access_code` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work-orders`
--

INSERT INTO `work-orders` (`id`, `client_name`, `con`, `street_address`, `secondary_address`, `city`, `state`, `zip`, `county`, `country`, `owner`, `start_date`, `due_date`, `instructions`, `status`, `service`, `date_created`, `assignee`, `approved_by`, `date_completed`, `date_approved`, `access_code`) VALUES
(1, 'Assero', '1231231232', '2105 Central Avenue', '', 'Middletown', 'Ohio', '45044', 'Butler', 'United States', 'Jameson Rodgers', '2022-04-27 00:00:00', '2022-04-30', '', 'open', 'Interior/Exterior', '2022-04-27 19:50:31', NULL, NULL, NULL, NULL, '12345566');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `work-orders`
--
ALTER TABLE `work-orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work-orders`
--
ALTER TABLE `work-orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
