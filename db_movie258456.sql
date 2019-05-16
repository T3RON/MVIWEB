-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2019 at 07:21 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movie258456`
--

-- --------------------------------------------------------

--
-- Table structure for table `mvi_bag`
--

CREATE TABLE `mvi_bag` (
  `bag_id` int(100) NOT NULL,
  `us_id` int(100) NOT NULL,
  `bag_val` double NOT NULL,
  `bag_date` text NOT NULL,
  `bag_info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mvi_boxofice`
--

CREATE TABLE `mvi_boxofice` (
  `boxofice_id` int(100) NOT NULL,
  `movie_id` int(100) NOT NULL,
  `boxofice_name` text NOT NULL,
  `year_id` int(100) NOT NULL,
  `boxofice_rate` text NOT NULL,
  `boxofice_time` text NOT NULL,
  `country_id` int(100) NOT NULL,
  `trailer_id` int(100) NOT NULL,
  `boxofice_budget` text NOT NULL,
  `boxofice_weeks` text NOT NULL,
  `boxofice_weekend` text NOT NULL,
  `boxofice_gross` text NOT NULL,
  `boxofice_image` text NOT NULL,
  `boxofice_poster` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mvi_buyer`
--

CREATE TABLE `mvi_buyer` (
  `buyer_id` int(100) NOT NULL,
  `us_id` int(100) NOT NULL,
  `buyer_period` int(100) NOT NULL,
  `buyer_date` text NOT NULL,
  `buyer_val` int(100) NOT NULL,
  `buyer_price` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mvi_category`
--

CREATE TABLE `mvi_category` (
  `category_id` int(100) NOT NULL,
  `category_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mvi_comments`
--

CREATE TABLE `mvi_comments` (
  `comments_id` int(100) NOT NULL,
  `comments_text` text NOT NULL,
  `comments_date` text NOT NULL,
  `id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `comment_state_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_comments`
--

INSERT INTO `mvi_comments` (`comments_id`, `comments_text`, `comments_date`, `id`, `product_id`, `comment_state_id`) VALUES
(1, 'Deals, offers and other marketing emails will be shown here.', '1398/02/21', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_comment_state`
--

CREATE TABLE `mvi_comment_state` (
  `comment_state_id` int(100) NOT NULL,
  `comment_state_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_comment_state`
--

INSERT INTO `mvi_comment_state` (`comment_state_id`, `comment_state_name`) VALUES
(1, 'تایید'),
(2, 'رد');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_director`
--

CREATE TABLE `mvi_director` (
  `director_image` text NOT NULL,
  `director_id` int(100) NOT NULL,
  `director_name` text NOT NULL,
  `director_sex` int(2) NOT NULL,
  `director_imdb` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_director`
--

INSERT INTO `mvi_director` (`director_image`, `director_id`, `director_name`, `director_sex`, `director_imdb`) VALUES
('46406801f079cb04eda72c6cd0fec3ad.jpg', 9, 'Zack Snyder', 0, ''),
('16572-f424ee1b-7052-467d-b13c-3fdca6000fdc.jpg', 21, '6', 1, ''),
('e0cf3-lena-headey.jpg', 19, 'sdsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_encoder`
--

CREATE TABLE `mvi_encoder` (
  `encoder_id` int(100) NOT NULL,
  `encoder_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mvi_episodes`
--

CREATE TABLE `mvi_episodes` (
  `episodes_id` int(100) NOT NULL,
  `season_id` int(100) NOT NULL,
  `series_id` int(100) NOT NULL,
  `episodes_name` text NOT NULL,
  `episodes_url` text NOT NULL,
  `episodes_sub` text NOT NULL,
  `quality_id` int(11) NOT NULL,
  `episodes_time` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_episodes`
--

INSERT INTO `mvi_episodes` (`episodes_id`, `season_id`, `series_id`, `episodes_name`, `episodes_url`, `episodes_sub`, `quality_id`, `episodes_time`) VALUES
(13, 29, 10, 'قسمت اول', '<p>\n	<a href="http://localhost:8080/movie/Episodes/episodes/add/29">http://localhost:8080/movie/Episodes/episodes/add/29</a></p>\n', '<p>\n	<a href="http://localhost:8080/movie/Episodes/episodes/add/29">http://localhost:8080/movie/Episodes/episodes/add/29</a></p>\n', 1, '<p>\n	28 دقیقه</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_fav`
--

CREATE TABLE `mvi_fav` (
  `fav_id` int(100) NOT NULL,
  `movie_id` int(100) NOT NULL,
  `series_id` int(100) NOT NULL,
  `u_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mvi_genre`
--

CREATE TABLE `mvi_genre` (
  `genre_id` int(100) NOT NULL,
  `genre_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_genre`
--

INSERT INTO `mvi_genre` (`genre_id`, `genre_name`) VALUES
(9, 'فیلم نوآر'),
(10, 'بیوگرافی'),
(26, 'فرهنگی'),
(12, 'جنایی'),
(36, '<p>\n	فرهنگی</p>\n'),
(16, 'خانوادگی'),
(17, 'فانتزی'),
(19, 'ماجراجویی'),
(20, 'سورئال');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_groups`
--

CREATE TABLE `mvi_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_groups`
--

INSERT INTO `mvi_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_images`
--

CREATE TABLE `mvi_images` (
  `image_id` int(100) NOT NULL,
  `movie_id` int(100) NOT NULL,
  `series_id` int(100) NOT NULL,
  `image_small_url` text NOT NULL,
  `image_larg_url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_images`
--

INSERT INTO `mvi_images` (`image_id`, `movie_id`, `series_id`, `image_small_url`, `image_larg_url`) VALUES
(12, 16, 0, '082111c632968241fdb978804ac2b5ea.jpg', '92893d5ab3bf28a8ad838903abf913de.jpg'),
(10, 0, 10, '431d358961a4b75b75c2c158b67f09ff.jpg', '8510396aec8b79e700b998ab48afa424.jpg'),
(11, 15, 0, '55d574a0c5f881f1625f27d44e401f36.jpg', 'ae26bd2fae05ed0bce97780628fdcd36.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_login_attempts`
--

CREATE TABLE `mvi_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mvi_movie`
--

CREATE TABLE `mvi_movie` (
  `movie_id` int(100) NOT NULL,
  `movie_name` text NOT NULL,
  `movie_store` text NOT NULL,
  `movie_age` int(11) NOT NULL,
  `movie_imdb` float NOT NULL,
  `movie_country` text NOT NULL,
  `movie_lang` text NOT NULL,
  `movie_year` int(11) NOT NULL,
  `movie_time` text NOT NULL,
  `movie_oscar` text,
  `movie_golden` text,
  `movie_topimdb_id` int(100) DEFAULT NULL,
  `movie_quality` text NOT NULL,
  `movie_small_image` text NOT NULL,
  `movie_larg_image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_movie`
--

INSERT INTO `mvi_movie` (`movie_id`, `movie_name`, `movie_store`, `movie_age`, `movie_imdb`, `movie_country`, `movie_lang`, `movie_year`, `movie_time`, `movie_oscar`, `movie_golden`, `movie_topimdb_id`, `movie_quality`, `movie_small_image`, `movie_larg_image`) VALUES
(3, 'سیسی', '', 0, 0, '', '', 0, '', NULL, NULL, NULL, '', '', ''),
(4, 'یسیس', '', 0, 0, '', '', 0, '', '', '', NULL, '', '', ''),
(28, 'س', '', 0, 0, '', '', 0, '', NULL, NULL, NULL, '', '', ''),
(16, 'Glass', 'نگهبان امنیتی، "دیوید دان"، از توانایی‌های ماورالطبیعه‌ای خود استفاده می‌کند تا "کوین وندال کرامب"، مردی دیوانه که 24 شخصیت دارد، را پیدا کند...', 13, 6.9, 'آمریکا', 'انگلیسی', 2019, '129 دقیقه', 'جایزه اسکار', 'جایزه گلدن گلوب', NULL, 'BluRay 1080p Full HD', '', ''),
(18, '212', '212', 212, 212, '21', '212', 12, '21', '12', '12', 12, '12', '', ''),
(19, '54', '54', 54, 45, '45', '45', 45, '54', '45', '45', 54, '54', '', ''),
(20, 'asd', 'qwe', 0, 0, 'qwe', 'qwe', 0, 'qwe', 'qwe', 'qwe', 0, 'qwe', '951a3-d92007e0-1423-4ace-84e9-df2aeba78bb1.jpg', 'ba7cf-maxresdefault.jpg'),
(21, '65', '65', 65, 56, '656', '56', 56, '65', '65', '65', 656, '656', '', ''),
(22, '453', '543', 34, 435, '345', '345', 345, '435', '435', '345', 345, '435', '', ''),
(32, 'sadasa', '', 0, 0, '', '', 0, '', NULL, NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_movie_director`
--

CREATE TABLE `mvi_movie_director` (
  `mvi_dir_id` int(100) NOT NULL,
  `movie_id` int(100) NOT NULL,
  `director_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_movie_director`
--

INSERT INTO `mvi_movie_director` (`mvi_dir_id`, `movie_id`, `director_id`) VALUES
(76, 104, 1),
(75, 103, 1),
(77, 105, 1),
(73, 101, 1),
(74, 102, 1),
(92, 16, 10),
(96, 3, 3),
(95, 3, 2),
(98, 3, 5),
(97, 3, 4),
(99, 3, 6),
(100, 32, 0),
(83, 4, 12),
(93, 3, 0),
(94, 3, 1),
(79, 1, 1),
(78, 106, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_movie_genre`
--

CREATE TABLE `mvi_movie_genre` (
  `movie_genre_id` int(100) NOT NULL,
  `movie_id` int(100) NOT NULL,
  `genre_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_movie_genre`
--

INSERT INTO `mvi_movie_genre` (`movie_genre_id`, `movie_id`, `genre_id`) VALUES
(94, 103, 15),
(93, 102, 8),
(92, 102, 12),
(98, 104, 15),
(97, 103, 12),
(96, 103, 6),
(95, 103, 10),
(102, 105, 15),
(101, 104, 12),
(100, 104, 6),
(99, 104, 10),
(104, 105, 6),
(103, 105, 10),
(88, 101, 10),
(87, 101, 15),
(91, 102, 6),
(90, 102, 10),
(89, 101, 6),
(125, 32, 0),
(124, 3, 4),
(119, 16, 12),
(118, 16, 6),
(117, 16, 10),
(116, 16, 15),
(122, 3, 2),
(121, 3, 1),
(123, 3, 3),
(120, 3, 0),
(110, 1, 18),
(109, 1, 7),
(108, 1, 5),
(107, 106, 6),
(106, 106, 10),
(105, 105, 12);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_movie_link`
--

CREATE TABLE `mvi_movie_link` (
  `movie_link_id` int(100) NOT NULL,
  `movie_id` int(100) NOT NULL,
  `movie_link_url` text NOT NULL,
  `movie_link_sub` text NOT NULL,
  `movie_link_size` text NOT NULL,
  `movie_link_info` text NOT NULL,
  `encoder_id` int(100) NOT NULL,
  `quality_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_movie_link`
--

INSERT INTO `mvi_movie_link` (`movie_link_id`, `movie_id`, `movie_link_url`, `movie_link_sub`, `movie_link_size`, `movie_link_info`, `encoder_id`, `quality_id`) VALUES
(1, 3, 'لینک فیلم', 'لینک زیرنویس', 'حجم فیلم', 'توضیحات', 0, 0),
(5, 11, 'لینک فیلم', 'لینک زیرنویس', 'dsd', 'توضیحات', 0, 0),
(6, 101, 'http://localhost:8080/movie/mlinks', 'http://localhost:808ssss0/movie/mlinks', '2 گیگ', 'توضیحات', 0, 0),
(8, 106, 'http://localhost:8080/movie/mlinks', 'http://localhost:8080/movie/mlinks', '1 گیگ', 'dasdasd', 0, 0),
(9, 16, 'http://localhost:8080/movie/mlinks', 'http://localhost:8080/movie/mlinks', '1 گیگ', 'توضیحات', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_movie_stars`
--

CREATE TABLE `mvi_movie_stars` (
  `movie_stars_id` int(100) NOT NULL,
  `movie_id` int(100) NOT NULL,
  `stars_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_movie_stars`
--

INSERT INTO `mvi_movie_stars` (`movie_stars_id`, `movie_id`, `stars_id`) VALUES
(128, 32, 0),
(127, 3, 4),
(126, 3, 3),
(125, 3, 2),
(124, 3, 1),
(123, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_news`
--

CREATE TABLE `mvi_news` (
  `news_id` int(100) NOT NULL,
  `news_name` text NOT NULL,
  `news_text` text NOT NULL,
  `news_date` text NOT NULL,
  `news_image` text NOT NULL,
  `news_poster` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mvi_old_download`
--

CREATE TABLE `mvi_old_download` (
  `old_download_id` int(100) NOT NULL,
  `movie_id` int(100) NOT NULL,
  `series_id` int(100) NOT NULL,
  `u_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mvi_product`
--

CREATE TABLE `mvi_product` (
  `product_id` int(100) NOT NULL,
  `product_name` text NOT NULL,
  `product_id_number` int(100) NOT NULL,
  `product_id_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_product`
--

INSERT INTO `mvi_product` (`product_id`, `product_name`, `product_id_number`, `product_id_type`) VALUES
(1, 'فیلم', 16, 1),
(2, 'سریال', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_quality`
--

CREATE TABLE `mvi_quality` (
  `quality_id` int(100) NOT NULL,
  `quality_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_quality`
--

INSERT INTO `mvi_quality` (`quality_id`, `quality_name`) VALUES
(1, '480 p '),
(2, '1080 Full HD');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_request`
--

CREATE TABLE `mvi_request` (
  `request_id` int(100) NOT NULL,
  `request_name` text NOT NULL,
  `request_text` text NOT NULL,
  `id` int(11) NOT NULL,
  `request_date` int(11) NOT NULL,
  `request_state_id` int(100) NOT NULL,
  `request_type` int(100) NOT NULL,
  `request_genre` text NOT NULL,
  `request_year` text NOT NULL,
  `request_imdb` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_request`
--

INSERT INTO `mvi_request` (`request_id`, `request_name`, `request_text`, `id`, `request_date`, `request_state_id`, `request_type`, `request_genre`, `request_year`, `request_imdb`) VALUES
(1, 'sdsdsds', 'sdsdsdaaaaaaaaaaaa', 1, 1, 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_request_state`
--

CREATE TABLE `mvi_request_state` (
  `request_state_id` int(100) NOT NULL,
  `request_state_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_request_state`
--

INSERT INTO `mvi_request_state` (`request_state_id`, `request_state_name`) VALUES
(1, 'معلق'),
(2, 'انجام شده');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_season`
--

CREATE TABLE `mvi_season` (
  `season_id` int(100) NOT NULL,
  `series_id` int(100) NOT NULL,
  `season_name` text NOT NULL,
  `season_number` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_season`
--

INSERT INTO `mvi_season` (`season_id`, `series_id`, `season_name`, `season_number`) VALUES
(33, 10, 'sadas', 1),
(32, 10, 'sadas', 1),
(31, 10, 'فصل سوم', 3),
(30, 10, 'فصل دوم', 2),
(28, 11, 'فصل اول', 1),
(29, 10, 'فصل اول', 1),
(27, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_series`
--

CREATE TABLE `mvi_series` (
  `series_id` int(100) NOT NULL,
  `series_name` text NOT NULL,
  `series_store` text NOT NULL,
  `series_age` int(11) NOT NULL,
  `series_imdb` float NOT NULL,
  `series_country` text NOT NULL,
  `series_lang` text NOT NULL,
  `series_quality` text NOT NULL,
  `series_year` text NOT NULL,
  `series_time` text NOT NULL,
  `series_topimdb_id` int(11) NOT NULL,
  `series_oscar` text NOT NULL,
  `series_golden` text NOT NULL,
  `series_small_image` text NOT NULL,
  `series_larg_image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_series`
--

INSERT INTO `mvi_series` (`series_id`, `series_name`, `series_store`, `series_age`, `series_imdb`, `series_country`, `series_lang`, `series_quality`, `series_year`, `series_time`, `series_topimdb_id`, `series_oscar`, `series_golden`, `series_small_image`, `series_larg_image`) VALUES
(12, 'سسسی', '', 0, 0, '', '', '', '', '', 0, '', '', '', ''),
(13, '2', '2', 2, 2, '2', '2', '2', '2', '2', 2, '2', '2', '', ''),
(10, ' Game of Thrones', 'داستان سریال در قاره‌های خیالی وستروس و اسوس، در نزدیکی پایان یک تابستان 10 ساله اتفاق می‌افتد و چندین خط داستانی را دنبال می‌کند. اولین داستان به جنگ بین خانواده‌های اشرافی برای به دست آوردن تخت آهنین و پادشاهی هفت اقلیم مربوط می‌شود. دومین خط داستانی، نزدیک بودن زمستانی طولانی و یورش موجوداتی افسانه‌ای از شمال را شرح می‌دهد و سومین خط داستانی مجموعه، تلاش فرزندان شاه مخلوع، برای بازپس‌گیری تاج‌وتخت است. این مجموعه از طریق شخصیت‌هایی که اخلاقیات مبهمی دارند، حول مسائلی چون طبقات اجتماعی، وفاداری، فساد، جنگ داخلی و مجازات ', 13, 0, '', 'انگلیسی', '1', '2011', '60', 2, 'جایزه اسکار', 'جایزه گلدن گلوب', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_series_director`
--

CREATE TABLE `mvi_series_director` (
  `seri_dir_id` int(100) NOT NULL,
  `series_id` int(100) NOT NULL,
  `director_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_series_director`
--

INSERT INTO `mvi_series_director` (`seri_dir_id`, `series_id`, `director_id`) VALUES
(4, 5, 1),
(3, 5, 2),
(5, 6, 2),
(6, 7, 1),
(7, 8, 1),
(9, 10, 1),
(10, 12, 12),
(11, 13, 12);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_series_genre`
--

CREATE TABLE `mvi_series_genre` (
  `series_genre_id` int(100) NOT NULL,
  `series_id` int(100) NOT NULL,
  `genre_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_series_genre`
--

INSERT INTO `mvi_series_genre` (`series_genre_id`, `series_id`, `genre_id`) VALUES
(4, 5, 10),
(3, 5, 15),
(5, 6, 34),
(6, 6, 15),
(7, 7, 10),
(8, 7, 16),
(9, 8, 10),
(10, 8, 6),
(14, 10, 12),
(13, 10, 10),
(15, 12, 12),
(16, 13, 10);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_series_stars`
--

CREATE TABLE `mvi_series_stars` (
  `series_stars_id` int(100) NOT NULL,
  `series_id` int(100) NOT NULL,
  `stars_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_series_stars`
--

INSERT INTO `mvi_series_stars` (`series_stars_id`, `series_id`, `stars_id`) VALUES
(4, 5, 1),
(3, 5, 2),
(5, 6, 1),
(6, 7, 2),
(7, 7, 1),
(8, 7, 4),
(9, 8, 3),
(13, 10, 1),
(12, 10, 2),
(14, 10, 4),
(16, 12, 5),
(17, 13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_sex`
--

CREATE TABLE `mvi_sex` (
  `sex_id` int(100) NOT NULL,
  `sex_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_sex`
--

INSERT INTO `mvi_sex` (`sex_id`, `sex_name`) VALUES
(1, 'مرد'),
(2, 'زن');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_sliders`
--

CREATE TABLE `mvi_sliders` (
  `sliders_id` int(100) NOT NULL,
  `movie_id` int(100) DEFAULT NULL,
  `series_id` int(100) DEFAULT NULL,
  `sliders_title` text NOT NULL,
  `image_url` text NOT NULL,
  `sliders_type` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_sliders`
--

INSERT INTO `mvi_sliders` (`sliders_id`, `movie_id`, `series_id`, `sliders_title`, `image_url`, `sliders_type`) VALUES
(12, 3, 10, 'asdasdas', 'b1ec4-dragon_age_inquisition_warrior_dragon_age_armor_sword_98294_1920x1080.jpg', 'sadas');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_stars`
--

CREATE TABLE `mvi_stars` (
  `stars_id` int(100) NOT NULL,
  `stars_name` text NOT NULL,
  `stars_sex` int(2) NOT NULL,
  `stars_image` text NOT NULL,
  `stars_imdb` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_stars`
--

INSERT INTO `mvi_stars` (`stars_id`, `stars_name`, `stars_sex`, `stars_image`, `stars_imdb`) VALUES
(7, 'Matthew McConaughey', 1, '7dc9c7a5657b85bf2325bbbb65ebde3f.jpg', ''),
(8, 'Matthew McConaughey', 1, '00ccf062bc4ffe5444f3ebc15ea272d8.jpg', ''),
(9, 'Johnny Depp', 1, '5d48515a36f7a2cc3c01953ea6c90bdd.jpg', ''),
(11, 'Johnny Depp', 1, '6ff948dd864461cc706ba8fcb84c4896.jpg', ''),
(12, 'Matthew McConaughey', 2, 'b90fe-lena-headey.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_trailer`
--

CREATE TABLE `mvi_trailer` (
  `trailer_id` int(100) NOT NULL,
  `trailer_name` text NOT NULL,
  `trailer_store` text NOT NULL,
  `trailer_year` int(11) NOT NULL,
  `trailer_link` text NOT NULL,
  `trailer_country` text NOT NULL,
  `trailer_image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_trailer`
--

INSERT INTO `mvi_trailer` (`trailer_id`, `trailer_name`, `trailer_store`, `trailer_year`, `trailer_link`, `trailer_country`, `trailer_image`) VALUES
(2, 'John Wick: Chapter 3', 'داستان', 2019, 'http://dl8.dlsdm.ir/Movie/Trailer/John.Wick.Chapter.3.Parabellum.2019.T2.mp4', 'آمریکا', '0acc5-b5f8077c-c5e2-4ce4-ac52-f2943ec93ba9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_users`
--

CREATE TABLE `mvi_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_users`
--

INSERT INTO `mvi_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'zJiDlwtA5KSI1EvN3gppee', 1268889823, 1557991047, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '127.0.0.1', NULL, '$2y$08$SU9kUSwpbVQ2YAHW/ibsUugsNNg.0ceC0BPVWk5Y6CEvgyyhiO1Rq', NULL, 'test@test.com', NULL, NULL, NULL, NULL, 1447236019, NULL, 1, 'test', 'test', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_users_groups`
--

CREATE TABLE `mvi_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_users_groups`
--

INSERT INTO `mvi_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mvi_user_type`
--

CREATE TABLE `mvi_user_type` (
  `user_type_id` int(100) NOT NULL,
  `user_type_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvi_user_type`
--

INSERT INTO `mvi_user_type` (`user_type_id`, `user_type_name`) VALUES
(1, 'معلق'),
(2, 'ویژه');

-- --------------------------------------------------------

--
-- Table structure for table `mvi_year`
--

CREATE TABLE `mvi_year` (
  `year_id` int(11) NOT NULL,
  `year_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mvi_bag`
--
ALTER TABLE `mvi_bag`
  ADD PRIMARY KEY (`bag_id`);

--
-- Indexes for table `mvi_boxofice`
--
ALTER TABLE `mvi_boxofice`
  ADD PRIMARY KEY (`boxofice_id`);

--
-- Indexes for table `mvi_buyer`
--
ALTER TABLE `mvi_buyer`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `mvi_category`
--
ALTER TABLE `mvi_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `mvi_comments`
--
ALTER TABLE `mvi_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `mvi_comment_state`
--
ALTER TABLE `mvi_comment_state`
  ADD PRIMARY KEY (`comment_state_id`);

--
-- Indexes for table `mvi_director`
--
ALTER TABLE `mvi_director`
  ADD PRIMARY KEY (`director_id`);

--
-- Indexes for table `mvi_encoder`
--
ALTER TABLE `mvi_encoder`
  ADD PRIMARY KEY (`encoder_id`);

--
-- Indexes for table `mvi_episodes`
--
ALTER TABLE `mvi_episodes`
  ADD PRIMARY KEY (`episodes_id`);

--
-- Indexes for table `mvi_fav`
--
ALTER TABLE `mvi_fav`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `mvi_genre`
--
ALTER TABLE `mvi_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `mvi_groups`
--
ALTER TABLE `mvi_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mvi_images`
--
ALTER TABLE `mvi_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `mvi_login_attempts`
--
ALTER TABLE `mvi_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mvi_movie`
--
ALTER TABLE `mvi_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `mvi_movie_director`
--
ALTER TABLE `mvi_movie_director`
  ADD PRIMARY KEY (`mvi_dir_id`);

--
-- Indexes for table `mvi_movie_genre`
--
ALTER TABLE `mvi_movie_genre`
  ADD PRIMARY KEY (`movie_genre_id`);

--
-- Indexes for table `mvi_movie_link`
--
ALTER TABLE `mvi_movie_link`
  ADD PRIMARY KEY (`movie_link_id`);

--
-- Indexes for table `mvi_movie_stars`
--
ALTER TABLE `mvi_movie_stars`
  ADD PRIMARY KEY (`movie_stars_id`);

--
-- Indexes for table `mvi_news`
--
ALTER TABLE `mvi_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `mvi_old_download`
--
ALTER TABLE `mvi_old_download`
  ADD PRIMARY KEY (`old_download_id`);

--
-- Indexes for table `mvi_product`
--
ALTER TABLE `mvi_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `mvi_quality`
--
ALTER TABLE `mvi_quality`
  ADD PRIMARY KEY (`quality_id`);

--
-- Indexes for table `mvi_request`
--
ALTER TABLE `mvi_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `mvi_request_state`
--
ALTER TABLE `mvi_request_state`
  ADD PRIMARY KEY (`request_state_id`);

--
-- Indexes for table `mvi_season`
--
ALTER TABLE `mvi_season`
  ADD PRIMARY KEY (`season_id`);

--
-- Indexes for table `mvi_series`
--
ALTER TABLE `mvi_series`
  ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `mvi_series_director`
--
ALTER TABLE `mvi_series_director`
  ADD PRIMARY KEY (`seri_dir_id`);

--
-- Indexes for table `mvi_series_genre`
--
ALTER TABLE `mvi_series_genre`
  ADD PRIMARY KEY (`series_genre_id`);

--
-- Indexes for table `mvi_series_stars`
--
ALTER TABLE `mvi_series_stars`
  ADD PRIMARY KEY (`series_stars_id`);

--
-- Indexes for table `mvi_sex`
--
ALTER TABLE `mvi_sex`
  ADD PRIMARY KEY (`sex_id`);

--
-- Indexes for table `mvi_sliders`
--
ALTER TABLE `mvi_sliders`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indexes for table `mvi_stars`
--
ALTER TABLE `mvi_stars`
  ADD PRIMARY KEY (`stars_id`);

--
-- Indexes for table `mvi_trailer`
--
ALTER TABLE `mvi_trailer`
  ADD PRIMARY KEY (`trailer_id`);

--
-- Indexes for table `mvi_users`
--
ALTER TABLE `mvi_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mvi_users_groups`
--
ALTER TABLE `mvi_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `mvi_user_type`
--
ALTER TABLE `mvi_user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `mvi_year`
--
ALTER TABLE `mvi_year`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mvi_bag`
--
ALTER TABLE `mvi_bag`
  MODIFY `bag_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mvi_boxofice`
--
ALTER TABLE `mvi_boxofice`
  MODIFY `boxofice_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mvi_buyer`
--
ALTER TABLE `mvi_buyer`
  MODIFY `buyer_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mvi_category`
--
ALTER TABLE `mvi_category`
  MODIFY `category_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mvi_comments`
--
ALTER TABLE `mvi_comments`
  MODIFY `comments_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mvi_comment_state`
--
ALTER TABLE `mvi_comment_state`
  MODIFY `comment_state_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mvi_director`
--
ALTER TABLE `mvi_director`
  MODIFY `director_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `mvi_encoder`
--
ALTER TABLE `mvi_encoder`
  MODIFY `encoder_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mvi_episodes`
--
ALTER TABLE `mvi_episodes`
  MODIFY `episodes_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `mvi_fav`
--
ALTER TABLE `mvi_fav`
  MODIFY `fav_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mvi_genre`
--
ALTER TABLE `mvi_genre`
  MODIFY `genre_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `mvi_groups`
--
ALTER TABLE `mvi_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mvi_images`
--
ALTER TABLE `mvi_images`
  MODIFY `image_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mvi_login_attempts`
--
ALTER TABLE `mvi_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mvi_movie`
--
ALTER TABLE `mvi_movie`
  MODIFY `movie_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `mvi_movie_director`
--
ALTER TABLE `mvi_movie_director`
  MODIFY `mvi_dir_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `mvi_movie_genre`
--
ALTER TABLE `mvi_movie_genre`
  MODIFY `movie_genre_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `mvi_movie_link`
--
ALTER TABLE `mvi_movie_link`
  MODIFY `movie_link_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mvi_movie_stars`
--
ALTER TABLE `mvi_movie_stars`
  MODIFY `movie_stars_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `mvi_news`
--
ALTER TABLE `mvi_news`
  MODIFY `news_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mvi_old_download`
--
ALTER TABLE `mvi_old_download`
  MODIFY `old_download_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mvi_product`
--
ALTER TABLE `mvi_product`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mvi_quality`
--
ALTER TABLE `mvi_quality`
  MODIFY `quality_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mvi_request`
--
ALTER TABLE `mvi_request`
  MODIFY `request_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mvi_request_state`
--
ALTER TABLE `mvi_request_state`
  MODIFY `request_state_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mvi_season`
--
ALTER TABLE `mvi_season`
  MODIFY `season_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `mvi_series`
--
ALTER TABLE `mvi_series`
  MODIFY `series_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `mvi_series_director`
--
ALTER TABLE `mvi_series_director`
  MODIFY `seri_dir_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mvi_series_genre`
--
ALTER TABLE `mvi_series_genre`
  MODIFY `series_genre_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mvi_series_stars`
--
ALTER TABLE `mvi_series_stars`
  MODIFY `series_stars_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `mvi_sex`
--
ALTER TABLE `mvi_sex`
  MODIFY `sex_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mvi_sliders`
--
ALTER TABLE `mvi_sliders`
  MODIFY `sliders_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mvi_stars`
--
ALTER TABLE `mvi_stars`
  MODIFY `stars_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mvi_trailer`
--
ALTER TABLE `mvi_trailer`
  MODIFY `trailer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mvi_users`
--
ALTER TABLE `mvi_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mvi_users_groups`
--
ALTER TABLE `mvi_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mvi_user_type`
--
ALTER TABLE `mvi_user_type`
  MODIFY `user_type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mvi_year`
--
ALTER TABLE `mvi_year`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mvi_users_groups`
--
ALTER TABLE `mvi_users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `mvi_groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `mvi_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
