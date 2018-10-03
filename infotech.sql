-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2018 at 08:08 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infotech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Moshiur', 'Rahman Khan', 'moshiur@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_id`) VALUES
(10, 'Operating System', 0),
(11, 'Product Review', 0),
(12, 'Frelancing', 0),
(13, 'Tips & Tricks', 0),
(14, 'Tutorial', 0),
(15, 'Report', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `message` varchar(300) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `user_id`, `message`, `active`) VALUES
(2, 65, 'S', 'gikbkbk', 1),
(3, 57, 'M', 'Very Good....', 1),
(4, 11, 'Moshiur', 'good', 1),
(5, 11, 'Moshiur', 'nice', 1),
(6, 11, 'Zahid', 'Awesome', 1),
(7, 57, 'polas', 'good', 1),
(13, 58, 'Polash Rana', '\r\n3 days 8 hours 15 minutes 6 seconds ago\r\n\r\nBangla_java_Tutorial_12\r\n___Interface___Overriding__Overloading_hd720.mp4\r\n\r\nAll User''s Comments\r\n\r\nAkash\r\nNice Post\r\n\r\nAkash\r\nNice Post\r\n\r\nAkash\r\nNice Post\r\n\r\nAkash\r\nNice Post\r\n\r\nAkash\r\nNice Post\r\nAdd Your Comment\r\nCommenter Name : \r\nCommentator Name\r\nWr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `hit_count` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `image`, `video`, `category_id`, `sub_cat_id`, `hit_count`, `status`, `post_date`) VALUES
(6, 'à¦…à§à¦¯à¦¾à¦¨à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦¦à§‡à¦° à¦œà¦¨à§à¦¯ à¦à¦¸à§‡ à¦—à§‡à¦² BDIX à¦•à¦¾à¦¨à§‡à¦•à§à¦Ÿà§‡à¦¡ à¦Ÿà¦¿à¦­à¦¿ à¦…à§à¦¯à¦¾à¦ª!', '<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡ à¦¬à¦¿à¦¶à§‡à¦· à¦•à¦°à§‡ à¦¢à¦¾à¦•à¦¾à§Ÿ à¦šà¦²à¦›à§‡ à¦¬à§à¦°à¦¡à¦¬à§à¦¯à¦¾à¦¨à§à¦¡ à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦¨à§‡à¦Ÿà§‡à¦° à¦°à¦®à¦°à¦®à¦¾ à¦…à¦¬à¦¸à§à¦¥à¦¾à¥¤ à¦ªà§à¦°à¦¤à§à¦¯à§‡à¦• à¦†à¦‡à¦à¦¸à¦ªà¦¿ à¦šà¦¾à¦²à§ à¦•à¦°à¦›à§‡ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦«à¦¿à¦šà¦¾à¦° à¦“ à¦¸à¦¾à¦°à§à¦­à¦¿à¦¸à¥¤ à¦à¦° à¦®à¦§à§à¦¯à§‡ à¦°à§Ÿà§‡à¦›à§‡ à¦®à¦¿à¦¡à¦¿à§Ÿà¦¾ à¦¸à¦¾à¦°à§à¦­à¦¾à¦°, à¦à¦«à¦Ÿà¦¿à¦ªà¦¿ à¦¸à¦¾à¦°à§à¦­à¦¾à¦°, à¦—à§‡à¦® à¦¸à¦¾à¦°à§à¦­à¦¾à¦°, à¦Ÿà¦°à§‡à¦¨à§à¦Ÿ à¦¸à¦¾à¦°à§à¦­à¦¾à¦° à¦à¦¬à¦‚ à¦Ÿà¦¿à¦­à¦¿ à¦¸à¦¾à¦°à§à¦­à¦¾à¦°à¥¤ à¦à¦‡ à¦¸à¦¬ à¦¸à¦¾à¦°à§à¦­à¦¾à¦° à¦à¦° à¦®à¦§à§à¦¯à§‡ à¦•à§‹à¦¨ à¦•à§‹à¦¨ à¦—à§à¦²à§‹ BDIX à¦•à¦¾à¦¨à§‡à¦•à§à¦Ÿà§‡à¦¡ à¦†à¦¬à¦¾à¦° à¦•à§‹à¦¨ à¦•à§‹à¦¨ à¦—à§à¦²à§‹ à¦²à§‹à¦•à¦¾à¦²à¥¤à¦Ÿà¦¿à¦­à¦¿ à¦¸à¦¾à¦°à§à¦­à¦¾à¦° à¦—à§à¦²à§‹ à¦¬à§‡à¦¶à¦¿à¦­à¦¾à¦—à¦‡ à¦¨à¦¿à¦œà§‡à¦¦à§‡à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾à¦° à¦œà¦¨à§à¦¯ à¦…à¦¥à¦¬à¦¾ à¦ªà§à¦°à¦¯à§à¦•à§à¦¤à¦¿à¦—à¦¤ à¦œà§à¦žà§à¦¯à¦¾à¦¨ à¦•à¦® à¦¥à¦¾à¦•à¦¾à¦° à¦•à¦¾à¦°à¦¨à§‡ RTMP à¦Ÿà§‡à¦•à¦¨à§‹à¦²à¦œà¦¿ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à§‡ à¦Ÿà¦¿à¦­à¦¿ à¦¸à§à¦¤à§à¦°à¦¿à¦®à¦¿à¦‚ à¦¸à¦¾à¦°à§à¦­à¦¿à¦¸ à¦¦à§‡à§Ÿà¥¤ à¦¯à¦¾ à¦…à§à¦¯à¦¾à¦¨à¦¡à§à¦°à§Ÿà§‡à¦¡ &nbsp;à¦¬à¦¾ à¦†à¦‡à¦«à§‹à¦¨ à¦¸à¦¾à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§‡ à¦¨à¦¾à¥¤ à¦…à¦¥à¦¬à¦¾ à¦¯à§‡ à¦“à§Ÿà§‡à¦¬ à¦ªà§‡à¦œ à¦à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¤à¦¾à¦°à¦¾ à¦Ÿà¦¿à¦­à¦¿ à¦¸à¦¾à¦°à§à¦­à¦¿à¦¸ à¦¦à§‡à§Ÿ à¦¤à¦¾ à¦°à§‡à¦¸à§à¦ªà¦¨à§à¦¸à¦¿à¦­ à¦¨à¦¾ à¦¹à¦“à§Ÿà¦¾à§Ÿ à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦¥à§‡à¦•à§‡ à¦ à¦¿à¦• à¦®à¦¤ à¦¬à§à¦°à¦¾à¦‰à¦œ à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾à¥¤ à¦à¦‡ à¦¸à¦¬ à¦¸à¦®à¦¸à§à¦¯à¦¾à¦° à¦¸à¦®à¦¾à¦§à¦¾à¦¨à§‡&nbsp;<a href="http://pipexbd.com/" style="box-sizing: border-box; background-color: transparent; color: rgb(73, 131, 165); text-decoration-line: none;" target="_blank">Pipex Network</a>&nbsp;à¦¦à¦¿à¦šà§à¦›à§‡ BDIX à¦•à¦¾à¦¨à§‡à¦•à§à¦Ÿà§‡à¦¡ à¦Ÿà¦¿à¦­à¦¿ à¦…à§à¦¯à¦¾à¦ª à¦¨à¦¾à¦® Pipex TVà¥¤ à¦…à§à¦¯à¦¾à¦ªà¦Ÿà¦¿ à¦ªà§à¦²à§‡ à¦·à§à¦Ÿà§‹à¦° à¦ à¦­à¦¾à¦²à¦‡ à¦‡à¦‰à¦œà¦¾à¦° à¦°à¦¿à¦­à¦¿à¦‰ à¦ªà§‡à§Ÿà§‡à¦›à¥¤ à¦†à¦®à¦¿ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦›à¦¿à¥¤ à¦†à¦¶à¦¾ à¦•à¦°à¦¿ à¦†à¦ªà¦¨à¦¾à¦¦à§‡à¦° à¦­à¦¾à¦² à¦²à¦¾à¦—à¦¬à§‡ à¦…à§à¦¯à¦¾à¦ªà¦Ÿà¦¿à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">Features:</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">* High Quality Bengali TV Channels.<br style="box-sizing: border-box;" />\r\n* No Flash Player Required.<br style="box-sizing: border-box;" />\r\n* Easy To Use.<br style="box-sizing: border-box;" />\r\n* Simple Flat Design.<br style="box-sizing: border-box;" />\r\n* All Channels Working.<br style="box-sizing: border-box;" />\r\n* User Friendly.</p>\r\n', '6.png', '', 10, 5, 3, 0, '2017-12-19 09:08:24'),
(8, 'UBER à¦…à§à¦¯à¦¾à¦ª à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à§à¦¨, à¦«à§à¦°à¦¿ à¦à¦¸à¦¿ à¦—à¦¾à§œà§€à¦¤à§‡ à¦¯à¦¾à¦¤à¦¾à§Ÿà¦¾à¦¤ à¦•à¦°à§à¦¨!!', '<p><span style="color: rgb(34, 34, 34); font-family: Verdana, Geneva, sans-serif; font-size: 15px;">à¦¸à§à¦®à¦¾à¦°à§à¦Ÿà¦«à§‹à¦¨ à¦à¦ªà§à¦²à¦¿à¦•à§‡à¦¶à¦¨ à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦…à¦¨à¦²à¦¾à¦‡à¦¨ à¦ªà¦°à¦¿à¦¬à¦¹à¦¨ à¦¨à§‡à¦Ÿà¦“à§Ÿà¦¾à¦°à§à¦• &ldquo;UBER&rdquo; à¦¢à¦¾à¦•à¦¾ à¦¶à¦¹à¦°à§‡ à¦•à¦¾à¦°à§à¦¯à¦•à§à¦°à¦® à¦¶à§à¦°à§ à¦•à¦°à§‡ à¦®à¦¾à¦¸ à¦¸à¦¾à¦¤à§‡à¦• à¦ªà§à¦°à§à¦¬à§‡à¥¤ à¦†à¦®à§‡à¦°à¦¿à¦•à¦¾à¦° à¦¸à¦¾à¦¨à¦«à§à¦°à¦¾à¦¨à¦¸à¦¿à¦¸à¦•à§‹ à¦¶à¦¹à¦°à§‡ à¦¯à¦¾à¦¤à§à¦°à¦¾ à¦¶à§à¦°à§ à¦•à¦°à¦¾ à¦à¦ªà§à¦²à¦¿à¦•à§‡à¦¶à¦¨ à¦¸à¦¾à¦°à§à¦­à¦¿à¦¸à¦Ÿà¦¿ à¦à¦°à¦‡ à¦®à¦¾à¦à§‡ à¦¬à§à¦¯à¦¾à¦ªà¦• à¦¸à¦¾à§œà¦¾ à¦œà¦¾à¦—à¦¿à§Ÿà§‡à¦›à§‡à¥¤ à¦¬à¦¿à¦¶à§à¦¬à§‡à¦° à§«à§­à§¦à¦Ÿà¦¿ à¦‰à¦²à§à¦²à§‡à¦–à¦¯à§‹à¦—à§à¦¯ à¦¶à¦¹à¦°à§‡ à¦Ÿà§à¦¯à¦¾à¦•à§à¦¸à¦¿ à¦¸à§‡à¦¬à¦¾ à¦¦à¦¿à¦šà§à¦›à§‡ &lsquo;à¦‰à¦¬à¦¾à¦°&rsquo;à¥¤ à¦¢à¦¾à¦•à¦¾à§Ÿ &lsquo;à¦‰à¦¬à¦¾à¦°&rsquo; à¦—à¦¾à§œà¦¿à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§ª à¦¹à¦¾à¦œà¦¾à¦°à§‡à¦° à¦•à¦¾à¦›à¦¾à¦•à¦¾à¦›à¦¿à¥¤</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">&lsquo;à¦‰à¦¬à¦¾à¦°à§‡&rsquo;à¦° à¦¬à§à¦¯à¦ªà¦• à¦¸à¦¾à§œà¦¾ à¦œà¦¾à¦—à¦¾à¦¨à§‹à¦° à¦•à¦¾à¦°à¦£ à¦à¦° à¦¸à¦¾à¦¶à§à¦°à§Ÿà§€ à¦­à¦¾à§œà¦¾, à¦¨à¦¿à¦°à¦¾à¦ªà¦¦ à¦“ à¦†à¦°à¦¾à¦®à¦¦à¦¾à§Ÿà¦• à¦­à§à¦°à¦®à¦£à¥¤ à¦‰à¦¬à¦¾à¦° à¦—à¦¾à§œà§€ à§ª à¦¸à¦¿à¦Ÿà§‡à¦° à¦ªà§à¦°à¦¾à¦‡à¦­à§‡à¦Ÿ à¦à¦¸à¦¿ à¦•à¦¾à¦°à¥¤ à¦ªà§‡à¦›à¦¨à§‡à¦° à¦¸à¦¿à¦Ÿà§‡ à§© à¦œà¦¨, à¦¸à¦¾à¦®à¦¨à§‡ à§§ à¦œà¦¨ à¦¬à¦¸à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¥¤ à¦°à¦¿à¦•à§‹à§Ÿà§‡à¦¸à§à¦Ÿ à¦ªà¦¾à¦ à¦¾à¦¨à§‹à¦° à§« à¦¥à§‡à¦•à§‡ à§§à§¦ à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡à¦° à¦®à¦§à§à¦¯à§‡à¦‡ à¦‰à¦¬à¦¾à¦° à¦—à¦¾à§œà§€ à¦šà¦²à§‡ à¦†à¦¸à§‡ à¦à¦¬à¦‚ à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦° à¦“ à¦—à¦¾à§œà§€ à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦¯à¦¾à¦¬à¦¤à§€à§Ÿ à¦¤à¦¥à§à¦¯ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦° à¦•à¦¾à¦›à§‡ à¦¥à¦¾à¦•à§‡ à¦¬à¦²à§‡ à¦à¦Ÿà¦¿ à¦¶à¦¤à¦­à¦¾à¦— à¦¨à¦¿à¦°à¦¾à¦ªà¦¦ à¦¸à¦¾à¦°à§à¦­à¦¿à¦¸à¥¤ à¦à¦•à¦Ÿà¦¿ à¦Ÿà§à¦¯à¦¾à¦•à§à¦¸à¦¿à¦¤à§‡ à¦¯à§‡à¦–à¦¾à¦¨à§‡ à¦­à¦¾à§œà¦¾ à¦†à¦¸à§‡ à§¬à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾, à¦¸à§‡à¦–à¦¾à¦¨à§‡ à¦†à¦ªà¦¨à¦¿ à§©à§¦à§¦ à¦¥à§‡à¦•à§‡ à§©à§«à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾à¦° à¦®à¦§à§à¦¯à§‡à¦‡ à¦¯à¦¾à¦¤à¦¾à§Ÿà¦¾à¦¤ à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‡à¦¨ à¦‰à¦¬à¦¾à¦° à¦¸à¦¾à¦°à§à¦­à¦¿à¦¸à§‡à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡à¥¤ à¦†à¦®à¦¾à¦° à¦¬à¦¾à¦¸à¦¾ à¦¥à§‡à¦•à§‡ à¦®à¦¾à¦¨à¦¿à¦•à¦¨à¦—à¦° à¦¬à¦¾à¦¸à¦¸à§à¦Ÿà§à¦¯à¦¾à¦¨à§à¦¡ à¦¸à¦¿à¦à¦¨à¦œà¦¿ à¦­à¦¾à§œà¦¾ à§§à§®à§¦-à§¨à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾à¥¤ à¦‰à¦¬à¦¾à¦°à§‡ à¦­à¦¾à§œà¦¾ à¦†à¦¸à§‡ à§§à§«à§¦ à¦Ÿà¦¾à¦•à¦¾à¦° à¦•à¦¾à¦›à¦¾à¦•à¦¾à¦›à¦¿à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦¦à§à¦°à§à¦¤ à¦ªà¦°à¦¿à¦šà¦¿à¦¤à¦¿ à¦“ à¦œà¦¨à¦ªà§à¦°à¦¿à§Ÿà¦¤à¦¾ à¦²à¦¾à¦­à§‡ à¦‰à¦¬à¦¾à¦° à¦¬à§‡à¦¶à¦•à¦¿à¦›à§ à¦¬à¦¾à§œà¦¤à¦¿ à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦¦à¦¿à¦šà§à¦›à§‡à¥¤ à¦ªà§à¦°à¦¤à§à¦¯à§‡à¦• à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€ &lsquo;à¦‰à¦¬à¦¾à¦°&rsquo; à¦…à§à¦¯à¦¾à¦ªà¦Ÿà¦¿ à¦‡à¦¨à§à¦¸à¦Ÿà¦² à¦•à¦°à§‡ à¦à¦•à¦Ÿà¦¿ à¦°à§‡à¦«à¦¾à¦°à¦¾à¦² à¦•à§‹à¦¡ à¦¬à¦¸à¦¾à¦²à§‡à¦‡ à¦ªà§‡à§Ÿà§‡ à¦¯à¦¾à¦¨ à§© à¦Ÿà¦¿ à§§à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾à¦° à¦«à§à¦°à¦¿ à¦Ÿà§à¦°à¦¿à¦ªà¥¤ à¦…à¦°à§à¦¥à¦¾à§Ž, à¦ªà§à¦°à¦¥à¦®&nbsp; à§© à¦Ÿà¦¿ à¦Ÿà§à¦°à¦¿à¦ªà§‡ à¦®à§‹à¦Ÿ à¦­à¦¾à§œà¦¾à¦° à¦®à¦¾à¦à§‡ à§§à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾ à¦•à¦°à§‡ à¦›à¦¾à§œ à¦ªà¦¾à¦¬à§‡à¦¨à¥¤ à¦§à¦°à§à¦¨ à¦®à¦¤à¦¿à¦à¦¿à¦² à¦¥à§‡à¦•à§‡ à¦«à¦¾à¦°à§à¦®à¦—à§‡à¦Ÿ à¦¯à§‡à¦¤à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦­à¦¾à§œà¦¾ à¦†à¦¸à¦²à§‹ à§§à§ªà§¦ à¦Ÿà¦¾à¦•à¦¾à¥¤ à§§à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾ à¦›à¦¾à§œ à¦¦à¦¿à¦²à§‡ à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦¦à¦¿à¦¤à§‡ à¦¹à¦¬à§‡ à¦®à¦¾à¦¤à§à¦° à§ªà§¦ à¦Ÿà¦¾à¦•à¦¾à¥¤ à¦à¦° à¦ªà¦¾à¦¶à¦¾à¦ªà¦¾à¦¶à¦¿ à¦‰à¦¬à¦¾à¦° à¦ªà§à¦°à¦¤à¦¿ à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡ à¦¬à¦¿à¦¶à§‡à¦· à¦—à¦¿à¦«à¦Ÿ à¦•à§‹à¦¡ à¦ªà¦¾à¦ à¦¾à§Ÿà¥¤ à¦¯à§‡à¦Ÿà¦¿ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à§‡à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€ à¦ªà¦¾à¦¬à§‡à¦¨ à¦ªà§à¦°à¦¤à¦¿ à¦Ÿà§à¦°à¦¿à¦ªà§‡ à§ªà§¦% à¦¥à§‡à¦•à§‡ à§«à§¦% à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦›à¦¾à§œà¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦‰à¦¬à¦¾à¦°à§‡à¦° à¦«à§à¦°à¦¿ à¦Ÿà§à¦°à¦¿à¦ª à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à§‡ à¦¬à¦¨à§à¦§à§à¦°à¦¾ à¦®à¦¿à¦²à§‡ à¦ªà§à¦°à¦¾à§Ÿà¦‡ à¦¨à¦¿à¦•à¦Ÿà¦¬à¦°à§à¦¤à§€ à¦œà¦¾à§Ÿà¦—à¦¾à¦—à§à¦²à§‹à¦¤à§‡ à¦˜à§‹à¦°à¦¾à¦˜à§à¦°à¦¿ à¦•à¦°à¦¿à¥¤ à¦†à¦®à¦¾à¦° à¦ªà§à¦°à¦¥à¦® à¦Ÿà§à¦°à¦¿à¦ªà¦Ÿà¦¿ à¦›à¦¿à¦² à¦ªà¦²à¦¾à¦¶à¦¿ à¦®à§‹à§œ à¦¥à§‡à¦•à§‡ à¦¢à¦¾à¦•à§‡à¦¶à§à¦¬à¦°à§€ à¦®à¦¨à§à¦¦à¦¿à¦° à¦ªà¦°à§à¦¯à¦¨à§à¦¤à¥¤ à¦­à¦¾à§œà¦¾ à¦†à¦¸à¦›à¦¿à¦²à§‹ à§¯à§¦ à¦Ÿà¦¾à¦•à¦¾à¦° à¦®à¦¤à¥¤ à§§à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾ à¦›à¦¾à§œ à¦¬à¦²à§‡ à¦•à§‹à¦¨ à¦Ÿà¦¾à¦•à¦¾à¦‡ à¦¦à¦¿à¦¤à§‡ à¦¹à§Ÿà¦¨à¦¿à¥¤ à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦ à¦œà¦¾à¦¨à¦¿à§Ÿà§‡ à¦šà¦²à§‡ à¦—à§‡à¦²à§‡à¦¨ à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦°à¥¤ à¦ªà¦°à¦¬à¦°à§à¦¤à¦¿à¦¤à§‡ à¦Ÿà¦¿à¦à¦¸à¦¸à¦¿ à¦¥à§‡à¦•à§‡ à¦†à¦œà¦¿à¦®à¦ªà§à¦°, à¦šà¦¾à¦™à§à¦–à¦¾à¦°à¦ªà§à¦², à¦«à¦¾à¦°à§à¦®à¦—à§‡à¦Ÿ, à¦¨à¦¿à¦‰à¦®à¦¾à¦°à§à¦•à§‡à¦Ÿà¦¸à¦¹ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦œà¦¾à§Ÿà¦—à¦¾à§Ÿ à¦«à§à¦°à¦¿à¦¤à§‡ à¦˜à§à¦°à§‡ à¦¬à§‡à§œà¦¿à§Ÿà§‡à¦›à¦¿à¥¤ à¦«à§à¦°à¦¿ à¦Ÿà§à¦°à¦¿à¦ª à¦‡à¦‰à¦¸ à¦•à¦°à¦¾à§Ÿ à¦•à¦¿à¦›à§ à¦•à¦¿à¦›à§ à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦°à¦¿à¦•à¦¶à¦¾ à¦¥à§‡à¦•à§‡à¦“ à¦•à¦® à¦­à¦¾à§œà¦¾ à¦†à¦¸à§‡à¥¤ à¦¬à¦¨à§à¦§à§à¦°à¦¾ à¦®à¦¿à¦²à§‡ à¦¶à¦¹à§€à¦¦ à¦®à¦¿à¦¨à¦¾à¦° à¦¥à§‡à¦•à§‡ à¦œà¦—à¦¨à§à¦¨à¦¾à¦¥ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦—à¦¿à§Ÿà§‡à¦›à¦¿ à§®à§ª à¦Ÿà¦¾à¦•à¦¾à§Ÿ à¦®à¦¾à¦¤à§à¦°à¥¤ à¦à¦­à¦¾à¦¬à§‡ à¦‰à¦¬à¦¾à¦°à§‡à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦­à¦¾à¦²à¦‡ à¦®à¦œà¦¾ à¦¨à§‡à§Ÿà¦¾ à¦¹à¦šà§à¦›à§‡à¥¤ à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° &lsquo;à¦‰à¦¬à¦¾à¦°&rsquo; à¦•à§‡à¦®à¦¨, à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¤à§‡ à¦¹à§Ÿ, à¦à¦Ÿà¦¿ à¦à¦•à§à¦¸à¦ªà§‡à¦°à¦¿à§Ÿà§‡à¦¨à§à¦¸ à¦•à¦°à¦¤à§‡ à¦†à¦ªà¦¨à¦¿à¦“ à¦•à¦¾à¦›à§‡ à¦•à§‹à¦¥à¦¾à¦“ à¦«à§à¦°à¦¿ à¦Ÿà§à¦°à¦¿à¦ª à¦¦à¦¿à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¥¤ à¦à¦¸à¦¿ à¦—à¦¾à§œà§€à¦¤à§‡ à¦šà§œà§‡ à¦Ÿà§à¦°à¦¿à¦ª à¦¶à§‡à¦·à§‡ à¦•à§‹à¦¨ à¦Ÿà¦¾à¦•à¦¾ à¦¦à¦¿à¦¤à§‡ à¦¹à¦¬à§‡à¦¨à¦¾, à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦ à¦ªà¦¾à¦¬à§‡à¦¨ à¦¬à¦¿à¦¨à¦¿à¦®à§Ÿà§‡à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);"><strong style="box-sizing: border-box;">à¦à¦¬à¦¾à¦° à¦†à¦¸à§à¦¨ UBER à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦ªà§à¦°à¦•à§à¦°à¦¿à§Ÿà¦¾ à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦œà¦¾à¦¨à¦¾ à¦¯à¦¾à¦•à¦ƒ</strong></p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">&ndash; à¦ªà§à¦²à§‡-à¦¸à§à¦Ÿà§‹à¦° à¦¥à§‡à¦•à§‡ UBER à¦²à¦¿à¦–à§‡ à¦¸à¦¾à¦°à§à¦š à¦•à¦°à§‡ à¦…à§à¦¯à¦¾à¦ªà¦Ÿà¦¿ à¦‡à¦¨à§à¦¸à¦Ÿà¦² à¦•à¦°à§à¦¨à¥¤ à¦…à¦¥à¦¬à¦¾&nbsp;<a href="https://play.google.com/store/apps/details?id=com.ubercab&amp;hl=en" rel="noopener noreferrer" style="box-sizing: border-box; background-color: transparent; color: rgb(73, 131, 165); text-decoration-line: none;" target="_blank">à¦à¦‡ à¦²à¦¿à¦™à§à¦• à¦¥à§‡à¦•à§‡</a>&nbsp;à¦‡à¦¨à§à¦¸à¦Ÿà¦² à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¥¤ à¦…à§à¦¯à¦¾à¦ªà¦Ÿà¦¿&nbsp;à¦šà¦¾à¦²à§ à¦•à¦°à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦‡à¦®à§‡à¦‡à¦², à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¦à¦¿à§Ÿà§‡ à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà§à¦°à§‡à¦¶à¦¨ à¦•à¦°à§à¦¨à¥¤ à¦¯à§‡ à¦®à§‹à¦¬à¦¾à¦‡à¦²à§‡ à¦‡à¦¨à§à¦¸à¦Ÿà¦² à¦•à¦°à¦›à§‡à¦¨ à¦¸à§‡ à¦¸à¦¿à¦®à§‡à¦° à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°à¦Ÿà¦¾à¦‡ à¦¦à¦¿à¦¨à¥¤ à¦—à¦¾à§œà¦¿à¦° à¦œà¦¨à§à¦¯ à¦°à¦¿à¦•à§à§Ÿà§‡à¦¸à§à¦Ÿ à¦ªà¦¾à¦ à¦¾à¦²à§‡ à¦à¦‡ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°à§‡ à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦° à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦•à¦² à¦•à¦°à¦¬à§‡à¥¤ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¦à§‡à§Ÿà¦¾à¦° à¦ªà¦° à¦†à¦ªà¦¨à¦¾à¦° à¦®à§‡à¦¸à§‡à¦œà§‡ à¦à¦•à¦Ÿà¦¿ à¦•à§‹à¦¡ à¦ªà¦¾à¦ à¦¾à¦¬à§‡à¥¤ à¦¸à§‡à¦Ÿà¦¿ à¦¬à¦¸à¦¿à§Ÿà§‡ à¦“à¦•à§‡ à¦•à¦°à§à¦¨à¥¤ à¦¬à§à¦¯à¦¾à¦¸, à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà§à¦°à§‡à¦¶à¦¨ à¦¹à§Ÿà§‡ à¦—à§‡à¦²à¥¤ à¦à¦–à¦¨ à¦†à¦ªà¦¨à¦¿ à¦‰à¦¬à¦¾à¦°à§‡à¦° à¦®à§‡à¦‡à¦¨ à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦«à§‡à¦¸ à¦¦à§‡à¦–à¦¤à§‡ à¦ªà¦¾à¦¬à§‡à¦¨à¥¤ à¦à¦–à¦¾à¦¨à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦à¦²à¦¾à¦•à¦¾à¦° à¦—à§à¦—à¦² à¦à¦®à¦¬à¦¿à¦¡à§‡à¦¡ à¦®à§à¦¯à¦¾à¦ª à¦¦à§‡à¦–à¦¾à¦¬à§‡à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">&nbsp;à¦‰à¦¬à¦¾à¦° à¦—à¦¾à§œà§€ à¦¸à§‡à¦¬à¦¾ à¦ªà§‡à¦¤à§‡ à¦ªà§à¦°à¦¥à¦®à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦®à§‹à¦¬à¦¾à¦‡à¦²à§‡à¦° à¦¡à¦¾à¦Ÿà¦¾ à¦šà¦¾à¦²à§ à¦•à¦°à§à¦¨à¥¤ à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸ à¦¥à§‡à¦•à§‡ à¦œà¦¿à¦ªà¦¿à¦à¦¸ à¦à¦¬à¦‚ à¦²à§‹à¦•à§‡à¦¶à¦¨ à¦¸à¦¾à¦°à§à¦­à¦¿à¦¸ à¦à¦¨à¦¾à¦¬à¦² à¦•à¦°à§à¦¨, à¦†à¦ªà¦¨à¦¾à¦° à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨ à¦œà¦¾à¦¨à¦¾à¦° à¦œà¦¨à§à¦¯à¥¤ à¦…à¦¨à§‡à¦• à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦œà¦¿à¦ªà¦¿à¦à¦¸ à¦šà¦¾à¦²à§ à¦›à¦¾à§œà¦¾ à¦…à¦Ÿà§‹à¦®à§‡à¦Ÿà¦¿à¦• à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦²à§‹à¦•à§‡à¦¶à¦¨ à¦¦à§‡à¦–à¦¾à§Ÿà¥¤ à¦¸à§‡à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦œà¦¿à¦ªà¦¿à¦à¦¸ à¦à¦¨à¦¾à¦¬à¦² à¦•à¦°à¦¾à¦° à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨ à¦¨à§‡à¦‡à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">&nbsp;</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">&ndash; à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨ à¦¦à§‡à¦–à§‡ &ldquo;Where to&rdquo; à¦²à§‡à¦–à¦¾ à¦¬à¦•à§à¦¸à§‡ à¦—à¦¨à§à¦¤à¦¬à§à¦¯à¦¸à§à¦¥à¦² à¦²à¦¿à¦–à§à¦¨à¥¤ à¦‰à¦¬à¦¾à¦° à¦…à§à¦¯à¦¾à¦ª à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦†à¦ªà¦«à§à¦°à¦¨à§à¦Ÿ à¦­à¦¾à§œà¦¾ à¦¦à§‡à¦–à¦¾à¦¬à§‡à¥¤ à¦†à¦ªà¦«à§à¦°à¦¨à§à¦Ÿ à¦­à¦¾à§œà¦¾ à¦¯à¦¦à¦¿ à¦†à¦ªà¦¨à¦¾à¦° à¦¬à¦¾à¦œà§‡à¦Ÿà§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦¥à¦¾à¦•à§‡ à¦¤à¦¾à¦¹à¦²à§‡ à¦†à¦ªà¦¨à¦¿ à¦‰à¦¬à¦¾à¦°à§‡ à¦°à¦¿à¦•à§‹à§Ÿà§‡à¦¸à§à¦Ÿ à¦ªà¦¾à¦ à¦¾à¦¬à§‡à¦¨à¥¤&nbsp; &ldquo;REQUEST UBERX&rdquo; à¦ à¦šà¦¾à¦ªà§à¦¨à¥¤ à¦†à¦ªà¦¨à¦¾à¦° à¦°à¦¿à¦•à§à§Ÿà§‡à¦¸à§à¦Ÿ à¦à¦•à¦œà¦¨ à¦‰à¦¬à¦¾à¦° à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦° à¦à¦•à§à¦¸à§‡à¦ªà§à¦Ÿ à¦•à¦°à¦¬à§‡à¥¤ à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦°à§‡à¦° à¦¨à¦¾à¦®, à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°, à¦—à¦¾à§œà¦¿à¦° à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦“ à¦®à¦¡à§‡à¦² à¦¦à§‡à¦–à¦¤à§‡ à¦ªà¦¾à¦¬à§‡à¦¨à¥¤ à¦—à¦¾à§œà¦¿à¦° à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°à¦Ÿà¦¾ à¦®à¦¨à§‡ à¦°à¦¾à¦–à§à¦¨à¥¤ à¦—à¦¾à§œà§€à¦° à¦—à¦¾à§œà¦¿à¦° à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨ à¦“ à¦†à¦¸à¦¾à¦° à¦¸à¦®à§Ÿ à¦¸à§à¦•à§à¦°à¦¿à¦¨à§‡ à¦¦à§‡à¦–à¦¤à§‡ à¦ªà¦¾à¦¬à§‡à¦¨à¥¤ à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦° à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦•à¦² à¦•à¦°à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨ à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦œà§‡à¦¨à§‡ à¦¨à¦¿à¦¬à§‡à¥¤ à¦—à¦¾à§œà§€ à¦ªà§Œà¦à¦›à¦¾à¦²à§‡ à¦—à¦¾à§œà§€ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¦à§‡à¦–à§‡ à¦‰à¦ à§à¦¨à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">&ndash; à¦—à¦¨à§à¦¤à¦¬à§à¦¯à¦¸à§à¦¥à¦²à§‡ à¦ªà§Œà¦à¦›à¦¾à¦²à§‡ à¦Ÿà§à¦°à¦¿à¦ª à¦¶à§‡à¦· à¦¹à¦¬à§‡ à¦à¦¬à¦‚ à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦°à§‡à¦° à¦®à§‹à¦¬à¦¾à¦‡à¦²à§‡à¦° à¦¸à¦¬à§à¦œ à¦¸à§à¦•à§à¦°à¦¿à¦¨à§‡ à¦­à¦¾à§œà¦¾ à¦¦à§‡à¦–à¦¤à§‡ à¦ªà¦¾à¦¬à§‡à¦¨à¥¤ à¦¸à§‡à¦‡ à¦Ÿà¦¾à¦•à¦¾ à¦†à¦ªà¦¨à¦¿ à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦°à¦•à§‡ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦•à¦°à¦¬à§‡à¦¨à¥¤ à¦Ÿà§à¦°à¦¿à¦ª à¦¶à§‡à¦·à§‡ à¦†à¦ªà¦¨à¦¿ à¦Ÿà§à¦°à¦¿à¦ªà§‡à¦° à¦ªà§‚à¦°à§à¦¨ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦¬à¦¿à¦¬à§‡à¦šà¦¨à¦¾ à¦•à¦°à§‡ à¦‰à¦¬à¦¾à¦° à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦°à¦•à§‡ à§§ à¦¥à§‡à¦•à§‡ à§« à¦à¦° à¦®à¦§à§à¦¯à§‡ à¦°à§‡à¦Ÿà¦¿à¦‚ à¦¦à¦¿à¦¬à§‡à¦¨à¥¤ (à§§ &ndash; à¦–à¦¾à¦°à¦¾à¦ª à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ ~ à§« &ndash; à¦­à¦¾à¦²à§‹ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾)à¥¤ à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦°à§‡à¦° à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°, à¦—à¦¾à§œà¦¿à¦° à¦ªà¦°à¦¿à¦¬à§‡à¦¶, à¦à¦¸à¦¿ à¦à¦¬à¦‚ à¦ªà§à¦°à§‹ à¦Ÿà§à¦°à¦¿à¦ªà§‡à¦° à¦¸à¦¨à§à¦¤à§à¦·à§à¦Ÿà¦¿à¦° à¦‰à¦ªà¦° à¦°à§‡à¦Ÿà¦¿à¦‚ à¦¦à¦¿à¦¬à§‡à¦¨à¥¤ à¦¬à§à¦¯à¦¾à¦¸, à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à¦¥à¦® à¦‰à¦¬à¦¾à¦° à¦Ÿà§à¦°à¦¿à¦ªà¦Ÿà¦¿ à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦¹à¦²à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦‰à¦¬à¦¾à¦°à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦¸à¦®à§Ÿ à¦­à¦¾à¦² à¦•à¦¾à¦Ÿà§à¦•à¥¤ à¦­à§à¦°à¦®à¦£ à¦¹à§‹à¦• à¦¨à¦¿à¦°à¦¾à¦ªà¦¦ à¦“ à¦†à¦°à¦¾à¦®à¦¦à¦¾à§Ÿà¦•à¥¤ à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦à¥¤</p>\r\n', '8.png', '', 10, 5, 3, 0, '2017-12-19 09:08:24'),
(10, 'à¦†à¦ªà¦¨à¦¾à¦° à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦«à§‹à¦¨à§‡à¦° à¦—à¦¤à¦¿à¦•à§‡ à¦¦à§à¦¬à¦¿à¦—à§à¦£ à¦•à¦°à§à¦¨', '<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦—à§à¦—à¦² I/O à§¨à§¦à§§à§ª à¦¡à§‡à¦­à§‡à¦²à¦ªà¦¾à¦° à¦•à¦¨à¦«à¦¾à¦°à§‡à¦¨à§à¦¸à§‡ à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡à§‡à¦° à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦®à§‡à¦œà¦° à¦†à¦ªà¦¡à§‡à¦Ÿ à¦˜à§‹à¦·à¦£à¦¾ à¦•à¦°à§‡à¥¤ à¦†à¦ªà¦¡à§‡à¦Ÿà§‡à¦¡ à¦¸à¦‚à¦¸à§à¦•à¦°à¦£à§‡ (à¦•à§‹à¦¡ à¦¨à§‡à¦®: à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ L) à¦¥à¦¾à¦•à¦›à§‡ à¦‰à¦¨à§à¦¨à¦¤ à¦¨à§‹à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦¶à¦¨ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®, à¦†à¦ªà¦¡à§‡à¦Ÿà§‡à¦¡ à¦‡à¦‰à¦œà¦¾à¦° à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦«à§‡à¦¸ à¦à¦¬à¦‚ à¦¨à¦¤à§à¦¨ à¦¬à§à¦¯à¦¾à¦Ÿà¦¾à¦°à¦¿ à¦¸à§‡à¦­à¦¿à¦‚ à¦®à§‹à¦¡à¥¤ à¦¸à¦¬à¦šà§‡à§Ÿà§‡ à¦¬à§œ à¦•à¦¥à¦¾ à¦à¦¤à§‡ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¾ à¦¹à¦¬à§‡ ART à¦°à¦¾à¦¨à¦Ÿà¦¾à¦‡à¦® à¦¯à¦¾ à¦…à§à¦¯à¦¾à¦ªà§à¦²à¦¿à¦•à§‡à¦¶à¦¨à§‡à¦° à¦ªà¦¾à¦°à¦«à¦°à¦®à§à¦¯à¦¾à¦¨à§à¦¸ à¦¬à¦¾à§œà¦¿à§Ÿà§‡ à¦¦à¦¿à¦¬à§‡ à¦¦à§à¦¬à¦¿à¦—à§à¦£à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);"><a href="http://tp.media.tunerpage.com/wp-content/uploads/2016/06/index-102.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(73, 131, 165); text-decoration-line: none;"><img alt="index à¦†à¦ªà¦¨à¦¾à¦° à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦«à§‹à¦¨à§‡à¦° à¦—à¦¤à¦¿à¦•à§‡ à¦¦à§à¦¬à¦¿à¦—à§à¦£ à¦•à¦°à§à¦¨" class="attachment-full  aligncenter" height="270" src="http://tp.media.tunerpage.com/wp-content/uploads/2016/06/index-102.jpg" style="box-sizing: border-box; border: 0px; max-width: 100%; height: auto; text-align: center; clear: both; display: block; margin: 6px auto 21px; opacity: 0;" title="à¦†à¦ªà¦¨à¦¾à¦° à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦«à§‹à¦¨à§‡à¦° à¦—à¦¤à¦¿à¦•à§‡ à¦¦à§à¦¬à¦¿à¦—à§à¦£ à¦•à¦°à§à¦¨" width="450" /></a>à¦†à¦ªà¦¨à¦¾à¦°à¦¾ à¦¹à§Ÿà¦¤à§‡à¦¾ à¦®à¦¨à§‡ à¦•à¦°à§‡à¦¨ à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦«à§‹à¦¨ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦°à¦¾ à¦®à¦¨à§‡ à¦•à¦°à¦›à§‡à¦¨ à¦¬à¦¹à§à¦² à¦ªà§à¦°à¦¤à§€à¦•à§à¦·à¦¿à¦¤ ART à¦°à¦¾à¦¨à¦Ÿà¦¾à¦‡à¦® à¦ªà§‡à¦¤à§‡ à¦¤à¦¾à¦° à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦à¦² à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨ à¦¹à¦¬à§‡à¥¤ à¦§à¦¾à¦°à¦£à¦¾à¦Ÿà¦¿ à¦­à§à¦²à¥¤ à¦—à§à¦—à¦² à¦¤à¦¾à¦¦à§‡à¦° ART à¦ªà§à¦°à¦¯à§à¦•à§à¦¤à¦¿ à¦¸à¦°à§à¦¬à¦ªà§à¦°à¦¥à¦® à¦šà¦¾à¦²à§ à¦•à¦°à§‡ à§¨à§¦à§§à§© à¦¸à¦¾à¦²à§‡à¥¤ à¦¨à§‡à¦•à§à¦¸à¦¾à¦¸ à§« à¦¸à¦°à§à¦¬à¦ªà§à¦°à¦¥à¦® à¦¡à¦¿à¦­à¦¾à¦‡à¦¸ à¦¯à¦¾à¦¤à§‡ ART à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¾ à¦¹à§Ÿ, à¦¤à¦¬à§‡ à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦¿à¦‚ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦® à¦›à¦¿à¦²à§‹ à¦•à¦¿à¦Ÿà¦•à§à¦¯à¦¾à¦Ÿ à§ª.à§ªà¥¤ à¦¯à¦¾à¦° à¦®à¦¾à¦¨à§‡ à¦¹à¦šà§à¦›à§‡ ART à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦ªà§‡à¦¤à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦•à¦¿à¦Ÿà¦•à§à¦¯à¦¾à¦Ÿ à¦¥à¦¾à¦•à¦¾ à¦†à¦¬à¦¶à§à¦¯à¦•à¥¤ à¦¤à¦¬à§‡ à¦à¦Ÿà¦¾ à¦ à¦¿à¦• à¦¯à§‡ à¦¬à¦¾à¦œà¦¾à¦°à§‡à¦° à¦¸à¦•à¦² à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à§ª.à§ª à¦“à¦à¦¸ à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦¡à¦¿à¦­à¦¾à¦‡à¦¸à§‡ ART à¦¸à¦®à¦°à§à¦¥à¦¨ à¦•à¦°à§‡ à¦¨à¦¾à¥¤ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤à¦­à¦¾à¦¬à§‡ à¦à¦Ÿà¦¾ à¦à¦‡à¦šà¦Ÿà¦¿à¦¸à¦¿ à¦“à§Ÿà¦¾à¦¨ à¦à¦®à§®, à¦¸à§à¦¯à¦¾à¦®à¦¸à¦¾à¦‚ à¦—à§à¦¯à¦¾à¦²à¦¾à¦•à§à¦¸à¦¿ à¦à¦¸à§«, à¦®à§‹à¦Ÿà§‹ à¦à¦•à§à¦¸, à¦®à§‹à¦Ÿà§‹ à¦œà¦¿, à¦¨à§‡à¦•à§à¦¸à¦¾à¦¸ à§« à¦à¦¬à¦‚ à§¨à§¦à§§à§© à¦¸à¦¾à¦²à§‡à¦° à¦¨à§‡à¦•à§à¦¸à¦¾à¦¸ à§­ à¦ à¦¸à¦®à¦°à§à¦¥à¦¨ à¦•à¦°à¦¬à§‡à¥¤ à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦•à¦¿à¦›à§ à¦¸à§à¦®à¦¾à¦°à§à¦Ÿà¦«à§‹à¦¨ à¦¯à§‡à¦®à¦¨, à¦à¦²à¦œà¦¿ à¦œà¦¿à§¨ à¦à¦° à¦•à§‹à¦°à¦¿à§Ÿà¦¾à¦¨ à¦®à¦¡à§‡à¦²à§‡à¦“ ART à¦¸à¦•à§à¦°à¦¿à§Ÿ à¦•à¦°à¦¾ à¦¯à¦¾à¦¬à§‡à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);"><strong style="box-sizing: border-box;">à¦•à§€à¦­à¦¾à¦¬à§‡ à¦•à¦°à¦¬à§‡à¦¨:</strong><br style="box-sizing: border-box;" />\r\nà¦†à¦ªà¦¨à¦¾à¦° à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦«à§‡à¦¾à¦¨à§‡ à¦•à¦¿à¦Ÿà¦•à§à¦¯à¦¾à¦Ÿ à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦¸à§à¦®à¦¾à¦°à§à¦Ÿà¦«à§‹à¦¨à§‡à¦° à¦¸à§‡à¦Ÿà¦¿à¦‚ à¦®à§‡à¦¨à§à¦¤à§‡ à¦¯à¦¾à¦¨à¥¤ à¦¸à§‡à¦–à¦¾à¦¨ à¦¥à§‡à¦•à§‡ About Phone à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§‡ Build Number à¦à¦° à¦‰à¦ªà¦° à§­ à¦¬à¦¾à¦° à¦à¦•à¦Ÿà¦¾à¦¨à¦¾ à¦Ÿà§à¦¯à¦¾à¦ª à¦•à¦°à§à¦¨à¥¤ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦Ÿà§à¦¯à¦¾à¦ª à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨ à¦¤à¦¾à¦¹à¦²à§‡ à¦¦à§‡à¦–à¦¬à§‡à¦¨ à¦†à¦ªà¦¨à¦¾à¦° à¦¡à¦¿à¦­à¦¾à¦‡à¦¸à§‡à¦° à¦¡à§‡à¦­à§‡à¦²à¦ªà¦¾à¦° à¦…à¦ªà¦¶à¦¨ à¦¸à¦•à§à¦°à¦¿à§Ÿ à¦¹à§Ÿà§‡à¦›à§‡ à¦¯à¦¾ à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦†à¦°à¦“ à¦…à§à¦¯à¦¾à¦¡à¦­à¦¾à¦¨à§à¦¸à¦¡ à¦¸à§‡à¦Ÿà¦¿à¦‚ à¦ à¦…à§à¦¯à¦¾à¦•à¦¸à§‡à¦¸ à¦•à¦°à¦¾à¦° à¦¸à§à¦¯à§‹à¦— à¦¦à¦¿à¦¬à§‡à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦à¦¬à¦¾à¦° à¦¸à§‡à¦Ÿà¦¿à¦‚ à¦®à§‡à¦¨à§ à¦¥à§‡à¦•à§‡ à¦¡à§‡à¦­à§‡à¦²à¦ªà¦¾à¦° à¦…à¦ªà¦¶à¦¨ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨ à¦à¦¬à¦‚ à¦¨à¦¿à¦šà§‡à¦° à¦¦à¦¿à¦•à§‡ à¦¯à§‡à§Ÿà§‡ runtime à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨à¥¤ à¦¸à§‡à¦–à¦¾à¦¨ à¦¥à§‡à¦•à§‡ ART à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à¦²à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦«à§‹à¦¨à¦Ÿà¦¿ à¦°à¦¿à¦¸à§à¦Ÿà¦¾à¦°à§à¦Ÿ à¦šà¦¾à¦¬à§‡à¥¤ à¦¯à¦¦à¦¿ à¦¨à¦¾ à¦šà¦¾à§Ÿ à¦¤à¦¾à¦¹à¦²à§‡ à¦®à§à¦¯à¦¾à¦¨à§à§Ÿà¦¾à¦²à¦¿ à¦°à¦¿à¦¸à§à¦Ÿà¦¾à¦°à§à¦Ÿ à¦¦à¦¿à§Ÿà§‡ à¦¨à¦¿à¦¨à¥¤ à¦°à¦¿à¦¬à§à¦Ÿ à¦¹à¦“à§Ÿà¦¾à¦° à¦ªà¦° à¦†à¦ªà¦¨à¦¾à¦° à¦¡à¦¿à¦­à¦¾à¦‡à¦¸à¦Ÿà¦¿ à¦¨à¦¤à§à¦¨ à¦°à¦¾à¦¨à¦Ÿà¦¾à¦‡à¦®à§‡à¦° à¦œà¦¨à§à¦¯ à¦¸à¦•à¦² à¦…à§à¦¯à¦¾à¦ª à¦…à¦ªà¦Ÿà¦¿à¦®à¦¾à¦‡à¦œ à¦•à¦°à¦¾ à¦¶à§à¦°à§ à¦•à¦°à¦¬à§‡à¥¤ à¦à¦° à¦œà¦¨à§à¦¯ à¦à¦•à¦Ÿà§ à¦…à¦ªà§‡à¦•à§à¦·à¦¾ à¦•à¦°à§à¦¨à¥¤ à¦¯à¦–à¦¨ à¦ªà§à¦°à¦•à§à¦°à¦¿à§Ÿà¦¾à¦Ÿà¦¿ à¦¶à§‡à¦· à¦¹à¦¬à§‡ à¦¤à¦–à¦¨ à¦¸à§à¦®à¦¾à¦°à§à¦Ÿà¦«à§‹à¦¨à¦Ÿà¦¿ à¦šà¦¾à¦²à¦¿à§Ÿà§‡ à¦à¦• à¦¨à¦¤à§à¦¨ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦²à¦¾à¦­ à¦•à¦°à¦¬à§‡à¦¨à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);"><strong style="box-sizing: border-box;">à¦¸à¦¤à¦°à§à¦•à¦¤à¦¾:</strong>&nbsp;à¦–à§à¦¬ à¦…à¦²à§à¦ª à¦•à¦¿à¦›à§ à¦¸à¦‚à¦–à§à¦¯à¦• à¦…à§à¦¯à¦¾à¦ªà§à¦²à¦¿à¦•à§‡à¦¶à¦¨ ART à¦°à¦¾à¦¨à¦Ÿà¦¾à¦‡à¦® à¦¸à¦®à¦°à§à¦¥à¦¨ à¦¨à¦¾ à¦•à¦°à¦¾à¦° à¦¸à¦®à§à¦­à¦¾à¦¬à¦¨à¦¾ à¦°à§Ÿà§‡à¦›à§‡à¥¤ à¦¯à¦¦à¦¿ à¦¸à§‡à¦‡ à¦…à§à¦¯à¦¾à¦ªà§à¦²à¦¿à¦•à§‡à¦¶à¦¨à¦—à§à¦²à§‹ à¦šà¦¾à¦²à¦¾à¦¨à§‹ à¦à¦•à¦¾à¦¨à§à¦¤ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨ à¦¹à§Ÿ à¦¤à¦¾à¦¹à¦²à§‡ à¦à¦•à¦‡ à¦ªà¦¦à§à¦§à¦¤à¦¿à¦¤à§‡ Dalvik à¦®à§‹à¦¡à¦Ÿà¦¿ à¦¸à¦•à§à¦°à¦¿à§Ÿ à¦•à¦°à§‡ à¦¨à¦¿à¦¨à¥¤</p>\r\n', '10.jpg', '', 10, 5, 0, 0, '2017-12-19 09:08:24'),
(11, 'à¦¯à§‡à¦­à¦¾à¦¬à§‡ à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡à§‡à¦° à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦¿à¦‚ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®à§‡ à¦¸à§à¦•à§à¦°à¦¿à¦¨à¦¶à¦Ÿ à¦¨à§‡à¦“à§Ÿà¦¾à¦° à¦¯à¦¾à§Ÿ', '<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡ à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦à¦•à¦Ÿà¦¿ à¦œà¦¨à¦ªà§à¦°à¦¿à§Ÿ à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦¿à¦‚ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®à¥¤à¦¯à¦¾à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦šà¦®à§Žà¦•à¦¾à¦° à¦¸à¦•à¦² à¦•à¦¾à¦œ à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿà¥¤à¦†à¦ªà¦¨à¦¾à¦° à¦®à¦¾à¦à§‡ à¦®à¦¾à¦à§‡ à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦šà¦¾à¦²à¦¿à¦¤ à¦¡à¦¿à¦­à¦¾à¦‡à¦¸à§‡à¦° à¦¸à§à¦•à§à¦°à¦¿à¦¨à¦¶à¦°à§à¦Ÿ à¦¨à§‡à¦“à§Ÿà¦¾à¦° à¦ªà§à¦°à§Ÿà§‡à¦¾à¦œà¦¨ à¦¹à§Ÿà§‡ à¦¥à¦¾à¦•à§‡à¥¤ à¦à¦‡ à¦Ÿà¦¿à¦‰à¦Ÿà§‡à¦¾à¦°à¦¿à§Ÿà¦¾à¦²à§‡ à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¤à§à¦²à§‡ à¦§à¦°à¦¾ à¦¹à¦²à§‡à¦¾ à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦šà¦¾à¦²à¦¿à¦¤ à¦¡à¦¿à¦­à¦¾à¦‡à¦¸à§‡ à¦¸à§à¦•à§à¦°à¦¿à¦¨à¦¶à¦°à§à¦Ÿ à¦¨à§‡à§Ÿà¦¾ à¦¯à¦¾à§Ÿà¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à§ª.à§¦ à¦†à¦‡à¦¸à¦•à§à¦°à¦¿à¦® à¦¸à§à¦¯à¦¾à¦¨à§à¦¡à¦‰à¦‡à¦š:<br style="box-sizing: border-box;" />\r\nà¦†à¦ªà¦¨à¦¾à¦° à¦¸à¦¾à¦§à¦¾à¦°à¦£ à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à§ª.à§¦ à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à§Ÿà§‡à¦¡ à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦¿à¦‚ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®à§‡ à¦‰à¦ªà¦°à§‡à¦° à¦¸à¦‚à¦¸à§à¦•à¦°à¦£à¦—à§à¦²à§‡à¦¾à¦¤à§‡ à¦¡à¦¿à¦«à¦²à§à¦Ÿ à¦…à¦ªà¦¶à¦¨ à¦¥à¦¾à¦•à§‡ à¦•à§à¦°à¦¿à¦¨à¦¶à¦Ÿ à¦¨à§‡à¦“à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯à¥¤ à¦à¦‡ à¦…à¦ªà¦¾à¦°à§‡à¦Ÿà¦¿à¦‚ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®à§‡ à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦•à§à¦°à¦¿à¦¨à¦¶à¦Ÿ à¦¨à§‡à¦“à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¦ªà¦¾à¦“à§Ÿà¦¾à¦° à¦¬à¦¾à¦Ÿà¦¨ à¦à¦¬à¦‚ à¦­à¦²à¦¿à¦‰à¦® à¦¡à¦¾à¦‰à¦¨ à¦¬à¦¾à¦Ÿà¦¨ à¦à¦• à¦¸à¦™à§à¦—à§‡ à¦šà¦¾à¦ªà¦¬à§‡ à¦¹à¦¬à§‡à¥¤ à¦¤à¦¾à¦¹à¦²à§‡ à¦¸à§à¦•à§à¦°à¦¿à¦¨à¦¶à¦Ÿ à¦¨à§‡à¦“à§Ÿà¦¾ à¦¹à§Ÿà§‡ à¦¯à¦¾à¦¬à§‡à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦…à§à¦¯à¦¾à¦¨à§à¦¡à§à¦°à¦¯à¦¼à§‡à¦¡ à§¨.à§© à¦œà¦¿à¦žà§à¦œà¦¾à¦°à¦¬à§à¦°à§‡à¦¡:</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦¨à¦¨-à¦°à§à¦Ÿ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦° à§¨.à§© à¦à¦° à¦¨à¦¿à¦šà§‡à¦° à¦¸à§à¦•à§à¦°à§€à¦¨à¦¶à¦Ÿ à¦¨à§‡à¦“à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¦à¦‡ à¦¸à¦«à¦Ÿà¦“à§Ÿà§à¦¯à¦¾à¦°à¦Ÿà¦¿ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¥¤ à¦à¦Ÿà¦¿ à¦ªà§à¦²à§‡ à¦¸à§à¦Ÿà§‡à¦¾à¦°à§‡ à¦¬à¦¿à¦¨à¦¾à¦®à§‚à¦²à§à¦¯à§‡ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à¦¬à§‡à¥¤ à¦à¦Ÿà¦¿ à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦•à¦®à§à¦ªà¦¿à¦‰à¦Ÿà¦¾à¦°à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦¡à¦¿à¦­à¦¾à¦‡à¦¸à¦Ÿà¦¿ à¦¸à¦‚à¦¯à§‡à¦¾à¦— à¦•à¦°à§‡ à¦¸à¦¹à¦œà§‡ à¦•à§à¦°à¦¿à¦¨à¦¶à¦°à§à¦Ÿ à¦¨à§‡à¦“à§Ÿà¦¾ à¦¯à¦¾à¦¬à§‡à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦°à§à¦Ÿà§‡à¦¡ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦°à¦¾ à¦à¦‡ à¦…à§à¦¯à¦¾à¦ªà§à¦²à¦¿à¦•à§‡à¦¶à¦¨à¦Ÿà¦¿ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à§‡ à¦¸à§à¦•à§à¦°à¦¿à¦¨à¦¶à¦Ÿ à¦¨à¦¿à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‡à¦¨à¥¤</p>\r\n\r\n<p style="box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);">à¦—à§à¦¯à¦¾à¦²à¦¾à¦•à§à¦¸à¦¿ à¦à¦¸à§« à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦¦à§‡à¦° à¦¸à§à¦•à§à¦°à¦¿à¦¨à¦¶à¦°à§à¦Ÿ à¦¨à¦¿à¦¤à§‡ à¦¹à¦²à§‡ à¦¹à§‡à¦¾à¦® à¦¬à¦¾à¦Ÿà¦¨ à¦à¦¬à¦‚ à¦ªà¦¾à¦“à§Ÿà¦¾à¦° à¦•à¦¿ à¦à¦•à¦¸à¦¾à¦¥à§‡ à¦šà¦¾à¦ªà¦¤à§‡ à¦¹à¦¬à§‡à¥¤</p>\r\n', '11.jpg', '', 10, 5, 26, 0, '2017-12-19 09:08:24'),
(40, 'PHP Tutorial (Bengali) - Part 39', '<p><span style="font-size: 12px;"><strong>Login Project (Part 3) - PDO in PHP.MP4</strong></span></p>\r\n', '', '40.MP4', 14, 20, 0, 0, '2018-01-05 03:04:31'),
(41, 'PHP Tutorial (Bengali) - Part 38 ', '<p><span style="font-size: 12px;">-<strong> Login Project (Part 2).MP4</strong></span></p>\r\n', '', '41.MP4', 14, 20, 0, 0, '2018-01-06 21:01:27'),
(42, 'PHP Tutorial (Bengali) - Part 37', '<p><span style="font-size: 12px;">&nbsp;- Login Project (Part 1) - YouTube.mp4</span></p>\r\n', '', '42.mp4', 14, 20, 0, 0, '2018-01-06 21:04:17'),
(43, 'PHP Tutorial (Bengali) - Part 36 -', '<p><strong><span style="font-size: 12px;">&nbsp;MySQL with PHP.MP4</span></strong></p>\r\n', '', '43.MP4', 14, 20, 0, 0, '2018-01-06 21:07:35'),
(44, 'PHP Tutorial (Bengali) - Part 35', '<p><strong><span style="font-size: 12px;">&nbsp;- MySQL Series 3.MP4</span></strong></p>\r\n', '', '44.MP4', 14, 20, 0, 0, '2018-01-06 21:08:47'),
(45, 'PHP Tutorial (Bengali) - Part 34', '<p><span style="font-size: 12px;">&nbsp;-<strong> MySQL Series 2.MP4</strong></span></p>\r\n', '', '45.MP4', 14, 20, 0, 0, '2018-01-06 21:09:55'),
(46, 'PHP Tutorial (Bengali) - Part 33 - ', '<p><strong><span style="font-size: 12px;">MySQL Series 1</span></strong></p>\r\n', '', '46.MP4', 14, 20, 0, 0, '2018-01-06 21:11:38'),
(47, 'PHP Tutorial (Bengali) - Part 32 - ', '<p><strong><span style="font-size: 12px;">File Upload and Validation</span></strong></p>\r\n', '', '47.MP4', 14, 20, 0, 0, '2018-01-06 21:13:27'),
(48, 'PHP Tutorial (Bengali) - Part 1 -', '<p><span style="font-size: 12px;">&nbsp;Welcome.MP4</span></p>\r\n', '', '48.MP4', 14, 20, 9, 0, '2018-01-06 21:39:45'),
(49, 'Bangla Java Tutorial 7', '<p><span style="font-size: 12px;">&nbsp;_<strong> Methods ( 720p ).mp4</strong></span></p>\r\n', '', '49.mp4', 14, 22, 0, 0, '2018-01-07 03:41:55'),
(50, 'Bangla_Java_Tutorial_3', '<p><strong><span style="font-size: 12px;">___Operators___if_Else_Statement_hd720</span></strong></p>\r\n', '', '50.mp4', 14, 22, 0, 0, '2018-01-07 03:43:21'),
(51, 'Bangla_JAVA_Tutorial_4', '<p><strong><span style="font-size: 12px;">___Switch_Statement_hd720</span></strong></p>\r\n', '', '51.mp4', 14, 22, 0, 0, '2018-01-07 03:44:23'),
(52, 'Bangla_Java_Tutorial_5', '<p><strong><span style="font-size: 12px;">___Loop___do_While_loop___for_loop___hd720</span></strong></p>\r\n', '', '52.mp4', 14, 22, 0, 0, '2018-01-07 03:45:17'),
(53, 'Bangla_Java_Tutorial_6', '<p><strong><span style="font-size: 12px;">___Array_hd720.mp4</span></strong></p>\r\n', '', '53.mp4', 14, 22, 0, 0, '2018-01-07 03:50:09'),
(54, 'Bangla_Java_Tutorial_8', '<p><strong><span style="font-size: 12px;">___Class_and_Objects_hd720.mp4</span></strong></p>\r\n', '', '54.mp4', 14, 22, 0, 0, '2018-01-07 03:51:40'),
(55, 'Bangla_Java_Tutorial_9', '<p><strong><span style="font-size: 12px;">___Inheritance_hd720.mp4</span></strong></p>\r\n', '', '55.mp4', 14, 22, 0, 0, '2018-01-07 03:55:44'),
(56, 'Bangla_Java_Tutorial_10', '<p><strong><span style="font-size: 12px;">__Polymorphism_hd720.mp4</span></strong></p>\r\n', '', '56.mp4', 14, 22, 0, 0, '2018-01-07 03:57:06'),
(57, 'Bangla_Java_Tutorial_11', '<p><strong><span style="font-size: 12px;">___Abstract_Class_hd720.mp4</span></strong></p>\r\n', '', '57.mp4', 14, 22, 7, 0, '2018-01-07 03:58:16'),
(58, 'Bangla_java_Tutorial_12', '<p><strong><span style="font-size: 12px;">___Interface___Overriding__Overloading_hd720.mp4</span></strong></p>\r\n', '', '58.mp4', 14, 22, 36, 0, '2018-01-07 03:59:25'),
(62, 'Bangla Java Tutorial 15 ', '<p><strong><span style="font-size: 12px;">_ Exception Handling ( 1080p ).mp4</span></strong></p>\r\n', '', '62.mp4', 14, 22, 4, 0, '2018-01-07 04:07:04'),
(66, 'gjgjkgk', '<p>djfkhk</p>\r\n', '66.png', '', 10, 8, 0, 0, '2018-01-09 15:06:54'),
(67, 'uiuoo', '<p>kgkghul</p>\r\n', '67.png', '', 10, 8, 5, 0, '2018-01-09 15:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `sub_cat_name` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `sub_cat_name`, `cat_id`) VALUES
(5, 'Android', 10),
(6, 'Windows', 10),
(7, 'IOS', 10),
(8, 'Linux', 10),
(9, 'smartphones', 11),
(10, 'Laptop', 0),
(11, 'Laptops', 11),
(12, 'Electronics', 0),
(13, 'Software', 11),
(14, 'Games', 0),
(15, 'Mac OS', 10),
(16, 'SEO', 12),
(17, 'Facebook', 13),
(18, 'Hacking', 13),
(19, 'PC Tricks', 13),
(20, 'PHP', 14),
(21, 'Internet', 15),
(22, 'Java', 14);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'test', 'test', 'test@gmail.com', 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
