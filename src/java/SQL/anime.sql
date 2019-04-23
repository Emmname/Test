-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 03:59 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anime`
--

-- --------------------------------------------------------

--
-- Table structure for table `anime`
--

CREATE TABLE `anime` (
  `anime_id` int(5) NOT NULL,
  `anime_name` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `animator` varchar(255) NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `videoUrl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anime`
--

INSERT INTO `anime` (`anime_id`, `anime_name`, `release_date`, `animator`, `imageUrl`, `videoUrl`) VALUES
(1, 'One Punch Man', '2015-10-05', 'Tomohiro Suzuki\r\n', 'One Punch Man.jpg', '2JAElThbKrI'),
(2, 'Dragon Ball Super', '2015-07-05', 'Akira Toriyama', 'Dragon Ball Super.jpg', 'wuIbeQv3v7c'),
(3, 'Fullmetal Alchemist: Brotherhood', '2009-04-05', 'Hiroshi ?nogi', 'Fullmetal Alchemist Brotherhood.jpg', 'dqDB6gQLbPM'),
(4, 'Attack on Titan', '2013-04-07', 'Yasuko Kobayashi', 'Attack on Titan.jpg', 'a3mo2TZGXlM'),
(5, 'Naruto Shippuden', '2007-02-15', 'Masashi Kishimoto', 'Naruto Shippuden.jpg', '1WLO0Owi5-A'),
(6, 'Sword Art Online', '2012-07-08', 'Reki Kawahara', 'Sword Art Online.jpg', '6ohYYtxfDCg'),
(7, 'Bleach', '2004-10-05', 'Masashi Sogo \r\n\r\n\r\n', 'Bleach.jpg', 'oZ67d9XSjFs&t'),
(8, 'Code Geass', '2006-10-06', 'Ichir? ?kouchi', 'Code Geass.jpeg', 'v-AGjx0N24U'),
(9, 'Hunter x Hunter', '1999-10-16', 'Yoshihiro Togashi', 'Hunter x Hunter.png', 'd6kBeJjTGnY'),
(10, 'Tokyo Ghoul', '2014-07-04', 'Ch?ji Mikasano', 'Tokyo Ghoul.jpg', 'ETHpMMV8rJU');

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `video_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL,
  `episode_id` int(5) NOT NULL,
  `episode_name` varchar(255) DEFAULT NULL,
  `episode_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `episode`
--

INSERT INTO `episode` (`video_id`, `anime_id`, `episode_id`, `episode_name`, `episode_link`) VALUES
(1, 1, 0, 'OVA: Road to Hero', NULL),
(2, 1, 0, 'OVA: The Shadow That Snuck Up Too Close', NULL),
(3, 1, 2, 'The Lone Cyborg', NULL),
(4, 1, 3, 'The Obsessive Scientist', NULL),
(8, 1, 4, 'The Modern Ninja', NULL),
(9, 1, 5, 'The Ultimate Mentor', NULL),
(10, 1, 1, 'The Strongest Man', NULL),
(11, 3, 2, 'Hagane no renkinjutsushi (Fullmetal Alchemist)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `favourite_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`favourite_id`, `user_id`, `anime_id`) VALUES
(7, 9, 1),
(8, 9, 4),
(9, 9, 7),
(10, 9, 8),
(11, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(5) NOT NULL,
  `genre_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(4, 'Action'),
(5, 'Adventure'),
(10, 'Comedy'),
(8, 'Ecchi'),
(3, 'Fantasy'),
(6, 'Horror'),
(9, 'Mech'),
(1, 'Romance'),
(7, 'Shounen'),
(2, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `genreanime`
--

CREATE TABLE `genreanime` (
  `genreanime_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL,
  `genre_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genreanime`
--

INSERT INTO `genreanime` (`genreanime_id`, `anime_id`, `genre_id`) VALUES
(1, 4, 6),
(2, 7, 7),
(3, 8, 9),
(4, 8, 8),
(5, 9, 5),
(6, 6, 4),
(7, 6, 1),
(8, 10, 4),
(9, 6, 3),
(10, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `context` varchar(255) NOT NULL,
  `wholeft` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `user_id`, `anime_id`, `title`, `context`, `wholeft`) VALUES
(1, 10, 6, 'the first message', 'i like it ', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `date_paid` date NOT NULL,
  `date_expired` date DEFAULT NULL,
  `PaymentType` varchar(255) NOT NULL,
  `AmountPaid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `date_paid`, `date_expired`, `PaymentType`, `AmountPaid`) VALUES
(1, 1, '2019-03-31', '2019-04-30', 'visa', 20);

--
-- Triggers `orders`
--
DELIMITER $$
CREATE TRIGGER `addOrder` AFTER INSERT ON `orders` FOR EACH ROW Update orders SET date_expired = DATE_ADD(date_paid,INTERVAL 30 DAY) where date_expired IS null
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `ratingNumber` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `anime_id`, `user_id`, `ratingNumber`) VALUES
(1, 4, 1, 5),
(5, 5, 1, 1),
(6, 1, 1, 1),
(7, 3, 1, 3),
(8, 4, 1, 4),
(9, 5, 1, 5),
(12, 7, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date_entered` date NOT NULL,
  `user_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `Username` varchar(24) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(1024) NOT NULL,
  `Status` int(10) DEFAULT NULL,
  `salt` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `Username`, `Email`, `Password`, `Status`, `salt`) VALUES
(1, '1234', '1234@gmail.com', '1234', 1, ''),
(9, 'Jordan123', 'jordang111@gmail.com', '$2a$10$zKT1xgyOuc1zMOXv4C2CdemUtmYgzgug.u.YX0uM.KtTcxPNv8tJK', 0, '$2a$10$zKT1xgyOuc1zMOXv4C2Cde');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`anime_id`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `FK_anime_id` (`anime_id`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`favourite_id`),
  ADD KEY `fk_anime_anime` (`anime_id`),
  ADD KEY `fk_user_favourite` (`user_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`),
  ADD UNIQUE KEY `genre_name` (`genre_name`);

--
-- Indexes for table `genreanime`
--
ALTER TABLE `genreanime`
  ADD PRIMARY KEY (`genreanime_id`),
  ADD KEY `fk_anime_genreanime` (`anime_id`),
  ADD KEY `fk_genre_genreanime` (`genre_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `anime_id` (`anime_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_user_order` (`user_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `fk_user_rating` (`user_id`),
  ADD KEY `fk_anime_rating` (`anime_id`) USING BTREE;

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FK_user_reviews` (`user_id`),
  ADD KEY `fk_anime_reviews` (`anime_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anime`
--
ALTER TABLE `anime`
  MODIFY `anime_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `video_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `favourite_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `genreanime`
--
ALTER TABLE `genreanime`
  MODIFY `genreanime_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `FK_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`);

--
-- Constraints for table `favourite`
--
ALTER TABLE `favourite`
  ADD CONSTRAINT `fk_anime_anime` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  ADD CONSTRAINT `fk_user_favourite` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `genreanime`
--
ALTER TABLE `genreanime`
  ADD CONSTRAINT `fk_anime_genreanime` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  ADD CONSTRAINT `fk_genre_genreanime` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_user_order` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_anime_rating` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  ADD CONSTRAINT `fk_anime_review` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  ADD CONSTRAINT `fk_user_rating` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK_user_reviews` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `fk_anime_reviews` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
