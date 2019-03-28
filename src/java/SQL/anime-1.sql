-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2019 at 03:32 PM
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
  `animator` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anime`
--

INSERT INTO `anime` (`anime_id`, `anime_name`, `release_date`, `animator`) VALUES
(1, 'One Punch Man', '2015-10-05', 'Tomohiro Suzuki\r\n'),
(3, 'Fullmetal Alchemist: Brotherhood', '2009-04-05', 'Hiroshi ?nogi'),
(4, 'Attack on Titan', '2013-04-07', 'Yasuko Kobayashi'),
(5, 'Naruto Shippuden', '2007-02-15', 'Masashi Kishimoto'),
(6, 'Sword Art Online', '2012-07-08', 'Reki Kawahara'),
(7, 'Bleach', '2004-10-05', 'Masashi Sogo \r\n\r\n\r\n'),
(8, 'Code Geass', '2006-10-06', 'Ichir? ?kouchi'),
(9, 'Hunter x Hunter', '1999-10-16', 'Yoshihiro Togashi'),
(10, 'Tokyo Ghoul', '2014-07-04', 'Ch?ji Mikasano');

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `favourite_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `date_paid` date NOT NULL,
  `date_expired` date NOT NULL,
  `PaymentType` varchar(255) NOT NULL,
  `AmountPaid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `Password` varchar(16) NOT NULL,
  `Status` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `Username`, `Email`, `Password`, `Status`) VALUES
(3, '1234', '123@gmal.com', '1234', 'free'),
(4, '12345', '12345@gmail.comk', '12345', 'free'),
(7, '1111', '1111@gmail.com', '1111', 'free'),
(10, 'ahmed', '123asdf@hasdkj.com', 'ahmed', 'free'),
(11, 'Jordan', 'jordan-donnelly@hotmail.com', '1234', 'Free');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`anime_id`);

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
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `favourite_id` int(5) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

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
