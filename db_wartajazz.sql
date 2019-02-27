-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 27, 2019 at 10:35 AM
-- Server version: 5.7.23
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_wartajazz`
--

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE `Artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(100) NOT NULL,
  `country_of_origin` varchar(100) NOT NULL,
  `artist_detail` varchar(1024) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_modify` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE `Events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `date_start` varchar(25) NOT NULL,
  `date_end` varchar(25) DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`event_id`, `event_name`, `location`, `date_start`, `date_end`, `date_create`, `user_id`) VALUES
(3, 'Ijen Summer Jazz Banyuwangi', NULL, '22 September 2018', NULL, '2019-02-18 10:02:52', NULL),
(4, 'Senggigi Sunset Jazz', NULL, '22 September 2018', NULL, '2019-02-18 10:02:52', NULL),
(5, 'Solo City Jazz', NULL, '28 dan 29 September 2018', NULL, '2019-02-18 10:02:52', NULL),
(6, 'Jazz Pinggir Kali', NULL, '5-7 Oktober 2018', NULL, '2019-02-18 10:02:52', NULL),
(7, 'TP Jazz Bandung', NULL, 'Oktober 2018', NULL, '2019-02-18 10:02:52', NULL),
(8, 'Malang Jazz Festival', NULL, '7 Oktober 2018', NULL, '2019-02-18 10:02:53', NULL),
(9, 'Pontianak Equatorial Jazz Fiesta (Khatulistiwa Jazz)', NULL, '21-23 Oktober 2018', NULL, '2019-02-18 10:02:53', NULL),
(10, 'Maumere Jazz Fiesta', NULL, '27-28 Oktober 2018', NULL, '2019-02-18 10:02:53', NULL),
(11, 'North Sumatra Jazz Festival. Medan', NULL, '24 Oktober 2018', NULL, '2019-02-18 10:02:53', NULL),
(12, 'Samosir Jazz Festival', NULL, '27 Oktober 2018', NULL, '2019-02-18 10:02:53', NULL),
(13, 'Ngayogjazz', NULL, '17 November 2018', NULL, '2019-02-18 10:02:53', NULL),
(14, 'Reyog Jazz Ponorogo', NULL, '18 November 2018', NULL, '2019-02-18 10:02:53', NULL),
(15, 'Jazz Goes to Campus', NULL, '25 November 2018', NULL, '2019-02-18 10:02:53', NULL),
(16, 'Rajazz Ampat Papua', NULL, '14-17 Desember 2018', NULL, '2019-02-18 10:02:53', NULL),
(17, 'Medan Master Jazz', NULL, '19 April 2018', NULL, '2019-02-18 10:02:53', NULL),
(18, 'International Jazz Day', NULL, '27 April 2019', NULL, '2019-02-18 10:02:53', NULL),
(19, 'Batam Jazz Rendezvous', NULL, '28, 29, 30 April', NULL, '2019-02-18 10:02:53', NULL),
(20, 'Kampoeng Jazz', NULL, '28 April 2018', NULL, '2019-02-18 10:02:53', NULL),
(21, 'Mahakam Jazz Fiesta', NULL, 'Juli 2018', NULL, '2019-02-18 10:02:54', NULL),
(22, 'Maratua Jazz & Dive Fiesta', NULL, '27-28 Juli 2018', NULL, '2019-02-18 10:02:54', NULL),
(23, 'Jazz Gunung Bromo', NULL, '27 - 29 Juli 2018', NULL, '2019-02-18 10:02:54', NULL),
(24, 'Jazz Atas Awan', NULL, '3 Agustus 2018', NULL, '2019-02-18 10:02:54', NULL),
(25, 'WartaJazz 18th Anniversary', NULL, '8 Agustus 2018', NULL, '2019-02-18 10:02:54', NULL),
(26, 'Ubud Village Jazz Festival', NULL, '10 sd 11 Agustus 2018', NULL, '2019-02-18 10:02:54', NULL),
(27, 'Indonesian World/Jazz Meeting', NULL, '13-15 November 2019', NULL, '2019-02-18 10:02:54', NULL),
(28, 'Loenpia Jazz Semarang', NULL, '12 Mei 2019', NULL, '2019-02-18 10:02:54', NULL),
(29, 'Ramadhan Jazz Festival', NULL, '25-26 Mei 2019', NULL, '2019-02-18 10:02:54', NULL),
(30, 'Jazz Kampoeng Djawi', NULL, '6,7 juli 2018', NULL, '2019-02-18 10:02:54', NULL),
(31, 'Batam Community, Jazz & Art Festival', NULL, 'Agustus 2018', NULL, '2019-02-18 10:02:54', NULL),
(32, 'Jazz Market by the Sea', NULL, 'Agustus 2018', NULL, '2019-02-18 10:02:54', NULL),
(33, 'Prambanan Jazz', NULL, '17 - 19 Agustus 2018', NULL, '2019-02-18 10:02:54', NULL),
(34, 'Jazz Traffic', NULL, '25 dan 26 Agustus 2018', NULL, '2019-02-18 10:02:54', NULL),
(35, 'Kota Baru Parahyangan', NULL, 'Locafore', NULL, '2019-02-18 10:02:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `role_id` varchar(5) NOT NULL,
  `role_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`role_id`, `role_name`) VALUES
('0', 'Super User'),
('1', 'Admin'),
('2', 'Mobile User');

-- --------------------------------------------------------

--
-- Table structure for table `Schedule`
--

CREATE TABLE `Schedule` (
  `event_id` int(11) NOT NULL,
  `show_time` datetime NOT NULL,
  `artist_id` int(11) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_modify` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `role_id`) VALUES
(1, 'bibiehadi', 'bibiehadikusuma@stiki.ac.id', '07fc46c2e7f8449474e7aa8dfbecb30b', '0'),
(2, 'bibie', 'bibie.hadi@gmail.com', '$2y$10$NQWVakWINHtmDMwYA.QvcO/CDjrNlklv7OoqFIgmAbUvP4pW3C1p2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `User_bio`
--

CREATE TABLE `User_bio` (
  `username` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `join_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User_bio`
--

INSERT INTO `User_bio` (`username`, `first_name`, `last_name`, `phone_number`, `address`, `join_date`) VALUES
('bibie', 'Bibie', 'Hadi', '6282257746611', '213131', '2018-12-08 05:39:46'),
('bibiehadi', 'Bibie Hadi', 'Kusuma', '6282257746611', 'Malang\r\n', '2018-12-05 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Artist`
--
ALTER TABLE `Artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `Schedule`
--
ALTER TABLE `Schedule`
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`,`username`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `User_bio`
--
ALTER TABLE `User_bio`
  ADD UNIQUE KEY `username1` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Artist`
--
ALTER TABLE `Artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Events`
--
ALTER TABLE `Events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Events`
--
ALTER TABLE `Events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `Schedule`
--
ALTER TABLE `Schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `Event` (`event_id`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  ADD CONSTRAINT `schedule_ibfk_3` FOREIGN KEY (`artist_id`) REFERENCES `Artist` (`artist_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `Role` (`role_id`);
