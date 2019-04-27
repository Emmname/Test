-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019-04-27 12:30:44
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- 表的结构 `anime`
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
-- 转存表中的数据 `anime`
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
-- 表的结构 `episode`
--

CREATE TABLE `episode` (
  `video_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL,
  `episode_id` int(5) NOT NULL,
  `episode_name` varchar(255) DEFAULT NULL,
  `episode_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `episode`
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
-- 表的结构 `favourite`
--

CREATE TABLE `favourite` (
  `favourite_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `favourite`
--

INSERT INTO `favourite` (`favourite_id`, `user_id`, `anime_id`) VALUES
(1, 1, 5),
(2, 5, 9),
(4, 2, 3),
(5, 2, 3),
(6, 2, 3);

-- --------------------------------------------------------

--
-- 表的结构 `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(5) NOT NULL,
  `genre_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `genre`
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
-- 表的结构 `genreanime`
--

CREATE TABLE `genreanime` (
  `genreanime_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL,
  `genre_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `genreanime`
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
-- 表的结构 `message`
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
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`message_id`, `user_id`, `anime_id`, `title`, `context`, `wholeft`) VALUES
(1, 10, 6, 'the first message', 'i like it ', '');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
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
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `date_paid`, `date_expired`, `PaymentType`, `AmountPaid`) VALUES
(1, 1, '2019-03-31', '2019-04-30', 'visa', 20),
(2, 2, '2019-03-10', '2019-04-09', 'visa', 20),
(3, 4, '2019-03-10', '2019-04-09', 'visa', 20);

--
-- 触发器 `orders`
--
DELIMITER $$
CREATE TRIGGER `addOrder` AFTER INSERT ON `orders` FOR EACH ROW Update orders SET date_expired = DATE_ADD(date_paid,INTERVAL 30 DAY) where date_expired IS null
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(5) NOT NULL,
  `anime_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `ratingNumber` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rating`
--

INSERT INTO `rating` (`rating_id`, `anime_id`, `user_id`, `ratingNumber`) VALUES
(1, 4, 1, 5),
(2, 7, 4, 3),
(3, 7, 2, 5),
(4, 8, 4, 1),
(5, 5, 1, 1),
(6, 1, 1, 1),
(7, 3, 1, 3),
(8, 4, 1, 4),
(9, 5, 1, 5),
(10, 6, 2, 5),
(11, 6, 4, 3),
(12, 7, 1, 4),
(13, 8, 2, 3),
(14, 9, 4, 2),
(15, 10, 2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `reviews`
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
-- 表的结构 `user`
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
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `Username`, `Email`, `Password`, `Status`, `salt`) VALUES
(1, '1234', '1234@gmail.com', '1234', 1, ''),
(2, 'ItsMeBaby', 'DrinkMe@gmail.com', 'b060dc3e37c6952d0128f207882cae02', NULL, '¬ŽäËZ*Þ{-×	Ï'),
(4, 'ItsMeBaby69;)', 'ItsMe@hotmail.com', 'eb14bb84404dd20ffd5c0ee0c55cea12', NULL, 'µÜ¹1W¶åê‡–ÏÑšËþL6/µ8-ù!£áü=ä&¥9ƒGk''[„}§ÀÐëtîhø³ð@Ä84VÞx}1¤JìÂn0þ­/HÎ–%\Z!Ü¦‘qÁ›¬M‰dçÄ ­u^ðèw<"©kš—{;[@ª,‘¸´ «v¿ñpøx!ùêùø¦ÑKä¾KÂòÄp`a|YC±4ã´“ŒA?þäÃÉx~ÛÄÄ²›æiý’€_—­Ñ[Xz«¶~,îtÒÛßìy5Þ e7±ß3|þåõ>•ðÇ+“;œ-»Ç÷ƒæ„ZnXZ©@Ô  m¿’ÿmëXKÂ¿Ì«ñÄÁ_çè´5ž+lrMÈdLüB|×Œèª@Ñ ”Îb&\\]“üîqõ¿¶š‹ÏK¿´}–íd30x:…‰\r›+¬jeðþsØ‘ßBéfñ™=ÕUJõ;å¥–PÙ(¶VuÁèÎ›1•Îf"ÿ‘þf…êKétÐˆ/‰¥k§ØCI\\Æ³>Þ,¹šÚônfÃŽ–+âÚÿQ6H9·÷½ÜòÏ’ˆ3ùqŒ¬4;§Í4"·¶ÝPyT~à¼Àé«•}×;™u°/µ©‹ë>äý\n9ñ&ÞJƒÒx!±Òåì¿8y‹Ôº(Q6'),
(5, '12345', '12345@qq.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, 'XHèæ€moV]©ºÀ¯@Äè|æóµ[Vè…ãoÄ½vs\0ÞC³u£²Zè®k¼=Ã¹Š8^>ØÅÇføPyIÃì©TQÀš¨,?··ã¾*ÕB½YÏnçd;Â^æžU_Ï¾^2\r©mûªß÷Øf;Íƒ¬£ÞÔšž{9¶ù¹}¼è‰…Jç=wßJt×2·D¥ò ¶û„nkH¾õ„÷ZnÈæ»!=T¶Ú\0ŠNY!¨m"ô°îz±t=(D)`Ý+øí‡¢ÃÕì—Z¨5¡T~Û…÷<éÂÈºd­ó\\u5	¬™¯Çæ]Ý“eÈ€\\ÊºNú~Úö°DQØªA9nÚn^òaö_gEß.òÂ½™_CÚÕY¸NsÃ³ÓÇg€a½ä|#gèGîÅT#t;!''qæ¶Ä“Á…B*hrPûºÔb%¤ØžôÀ^5SÛ·ÄžÛï¶¢ØwTß’Í^‚ñnf1>ÿj*‰ 8È¯{êëX_Á2ú»þ^ŠjV(BòHb·Ò_<59˜0bµsvïÒN‹ë…ƒ?€?^+=Ô¯öé­\Z¾0”‰`ãpâe&³Í?ð¯	 \0 ]jM> ¨by~¬f,ÀZ7\n»é¢9‘‚ Ý£Ü®³ŒÆþ]Ìi£ÚâM§ó‹öÐk‹H™'),
(6, '123456', '123456@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'àdBé"Á>ÇzwŽ¾d‹ÔžX>±&"´((ºÓx÷“Ë©-Ÿƒ4àO›¼Ú˜°Ó-ú''^o4úYgKQÆ!«ï{¾ÛÁêYü¥×FŸíÄ÷í^n)Ë1šÂ¥›RTV&w:_ØâØ‚ìRÀ#U˜ÌÚ»´Úì^ãÚ\nÎÙ«‡%åcÖÉÊ”¨$\\wìêÔœ’k-‘?”UÂ.ã~µ\Z`þ)£&Ý1“$SÜÎ²œb\\Av–GGtMXºŠAÛBšEYPtHééV-Pø&Ë—(¼â]üÏñÚf©6 îá}Om»÷â¹¨×|Ø§P¨¹ÏÐÁ.D¥\0]\Zk;2ó‡''¢ª¯7²uUAúHë‹SÞÄué#i´°£Í·6Ë·u®\0»i‹š™X<è;òÆóNú ¬›à†÷«Y¼iÒõTëÖ ÔÝŽ¦$yy''à&œ÷\nÆZ?ÖOBlŽ:àèì¸üÇ?PÓŽ„ˆÂñÛ\\¬wsÄ·«€²:o\rüjù5Oˆï¤ÞÎ´I&ÈÛ/D i3¾uVr™xmtl{n\nò0þ ýµ1:KÊ±œcÀù[Ö\0ûY)\rbüo»´ÛgåýÌý•ß³äøý9ñ™½*9õŽó»Õ+ËÐœØ‰Bñ¬-ZÅnC''[J'),
(7, 'Jordan', 'jordang@gmail.com', 'b5a682162aea3da64953e04ea820dad4', NULL, '-´:êBü8BKÓ°q9LÜáJ¾¬±\rœåùÌ4:Öd‡!‹¿Wù ÿü¼¿''Ë@Q†I†À!jQÙ.A¾tÂaó²(ò\0†Ë+ °À„ˆôZ=š²ý*‡	fêË©lž¾ˆ*°ØQÙR\r41¯§ƒ\0È²Ä_½‰E	3qK=Û•ù(\Z§SíÁ£°SÌˆR\\,’™”wIHDvæ¹÷æC3—Ü;´;ª®+JJæ\0Tï•ôîš+Öª„›öÑ^_…¹`·m6Ó7"‚y³œŠ½Ï ’éf"ž[äzJ|É¿¬h£ý*aEB¬Ÿ/¹¬ÞIÈ†ë1ëS–µäÙŸ,ÉU‚|ï˜]A°;#ýióú\nkíËÇ8½%MÌt!­È}’ùD„ŸHÞ–Ô™c¸K:}ÌªA+µÇ<dÈL³ºø™µht“û–c¡-sì=$4ãjyT¸ÆJ~œy&Qy¶lÐºïµèw/E¾H Ô×£ÃDV1nzB	9.i_þn”ú\\îG§#ÛG\\ŸP°Î´¿œO[ŒŠozžmô P‚¢5\r9þl×³¦ß²zmÒóé4‡I;ž’A±œÝ¿ry’D/\nA‘;|È³aí‘cÈ3iv¿å”ÐŽñ­PÉeû¥fBÀÑk#ñ~/È9†œ¹|`Ü¸àoF¨	yä>B˜ÞÞ8p['),
(8, 'Joe', 'Joe@gmail.com', 'b5a682162aea3da64953e04ea820dad4', NULL, 'õŠSùê¢³‘ÞïRè3.Þ|‰	j$]|‘žTHT¥¥1õš–À‘‘wÛr:ÍBãÒerñ¿÷Yrä(Uº*)PÂxbY84$é…ê“$=x%L»ØrŽOsqÿo4ŒÖ|L\0é\r''	/‘‚ŽÇm8?©¬ÀAÄî´ÚPÌð«í´FYÉe_ÑFìôI«ÛD–.Ÿ!Z¦+oýöŽk½õø½°Û$Š¨òÂ	fÙâî¼êlAÒW‡\\qƒÎì©|¤·:¡¨`ÍÔlçþéA‡€³ä.1ÌLÙ¤\ZŠàã¹ÕTLx÷dS¿Ôç;>™æª®¾°5}þXáÏÇ‹c‡åÚk´_ê¯ëd’­T/Îàåí"ŸÕàtx±ˆ8õ‘ÞÊ\\\0k7»}š1éîÔ\\ßÖ€!Žm:ÐÐUC+\rrP&@º}»1	P·''	i"†„§iaâŠE/OÂÈ¢°¿š…Nù°öA·KFÓ…ðùÔž´sÏ¯égIÿs™æ¨\ZúKˆc›ý×†®ãfKà"Á&&·D¤Vç`¨rÍkG¯N,\ráŸj¬odž«02óXŒœíñ''ô`°Q*Ñ¥ÜÌò·¸¿îrã}”VvÎ1Ø›¦gÐCUg½ƒ\nbE\r,z-±À¥&v@¨f’YØ3¾U”Û¸íËmS’'),
(9, 'Jordan123', 'jordang111@gmail.com', '$2a$10$zKT1xgyOuc1zMOXv4C2CdemUtmYgzgug.u.YX0uM.KtTcxPNv8tJK', 0, '$2a$10$zKT1xgyOuc1zMOXv4C2Cde'),
(10, '12345678', '12345678@gmail.com', '$2a$10$63UUya1E7FQjeTJx89.XsOQ060iwmIix7PI5HN.DJw0WzzNXGmmjS', 0, '$2a$10$63UUya1E7FQjeTJx89.XsO');

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
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `anime`
--
ALTER TABLE `anime`
  MODIFY `anime_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `episode`
--
ALTER TABLE `episode`
  MODIFY `video_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `favourite`
--
ALTER TABLE `favourite`
  MODIFY `favourite_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `genreanime`
--
ALTER TABLE `genreanime`
  MODIFY `genreanime_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 限制导出的表
--

--
-- 限制表 `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `FK_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`);

--
-- 限制表 `favourite`
--
ALTER TABLE `favourite`
  ADD CONSTRAINT `fk_anime_anime` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  ADD CONSTRAINT `fk_user_favourite` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- 限制表 `genreanime`
--
ALTER TABLE `genreanime`
  ADD CONSTRAINT `fk_anime_genreanime` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  ADD CONSTRAINT `fk_genre_genreanime` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

--
-- 限制表 `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`);

--
-- 限制表 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_user_order` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- 限制表 `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_anime_rating` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  ADD CONSTRAINT `fk_anime_review` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  ADD CONSTRAINT `fk_user_rating` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- 限制表 `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK_user_reviews` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `fk_anime_reviews` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
