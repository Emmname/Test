-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2019 at 11:26 AM
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
(1, '1234', '1234@gmail.com', '1234', 2, ''),
(2, 'ItsMeBaby', 'DrinkMe@gmail.com', 'b060dc3e37c6952d0128f207882cae02', 1, '¬ŽäËZ*Þ{-×	Ï'),
(4, 'ItsMeBaby69;)', 'ItsMe@hotmail.com', 'eb14bb84404dd20ffd5c0ee0c55cea12', 0, 'µÜ¹1W¶åê‡–ÏÑšËþL6/µ8-ù!£áü=ä&¥9ƒGk\'[„}§ÀÐëtîhø³ð@Ä84VÞx}1¤JìÂn0þ­/HÎ–%\Z!Ü¦‘qÁ›¬M‰dçÄ ­u^ðèw<\"©kš—{;[@ª,‘¸´ «v¿ñpøx!ùêùø¦ÑKä¾KÂòÄp`a|YC±4ã´“ŒA?þäÃÉx~ÛÄÄ²›æiý’€_—­Ñ[Xz«¶~,îtÒÛßìy5Þ e7±ß3|þåõ>•ðÇ+“;œ-»Ç÷ƒæ„ZnXZ©@Ô  m¿’ÿmëXKÂ¿Ì«ñÄÁ_çè´5ž+lrMÈdLüB|×Œèª@Ñ ”Îb&\\]“üîqõ¿¶š‹ÏK¿´}–íd30x:…‰\r›+¬jeðþsØ‘ßBéfñ™=ÕUJõ;å¥–PÙ(¶VuÁèÎ›1•Îf\"ÿ‘þf…êKétÐˆ/‰¥k§ØCI\\Æ³>Þ,¹šÚônfÃŽ–+âÚÿQ6H9·÷½ÜòÏ’ˆ3ùqŒ¬4;§Í4\"·¶ÝPyT~à¼Àé«•}×;™u°/µ©‹ë>äý\n9ñ&ÞJƒÒx!±Òåì¿8y‹Ôº(Q6');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
