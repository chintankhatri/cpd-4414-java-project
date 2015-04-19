-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2015 at 04:43 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE IF NOT EXISTS `income` (
`inc_id` int(11) NOT NULL,
  `inc_date` date NOT NULL,
  `inc_desc` varchar(50) NOT NULL,
  `inc_amount` bigint(20) NOT NULL,
  `inc_type` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`inc_id`, `inc_date`, `inc_desc`, `inc_amount`, `inc_type`) VALUES
(1, '2015-04-08', 'Laptop', 500, 1),
(2, '2015-04-17', 'mouse', 80, 1),
(3, '2015-03-18', 'keyboard', 67, 1),
(4, '2015-04-17', 'Mobile', 700, 1),
(5, '2015-04-08', 'miscellaneous', 500, 0),
(6, '2015-04-06', 'Fuel', 40, 0),
(7, '2015-03-17', 'Electric bill', 45, 0),
(8, '2015-03-21', 'CC bil', 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`userd_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userd_id`, `username`, `password`) VALUES
(1, 'chintan', '123');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
`p_id` int(11) NOT NULL,
  `p_date` date NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`p_id`, `p_date`, `company_name`, `product_name`, `quantity`, `amount`) VALUES
(1, '2015-04-14', 'Lenovo', 'LKI-8900', 2, 1500),
(2, '2015-04-13', 'Dell', 'Mouse', 4, 200),
(3, '2015-03-19', 'Sony', 'Headphone', 2, 100),
(4, '2015-04-16', 'Dell', 'Keyboard', 5, 600);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
`s_id` int(11) NOT NULL,
  `s_date` date NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`s_id`, `s_date`, `cust_name`, `product_name`, `quantity`, `amount`) VALUES
(1, '2015-04-14', 'Jason', 'Mouse', 1, 75),
(2, '2015-04-17', 'Bill', 'LKI-8900', 1, 1600),
(3, '2015-03-12', 'Peter', 'keyboard', 1, 80),
(4, '2015-04-13', 'smith', 'Headphone', 1, 120);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `income`
--
ALTER TABLE `income`
 ADD PRIMARY KEY (`inc_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`userd_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
 ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
 ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
MODIFY `inc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `userd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
