-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2021 at 08:37 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 30000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Samarth Khaire', 'samarth@gmail.com', 4700),
(2, 'Harbhajan Singh', 'bhajji@gmail.com', 8000),
(3, 'VVS Laxman', ' vvs@gmail.com', 10300),
(4, 'Dev Gagaram ', 'dev@gmail.com', 6000),
(5, 'Rishabh Pant', 'rishabh@gmail.com', 10000),
(6, 'Rohit Sharma ', 'rohit@gmail.com', 7000),
(7, 'Vijay Shankar', 'vijay@gmail.com', 12000),
(8, 'Ashish Nehra', 'ashish@gmail.com', 10000),
(9, 'Washington Sundar ', 'sundar@gmail.com', 9000),
(10, 'Axar Patel', 'axar@gmail.com', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(10) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sender`, `receiver`, `balance`, `datetime`) VALUES
('Rishabh Pant', 'Rohit Sharma', 1000, '2021-02-10 22:57:03'),
('Ashish Nehra', 'Axar Patel', 1000, '2021-02-10 22:57:23'),
('Rishabh Pant', 'Vijay Shankar', 1222, '2021-02-10 22:57:57'),
('Harbhajan Singh', 'VVS Laxman', 1222, '2021-02-10 22:58:22'),
('Dev Gagaram', 'Washington Sundar', 100, '2021-02-10 22:58:34'),
('Samarth Khaire', 'VVS Laxman', 1000, '2021-03-06 22:58:02'),
('Samarth Khaire', 'VVS Laxman', 300, '2021-03-07 10:43:08'),
('Samarth Khaire', 'Ashish Nehra', 2000, '2021-03-07 10:53:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
