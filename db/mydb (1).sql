-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2016 at 04:58 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `user_id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`user_id`, `email`, `password`) VALUES
(1, 'another@gmail.com', '123456'),
(2, 'test@gmail.com', '123456'),
(26, 'test@gmail.com', '123456'),
(27, 'test@gmail.com', '123456'),
(28, 'test@gmail.com', '123456'),
(29, 'test@gmail.com', '123456'),
(30, 'test@gmail.com', '123456'),
(31, 'test@gmail.com', '123456'),
(32, 'test@gmail.com', '123456'),
(33, 'test@gmail.com', '123456'),
(34, 'test@gmail.com', '123456'),
(35, 'test@gmail.com', '123456'),
(36, 'test@gmail.com', '123456'),
(37, 'test@gmail.com', '123456'),
(38, 'test@gmail.com', '123456'),
(39, 'test@gmail.com', '123456'),
(40, 'test@gmail.com', '123456'),
(41, 'test@gmail.com', '123456'),
(42, 'test@gmail.com', '123456'),
(43, 'test@gmail.com', '123456'),
(44, 'test@gmail.com', '123456'),
(45, 'test@gmail.com', '123456'),
(46, 'test@gmail.com', '123456'),
(47, 'test@gmail.com', '123456'),
(48, 'test@gmail.com', '123456'),
(49, 'test@gmail.com', '123456'),
(50, 'test@gmail.com', '123456'),
(51, 'test@gmail.com', '123456'),
(52, 'test@gmail.com', '123456'),
(53, 'test@gmail.com', '123456'),
(54, 'test@gmail.com', '123456'),
(55, 'test@gmail.com', '123456'),
(56, 'test@gmail.com', '123456'),
(57, 'test@gmail.com', '123456'),
(58, 'test@gmail.com', '123456'),
(59, 'test@gmail.com', '123456'),
(60, 'test@gmail.com', '123456'),
(61, 'test@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `opponent` int(11) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `home_score` int(11) DEFAULT NULL,
  `opponent_score` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `game_roster`
--

CREATE TABLE `game_roster` (
  `id` int(11) NOT NULL,
  `game_ID` int(11) NOT NULL,
  `player_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opponents`
--

CREATE TABLE `opponents` (
  `opponent_id` int(11) NOT NULL,
  `opponent_name` varchar(45) DEFAULT NULL,
  `opponent_mascot` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opponents`
--

INSERT INTO `opponents` (`opponent_id`, `opponent_name`, `opponent_mascot`) VALUES
(1, 'CSULB', 'Prospector Pete'),
(5, 'Chapman University', 'Panther');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `jersey_number` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `first_name`, `last_name`, `jersey_number`, `class`) VALUES
(1, 'Mario', 'Pena', '15', 'Freshman');

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `idSeason` int(11) NOT NULL,
  `season_name` varchar(45) DEFAULT NULL,
  `season_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`idSeason`, `season_name`, `season_year`) VALUES
(1, 'Fall', 2016),
(2, 'SPRING', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `StatsID` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `GameID` int(11) NOT NULL,
  `points` int(11) DEFAULT NULL,
  `rebounds` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `blocks` varchar(45) DEFAULT NULL,
  `SeasonID` int(11) NOT NULL,
  `Statscol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `season_fk_idx` (`season_id`),
  ADD KEY `oppoent_fk_idx` (`opponent`);

--
-- Indexes for table `game_roster`
--
ALTER TABLE `game_roster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_fk_idx` (`player_ID`),
  ADD KEY `game_fk_idx` (`game_ID`);

--
-- Indexes for table `opponents`
--
ALTER TABLE `opponents`
  ADD PRIMARY KEY (`opponent_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`idSeason`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`StatsID`),
  ADD KEY `player_fk_idx` (`PlayerID`),
  ADD KEY `game_fk_idx` (`GameID`),
  ADD KEY `season_fk_idx` (`SeasonID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `opponents`
--
ALTER TABLE `opponents`
  MODIFY `opponent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `idSeason` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `StatsID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `oppoent_fk` FOREIGN KEY (`opponent`) REFERENCES `opponents` (`opponent_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `season_fk` FOREIGN KEY (`season_id`) REFERENCES `season` (`idSeason`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `game_roster`
--
ALTER TABLE `game_roster`
  ADD CONSTRAINT `game_r_fk` FOREIGN KEY (`game_ID`) REFERENCES `game` (`game_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `player_r_fk` FOREIGN KEY (`player_ID`) REFERENCES `player` (`player_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `stats`
--
ALTER TABLE `stats`
  ADD CONSTRAINT `game_fk` FOREIGN KEY (`GameID`) REFERENCES `game` (`game_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `player_fk` FOREIGN KEY (`PlayerID`) REFERENCES `player` (`player_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `season_s_fk` FOREIGN KEY (`SeasonID`) REFERENCES `season` (`idSeason`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
