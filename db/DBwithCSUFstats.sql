-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2016 at 10:26 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `opponent`, `result`, `home_score`, `opponent_score`, `season_id`, `date`) VALUES
(1, 16, 'W', 106, 66, 3, '2015-11-06'),
(12, 17, 'L', 74, 79, 3, '2015-11-13'),
(13, 18, 'W', 77, 76, 3, '2015-11-17'),
(14, 19, 'W', 67, 55, 3, '2015-11-21'),
(15, 20, 'W', 80, 66, 3, '2015-11-24'),
(16, 21, 'W', 75, 66, 3, '2015-11-28'),
(17, 22, 'W', 88, 56, 3, '2015-12-01'),
(18, 23, 'W', 70, 61, 3, '2015-12-04'),
(19, 24, 'L', 69, 87, 3, '2015-12-06'),
(20, 17, 'L', 70, 82, 3, '2015-12-12'),
(21, 25, 'L', 69, 82, 3, '2015-12-18'),
(22, 26, 'L', 60, 65, 3, '2015-12-19'),
(23, 27, 'L', 82, 89, 3, '2015-12-29'),
(24, 28, 'W', 75, 52, 3, '2016-01-02'),
(25, 29, 'W', 79, 73, 4, '2016-01-07'),
(26, 30, 'L', 75, 85, 4, '2016-01-09'),
(27, 31, 'L', 79, 86, 4, '2015-12-16'),
(28, 32, 'L', 59, 72, 4, '2016-01-20'),
(29, 33, 'L', 75, 83, 4, '2016-01-23'),
(30, 34, 'L', 64, 69, 4, '2016-01-27'),
(31, 29, 'L', 71, 81, 4, '2016-01-30'),
(32, 34, 'W', 61, 57, 4, '2016-02-04'),
(33, 35, 'L', 68, 81, 4, '2016-02-06'),
(34, 30, 'L', 67, 75, 4, '2016-02-10'),
(35, 31, 'L', 59, 76, 4, '2016-02-13'),
(36, 32, 'L', 77, 96, 4, '2016-02-17'),
(37, 36, 'L', 57, 70, 4, '2016-02-20'),
(38, 33, 'W', 78, 77, 4, '2016-02-25'),
(39, 35, 'L', 62, 80, 4, '2016-02-27'),
(40, 36, 'L', 73, 75, 4, '2016-03-02'),
(41, 31, 'L', 44, 75, 4, '2016-03-10');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opponents`
--

INSERT INTO `opponents` (`opponent_id`, `opponent_name`, `opponent_mascot`) VALUES
(16, 'Bethesda University', 'Flames'),
(17, 'Loyola Marymount', 'Iggy the Lion'),
(18, 'University of the Pacific', 'Powercat'),
(19, 'San Diego State University', 'Aztec Warrior'),
(20, 'Southern Utah University', 'Thunderbirds'),
(21, 'University of Nevada, Reno', 'Wolf Pack'),
(22, 'California State University, Dominguez Hills', 'Bull'),
(23, 'Seattle University', 'Rudy the Redhawk'),
(24, 'Washington University in St. Louis', 'Bear'),
(25, 'Oregon State University', 'Benny Beaver'),
(26, 'University of Portland', 'Wally Pilot'),
(27, 'Portland State University', 'Victor E. Viking'),
(28, 'California State University, East Bay', 'Pioneer'),
(29, 'University of California, Riverside', 'Scotty Highlander'),
(30, 'California State University, Northridge', 'Matty the Matador'),
(31, 'University of Hawaii', 'Rainbow Warriors'),
(32, 'University of California, Irvine', 'Peter the Anteater'),
(33, 'California Polytechnic State University', 'Musty the Mustang'),
(34, 'University of California, Davis', 'Gunrock the Mustang'),
(35, 'University of California, Santa Barbara', 'Olé'),
(36, 'California State University, Long Beach', 'Prospector Pete');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `first_name`, `last_name`, `jersey_number`, `class`) VALUES
(5, 'Kyle', 'Allman', '0', 'Freshman'),
(6, 'Tre''', 'Coggins', '1', 'Junior'),
(7, 'Lionheart', 'Leslie', '2', 'Junior'),
(8, 'Tim', 'Myles', '3', 'Junior'),
(9, 'Malcolm', 'Henderson', '5', 'Senior'),
(10, 'Malcolm', 'Brooks', '11', 'Senior'),
(11, 'Jamal', 'Smith', '12', 'Freshman'),
(12, 'Khalil', 'Ahmad', '14', 'Freshman'),
(13, 'Jamar', 'Akoh', '15', 'Sophomore'),
(14, 'Sheldon', 'Blackwell', '22', 'Junior'),
(15, 'Kennedy', 'Esume', '33', 'Senior'),
(16, 'Lanerryl (Grad)', 'Johnson', '10', 'Senior'),
(17, 'Rashard (Grad)', 'Todd', '23', 'Senior');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`idSeason`, `season_name`, `season_year`) VALUES
(3, 'Fall', 2015),
(4, 'Winter', 2016);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`StatsID`, `PlayerID`, `GameID`, `points`, `rebounds`, `assists`, `steals`, `blocks`, `SeasonID`, `Statscol`) VALUES
(3, 13, 1, 2, 3, 2, 0, '0', 3, NULL),
(4, 15, 1, 6, 5, 0, 2, '1', 3, NULL),
(5, 6, 1, 18, 5, 2, 2, '0', 3, NULL),
(6, 10, 1, 17, 2, 1, 0, '0', 3, NULL),
(7, 5, 1, 14, 2, 0, 0, '0', 3, NULL),
(8, 7, 1, 9, 3, 1, 2, '0', 3, NULL),
(9, 9, 1, 6, 8, 0, 1, '0', 3, NULL),
(10, 11, 1, 0, 0, 1, 0, '0', 3, NULL),
(11, 12, 1, 13, 7, 2, 0, '1', 3, NULL),
(12, 16, 1, 14, 1, 5, 0, '0', 3, NULL),
(13, 17, 1, 7, 7, 0, 1, '1', 3, NULL);

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
