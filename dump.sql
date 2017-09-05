-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 05, 2017 at 12:47 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `chatPhp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `idmessages` int(11) NOT NULL,
  `content` varchar(1063) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `users_idusers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`idmessages`, `content`, `date`, `users_idusers`) VALUES
(191, 'much to say', '2017-09-05 12:40:20', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `email` varchar(511) NOT NULL,
  `password` varchar(511) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `nom`, `email`, `password`) VALUES
(3, 'david', 'david@becode.org', '$2y$10$Rbdm2WRus.ZOgJgkYhT.MOvzyj6CJ.UkOnxTWBiepeM0j.3G9Itl2'),
(4, 'roger', 'roger@becode.org', '$2y$10$.WaG.pkM8d7F8zkp2IMtQeLGVItul8vm6YYRYEg5flKOclWcSGpvO'),
(5, 'pierre', 'pierre@becode.org', '$2y$10$mmMRxQWlOP2q1eJq88991OYydigHRq9MKWb8BzcoaTu8q5YSunXBi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`idmessages`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `idmessages` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;