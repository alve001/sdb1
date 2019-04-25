-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2019 at 03:48 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stdmgdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `hours_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `label`, `hours_number`) VALUES
(1, 'Java1', 27),
(2, 'php121', 28),
(5, 'MAT125', 22),
(10, 'EEE565', 9),
(11, 'CSE111', 9),
(12, 'CSE113', 13),
(13, 'CSE117', 18);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_score` float NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`student_id`, `course_id`, `student_score`, `description`) VALUES
(25, 11, 3.75, 'Good'),
(27, 1, 4, 'Excellent'),
(33, 1, 4, 'Excellent'),
(37, 1, 4, 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `sex` text NOT NULL,
  `birthdate` date NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `sex`, `birthdate`, `phone`, `address`) VALUES
(23, 'Nowshad', 'Alve', 'Male', '1997-10-03', '01674316924', 'Chandpur,Chittagong,Bangladesh'),
(25, 'Nowshad3', 'Alve', 'Male', '1997-10-03', '01674316924', 'Chandpur,Chittagong,Bangladesh'),
(27, 'Nowshad5', 'Alve', 'Male', '1997-10-03', '01674316924', 'Chandpur,Chittagong,Bangladesh'),
(33, 'asdfghjkl', 'ASDFGHJKLASD', 'Female', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL'),
(34, 'asdfghjklDSAFG', 'ASDFGHJKLASD', 'Female', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL'),
(35, 'asdfghjklDSAFG23', 'ASDFGHJKLASD', 'Female', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL'),
(36, 'asdfghjklDSAFG23', 'ASDFGHJKLASD23', 'Female', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL'),
(37, 'asdfghjklDSAFG23GNR', 'ASDFGHJKLASD23', 'Female', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL'),
(38, 'asdfghjklDSAFG23GNR', 'ASDFGHJKLASD23FDSX', 'Female', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL'),
(39, 'asdfghjklDSAFG23GNR1234564R', 'ASDFGHJKLASD23FDSX', 'Female', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL'),
(40, 'asdfghjklDSAFG23GNR1234564R', 'ASDFGHJKLASD23FDSXVCVB', 'Female', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL'),
(41, 'asdfghjklDSAFG23GNR1234564RRG', 'ASDFGHJKLASD23FDSXVCVB', 'Female', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL'),
(42, 'FDS', 'RDGHFHFHMV', 'Male', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL'),
(43, 'GBDFDS', 'RDGHFHFHMV', 'Male', '1990-04-07', '1234567890', 'QZWXERGTHYJIKOL');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'public'),
(2, 'Alve', '123'),
(3, 'user', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD KEY `fk_score_student` (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
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
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `fk_score_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
