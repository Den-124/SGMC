-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2024 at 10:42 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `admin_image` varchar(100) NOT NULL,
  `admin_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `admin_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `middlename`, `lastname`, `username`, `email`, `password`, `confirm_password`, `admin_image`, `admin_type`, `status`, `admin_added`) VALUES
(1, 'Vin', 'D.', 'Testers', 'admin', 'vi22n@email.com', 'admin1', 'admin1', 'archie.jpg', 'Admin', 'Deactivate', '2015-09-05 11:40:50'),
(2, 'Johnan', 'J.', 'Doe', 'encoder', NULL, 'admin', 'admin', '', 'Admin', 'Deactivate', '2015-09-29 11:40:50'),
(3, 'Vinnnn', '', 'Diesel', 'anonymous', 'vin@email.com', '32cacb2f994f6b42183a1300d9a3e8d6', '32cacb2f994f6b42183a1300d9a3e8d6', 'vin.jpeg', 'Admin', 'Active', '2015-11-25 15:21:01'),
(4, 'Ivankov', '', 'Sama', 'ivan', NULL, '21232f297a57a5a743894a0e4a801fc3', '21232f297a57a5a743894a0e4a801fc3', 'doja.jpeg', 'Admin', 'Deactivate', '2023-06-18 17:25:48'),
(5, 'Ace', 'S.', 'Aldavee', 'ace123', 'ace@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'bakugou.jpg', 'Co-Admin', 'Active', '2024-04-14 14:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(255) NOT NULL,
  `patient_id` int(255) NOT NULL,
  `doctor_id` int(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `appointment_date` date NOT NULL,
  `time_slot` time(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `patient_id`, `doctor_id`, `reason`, `appointment_date`, `time_slot`, `status`) VALUES
(15, 100, 113, 'wala', '2024-05-06', '09:45:00.000000', 'Accepted'),
(18, 100, 113, 'hi', '2024-05-07', '08:00:00.000000', 'Rejected'),
(19, 100, 113, 'hi', '2024-05-07', '08:00:00.000000', 'Rejected'),
(20, 110, 112, 'sad', '2024-05-07', '08:00:00.000000', 'Accepted'),
(21, 110, 112, 'asda', '2024-05-08', '07:56:00.000000', 'Rejected'),
(22, 110, 112, 'checkup', '2024-05-08', '09:00:00.000000', 'Rejected'),
(23, 110, 113, 'checkup', '2024-05-08', '09:00:00.000000', 'Accepted'),
(24, 110, 112, '', '2024-05-09', '10:00:00.000000', 'Pending'),
(25, 115, 112, 'consult', '2024-09-12', '10:30:00.000000', 'Accepted'),
(26, 116, 113, 'consult', '2024-09-13', '16:30:00.000000', 'Accepted'),
(27, 115, 113, '', '2024-09-16', '17:00:00.000000', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_log`
--

CREATE TABLE `doctor_log` (
  `doctor_log_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `date_log` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_log`
--

INSERT INTO `doctor_log` (`doctor_log_id`, `user_id`, `user_name`, `date_log`) VALUES
(3, 109, 'Hitooo  Max', '2024-04-23 20:56:07.000000'),
(2, 101, 'Asta Cre Black', '2024-04-10 21:18:24.000000'),
(4, 109, 'Hitooo  Max', '2024-04-23 21:10:46.000000'),
(5, 109, 'Hitooo  Max', '2024-04-23 21:13:33.000000'),
(6, 109, 'Hitooo  Max', '2024-04-23 21:17:08.000000'),
(7, 109, 'Hitooo  Max', '2024-04-23 21:20:37.000000'),
(8, 109, 'Hitooo  Max', '2024-04-23 21:37:30.000000'),
(9, 109, 'Hitooo  Max', '2024-04-23 21:38:24.000000'),
(10, 109, 'Hitooo  Max', '2024-04-23 21:38:44.000000'),
(11, 109, 'Hitooor  Max', '2024-04-23 22:26:54.000000'),
(12, 109, 'Hitooor  Max', '2024-04-23 23:21:47.000000'),
(13, 109, 'Hitooor  Max', '2024-04-24 07:58:26.000000'),
(14, 109, 'Hitooor  Max', '2024-04-24 08:10:38.000000'),
(15, 109, 'Hitooor  Max', '2024-05-05 02:04:50.000000'),
(16, 109, 'Hitooor  Max', '2024-05-05 03:20:48.000000'),
(17, 101, 'Astaa Cre Black', '2024-05-05 04:01:32.000000'),
(18, 109, 'Hitooor  Max', '2024-05-05 04:02:37.000000'),
(19, 101, 'Astaa Cre Black', '2024-05-05 04:04:35.000000'),
(20, 109, 'Hitooor  Max', '2024-05-05 04:06:08.000000'),
(21, 109, 'Hitooor  Max', '2024-05-05 04:08:29.000000'),
(22, 101, 'Astaa Cre Black', '2024-05-05 04:08:55.000000'),
(23, 109, 'Hitooor  Max', '2024-05-05 04:15:11.000000'),
(24, 109, 'Hitooor  Max', '2024-05-05 09:36:39.000000'),
(25, 109, 'Hitooor  Max', '2024-05-05 17:28:30.000000'),
(26, 109, 'Hitooor  Max', '2024-05-05 19:56:32.000000'),
(27, 107, 'yuri  yama', '2024-05-05 20:10:54.000000'),
(28, 109, 'Hitooor  Max', '2024-05-05 20:14:20.000000'),
(29, 109, 'Hitooor  Max', '2024-05-05 20:44:44.000000'),
(30, 109, 'Hitooor  Max', '2024-05-06 15:23:30.000000'),
(31, 109, 'Hitooor  Max', '2024-05-06 15:24:40.000000'),
(32, 109, 'Hitooor  Max', '2024-05-06 15:33:00.000000'),
(33, 109, 'Richie  Dela Torre', '2024-05-06 19:45:22.000000'),
(34, 109, 'Richie  Dela Torre', '2024-05-06 19:51:27.000000'),
(35, 109, 'Richie  Dela Torre', '2024-05-06 19:53:16.000000'),
(36, 109, 'Richie  Dela Torre', '2024-05-06 19:54:31.000000'),
(37, 109, 'Richie  Dela Torre', '2024-05-06 19:55:47.000000'),
(38, 101, 'Dra. Mayroline  Pacaide', '2024-05-06 20:00:05.000000'),
(39, 112, 'Ruel  Modina', '2024-09-11 21:46:10.000000'),
(40, 112, 'Ruel  Modina', '2024-09-11 22:37:40.000000'),
(41, 112, 'Ruel  Modina', '2024-09-12 18:12:12.000000'),
(42, 113, 'Mayroline  Pacaide', '2024-09-12 18:43:59.000000'),
(43, 112, 'Ruel  Modina', '2024-09-13 00:20:36.000000'),
(44, 113, 'Mayroline  Pacaide', '2024-09-13 09:27:54.000000'),
(45, 112, 'Ruel  Modina', '2024-09-24 23:53:36.000000'),
(46, 113, 'Mayroline  Pacaide', '2024-10-04 07:31:23.000000'),
(47, 112, 'Ruel  Modina', '2024-10-04 07:44:28.000000'),
(48, 112, 'Ruel  Modina', '2024-10-04 08:26:31.000000'),
(49, 112, 'Ruel  Modina', '2024-10-14 16:35:04.000000');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_schedules`
--

CREATE TABLE `doctor_schedules` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `time_slot` time DEFAULT NULL,
  `is_booked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_schedules`
--

INSERT INTO `doctor_schedules` (`id`, `user_id`, `day`, `time_slot`, `is_booked`) VALUES
(11, 109, '2024-05-06', '09:45:00', 1),
(12, 109, '2024-05-06', '11:00:00', 0),
(13, 109, '2024-05-06', '01:30:00', 0),
(14, 109, '2024-05-06', '14:57:00', 0),
(15, 109, '2024-05-07', '08:00:00', 1),
(16, 109, '2024-05-07', '22:00:00', 0),
(17, 109, '2024-05-08', '07:56:00', 0),
(18, 109, '2024-05-08', '09:00:00', 1),
(19, 109, '2024-05-08', '11:56:00', 0),
(20, 109, '2024-05-08', '12:00:00', 0),
(21, 109, '2024-05-09', '10:00:00', 1),
(22, 109, '2024-05-09', '00:00:00', 0),
(23, 109, '2024-05-10', '13:00:00', 0),
(24, 109, '2024-05-11', '10:00:00', 0),
(25, 109, '2024-05-12', '12:00:00', 0),
(26, 109, '2024-05-13', '10:57:00', 0),
(27, 109, '2024-05-12', '07:00:00', 0),
(28, 109, '2024-05-14', '09:00:00', 0),
(29, 109, '2024-05-15', '10:00:00', 0),
(30, 107, '2024-05-14', '10:30:00', 0),
(31, 107, '2024-05-10', '08:00:00', 0),
(32, 107, '2024-05-10', '13:15:00', 0),
(33, 109, '2024-05-31', '07:00:00', 0),
(34, 101, '2024-05-07', '11:05:00', 0),
(35, 112, '2024-09-12', '10:31:00', 1),
(36, 112, '2024-09-13', '10:30:00', 0),
(37, 112, '2024-09-14', '10:30:00', 0),
(38, 112, '2024-09-16', '10:30:00', 0),
(39, 112, '2024-09-17', '10:30:00', 0),
(40, 112, '2024-09-18', '10:30:00', 0),
(41, 112, '2024-09-19', '10:30:00', 0),
(42, 112, '2024-09-20', '10:30:00', 0),
(43, 112, '2024-09-21', '10:30:00', 0),
(44, 112, '2024-09-23', '10:30:00', 0),
(45, 112, '2024-09-24', '10:30:00', 0),
(46, 112, '2024-09-25', '10:30:00', 0),
(47, 112, '2024-09-26', '10:30:00', 0),
(48, 112, '2024-09-27', '10:30:00', 0),
(49, 112, '2024-09-28', '10:30:00', 0),
(50, 112, '2024-09-30', '10:30:00', 0),
(51, 112, '2024-10-31', '10:30:00', 0),
(52, 112, '2024-10-01', '10:30:00', 0),
(53, 113, '2024-09-12', '17:00:00', 0),
(54, 113, '2024-09-13', '16:30:00', 1),
(55, 113, '2024-09-14', '00:00:00', 0),
(56, 113, '2024-09-16', '17:00:00', 1),
(57, 113, '2024-09-17', '17:00:00', 0),
(58, 113, '2024-09-18', '16:30:00', 0),
(59, 113, '2024-09-19', '17:00:00', 0),
(60, 113, '2024-09-20', '16:30:00', 0),
(61, 113, '2024-09-23', '17:00:00', 0),
(62, 113, '2024-09-24', '17:00:00', 0),
(63, 113, '2024-09-25', '16:30:00', 0),
(64, 113, '2024-09-26', '17:00:00', 0),
(65, 113, '2024-09-27', '16:30:00', 0),
(66, 113, '2024-09-28', '17:00:00', 0),
(67, 113, '2024-09-30', '17:00:00', 0),
(68, 113, '2024-10-01', '17:00:00', 0),
(69, 113, '2024-10-04', '16:30:00', 0),
(70, 113, '2024-10-04', '16:50:00', 0),
(71, 113, '2024-10-04', '17:10:00', 0),
(72, 113, '2024-10-04', '17:30:00', 0),
(73, 113, '2024-10-04', '17:50:00', 0),
(74, 113, '2024-10-04', '18:10:00', 0),
(75, 113, '2024-10-04', '18:30:00', 0),
(76, 113, '2024-10-04', '18:50:00', 0),
(77, 113, '2024-10-04', '19:10:00', 0),
(78, 112, '2024-10-04', '10:30:00', 0),
(79, 112, '2024-10-04', '11:00:00', 0),
(80, 112, '2024-10-04', '11:30:00', 0),
(81, 112, '2024-10-04', '00:00:00', 0),
(82, 112, '2024-10-04', '00:30:00', 0),
(83, 112, '2024-10-04', '01:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `laboratory_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `age` int(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `doctor_id` int(255) NOT NULL,
  `hematocrit` varchar(255) NOT NULL,
  `hemoglobin` varchar(255) NOT NULL,
  `red_blood` varchar(255) NOT NULL,
  `white_blood` varchar(255) NOT NULL,
  `neutrophils` varchar(255) NOT NULL,
  `lymphocytes` varchar(255) NOT NULL,
  `eosinophils` varchar(255) NOT NULL,
  `monocytes` varchar(255) NOT NULL,
  `platelet` varchar(255) NOT NULL,
  `blood_type` varchar(255) NOT NULL,
  `esr` varchar(255) DEFAULT NULL,
  `bleeding` varchar(255) DEFAULT NULL,
  `clot` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date_test` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory`
--

INSERT INTO `laboratory` (`laboratory_id`, `patient_id`, `age`, `gender`, `address`, `test_name`, `doctor_id`, `hematocrit`, `hemoglobin`, `red_blood`, `white_blood`, `neutrophils`, `lymphocytes`, `eosinophils`, `monocytes`, `platelet`, `blood_type`, `esr`, `bleeding`, `clot`, `comment`, `image`, `date_test`) VALUES
(1, 100, 21, 'Male', 'Cavite', 'Hematology', 112, '49', '18', '5.3', '9.2', '84', '16', '2', '4', '300', 'O', '', '', '', 'Hello', 'no-image-available.png', '2024-04-16 10:40:42.000000'),
(4, 110, 14, 'Male', 'Golden', 'Hematology', 112, '38', '17', '6', '10', '55', '25', '4', '3', '300', 'A+', '', '', '', '', 'no-image-available.png', '2024-04-23 19:49:10.000000'),
(3, 103, 22, 'Female', 'Hogwarts London', 'Hematology', 113, '35', '5', '4', '5', '56', '14', '2', '2', '155', 'A+', '', '', '', 'Malala kana', 'no-image-available.png', '2024-04-16 11:01:05.000000'),
(5, 103, 22, 'Female', 'Hogwarts', 'Hematology', 113, '39', '12', '3', '2', '45', '15', '2', '2', '237', 'O', '', '', '', '', '434741960_428902299783754_7929036649950024870_n.jpg', '2024-04-23 22:03:05.000000');

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_uri`
--

CREATE TABLE `laboratory_uri` (
  `lab_id` int(255) NOT NULL,
  `patient_id` int(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `doctor_id` int(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `reaction` varchar(255) NOT NULL,
  `transparency` varchar(255) NOT NULL,
  `gravity` varchar(255) NOT NULL,
  `albumin` varchar(255) NOT NULL,
  `sugar` varchar(255) NOT NULL,
  `pus` varchar(255) NOT NULL,
  `rbc` varchar(255) NOT NULL,
  `epi` varchar(255) NOT NULL,
  `mucus` varchar(255) NOT NULL,
  `amor` varchar(255) NOT NULL,
  `bacteria` varchar(255) NOT NULL,
  `preg_test` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_test` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory_uri`
--

INSERT INTO `laboratory_uri` (`lab_id`, `patient_id`, `age`, `sex`, `address`, `test_name`, `doctor_id`, `color`, `reaction`, `transparency`, `gravity`, `albumin`, `sugar`, `pus`, `rbc`, `epi`, `mucus`, `amor`, `bacteria`, `preg_test`, `others`, `image`, `date_test`) VALUES
(1, 102, '25', 'Female', 'Bicol', 'Urinalysis', 113, 'Yellow', '6.0', 's.turbid', '1.030', 'negative', 'negative', '4-6 /hpf', '0-1 /hpf', 'nil', 'few', 'few', 'few', '', '', '', '2024-04-23 13:37:21.000000'),
(2, 110, '14', 'Male', 'Golden', 'Urinalysis', 112, 'Yellow', '5.0', 's.turbid', '1.050', 'negative', 'positive', '5-8 /hpf', '0-1 /hpf', 'nil', 'few', 'few', 'few', '', '', 'no-image-available.png', '2024-04-23 14:05:34.000000'),
(3, 98, '25', 'Male', 'Bacoor', 'Urinalysis', 112, 'Yellow', '6.0', 's.turbid', '1.050', 'negative', 'negative', '5-8 /hpf', '0-1 /hpf', 'nil', 'few', 'few', 'few', '', '', '', '2024-04-23 14:17:15.000000'),
(5, 99, '22', 'Male', 'Cavite', 'Urinalysis', 112, 'Yellow', '5.0', 's.turbid', '1.055', 'negative', 'negative', '5-10 /hpf', '0-1 /hpf', 'nil', 'few', 'few', 'few', '', '', '435683704_899106155233170_7583491082008572709_n.jpg', '2024-04-23 22:05:30.000000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(255) DEFAULT NULL,
  `civil` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_added` datetime NOT NULL,
  `userpassword` varchar(100) NOT NULL,
  `userconfirmpassword` varchar(100) NOT NULL,
  `approval` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `middlename`, `lastname`, `contact`, `email`, `gender`, `age`, `civil`, `position`, `address`, `occupation`, `type`, `status`, `user_image`, `user_added`, `userpassword`, `userconfirmpassword`, `approval`) VALUES
(98, 'Rances', '', 'Terry', '09672341567', 'rifenib661@gmail.com', 'Male', 25, 'Single', NULL, 'San simon', NULL, 'Patient', 'Active', 'bg.png', '2024-04-09 15:02:11', '22d7fe8c185003c98f97e5d6ced420c7', '22d7fe8c185003c98f97e5d6ced420c7', 'Accept'),
(99, 'Yharry', '', 'Potter', '09245623098', 'yibedaf320@gmail.com', 'Male', 22, 'Married', NULL, 'Cavite', NULL, 'Patient', 'Active', 'o.jpg', '2024-04-09 23:50:51', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(100, 'V Ace', '', 'Adam', '09679080745', 'ace@gmail.com', 'Male', 21, 'Single', NULL, 'Cavite', NULL, 'Patient', 'Active', 'couple.jpg', '2024-04-10 00:09:05', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(102, 'Santi', '', 'Sucre', '09234321432', 'voltes@gmail.com', 'Female', 22, 'Married', NULL, 'san simon', NULL, 'Patient', 'Active', '', '2024-04-10 00:11:51', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(103, 'Shirley', '', 'Potter', '09245678654', 'shirley@gmail.com', 'Female', 22, 'Married', NULL, 'Salawag', NULL, 'Patient', 'Active', '', '2024-04-10 21:55:08', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(110, 'miel', '', 'majorie', '09543678976', 'mler@gmail.com', 'Male', 14, 'Single', NULL, 'Golden', 'prof', 'Patient', 'Active', 'bakugou.jpg', '2024-04-14 15:59:50', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(112, 'Ruel', '', 'Modina', '09245678765', 'ruel@gmail.com', 'Male', NULL, 'Single', 'M.D', 'Dasmarinas Cavite', NULL, 'Doctor', 'Active', '', '2024-09-11 16:26:21', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(113, 'Mayroline', '', 'Pacaide', '09452342126', 'mayr@gmail.com', 'Female', NULL, 'Married', 'M.D', 'Dasmarinas Cavite', NULL, 'Doctor', 'Active', '', '2024-09-11 16:28:46', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(114, 'Den Mark', '', 'Cuenca', '09065157024', 'cuencadenmark1@gmail.com', 'Male', NULL, 'Single', NULL, 'San Agustin II', NULL, 'Patient', 'Active', '', '2024-09-11 16:34:28', '8481ee3e1512a15f94ec61a4c98fc70e', '8481ee3e1512a15f94ec61a4c98fc70e', 'Accept'),
(115, 'Maria Kate', '', 'Abenir', '09653809388', 'abenir@gmail.com', 'Female', NULL, 'Single', NULL, 'St. Lucia', NULL, 'Patient', 'Active', NULL, '2024-09-11 16:53:42', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(116, 'Francis', '', 'Adriano', '09452543629', 'francis@gmail.com', 'Male', NULL, 'Single', NULL, 'Salawag', NULL, 'Patient', 'Active', NULL, '2024-09-11 17:00:59', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(117, 'John Cole', '', 'Aldea', '09353848475', 'jayce@gmail.com', 'Male', NULL, 'Single', NULL, 'Salawag', NULL, 'Patient', 'Active', NULL, '2024-09-11 17:03:03', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(118, 'Naethan', '', 'Alsola', '09679080745', 'naet@gmail.com', '0', NULL, '0', NULL, 'San Juan II', NULL, 'Patient', 'Active', NULL, '2024-09-11 17:05:39', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(119, 'Jose Rafael', '', 'Alumno', '09679080745', 'jose@gmail.com', 'Male', NULL, 'Single', NULL, 'Reyes', NULL, 'Patient', 'Active', NULL, '2024-09-11 17:07:32', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(120, 'Hans Gabriel', '', 'Apdujan', '09679080745', 'hans@gmail.com', 'Male', NULL, 'Single', NULL, 'San simon', NULL, 'Patient', 'Active', '', '2024-09-11 17:09:38', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(121, 'Mark Daniel', '', 'Belarmina', '09679080745', 'mark@gmail.com', 'Male', NULL, 'Single', NULL, 'Salitran III', NULL, 'Patient', 'Active', NULL, '2024-09-11 17:12:49', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(122, 'Cherry Lyn', '', 'Buenaflor', '09679080745', 'cherry@gmail.com', 'Female', NULL, 'Married', NULL, 'Salitran IV', NULL, 'Patient', 'Active', NULL, '2024-09-11 17:17:07', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(123, 'Ville Joe', '', 'Catig', '09679080745', 'vj@gmail.com', 'Male', NULL, 'Single', NULL, 'Paliparan III', NULL, 'Patient', 'Active', NULL, '2024-09-11 17:59:11', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(124, 'Kristine', '', 'Constantino', '09679080745', 'kristine@gmail.com', 'Female', NULL, 'Single', NULL, 'Sto. Cristo', NULL, 'Patient', 'Active', NULL, '2024-09-11 18:01:19', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(125, 'Errol John', '', 'Dacer', '09679080745', 'dacer@gmail.com', 'Male', NULL, 'Single', NULL, 'Sampalok IV', NULL, 'Patient', 'Active', NULL, '2024-09-11 18:03:00', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(126, 'Racquel ', '', 'Dy', '09679080745', 'dy@gmail.com', 'Female', NULL, 'Single', NULL, 'Reyes', NULL, 'Patient', 'Active', NULL, '2024-09-11 18:04:54', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(127, 'Earl Joshua', '', 'Espiritu', '09679080745', 'earl@gmail.com', 'Male', NULL, 'Single', NULL, 'Burol III', NULL, 'Patient', 'Active', NULL, '2024-09-11 20:57:19', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(128, 'Miguel Jay', '', 'Faustino', '09679080745', 'migs@gmail.com', 'Male', NULL, 'Single', NULL, 'San Jose', NULL, 'Patient', 'Active', NULL, '2024-09-11 20:59:31', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(129, 'Daisy', '', 'Guay', '09679080745', 'daisy@gmail.com', 'Female', NULL, 'Single', NULL, 'Fatima I', NULL, 'Patient', 'Active', NULL, '2024-09-11 21:01:08', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(130, 'Ara Villa', '', 'Martin', '09679080745', 'ara@gmail.com', 'Female', NULL, 'Single', NULL, 'Burol II', NULL, 'Patient', 'Active', NULL, '2024-09-11 21:02:50', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(131, 'Phoebe Rose', '', 'Montes', '09679080745', 'phoebe@gmail.com', 'Female', NULL, 'Single', NULL, 'Fatima I', NULL, 'Patient', 'Active', '', '2024-09-11 21:04:39', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(132, 'Job Dominic', '', 'Paragas', '09679080745', 'job@gmail.com', 'Male', NULL, 'Single', NULL, 'Langkaan II', NULL, 'Patient', 'Active', NULL, '2024-09-11 21:08:52', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(133, 'Jerro', '', 'Pangilinan', '09679080745', 'jerro@gmail.com', 'Male', NULL, 'Single', NULL, 'Dasmarinas Cavite', NULL, 'Patient', 'Active', NULL, '2024-09-11 21:11:05', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(134, 'Lester Mark', '', 'Pornel', '09679080745', 'lester@gmail.com', 'Male', NULL, 'Single', NULL, 'Zone I', NULL, 'Patient', 'Active', NULL, '2024-09-11 21:12:51', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(135, 'Rachele Nazarene', '', 'Romero', '09679080745', 'rachele@gmail.com', 'Female', NULL, 'Single', NULL, 'Paliparan III', NULL, 'Patient', 'Active', NULL, '2024-09-11 21:15:34', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(136, 'Mae Ann', '', 'Sorio', '09679080745', 'mae@gmail.com', 'Female', NULL, 'Single', NULL, 'San Luis', NULL, 'Patient', 'Active', NULL, '2024-09-11 21:16:56', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(137, 'Treena Kaye', '', 'Villapaz', '09679080745', 'kaye@gmail.com', 'Female', NULL, 'Single', NULL, 'Burol III', NULL, 'Patient', 'Active', NULL, '2024-09-11 21:18:46', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `date_log` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `user_id`, `user_name`, `date_log`) VALUES
(315, 97, 'try1  cobinban', '2023-12-10 17:46:45'),
(316, 98, 'France  Terry', '2024-04-09 15:22:34'),
(317, 98, 'France  Terry', '2024-04-09 15:23:12'),
(318, 98, 'France  Terry', '2024-04-09 15:24:36'),
(319, 98, 'France  Terry', '2024-04-09 18:50:21'),
(320, 98, 'France  Terry', '2024-04-09 20:26:37'),
(321, 98, 'Francee  Terry', '2024-04-09 20:49:09'),
(322, 98, 'Francee  Terry', '2024-04-09 22:13:13'),
(323, 98, 'Francee  Terry', '2024-04-09 22:26:18'),
(324, 98, 'Francee  Terry', '2024-04-09 22:29:33'),
(325, 98, 'Francee  Terry', '2024-04-09 22:31:55'),
(326, 98, 'Francee  Terry', '2024-04-09 22:40:34'),
(327, 98, 'Francee  Terry', '2024-04-09 22:47:57'),
(328, 98, 'Francee  Terry', '2024-04-09 22:54:54'),
(329, 98, 'Francee  Terry', '2024-04-09 23:03:05'),
(330, 99, 'Harry  Potter', '2024-04-09 23:51:34'),
(331, 98, 'Franceese  Terry', '2024-04-10 23:36:03'),
(332, 98, 'Franceese  Terry', '2024-04-10 23:37:16'),
(333, 98, 'Franceese  Terry', '2024-04-10 23:39:50'),
(334, 98, 'Franceese  Terry', '2024-04-10 23:40:26'),
(335, 98, 'Franceese  Terry', '2024-04-10 23:41:12'),
(336, 98, 'Franceese  Terry', '2024-04-10 23:43:29'),
(337, 98, 'Franceese  Terry', '2024-04-10 23:43:57'),
(338, 98, 'Franceese  Terry', '2024-04-10 23:46:34'),
(339, 98, 'Franceese  Terry', '2024-04-10 23:46:57'),
(340, 98, 'Franceese  Terry', '2024-04-10 23:47:29'),
(341, 98, 'Franceese  Terry', '2024-04-10 23:49:16'),
(342, 98, 'Franceese  Terry', '2024-04-10 23:49:37'),
(343, 98, 'Franceese  Terry', '2024-04-10 23:50:33'),
(344, 98, 'Franceese  Terry', '2024-04-10 23:51:00'),
(345, 98, 'Franceese  Terry', '2024-04-10 23:51:31'),
(346, 98, 'Franceese  Terry', '2024-04-10 23:54:29'),
(347, 98, 'Franceese  Terry', '2024-04-10 23:54:51'),
(348, 98, 'Franceese  Terry', '2024-04-10 23:56:06'),
(349, 98, 'Franceese  Terry', '2024-04-10 23:58:21'),
(350, 98, 'Franceese  Terry', '2024-04-10 23:58:49'),
(351, 100, 'Ace  Adaw', '2024-04-11 00:01:08'),
(352, 100, 'Ace  Adaw', '2024-04-11 00:01:33'),
(353, 100, 'Ace  Adaw', '2024-04-11 00:02:05'),
(354, 100, 'Ace  Adaw', '2024-04-11 00:02:32'),
(355, 100, 'Ace  Adaw', '2024-04-11 00:03:12'),
(356, 100, 'Ace  Adaw', '2024-04-11 00:03:34'),
(357, 100, 'Ace  Adaw', '2024-04-11 00:04:50'),
(358, 100, 'Ace  Adaw', '2024-04-11 00:05:11'),
(359, 100, 'Ace  Adaw', '2024-04-11 00:06:10'),
(360, 100, 'Ace  Adaw', '2024-04-11 00:09:03'),
(361, 100, 'Ace  Adaw', '2024-04-11 00:10:04'),
(362, 100, 'Ace  Adaw', '2024-04-11 00:13:32'),
(363, 100, 'Ace  Adaw', '2024-04-11 00:14:01'),
(364, 100, 'Ace  Adaw', '2024-04-11 00:15:18'),
(365, 100, 'Ace  Adaw', '2024-04-11 00:16:02'),
(366, 100, 'Ace  Adaw', '2024-04-11 00:19:06'),
(367, 100, 'Ace  Adaw', '2024-04-11 00:20:14'),
(368, 100, 'Ace  Adaw', '2024-04-11 00:21:07'),
(369, 100, 'Ace  Adaw', '2024-04-11 00:21:53'),
(370, 100, 'Ace  Adaw', '2024-04-11 00:22:13'),
(371, 100, 'Ace  Adaw', '2024-04-11 00:22:57'),
(372, 100, 'Ace  Adaw', '2024-04-11 00:28:20'),
(373, 100, 'Ace  Adaw', '2024-04-11 00:28:59'),
(374, 100, 'Ace  Adaw', '2024-04-11 00:29:47'),
(375, 110, 'mielow hello majoha', '2024-04-23 14:25:17'),
(376, 110, 'mielow hello majoha', '2024-04-23 14:29:18'),
(377, 110, 'mielow hello majoha', '2024-04-23 14:29:44'),
(378, 110, 'mielow hello majoha', '2024-04-23 14:47:44'),
(379, 110, 'mielow hello majoha', '2024-04-23 19:29:22'),
(380, 110, 'mielow hello majoha', '2024-04-23 19:56:20'),
(381, 110, 'mieloww hello majoha', '2024-04-23 20:55:15'),
(382, 110, 'mieloww hello majoha', '2024-04-23 21:01:46'),
(383, 110, 'mieloww hello majoha', '2024-04-23 21:16:58'),
(384, 110, 'mieloww hello majoha', '2024-04-23 21:20:26'),
(385, 110, 'mieloww hello majoha', '2024-04-23 21:25:16'),
(386, 110, 'mieloww hello majoha', '2024-04-24 07:59:11'),
(387, 110, 'mieloww hello majoha', '2024-04-24 08:13:00'),
(388, 110, 'mieloww hello majoha', '2024-04-24 08:29:09'),
(389, 110, 'mieloww hello majoha', '2024-04-24 08:29:35'),
(390, 110, 'mieloww hello majoha', '2024-05-04 23:34:07'),
(391, 110, 'mieloww hello majoha', '2024-05-05 01:03:58'),
(392, 103, 'Ginny  Potter', '2024-05-05 02:11:06'),
(393, 103, 'Ginny  Potter', '2024-05-05 03:09:17'),
(394, 110, 'mieloww hello majoha', '2024-05-05 04:09:41'),
(395, 110, 'mieloww hello majoha', '2024-05-05 09:42:21'),
(396, 102, 'Santi  Sucre', '2024-05-05 10:14:23'),
(397, 110, 'mieloww hello majoha', '2024-05-05 16:58:17'),
(398, 102, 'Santi  Sucre', '2024-05-05 17:08:56'),
(399, 100, 'Acersss  Adaw', '2024-05-05 17:30:06'),
(400, 110, 'mieloww hello majoha', '2024-05-05 18:20:13'),
(401, 100, 'Acersss  Adaw', '2024-05-05 18:20:31'),
(402, 110, 'mieloww hello majoha', '2024-05-05 18:21:19'),
(403, 100, 'Acersss  Adaw', '2024-05-05 18:37:57'),
(404, 110, 'mieloww hello majoha', '2024-05-05 19:54:50'),
(405, 99, 'Harry  Potter', '2024-05-05 19:56:04'),
(406, 110, 'mieloww hello majoha', '2024-05-05 19:58:38'),
(407, 110, 'mieloww hello majoha', '2024-05-05 20:42:53'),
(408, 110, 'mieloww hello majoha', '2024-05-06 15:22:01'),
(409, 110, 'mieloww hello majoha', '2024-05-06 19:45:05'),
(410, 110, 'mieloww hello majoha', '2024-05-06 19:47:23'),
(411, 110, 'mieloww hello majoha', '2024-05-06 19:52:35'),
(412, 110, 'mieloww hello majoha', '2024-05-06 19:53:37'),
(413, 100, 'Acersss  Adaw', '2024-05-06 19:54:03'),
(414, 110, 'mieloww hello majoha', '2024-05-06 19:55:10'),
(415, 110, 'mieloww hello majoha', '2024-05-06 19:58:36'),
(416, 110, 'mieloww hello majoha', '2024-05-06 19:58:59'),
(417, 110, 'mieloww hello majoha', '2024-05-06 20:00:48'),
(418, 100, 'Acersss  Adaw', '2024-05-06 20:01:04'),
(419, 114, 'Den Mark  Cuenca', '2024-09-11 22:10:58'),
(420, 114, 'Den Mark  Cuenca', '2024-09-11 23:15:14'),
(421, 115, 'Maria Kate  Abenir', '2024-09-12 18:10:36'),
(422, 115, 'Maria Kate  Abenir', '2024-09-12 18:35:18'),
(423, 116, 'Francis  Adriano', '2024-09-12 18:43:00'),
(424, 116, 'Francis  Adriano', '2024-09-12 19:01:40'),
(425, 115, 'Maria Kate  Abenir', '2024-09-13 09:21:28'),
(426, 115, 'Maria Kate  Abenir', '2024-09-13 09:25:51'),
(427, 116, 'Francis  Adriano', '2024-09-13 09:28:30'),
(428, 115, 'Maria Kate  Abenir', '2024-09-24 20:14:12'),
(429, 115, 'Maria Kate  Abenir', '2024-09-24 20:24:28'),
(430, 115, 'Maria Kate  Abenir', '2024-09-25 00:00:44'),
(431, 115, 'Maria Kate  Abenir', '2024-10-03 22:20:58'),
(432, 115, 'Maria Kate  Abenir', '2024-10-04 08:29:08'),
(433, 115, 'Maria Kate  Abenir', '2024-10-14 16:34:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `fk_patient_id` (`patient_id`),
  ADD KEY `fk_doctor_id` (`doctor_id`);

--
-- Indexes for table `doctor_log`
--
ALTER TABLE `doctor_log`
  ADD PRIMARY KEY (`doctor_log_id`);

--
-- Indexes for table `doctor_schedules`
--
ALTER TABLE `doctor_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`laboratory_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `laboratory_uri`
--
ALTER TABLE `laboratory_uri`
  ADD PRIMARY KEY (`lab_id`),
  ADD KEY `FK_patient_id` (`patient_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `doctor_log`
--
ALTER TABLE `doctor_log`
  MODIFY `doctor_log_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `doctor_schedules`
--
ALTER TABLE `doctor_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `laboratory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laboratory_uri`
--
ALTER TABLE `laboratory_uri`
  MODIFY `lab_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
