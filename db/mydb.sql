-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2016 at 10:14 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

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

DROP TABLE IF EXISTS `administrators`;
CREATE TABLE IF NOT EXISTS `administrators` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `opponent` int(11) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `home_score` int(11) DEFAULT NULL,
  `opponent_score` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`game_id`),
  KEY `season_fk_idx` (`season_id`),
  KEY `oppoent_fk_idx` (`opponent`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `opponent`, `result`, `home_score`, `opponent_score`, `season_id`, `date`) VALUES
(1, 1, 'W', 110, 100, 1, '1970-01-01'),
(5, 1, 'L', 1, 2, 1, '2016-05-12'),
(7, 1, 'L', 2, 1, 1, '2016-05-10'),
(10, 5, 'D', 3, 3, 2, '2016-05-06');

-- --------------------------------------------------------

--
-- Stand-in structure for view `gamecombined`
--
DROP VIEW IF EXISTS `gamecombined`;
CREATE TABLE IF NOT EXISTS `gamecombined` (
`id` int(11)
,`opponent_name` varchar(45)
,`result` varchar(45)
,`home_score` int(11)
,`opponent_score` int(11)
,`date` date
,`season_name` varchar(45)
,`season_year` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `game_roster`
--

DROP TABLE IF EXISTS `game_roster`;
CREATE TABLE IF NOT EXISTS `game_roster` (
  `id` int(11) NOT NULL,
  `game_ID` int(11) NOT NULL,
  `player_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player_fk_idx` (`player_ID`),
  KEY `game_fk_idx` (`game_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opponents`
--

DROP TABLE IF EXISTS `opponents`;
CREATE TABLE IF NOT EXISTS `opponents` (
  `opponent_id` int(11) NOT NULL AUTO_INCREMENT,
  `opponent_name` varchar(45) DEFAULT NULL,
  `opponent_mascot` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`opponent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `jersey_number` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `first_name`, `last_name`, `jersey_number`, `class`) VALUES
(1, 'Mario', 'Pena', '15', 'Freshman'),
(2, 'Skyler', 'Lister Aley', '13', 'Freshman'),
(3, 'Tuffy', 'Titan', '33', 'Junior'),
(4, 'John', 'Smith', '44', 'Freshman');

-- --------------------------------------------------------

--
-- Stand-in structure for view `playergames`
--
DROP VIEW IF EXISTS `playergames`;
CREATE TABLE IF NOT EXISTS `playergames` (
`ID` int(11)
,`first_name` varchar(45)
,`last_name` varchar(45)
,`date` date
,`points` int(11)
,`rebounds` int(11)
,`assists` int(11)
,`steals` int(11)
,`blocks` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
CREATE TABLE IF NOT EXISTS `season` (
  `idSeason` int(11) NOT NULL AUTO_INCREMENT,
  `season_name` varchar(45) DEFAULT NULL,
  `season_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSeason`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `stats`;
CREATE TABLE IF NOT EXISTS `stats` (
  `StatsID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL,
  `GameID` int(11) NOT NULL,
  `points` int(11) DEFAULT NULL,
  `rebounds` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `blocks` varchar(45) DEFAULT NULL,
  `SeasonID` int(11) NOT NULL,
  `Statscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`StatsID`),
  KEY `player_fk_idx` (`PlayerID`),
  KEY `game_fk_idx` (`GameID`),
  KEY `season_fk_idx` (`SeasonID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`StatsID`, `PlayerID`, `GameID`, `points`, `rebounds`, `assists`, `steals`, `blocks`, `SeasonID`, `Statscol`) VALUES
(1, 1, 1, 1, 1, 1, 1, '1', 1, NULL),
(2, 2, 7, 1, 1, 1, 1, '1', 1, NULL);

-- --------------------------------------------------------

--
-- Structure for view `gamecombined`
--
DROP TABLE IF EXISTS `gamecombined`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gamecombined`  AS  select `game`.`game_id` AS `id`,`opponents`.`opponent_name` AS `opponent_name`,`game`.`result` AS `result`,`game`.`home_score` AS `home_score`,`game`.`opponent_score` AS `opponent_score`,`game`.`date` AS `date`,`season`.`season_name` AS `season_name`,`season`.`season_year` AS `season_year` from ((`game` left join `opponents` on((`game`.`opponent` = `opponents`.`opponent_id`))) left join `season` on((`game`.`season_id` = `season`.`idSeason`))) ;

-- --------------------------------------------------------

--
-- Structure for view `playergames`
--
DROP TABLE IF EXISTS `playergames`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `playergames`  AS  select `stats`.`StatsID` AS `ID`,`player`.`first_name` AS `first_name`,`player`.`last_name` AS `last_name`,`game`.`date` AS `date`,`stats`.`points` AS `points`,`stats`.`rebounds` AS `rebounds`,`stats`.`assists` AS `assists`,`stats`.`steals` AS `steals`,`stats`.`blocks` AS `blocks` from ((`stats` left join `game` on((`stats`.`GameID` = `game`.`game_id`))) left join `player` on((`stats`.`PlayerID` = `player`.`player_id`))) ;

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
