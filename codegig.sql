-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2019 at 05:14 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codegig`
--

-- --------------------------------------------------------

--
-- Table structure for table `gigs`
--

CREATE TABLE `gigs` (
  `id` int(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `technologies` varchar(250) NOT NULL,
  `budget` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `contact_email` varchar(250) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gigs`
--

INSERT INTO `gigs` (`id`, `title`, `technologies`, `budget`, `description`, `contact_email`, `createdAt`, `updatedAt`) VALUES
(1, 'Looking for a Node Developer', 'JS CSS HTML', '$3000', 'Node.js is an open-source, cross-platform JavaScript run-time environment that executes JavaScript code outside of a browser.', 'node@js.com', '2019-04-18', '2019-04-18'),
(2, 'Looking for a wordpress Developer', 'php CSS HTML', '$3000', 'Node.js is an open-source, cross-platform JavaScript run-time environment that executes JavaScript code outside of a browser.', 'node@js.com', '2019-04-18', '2019-04-18'),
(3, 'Flutter dev for mobile app', 'dart ,flutter,js,android', '$4500', 'Flutter is an open-source mobile application development framework created by Google. It is used to develop applications for Android and iOS, as well as being the primary method of creating applications for Google Fuchsia', 'flutter@google.com', '2019-04-18', '2019-04-18'),
(4, 'Php Webapp developer', 'php mysql', '$1000', 'create project for shopping cart', 'php@apache.com', '2019-04-18', '2019-04-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gigs`
--
ALTER TABLE `gigs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gigs`
--
ALTER TABLE `gigs`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
