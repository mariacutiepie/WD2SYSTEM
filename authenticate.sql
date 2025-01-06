-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2025 at 02:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authenticate`
--

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `user_id` int(11) NOT NULL,
  `cert_id` int(11) NOT NULL,
  `certificate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`user_id`, `cert_id`, `certificate`) VALUES
(50, 3, 'hahaha'),
(50, 8, 'QWERTY'),
(45, 23, 'ZUITT FREE BOOTHCAMP'),
(45, 24, 'DEVFEST'),
(51, 25, 'SERECTTTTT'),
(51, 26, 'Malay ko sa kanya'),
(51, 27, ''),
(45, 28, 'talunan '),
(45, 29, 'wala achievements'),
(54, 30, 'yaawa'),
(57, 31, 'walaaaaaaaaa'),
(57, 32, 'beatles'),
(57, 33, 'queen'),
(45, 34, 'wala puta'),
(45, 35, 'ayaw gumana'),
(57, 36, 'GUMANA KA NA PLEASEEEEEEEE'),
(57, 37, 'BOSIT'),
(59, 38, 'none'),
(60, 39, 'haha'),
(62, 40, ''),
(62, 41, ''),
(62, 42, ''),
(62, 43, ''),
(63, 44, ''),
(63, 45, '');

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `user_id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `section` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `insta` varchar(255) NOT NULL,
  `elem` varchar(255) NOT NULL,
  `elemgrad` year(4) NOT NULL,
  `high` varchar(255) NOT NULL,
  `juniorgrad` year(4) NOT NULL,
  `shs` varchar(255) NOT NULL,
  `seniorgrad` year(4) NOT NULL,
  `college` varchar(255) NOT NULL,
  `collegegrad` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`user_id`, `info_id`, `birthday`, `section`, `bio`, `contact`, `address`, `email`, `facebook`, `github`, `insta`, `elem`, `elemgrad`, `high`, `juniorgrad`, `shs`, `seniorgrad`, `college`, `collegegrad`) VALUES
(45, 1, '2004-08-30', 'ACT AD 2', 'I’m a dreamer, artist, and innovator, blending creativity and technology as a 2nd-year ACT-AD student at Western Mindanao State University. From UI/UX design and pixel art to photography and videography, I love expressing ideas through art.', '092255664321', 'Rojo Compound Kasanyangan Z.C', 'mariaericha_g@yahoo.com', 'https://www.linkedin.com/in/ma-ericha-guanzon-626918298/', 'https://github.com/mariacutiepie', 'https://www.instagram.com/maaariyaaaah/', 'Talon-Talon Central School Sped Center', '2017', 'Zamboanga City High School Main', '2021', 'Zamboanga City High School Main', '2023', 'Western Mindanao State University', 'Present'),
(46, 2, '2005-04-07', 'BSCS 2C', 'A hard working second year Associate in Computer Technology major in Application Development at Western Mindanao State University.', '09262049143', 'sultan kudarat', 'test@gmail.com', 'https://www.facebook.com/maria.guanzon.905110/', 'https://github.com/mariacutiepie', 'https://www.instagram.com/maaariyaaaah/', 'Sultan Kudarat', '2018', 'Sourcesogon', '2011', 'Oxford', '2011', 'Western Mindanao State Universiry', '2013'),
(50, 8, '2024-12-12', 'ACT AD3', 'I am a passionate and dedicated individual who is always eager to learn and grow. I enjoy taking on new challenges, collaborating with others, and striving for excellence in everything I do. With a strong background in [your field/area of expertise], I am', '93728367263', 'CHERNOBYL,UKRAINE', 'mock@gmail.com', 'https://www.linkedin.com/in/ma-ericha-guanzon-626918298/', 'https://github.com/mariacutiepie', 'https://www.instagram.com/maaariyaaaah/', 'Sultan Kudarat', '2016', 'Zamboanga City High School Main', '2013', 'Zamboanga City High School Main', '2014', 'Western Mindanao State Universiry', 'present'),
(51, 9, '2007-09-11', 'BS Neurobiologist', '&lt;?php  if (isset($_POST[&#039;submit&#039;])) {     $file = $_FILES[&#039;file&#039;];          $fileName = $_FILES[&#039;file&#039;][&#039;name&#039;];     $fileTmpName = $_FILES[&#039;file&#039;][&#039;tmp_name&#039;];     $fileSize = $_FILES[&#039;f', '019437563475', 'Rojo Compound Kasanyangan Z.C', 'coopersheldon@gmail.com', 'https://www.facebook.com/maria.guanzon.905110/', 'https://github.com/mariacutiepie', 'https://www.instagram.com/maaariyaaaah/', 'Sultan Kudarat', '2018', 'Zamboanga City High School Main', '2016', 'Zamboanga City High School Main', '2012', 'Western Mindanao State Universiry', 'present'),
(45, 10, '2024-08-30', 'G9 Rosewood', '&lt;div class=&quot;c-container &quot;&gt;                     &lt;form method=&quot;post&quot;&gt;                         &lt;div class=&quot;f_child mb-1&quot;&gt;                         &lt;div class=&quot;row mb-3&quot;&gt;                          ', '092255664321', 'Rojo Compound Kasanyangan Z.C', 'mariaericha_g@yahoo.com', 'https://www.linkedin.com/in/ma-ericha-guanzon-626918298/', 'https://github.com/mariacutiepie', 'https://www.instagram.com/maaariyaaaah/', 'Sultan Kudarat', '2009', 'Sourcesogon', '2017', 'Zamboanga City High School Main', '2013', 'college of macho dancing and resto bar', 'present'),
(54, 11, '2024-12-18', 'ACT AD 2', 'ahhahahahahaahhaah', '092255664321', 'sultan kudarat', 'set@yahoo.com', 'https://www.linkedin.com/in/ma-ericha-guanzon-626918298/', 'https://github.com/EYGuanzon', 'https://www.instagram.com/maaariyaaaah/', 'Talon-Talon Central School Sped Center', '2019', 'Zamboanga City High School Main', '2015', 'Zamboanga City High School Main', '2013', 'Western Mindanao State Universiry', 'present'),
(57, 12, '2024-12-12', 'ACT AD 2', 'hahahahahahsajskjkhuayfajf', '092255664321', 'Rojo Compound Kasanyangan Z.C', 'pennyhofstadder@gmail.com', 'https://www.facebook.com/maria.guanzon.905110/', 'https://github.com/EYGuanzon', 'https://www.instagram.com/maaariyaaaah/', 'Sultan Kudarat', '2019', 'Zamboanga City High School Main', '2013', 'Zamboanga City High School Main', '2019', 'college of macho dancing and resto bar', 'present'),
(59, 13, '2024-12-20', 'ACT AD3', 'wala lang pisti ka', '092255664321', 'Rojo Compound Kasanyangan Z.C', 'yawa@gmail.com', 'https://www.facebook.com/maria.guanzon.905110/', 'https://github.com/EYGuanzon', 'https://www.instagram.com/maaariyaaaah/', 'Sultan Kudarat', '2024', 'Sourcesogon', '2013', 'Zamboanga City High School Main', '2013', 'college of macho dancing and resto bar', 'present'),
(60, 14, '2024-12-20', 'BSCS', 'lahat taty mabubuhay ng tahimik at buong ligaya', '092255664321', 'Rojo Compound Kasanyangan Z.C', 'ligaya@gmail.com', 'https://www.facebook.com/maria.guanzon.905110/', 'https://github.com/EYGuanzon', 'https://www.instagram.com/maaariyaaaah/', 'ah', '2012', 'Zamboanga City High School Main', '2010', 'gsfg', '2011', 'college of macho dancing and resto bar', '2015'),
(62, 15, '2004-08-30', 'ACT AD 2', '2nd year Associate in Computer Technology Major in Application Development at Western Mindanao State University', '0926204943', 'Rojo Compound Kasanyangan Z.C', 'riaguanzon2@gmail.com', 'https://www.linkedin.com/in/ma-ericha-guanzon-626918298/', 'https://github.com/mariacutiepie', 'https://www.instagram.com/maaariyaaaah/', 'Talon-Talon Central School Sped Center', '2017', 'Zamboanga City High School Main', '2021', 'Zamboanga City High School Main', '2023', 'Western Mindanao State Universiry', 'present'),
(63, 17, '2025-01-01', 'ACT AD3', 'agdsxhergcxvaf', '092255664321', 'Rojo Compound Kasanyangan Z.C', 'pennyhofstadder@gmail.com', 'https://www.facebook.com/maria.guanzon.905110/', 'https://github.com/EYGuanzon', 'https://www.instagram.com/maaariyaaaah/', 'Talon-Talon Central School Sped Center', '2017', 'Sourcesogon', '2018', 'Diwata pares university', '2016', 'Western Mindanao State Universiry', '2024'),
(63, 18, '2025-01-22', 'sabsa', 'kajfkrq', '423', 'gsdg', 'pennyhofstadder@gmail.com', 'https://www.linkedin.com/in/ma-ericha-guanzon-626918298/', 'https://github.com/EYGuanzon', 'https://www.instagram.com/maaariyaaaah/', 'Talon-Talon Central School Sped Center', '2022', 'ZCHS', '2022', 'Zamboanga City High School Main', '2013', 'Western Mindanao State Universiry', '2012');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`profile_id`, `user_id`) VALUES
(0, 50);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `projects` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `user_id`, `projects`, `title`, `description`, `status`) VALUES
(23, 45, 'https://2048car.netlify.app/', '2048 Game (Cars Edition)', 'Basic Game Development Boothcamp last June 2024 hosted by ZUITT', 'Deleted'),
(24, 45, 'https://nexgen-user.netlify.app/', 'NexGen Online Selling Shop', 'A final requirement for Web Development last year', 'Deleted'),
(25, 45, 'https://guanzon-lab09.netlify.app/', 'Zamboanga Wonders', 'A lab activity using Bootstrap for the first time', 'Deleted'),
(26, 45, 'https://summer-pracs-api.netlify.app/', 'Twitter Hot Trending Topics', 'Using API and ChartJs', 'Deleted'),
(30, 46, 'https://guanzon-la07.netlify.app/', 'Joleebing', 'Beeda ang sayaaa', 'Active'),
(31, 45, 'https://guanzon-la07.netlify.app/', 'Joleebing', 'Beeda ang sayaaa', 'Active'),
(36, 45, 'https://2048car.netlify.app/', '2048', 'sana guamana na', 'Active'),
(37, 57, 'https://www.facebook.com/erlinda.guanzon.737', 'haha', 'yawa', 'Deleted'),
(38, 57, 'https://2048car.netlify.app/', 'kadakd', 'jdjskd', 'Deleted'),
(39, 57, 'https://www.youtube.com/watch?v=LsAdis1cU_M', 'dasfg', 'ahaha', 'Deleted'),
(40, 57, 'https://www.youtube.com/watch?v=LsAdis1cU_M', 'ouch', 'Beeda ang sayaaa', 'Deleted'),
(41, 57, 'https://2048car.netlify.app/', 'fsa', 'ahaha', 'Deleted'),
(42, 57, 'https://www.facebook.com/', 'sdsf', 'safaf', 'Deleted'),
(43, 57, 'https://www.youtube.com/watch?v=LsAdis1cU_M', 'l', '', 'Deleted'),
(44, 57, 'https://www.facebook.com/erlinda.guanzon.737', 'haha', 'pootek', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skills_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `skills` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skills_id`, `user_id`, `skills`) VALUES
(19, 45, 'HTML'),
(20, 45, 'CSS'),
(21, 45, 'Python'),
(22, 45, 'SQL'),
(23, 45, 'C#'),
(30, 45, 'CSS'),
(31, 45, 'C++'),
(33, 50, 'CSS'),
(34, 50, 'Python'),
(35, 50, 'C++'),
(36, 51, 'HTML'),
(37, 51, 'Python'),
(38, 51, 'JavaScript'),
(39, 45, 'HTML'),
(40, 45, 'JavaScript'),
(41, 45, 'Other'),
(42, 54, 'HTML'),
(43, 54, 'Python'),
(44, 54, 'SQL'),
(52, 57, 'yawa'),
(53, 57, 'hahahaha'),
(54, 45, 'bisaya'),
(57, 45, 'pista'),
(58, 45, 'yawa kaayo'),
(59, 57, 'yawa'),
(60, 57, 'tangina gumana ka na'),
(61, 57, 'PLEASE'),
(62, 45, 'shit'),
(63, 59, 'bisaya'),
(64, 60, 'yawa'),
(75, 62, 'hahahahahahahahah'),
(76, 62, 'bisaya'),
(77, 62, 'hahaha'),
(78, 62, 'yawa'),
(79, 62, 'fortran'),
(80, 63, 'miguel'),
(81, 63, 'bayot'),
(82, 63, 'ahahha'),
(83, 63, 'dew'),
(84, 63, 'ngano ni'),
(85, 63, 'naunsa'),
(86, 63, ''),
(87, 63, '');

-- --------------------------------------------------------

--
-- Table structure for table `talents`
--

CREATE TABLE `talents` (
  `user_id` int(11) NOT NULL,
  `talent_id` int(11) NOT NULL,
  `talent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `talents`
--

INSERT INTO `talents` (`user_id`, `talent_id`, `talent`) VALUES
(45, 14, 'kumain'),
(45, 15, 'tumae'),
(45, 16, 'manapak'),
(50, 27, 'devfest'),
(50, 28, 'zampen'),
(50, 29, '2024'),
(50, 30, ''),
(50, 31, ''),
(50, 32, ''),
(50, 33, ''),
(50, 34, ''),
(50, 35, ''),
(50, 36, ''),
(50, 37, ''),
(50, 38, 'dance'),
(50, 39, 'sing'),
(50, 40, 'devfest'),
(51, 41, 'I\'m amy farah fowler, you\'re sheldon cooper'),
(51, 42, 'Im a princess and this is my tiara'),
(45, 43, 'wala lang'),
(45, 44, 'di ko alam'),
(54, 45, 'devfest'),
(54, 46, 'dsdsdhjhdkghdfg'),
(57, 47, 'dhsfhkjf'),
(57, 48, 'ndmanfa'),
(17, 49, 'potek'),
(17, 50, 'haha'),
(17, 51, 'TANGINA'),
(17, 52, 'BAT AYAW NA GUMANA'),
(45, 53, 'YAWA KAAYO'),
(45, 54, 'WAHH'),
(57, 55, 'putaena'),
(57, 56, 'potek'),
(57, 57, 'potek?'),
(59, 58, 'wala'),
(60, 59, 'wala'),
(62, 60, ''),
(62, 61, ''),
(62, 62, '123faf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `request_status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `lastname`, `firstname`, `email`, `username`, `password`, `is_admin`, `request_status`) VALUES
(45, 'Guanzon', 'Ma. Ericha', 'mariaericha_g@yahoo.com', 'ria', 'admin', 1, 'Default'),
(46, 'doggie', 'hot', 'test@gmail.com', 'marlo', '$2y$10$n..KaQvB4QlFZBKxVQBAoOtTa6m81PfnWbZV/Uez4ReBzwJIx2QL.', 1, 'Accepted'),
(50, 'mock', 'mock', 'mock@gmail.com', 'mock', '$2y$10$MqLDBZ89hRnrUHcsyQuWp.5eVxXO8CacB9WvVMP3lnrA1nQ3qmDUS', 0, 'Declined'),
(51, 'manon-og', 'mar', 'coopersheldon@gmail.com', 'amy', '$2y$10$8thBRQ887dNJhp3vE.IfJuaJyIowF5VpSjqA8fArjgITOwpxV1ELG', 0, 'Accepted'),
(53, 'test', 'test', 'test@email.com', 'hellopo', '$2y$10$p9534dBjRh89wc5AbJ0nh.spZQIwWKsZsLTcN4kkE2WGxgBsGUchq', 0, 'Accepted'),
(54, 'set', 'set', 'set@yahoo.com', 'set', '$2y$10$w86ZnbhL7ZCEw5Sb7oSjUuAu3oR4SkWvzdIH2ibQxYF8TApQ5RmhG', 0, 'Accepted'),
(57, 'Hofstadder', 'Penny', 'pennyhofstadder@gmail.com', 'penny', '$2y$10$gMbf1K97pjBNkBWkZ/IEqOAE6/EC93dme3d5dPqyglThcM26RaeUe', 0, 'Accepted'),
(59, 'ka', 'yawa', 'yawa@gmail.com', 'yati', '$2y$10$HRGrcNajNpHHL88mpeZx3OiMc8tFBIN6f1r6xhAfhGOj5kSjNRcmm', 0, 'Accepted'),
(60, 'ely', 'buendia', 'ligaya@gmail.com', 'ligaya', '$2y$10$h7zb.SinMEmsWMFKW7Otqusv2VuCT.cOhs0IT3QAgkZQck4sVG7Oa', 0, 'Accepted'),
(62, 'Guanzon', 'Ma. Ericha', 'riaguanzon2@gmail.com', 'admin', '$2y$10$HkGyF.wl2ma3XRkz0QTXcOufMfC79rkW2YbH3X8CeiQX8GWWBluj6', 1, 'Accepted'),
(63, 'pending', 'pending', 'pennyhofstadder@gmail.com', 'pending', '$2y$10$mauygQK7L25.fEGrfZ4.Nu9UC/9eIFq2S60VsMvG7zUr9e3alYMnO', 0, 'Declined'),
(64, '', '', '', '', '$2y$10$cDNaUrDiaWzg2ahnf4yjkOd5NReSkedERq2x1lcOaFZp2GEvJr/qS', 0, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`cert_id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`info_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skills_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `talents`
--
ALTER TABLE `talents`
  ADD PRIMARY KEY (`talent_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `cert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skills_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `talents`
--
ALTER TABLE `talents`
  MODIFY `talent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `infos`
--
ALTER TABLE `infos`
  ADD CONSTRAINT `infos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
