-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2014 at 01:22 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `toeic`
--

-- --------------------------------------------------------

--
-- Table structure for table `double_passage`
--

CREATE TABLE IF NOT EXISTS `double_passage` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `pathxml` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `incomplete_sen`
--

CREATE TABLE IF NOT EXISTS `incomplete_sen` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `pathxml` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `pathxml` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qr`
--

CREATE TABLE IF NOT EXISTS `qr` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `pathxml` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sharing_listening`
--

CREATE TABLE IF NOT EXISTS `sharing_listening` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_estonian_ci NOT NULL,
  `level` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `sharing_listening`
--

INSERT INTO `sharing_listening` (`id`, `content`, `name`, `level`) VALUES
(1, 'aaaaaaaaaaaaaaaâ', 'aa', 500),
(4, 'Như các em biết, giới từ IN, ON sử dụng với tần suất "chóng mặt" trong ngữ pháp tiếng Anh, do vậy nắm được cách sử dụng giới từ này trong các cụm từ diễn đạt là điều cần thiết với các bạn học tiếng Anh nói chung và luyện thi Toeic nói riêng.\nIn = bên trong\n• In + month/year\n• In time for = In good time for = Đúng giờ (thường kịp làm gì, hơi sớm hơn giờ đã định một chút)\n• In the street = dưới lòng đường\n• In the morning/ afternoon/ evening\n• In the past/future = trước kia, trong quá khứ/ trong tương lai\n• In future = from now on = từ nay trở đi\n• In the begining/ end = at first/ last = thoạt đầu/ rốt cuộc\n• In the way = đỗ ngang lối, chắn lối\n• Once in a while = đôi khi, thỉnh thoảng\n• In no time at all = trong nháy mắt, một thoáng\n• In the mean time = meanwhile = cùng lúc\n• In the middle of (địađiểm)= ở giữa\n• In the army/ airforce/ navy\n• In + the + STT + row = hàng thứ...\n• In the event that = trong trường hợp mà\n• In case = để phòng khi, ngộ nhỡ\n• Get/ be in touch/ contact with Sb = liên lạc, tiếp xúc với ai', 'chia sẻ về giới từ', 750),
(8, 'abcd efg', 'chia sẻ khác', 900),
(9, 'yyyyyyyyyyyyyyyyyyyyyyyyyyy', 'chia sẽ 9', 750),
(10, 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 'chia sẽ 10', 900),
(55, 'rrrrrrrrrrrrrrrrrrrr', 'chia sẻ', 900);

-- --------------------------------------------------------

--
-- Table structure for table `sharing_reading`
--

CREATE TABLE IF NOT EXISTS `sharing_reading` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sharing_reading`
--

INSERT INTO `sharing_reading` (`id`, `name`, `content`, `level`) VALUES
(1, 'chia  se 1', 'sdafdfds', 500),
(2, 'chia se 2', 'dsafsdf', 750),
(3, 'chia se 3', 'ádfsd', 750),
(4, 'chia se 4d', 'dfds', 900),
(5, 'chia se 5 ', 'sds', 900),
(6, 'chia se 6', 'sdsa', 900);

-- --------------------------------------------------------

--
-- Table structure for table `short_con`
--

CREATE TABLE IF NOT EXISTS `short_con` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `pathxml` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `short_talk`
--

CREATE TABLE IF NOT EXISTS `short_talk` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `pathxml` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `single_passage`
--

CREATE TABLE IF NOT EXISTS `single_passage` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `pathxml` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `pathxml` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `text_complextion`
--

CREATE TABLE IF NOT EXISTS `text_complextion` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `pathxml` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`) VALUES
(1, 'admin', '123', '', ''),
(13, 'phuoctien', '123', 'Lu Phuoc Tien', 'phuoctienuit@gmail.com'),
(15, 'fdsafsda', 'fsdfsd', 'dfd', 'fsdfds');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
