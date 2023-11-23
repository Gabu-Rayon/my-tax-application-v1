-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 07:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my-tax-application-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver'),
(21, 'Dark Clay'),
(22, 'Cognac'),
(23, 'Coffee'),
(24, 'Charcoal'),
(25, 'Navy'),
(26, 'Fuchsia'),
(27, 'Olive'),
(28, 'Burgundy'),
(29, 'Midnight Blue');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_counties`
--

CREATE TABLE `tbl_counties` (
  `county_id` int(11) NOT NULL,
  `county_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `tbl_counties`
--

INSERT INTO `tbl_counties` (`county_id`, `county_name`) VALUES
(294, 'Nairobi'),
(291, 'Nyamira'),
(290, 'Kisii'),
(289, 'Migori'),
(288, 'Homa Bay'),
(287, 'Kisumu'),
(286, 'Siaya'),
(285, 'Busia'),
(284, 'Bungoma'),
(283, 'Vihiga'),
(282, 'Kakamega'),
(281, 'Bomet'),
(280, 'Kericho'),
(279, 'Kajiado'),
(278, 'Narok'),
(277, 'Nakuru'),
(276, 'Laikipia'),
(275, 'Baringo'),
(274, 'Nandi'),
(273, 'Elgeyo Marakwet'),
(272, 'Uasin Gishu'),
(271, 'Trans Nzoia'),
(270, 'Samburu'),
(269, 'West Pokot'),
(268, 'Turkana'),
(267, 'Kiambu The'),
(266, 'Muranga'),
(265, 'Kirinyaga'),
(264, 'Nyeri'),
(263, 'Nyandarua'),
(262, 'Makueni'),
(261, 'Machakos'),
(260, 'Kitui'),
(259, 'Embu'),
(258, 'Tharaka Nithi'),
(257, 'Meru'),
(256, 'Isiolo'),
(255, 'Marsabit'),
(254, 'Mandela'),
(253, 'Wajir'),
(252, 'Garissa'),
(251, 'Taita Mak Taveta'),
(250, 'Lamu'),
(249, 'Tana River'),
(248, 'Kilifi'),
(247, 'Kwale'),
(246, 'Mombasa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_county` varchar(255) NOT NULL,
  `cust_address` mediumtext NOT NULL,
  `cust_town` varchar(255) NOT NULL,
  `cust_location` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_county` varchar(255) NOT NULL,
  `cust_b_address` mediumtext NOT NULL,
  `cust_b_town` varchar(100) NOT NULL,
  `cust_b_location` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_county` varchar(255) NOT NULL,
  `cust_s_address` mediumtext NOT NULL,
  `cust_s_town` varchar(100) NOT NULL,
  `cust_s_location` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_email`, `cust_phone`, `cust_county`, `cust_address`, `cust_town`, `cust_location`, `cust_zip`, `cust_b_name`, `cust_b_phone`, `cust_b_county`, `cust_b_address`, `cust_b_town`, `cust_b_location`, `cust_b_zip`, `cust_s_name`, `cust_s_phone`, `cust_s_county`, `cust_s_address`, `cust_s_town`, `cust_s_location`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(15, 'Ibrahim', 'jamesibrahim23@gmail.com', '0712121212', '246', 'Saibaon', 'Old Town', 'Jabaino', '01234', 'Ibrahim', '0712121212', 'Baringo', 'Saibaon', 'Old Town', 'Sabion', '01234', 'Ibrahim', '0712121212', 'Baringo', 'Saibaon', 'Old Town', 'Sabion', '01234', '827ccb0eea8a706c4c34a16891f84e7b', '0e7657c4771523af478645055d0e12aa', '2022-10-29 05:27:33', '1667046453', 1),
(16, 'Ibracov', 'jamesibracov23@gmail.com', '0723232323', '246', 'Saibaon', 'Old Town', 'Jabaino', '01234', 'Gibson', '0765438940', 'Baringo', 'Adhes', 'Baringo', 'Adhes', '00100', 'Gibson Muriuki', '0745342319', 'Baringo', 'Siabon', 'Old Town', 'Adhes', '000100', '827ccb0eea8a706c4c34a16891f84e7b', 'e35488173c8156b5458f69d207022191', '2022-10-29 05:42:04', '1667047324', 1),
(17, 'Gibson Murimi', 'gibsonmurimi4@gmail.com', '0745345678', '275', 'Adj avenue', 'Baringo', 'qweal', '00100', 'Gibson Muriuki', '0723456789', 'Baringo', 'Adjhe highway', 'Baringo', 'Adhes', '00100', 'Gibson Muriuki', '0723456789', 'Baringo', 'Adjhe highway', 'Baringo', 'Adhes', '00100', '827ccb0eea8a706c4c34a16891f84e7b', 'ba06a23bc6f7a08047a3d3cf6d4631fd', '2023-11-22 01:40:53', '1700656853', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `	customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Headwear ', 1),
(2, 'Sunglasses', 1),
(3, 'Watches', 1),
(4, 'Sandals', 2),
(5, 'Boots', 2),
(6, 'Tops', 3),
(7, 'T-Shirt', 3),
(8, 'Watches', 4),
(9, 'Sunglasses', 4),
(10, 'Sports Shoes', 2),
(11, 'Sandals', 6),
(12, 'Flat Shoes', 6),
(13, 'Hoodies', 7),
(14, 'Coats & Jackets', 7),
(15, 'Pants', 8),
(16, 'Jeans', 8),
(17, 'Joggers', 8),
(18, 'Shorts', 8),
(19, 'T-shirts', 9),
(20, 'Casual Shirts', 9),
(21, 'Formal Shirts', 9),
(22, 'Polo Shirts', 9),
(23, 'Vests', 9),
(24, 'Casual Shoes', 2),
(25, 'Boys', 10),
(26, 'Girls', 10),
(27, 'Boys', 11),
(28, 'Girls', 11),
(29, 'Headphones', 12),
(30, 'Electric Wire', 12),
(31, 'Dresses', 7),
(32, 'Tops', 7),
(33, 'T-Shirts & Vests', 7),
(34, 'Pants & Leggings', 7),
(35, 'Sportswear', 7),
(36, 'Plus Size Clothing', 7),
(37, 'Socks & Hosiery', 7),
(38, 'Fragrance', 3),
(39, 'Skincare', 3),
(40, 'Hair Care', 3),
(41, 'Jewellery', 4),
(42, 'Eyes Care', 3),
(43, 'Lips', 3),
(44, 'Face Care', 3),
(45, 'Gift Sets', 3),
(46, 'Scarves & Headwear', 4),
(47, 'Multipacks', 4),
(48, 'Other Accessories', 4),
(49, 'Pumps', 6),
(50, 'Sneakers', 6),
(51, 'Sports Shoes', 6),
(52, 'Boots', 6),
(53, 'Comfort Shoes', 6),
(54, 'Slippers & Casual Shoes', 6),
(55, 'Formal Shoes', 2),
(56, 'Belts', 1),
(57, 'Multipacks', 1),
(58, 'Other Accessories', 1),
(59, 'Bags', 4),
(60, 'Cell Phone and Accessories', 30),
(61, 'Headphones', 30),
(62, 'Security and Surveillance', 30),
(63, 'Television and Video', 30),
(64, 'GPS and Navigation', 15),
(65, 'Home Audio', 30),
(66, 'Computer Components', 15),
(67, 'Computers and Tablets', 15),
(68, 'Laptop Accessories', 15),
(69, 'Printer and Monitors', 15),
(70, 'External Components', 15),
(71, 'Networking Products', 15),
(72, 'Medical Supplies and Equipment', 16),
(73, 'Oral Care', 16),
(74, 'Vision Care', 16),
(75, 'Vitamins and Dietary Supplements', 16),
(76, 'Baby and Child Care', 17),
(77, 'Household Supplies', 17),
(78, 'Stationery and Gift Wrapping Supplies', 17),
(79, 'Headwear ', 1),
(80, 'Sunglasses', 1),
(81, 'Watches', 1),
(82, 'Sandals', 2),
(83, 'Boots', 2),
(84, 'Tops', 3),
(85, 'T-Shirt', 3),
(86, 'Watches', 4),
(87, 'Sunglasses', 4),
(88, 'Sports Shoes', 2),
(89, 'Sandals', 6),
(90, 'Flat Shoes', 6),
(91, 'Hoodies', 7),
(92, 'Coats & Jackets', 7),
(93, 'Pants', 8),
(94, 'Jeans', 8),
(95, 'Joggers', 8),
(96, 'Shorts', 8),
(97, 'T-shirts', 9),
(98, 'Casual Shirts', 9),
(99, 'Formal Shirts', 9),
(100, 'Polo Shirts', 9),
(101, 'Vests', 9),
(102, 'Casual Shoes', 2),
(103, 'Boys', 10),
(104, 'Girls', 10),
(105, 'Boys', 11),
(106, 'Girls', 11),
(107, 'Earphones', 12),
(108, 'Microphones', 12),
(109, 'Dresses', 6),
(110, 'Tops', 7),
(111, 'T-Shirts & Vests', 7),
(112, 'Pants & Leggings', 7),
(113, 'Sportswear', 7),
(114, 'Plus Size Clothing', 7),
(115, 'Socks & Hosiery', 7),
(116, 'Fragrance', 3),
(117, 'Skincare', 3),
(118, 'Hair Care', 3),
(119, 'Jewellery', 4),
(120, 'Eyes Care', 3),
(121, 'Lips', 3),
(122, 'Face Care', 3),
(123, 'Gift Sets', 3),
(124, 'Scarves & Headwear', 4),
(125, 'Multipacks', 4),
(126, 'Other Accessories', 4),
(127, 'Pumps', 6),
(128, 'Sneakers', 6),
(129, 'Sports Shoes', 6),
(130, 'Boots', 6),
(131, 'Comfort Shoes', 6),
(132, 'Slippers & Casual Shoes', 6),
(133, 'Formal Shoes', 2),
(134, 'Belts', 1),
(135, 'Multipacks', 1),
(136, 'Other Accessories', 1),
(137, 'Bags', 4),
(138, 'Cell Phone and Accessories', 15),
(139, 'Headphones', 30),
(140, 'Security and Surveillance', 15),
(141, 'Television and Video', 15),
(142, 'GPS and Navigation', 15),
(143, 'Home Audio', 15),
(144, 'Computer Components', 15),
(145, 'Computers and Tablets', 15),
(146, 'Laptop Accessories', 15),
(147, 'Printer and Monitors', 15),
(148, 'External Components', 15),
(149, 'Networking Products', 15),
(150, 'Medical Supplies and Equipment', 16),
(151, 'Oral Care', 16),
(152, 'Vision Care', 16),
(153, 'Vitamins and Dietary Supplements', 16),
(154, 'Baby and Child Care', 17),
(155, 'Household Supplies', 17),
(156, 'Stationery and Gift Wrapping Supplies', 17),
(157, 'Trench Coat', 6),
(158, 'Hood', 6),
(159, 'Sweat Pants', 6),
(160, 'Oral Care', 14),
(161, 'Car Tracker', 39);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'What are Taxation in Kenya', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizelegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4;\"><h6 style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93);\"><span style=\"background-color: rgb(255, 255, 255);\"><b style=\"\">In the words of Calvin&nbsp;Coolidgu&nbsp;“collecting&nbsp;more taxes than is&nbsp;absolutely necessary is legalized robbery” But nonetheless,&nbsp;as&nbsp;responsible citizens, we pay taxes, perhaps sometimes more&nbsp;than we consider necessary.&nbsp;&nbsp;In that light, the statutory taxes in&nbsp;Kenya can be focused upon.<br></b><b style=\"\">Any tax or duty payable to the Kenya Revenue Authority (except VAT and duty on imports) may be offset on request against any refund of tax or duty confirmed by the Authority. The request must be made 30 days prior to the tax due date. Tax paid in another country on employment income by a Kenyan citizen can be offset against tax payable on that income in Kenya to the maximum of tax payable in Kenya on the said income.</b></span></h6></h3><h4 id=\"1-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Types of Statutory Taxes In Kenya</h4><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">The&nbsp;organization&nbsp;vested with the right of collecting, assessing and&nbsp;accounting for taxes in Kenya is called the Kenya Revenue&nbsp;Authority. Taxes in Kenya are categorised under two&nbsp;main heads, direct and indirect taxes.&nbsp;&nbsp;The indirect statutory taxes&nbsp;in Kenya applies when&nbsp;the purchase&nbsp;of goods are made. The&nbsp;various&nbsp;taxes under this banner are excise duty,&nbsp;custom&nbsp;duty &amp; levies&nbsp;and V.A.T. On the other hand, income tax falls under the&nbsp;direct taxes in Kenya.</p><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">The direct tax department deals with the collection&nbsp;and&nbsp;assessment&nbsp;of income taxes, which happens to be one of the&nbsp;important statutory taxes in Kenya. The income tax is&nbsp;further&nbsp;divided&nbsp;into four subcategories, for the easy comprehension&nbsp;of the massive structure of&nbsp;statutory taxes in Kenya.&nbsp;&nbsp;They are as follows:</p></h3><h3 id=\"2-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Pay as You Earn (PAYE)</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">PAYE is one of the many statutory&nbsp;taxes in Kenya collected from&nbsp;individuals&nbsp;engaged in gainful&nbsp;employment. Under this, the employers make a deduction of a&nbsp;particular percentage from the salary. This percentage&nbsp;is&nbsp;forwarded&nbsp;to the KRA on a per month. Of&nbsp;the many statutory taxes in Kenya, PAYE applies to bonuses,&nbsp;director’s fees, commission, weekly wages, monthly and annual&nbsp;salaries. A personal relief, that is a tax credit is provided to&nbsp;every resident employee under PAYE.&nbsp;In&nbsp;addition to that&nbsp;insurance relief and mortgage interest deductions are also&nbsp;provided to&nbsp;qualifying employees.</p></h3><h3 id=\"3-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Corporation Tax:</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">Yet another of the many taxes in&nbsp;Kenya is the Corporation Tax. Under this tax, the companies operating in the country pay a charge&nbsp;on their total income to the KRA. The&nbsp;indigenous&nbsp;companies&nbsp;have to pay a change of 30&nbsp;percent&nbsp;while branches of non-resident companies are charged 37.5% on their taxable profits.</p></h3><h3 id=\"4-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Value Added Tax:</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">This is the most popular of the many&nbsp;statutory taxes in Kenya. According to this regulation in Kenya,&nbsp;VAT is a consumption charge which is imposed on any taxable&nbsp;goods and services. The consumer who makes a purchase of a&nbsp;service or&nbsp;a commodity is bound to pay the VAT.</p></h3><h3 id=\"5-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Imported and Exported Services:</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">Usually, the exported services&nbsp;are zero-rated and thus do not come under the preview of the&nbsp;VAT. On the other hand imported services are issued to&nbsp;registered individuals. It is assumed that the individual has&nbsp;made a taxable supply to himself. In other cases REVERSE VAT&nbsp;is payable only when a registered individual is not entitled to a&nbsp;credit facility for a part of the input payable tax.</p></h3><h3 id=\"6-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Custom and Excise Duty:</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">International trade is on the rise for&nbsp;some time in Kenya. This is largely due to the current&nbsp;development in the oil and gas industry. This has been boosted&nbsp;by the expansion of the manufacturing entities in the country.&nbsp;The custom and excise duties are administered under the heads&nbsp;of two acts in Kenya. They are the Custom and Excise Act 2010&nbsp;and the East African Community Customs Management Act&nbsp;2004. Excise duty in Kenya is managed under the Customs Cap&nbsp;472 which came to force in 1978.</p><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">However, there might be a change in that end and a new&nbsp;autonomous excise duty act for the administration of Excise duty&nbsp;in Kenya might be enacted.&nbsp; In general excise duty is imposed&nbsp;on certain imported goods and a few locally manufactured ones.&nbsp;In addition to that, excise duty is also levied on certain services&nbsp;which fall under the Fifth Schedule of the Customs and Excise&nbsp;Act. Some goods which incur excise duty include wine, bottled&nbsp;water, soft drinks and cigarettes.</p></h3><h3 id=\"7-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Custom Duties:</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">These include import duties such as excise duty,&nbsp;VAT, import declaration fee and railway development. Customer&nbsp;duties are charged to the importer of the goods at the point of&nbsp;the importation. The importers are required to accurately&nbsp;compute and pay the taxes based on the applicable charges. Generally, when goods are imported VAT, import duty, excise&nbsp;duty, import declaration fee, railway development fee, raw&nbsp;material, intermediate goods and finished goods are applied.</p></h3><h3 id=\"8-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Withholding Tax</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">These are one of the many taxes in&nbsp;Kenya and is&nbsp;charged&nbsp;on interests, dividends, pensions,&nbsp;performance fees, royalties, commissions and so on. However,&nbsp;the rates of the taxes collected are not fixed. They vary&nbsp;according to the status of the payer. That is whether&nbsp;or&nbsp;not&nbsp;he/she is a resident.</p></h3><h3 id=\"9-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Advance Tax</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">This is yet another form of a direct tax that falls&nbsp;under the category of the statutory taxes in Kenya. These taxes&nbsp;are directed towards the public service vehicles and&nbsp;commercial vehicles. The owners are expected to pay the&nbsp;taxes in advance before they can get their commercial vehicles&nbsp;registered.</p></h3><h3 id=\"10-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Residential Rental Income Tax</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">This is&nbsp;one of the property taxes&nbsp;of the many statutory taxes in Kenya. The Residential Rental&nbsp;Income Tax is one of the multiple property taxes which fall under the income tax umbrella. The Finance Act of 2015 defines&nbsp;this tax as the amount to be paid for the accrued incomes&nbsp;collected from the&nbsp;residential&nbsp;properties of Kenya.&nbsp; However, the&nbsp;amount should not be over than Kshs 10 million per income year.</p></h3><h3 id=\"11-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Penalty</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">Non-payment or delayed payment of taxes comes&nbsp;hand-tied with a penalty of 2&nbsp;percent&nbsp;per month compounded&nbsp;for the&nbsp;non&nbsp;paid period of tax</p></h3><h3 id=\"12-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Transfer Pricing</h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">Kenya attracts a lot of foreign investments&nbsp;particularly from the multinational organizations which are&nbsp;willing to make an entry in the East African market. This has led&nbsp;to a heightened level of complication in the taxing structure. To&nbsp;ensure that the multinational companies continue to invest in&nbsp;the country and contribute a fair share of tax, the KRA has&nbsp;concentrated efforts to cut down and obstruct accounting&nbsp;malpractices which results in reduced tax liabilities.</p><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">In addition to the already mentioned statutory taxes in Kenya, a&nbsp;few more laws focus on corporate entities. There are a few rules&nbsp;and regulations which guides the operations of the various&nbsp;corporate entities of Kenya. An organization which aims to conduct&nbsp;business in the country can either operate as a company or a&nbsp;branch. All the corporate entities are guided by the Companies Act.&nbsp;A person wishing to establish a corporate entity in the country must&nbsp;submit the necessary documentation such as memorandum, details&nbsp;of directors and shareholders and such.</p><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">Under the Companies Act of Kenya, a private company requires a&nbsp;minimum of two shareholders whereas a public organization must&nbsp;have a minimum of 50 shareholders. Additionally, foreign&nbsp;companies can either work as an organization or a branch.</p><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">The Companies Act of Kenya also entails the responsibility of the&nbsp;Registrar of the company. The former is held responsible for&nbsp;registering incorporated trusts and business names.</p><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">While dealing with the corporate entities of the country, there are&nbsp;certain sector-specific rules to be followed. Companies operating in&nbsp;certain sectors or industries may be expected to obtain certain additional licenses from relevant operating bodies. For example, the&nbsp;various banks of the country fall under the jurisdiction of the Central Bank of Kenya directed by the Banking Act. In addition to&nbsp;that, the Capital Markets Authority is charged with the&nbsp;responsibility of issuance of shares to the public.</p><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\"><strong style=\"box-sizing: inherit;\">Related:&nbsp;</strong><a href=\"https://ronalds.co.ke/redefinition-of-preferential-tax-regime/\" rel=\"bookmark\" style=\"box-sizing: inherit; color: rgb(0, 56, 122); transition: all 0.3s linear 0s; box-shadow: none;\">Redefinition of Preferential Tax Regime</a></p></h3><h4 id=\"13-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">Use of The Various Statutory Taxes In Kenya</h4><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><ul style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-left: 18px; list-style-position: initial; list-style-image: initial; color: rgb(0, 46, 93); font-family: Roboto; font-size: 18px; background-color: rgb(255, 255, 255);\"><li style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Revenue Generation:</strong>&nbsp;The citizen and the government together&nbsp;can collect money which can further be spent to improve the&nbsp;lives of many. In addition to that, the money can be made use&nbsp;of to cater to any other need of the government. A large part of&nbsp;the collected statutory taxes in Kenya&nbsp;is spend&nbsp;on social welfare&nbsp;and infrastructure development.&nbsp;Additionally, a part is spent on&nbsp;meeting the debts incurred by the government.</li><li style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Addressing Externalities:</strong>&nbsp;Externality generally refers to a&nbsp;consequence of an industrial or commercial activity which affects&nbsp;a third party. For example pollution. Thus in a pursuit to&nbsp;discourage negative externalities, the government uses tax.</li><li style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">The Act of Reprising:</strong>&nbsp;The various statutory taxes in Kenya is&nbsp;used to reprise wrongly priced goods such as alcohol and&nbsp;tobacco.</li><li style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Representation:</strong>&nbsp;Under this, people choose their government to&nbsp;ensure steady management of tax collection.</li></ul></h3><h4 id=\"14-eael-table-of-content\" class=\"eael-heading-content\" style=\"box-sizing: inherit; font-family: Roboto, Arial, sans-serif; line-height: 1.2; margin: 0px 0px 20px; color: rgb(0, 46, 93); font-size: 20px;\">History of Taxes In Kenya</h4><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">The statutory tax measures of Kenya dates back to the pre-colonial era. This was a time when people paid tithes to trade with tribes in different territories. At that time the primary traders were the Portuguese and the Arabs. The taxing structure of that time was fashioned after the Islamic laws and the then trade rules. Under the established taxing structure the locals and the resident had to pay Sadaqa, Jizya and zakat. This three were mimicked from the Islamic laws. In addition to that harbour fees, capitation tax and such had to be paid. The taxpayers from that time were under two categories, Muslim followers and account holders.</p><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">With the advent of the British in the East African Protectorate,&nbsp;including Kenya, the taxation system went through certain&nbsp;modifications. Few parts of the Arab and Portuguese taxation laws&nbsp;were included and a new structure was built. The new system had&nbsp;the following changes incorporated:</p><ul style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-left: 18px; list-style-position: initial; list-style-image: initial; font-family: Roboto; font-size: 18px; background-color: rgb(255, 255, 255); color: rgb(255, 143, 28);\"><li style=\"box-sizing: inherit;\">Hut and Poll Tax: A tax to be paid by locals through labour,&nbsp;money, grains or life stocks.</li><li style=\"box-sizing: inherit;\">Land Taxes</li><li style=\"box-sizing: inherit;\">Income Tax</li><li style=\"box-sizing: inherit;\">Graduated Personal Tax</li></ul><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">When Kenya gained independence, the statutory tax structure included trade, income and excise duty. The first ten years of the independence were spent on developing a sound taxation structure. By the year 1973, sales tax was made a part of the taxation system. However, the government had to go through certain rough patches due to the oil crises for which fiscal reforms were introduced. Around the same time, the government launched a 10&nbsp;percent&nbsp;withholding tax and a 10&nbsp;percent&nbsp;cuts on goods that&nbsp;were under the duty-free category.</p><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">With the fall of the EAC in 1977, the sales tax were increased to&nbsp;15&nbsp;percent, excise duty to 59&nbsp;percent&nbsp;by the&nbsp;Kenyan&nbsp;government.In&nbsp;the year 2000, the government set a benchmark of collecting&nbsp;24&nbsp;percent&nbsp;of the GDP as taxes. Thus the consumption aspect was&nbsp;focused upon. As a result, progressive income tax became&nbsp;operative. Individuals with low-income group paid&nbsp;10&nbsp;percent&nbsp;whereas the high-income group were charged&nbsp;65&nbsp;percent. In addition to that, the income tax of local companies&nbsp;was set at 45&nbsp;percent&nbsp;and the taxes for foreign companies were set&nbsp;at 52&nbsp;percent.</p><p style=\"box-sizing: inherit; margin-bottom: 20px; font-family: Roboto; font-size: 18px; line-height: 1.8; color: rgb(0, 46, 93); background-color: rgb(255, 255, 255);\">Given the dynamic nature of laws, a lot of amendments have been&nbsp;brought in by the government since then. Changes have been&nbsp;brought in some of the tax laws as well as the rates incurred.</p></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><br></h3>\r\n'),
(2, 'What is your return policy?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\">You have 15 days to make a refund request after your order has been delivered.</span><br></p>\r\n'),
(3, ' I received a defective/damaged item, can I get a refund?', '<p>In case the item you received is damaged or defective, you could return an item in the same condition as you received it with the original box and/or packaging intact. Once we receive the returned item, we will inspect it and if the item is found to be defective or damaged, we will process the refund along with any shipping fees incurred.<br></p>\r\n'),
(4, 'When are ‘Returns’ not possible?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; background-color: rgb(250, 250, 250);\">There are a few certain scenarios where it is difficult for us to support returns:</p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(250, 250, 250);\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Return request is made outside the specified time frame, of 15 days from delivery.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Product is used, damaged, or is not in the same condition as you received it.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Specific categories like innerwear, lingerie, socks and clothing freebies etc.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Defective products which are covered under the manufacturer\'s warranty.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Any consumable item which has been used or installed.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Products with tampered or missing serial numbers.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Anything missing from the package you\'ve received including price tags, labels, original packing, freebies and accessories.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Fragile items, hygiene related items.</li></ol>\r\n'),
(5, 'What are the items that cannot be returned?', '<p>The items that can not be returned are:</p><p>Clearance items clearly marked as such and displaying a No-Return Policy<br></p><p>When the offer notes states so specifically are items that cannot be returned.</p><p>Items that fall into the below product types-</p><ul><li>Underwear</li><li>Lingerie</li><li>Socks</li><li>Software</li><li>Music albums</li><li>Books</li><li>Swimwear</li><li>Beauty &amp; Fragrances</li><li>Hosiery</li></ul><p>Also, any consumable items that are used or installed cannot be returned. As outlined in consumer Protection Rights and concerning section on non-returnable items<br></p>'),
(6, 'How to find an item?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">We have a wide range of fabulous products to choose from.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><span style=\"font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif;\">Tip 1: If you\'re looking for a specific product, use the keyword search box located at the top of the site. Simply type what you are looking for, and prepare to be amazed!</span></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Tip 2: If you want to explore a category of products, use the Shop Categories in the upper menu, and navigate through your favorite categories where we\'ll feature the best products in each.</span></font><br><br></h3>\r\n'),
(7, 'What is your return policy?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\">You have 15 days to make a refund request after your order has been delivered.</span><br></p>\r\n'),
(8, ' I received a defective/damaged item, can I get a refund?', '<p>In case the item you received is damaged or defective, you could return an item in the same condition as you received it with the original box and/or packaging intact. Once we receive the returned item, we will inspect it and if the item is found to be defective or damaged, we will process the refund along with any shipping fees incurred.<br></p>\r\n'),
(9, 'When are ‘Returns’ not possible?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; background-color: rgb(250, 250, 250);\">There are a few certain scenarios where it is difficult for us to support returns:</p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(250, 250, 250);\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Return request is made outside the specified time frame, of 15 days from delivery.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Product is used, damaged, or is not in the same condition as you received it.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Specific categories like innerwear, lingerie, socks and clothing freebies etc.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Defective products which are covered under the manufacturer\'s warranty.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Any consumable item which has been used or installed.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Products with tampered or missing serial numbers.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Anything missing from the package you\'ve received including price tags, labels, original packing, freebies and accessories.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Fragile items, hygiene related items.</li></ol>\r\n'),
(10, 'What are the items that cannot be returned?', '<p>The items that can not be returned are:</p><p>Clearance items clearly marked as such and displaying a No-Return Policy<br></p><p>When the offer notes states so specifically are items that cannot be returned.</p><p>Items that fall into the below product types-</p><ul><li>Underwear</li><li>Lingerie</li><li>Socks</li><li>Software</li><li>Music albums</li><li>Books</li><li>Swimwear</li><li>Beauty &amp; Fragrances</li><li>Hosiery</li></ul><p>Also, any consumable items that are used or installed cannot be returned. As outlined in consumer Protection Rights and concerning section on non-returnable items<br></p>'),
(11, 'What products are exempt from tax in Kenya? ', '<p>&nbsp; Other goods currently exempt from VAT include unprocessed agricultural goods including milk and certain grains, medical supplies, certain fertilizers, and airplanes and other aircraft.<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'Ksh'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Ads Under', 'All Products Ads Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product Ad'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'Review not found', 'Review not found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shopping', 'Continue Shopping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'County', 'County'),
(107, 'Town', 'Town'),
(108, 'County', 'County'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'Town can not be empty.', 'Town can not be empty.'),
(128, 'County can not be empty.', 'County can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Ads Found'),
(154, 'Add To Cart', 'Add To Cart'),
(155, 'Related Products', 'Related Products Ads'),
(156, 'See all related products from below', 'See all the related products Ads from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Men Accessories', 1),
(2, 'Men\'s Shoes', 1),
(3, 'Beauty Products', 2),
(4, 'Accessories', 2),
(5, 'Shoes', 2),
(6, 'Clothing', 2),
(7, 'Bottoms', 1),
(8, 'T-shirts & Shirts', 1),
(9, 'Clothing', 3),
(10, 'Shoes', 3),
(11, 'Accessories', 3),
(12, 'Electronic Items', 4),
(13, 'Computers', 4),
(14, 'Health', 5),
(15, 'Household', 5),
(16, 'Men Accessories', 1),
(17, 'Men\'s Shoes', 1),
(18, 'Beauty Products', 2),
(19, 'Accessories', 2),
(20, 'Shoes', 2),
(21, 'Clothing', 2),
(22, 'Bottoms', 1),
(23, 'T-shirts & Shirts', 1),
(24, 'Clothing', 3),
(25, 'Shoes', 3),
(26, 'Accessories', 3),
(27, 'Electronic Items', 4),
(28, 'Computers', 4),
(29, 'Health', 5),
(30, 'Household', 5),
(31, 'PlayStation', 16),
(32, 'Digital Games', 16),
(33, 'NinTendo', 16),
(34, 'PC Gaming', 16),
(35, 'Sony PSP', 16),
(36, 'XBox', 16),
(37, 'Car Electronics & Accessories', 6),
(38, 'Lights & Lighting Accessories', 6),
(39, 'Car Safety & Security', 6),
(40, 'MotorCycle & Powersports', 6),
(41, 'Replacement Parts', 6),
(42, 'Large Appliances', 11),
(43, 'Small Appliances', 11),
(44, 'Cooking Appliances', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_months`
--

CREATE TABLE `tbl_months` (
  `id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_months`
--

INSERT INTO `tbl_months` (`id`, `month`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_motors_cycle_makers`
--

CREATE TABLE `tbl_motors_cycle_makers` (
  `id` int(11) NOT NULL,
  `motor_cycle_makers` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_motors_cycle_makers`
--

INSERT INTO `tbl_motors_cycle_makers` (`id`, `motor_cycle_makers`) VALUES
(1, 'Harley-Davidson'),
(2, 'Yamaha'),
(3, 'Honda'),
(4, 'Kawasaki'),
(5, 'Suzuki'),
(6, 'BMW'),
(7, 'Ducati'),
(8, 'KTM'),
(9, 'Triumph'),
(10, 'Aprilia'),
(11, 'Moto Guzzi'),
(12, 'Indian Motorcycle'),
(13, 'Royal Enfield'),
(14, 'Victory Motorcycles'),
(15, 'Husqvarna'),
(16, 'Zero Motorcycles'),
(17, 'Buell'),
(18, 'MV Agusta'),
(19, 'Bajaj Auto'),
(20, 'Benelli'),
(21, 'Piaggio'),
(22, 'Vespa'),
(23, 'Kymco'),
(24, 'SYM'),
(25, 'Aprilia'),
(26, 'Daelim'),
(27, 'Derbi'),
(28, 'Gilera'),
(29, 'Hyosung'),
(30, 'Moto Morini'),
(31, 'Peugeot'),
(32, 'SWM Motorcycles'),
(33, 'Zontes'),
(34, 'Cleveland CycleWerks'),
(35, 'Energica'),
(36, 'Herald Motor Co.'),
(37, 'Cagiva'),
(38, 'Laverda'),
(39, 'Minsk'),
(40, 'Norton Motorcycles'),
(41, 'Puch'),
(42, 'AJS Motorcycles'),
(43, 'Ariel Motorcycles'),
(44, 'Norton'),
(45, 'Munch Mammut'),
(46, 'CCM Motorcycles'),
(47, 'Jawa Motorcycles'),
(48, 'Dnepr'),
(49, 'Ural Motorcycles'),
(50, 'CZ Motorcycles'),
(51, 'Mondial Motor'),
(52, 'Midual'),
(53, 'Norton Villiers'),
(54, 'Matchless'),
(55, 'Münch Motorrad'),
(56, 'Ossa Motor'),
(57, 'Rokon'),
(58, 'Vyrus'),
(59, 'Kreidler'),
(60, 'Penton'),
(61, 'Polaris'),
(62, 'Sherco'),
(63, 'Tiger'),
(64, 'Voxan'),
(65, 'Wakan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_motor_cycle_body_type`
--

CREATE TABLE `tbl_motor_cycle_body_type` (
  `id` int(11) NOT NULL,
  `motor_cycle_body_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_motor_cycle_body_type`
--

INSERT INTO `tbl_motor_cycle_body_type` (`id`, `motor_cycle_body_type`) VALUES
(1, 'Cruiser'),
(2, 'Sportbike'),
(3, 'Touring'),
(4, 'Standard'),
(5, 'Naked Bike'),
(6, 'Adventure Touring'),
(7, 'Dual Sport'),
(8, 'Scooter'),
(9, 'Moped'),
(10, 'Cafe Racer'),
(11, 'Chopper'),
(12, 'Off-Road'),
(13, 'Trike'),
(14, 'Electric'),
(15, 'Dirt Bike'),
(16, 'Motocross'),
(17, 'Enduro'),
(18, 'Supermoto'),
(19, 'Minibike'),
(20, 'Pocket Bike'),
(21, 'Retro / Vintage'),
(22, 'Trials'),
(23, 'Track Bike'),
(24, 'Streetfighter'),
(25, 'Bobber'),
(26, 'Rat Bike'),
(27, 'Scooter'),
(28, 'Chopper'),
(29, 'Cruiser'),
(30, 'Sport-Touring'),
(31, 'Dirt Bike'),
(32, 'Touring'),
(33, 'Sport Bike'),
(34, 'Cafe Racer'),
(35, 'Naked Bike'),
(36, 'Adventure Bike'),
(37, 'Trike'),
(38, 'Bobber'),
(39, 'Electric Bike'),
(40, 'Mini Bike'),
(41, 'Off-Road Bike'),
(42, 'Custom Bike'),
(43, 'Standard Bike'),
(44, 'Streetfighter'),
(45, 'Supermoto'),
(46, 'Touring Bike'),
(47, 'Vintage Bike'),
(48, 'Retro Bike'),
(49, 'Dual Sport'),
(50, 'Moped'),
(51, 'Pocket Bike'),
(52, 'Trials Bike'),
(53, 'Motocross Bike'),
(54, 'Enduro Bike'),
(55, 'Sprint Bike'),
(56, 'Track Bike'),
(57, 'Rat Bike'),
(58, 'Street Bike');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_motor_cycle_engine_size`
--

CREATE TABLE `tbl_motor_cycle_engine_size` (
  `motor_cycle_engine_id` int(11) NOT NULL,
  `motor_cycle_engine_size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_motor_cycle_engine_size`
--

INSERT INTO `tbl_motor_cycle_engine_size` (`motor_cycle_engine_id`, `motor_cycle_engine_size`) VALUES
(1, '250 cc'),
(2, '500 cc'),
(3, '750 cc'),
(4, '1000 cc'),
(5, '1200 cc'),
(6, '1500 cc'),
(7, '1800 cc'),
(8, '2000 cc'),
(9, '2500 cc'),
(10, '3000 cc'),
(11, '3500 cc'),
(12, '4000 cc'),
(13, '4500 cc'),
(14, '5000 cc'),
(15, '6000 cc'),
(16, '7000 cc'),
(17, '8000 cc'),
(18, '9000 cc'),
(19, '10000 cc'),
(20, '1100 cc'),
(21, '1300 cc'),
(22, '1400 cc'),
(23, '1600 cc'),
(24, '1700 cc'),
(25, '1900 cc'),
(26, '2200 cc'),
(27, '2400 cc'),
(28, '2600 cc'),
(29, '2800 cc'),
(30, '3200 cc'),
(31, '3500 cc'),
(32, '4000 cc'),
(33, '4500 cc'),
(34, '5000 cc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_motor_cycle_models`
--

CREATE TABLE `tbl_motor_cycle_models` (
  `motor_cycle_model_id` int(11) NOT NULL,
  `motor_cycle_model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_motor_cycle_models`
--

INSERT INTO `tbl_motor_cycle_models` (`motor_cycle_model_id`, `motor_cycle_model`) VALUES
(1, 'Honda CBR1000RR Fireblade'),
(2, 'Yamaha YZF-R1'),
(3, 'Kawasaki Ninja ZX-10R'),
(4, 'Ducati Panigale V4'),
(5, 'Suzuki GSX-R1000'),
(6, 'BMW S1000RR'),
(7, 'Aprilia RSV4'),
(8, 'Triumph Daytona 675'),
(9, 'KTM RC 390'),
(10, 'Harley-Davidson Sportster Iron 883'),
(11, 'Indian Scout'),
(12, 'Ducati Diavel'),
(13, 'Yamaha MT-09'),
(14, 'Honda CB650R'),
(15, 'Kawasaki Z900'),
(16, 'Suzuki SV650'),
(17, 'Triumph Street Triple'),
(18, 'Ducati Monster 821'),
(19, 'BMW R1250GS'),
(20, 'Honda Africa Twin'),
(21, 'Yamaha Tenere 700'),
(22, 'KTM 1290 Super Adventure R'),
(23, 'Harley-Davidson Pan America'),
(24, 'BMW R nineT'),
(25, 'Indian FTR 1200'),
(26, 'Suzuki V-Strom 650'),
(27, 'Kawasaki Versys 650'),
(28, 'Ducati Multistrada 950'),
(29, 'Triumph Tiger 800'),
(30, 'Yamaha Tracer 900 GT'),
(31, 'Honda Goldwing'),
(32, 'Yamaha VMAX'),
(33, 'Kawasaki Vulcan S'),
(34, 'Ducati Scrambler'),
(35, 'Suzuki Boulevard M109R'),
(36, 'BMW K1600 GTL'),
(37, 'Harley-Davidson Road Glide'),
(38, 'Indian Chieftain'),
(39, 'Triumph Rocket 3'),
(40, 'KTM 390 Duke'),
(41, 'Aprilia Tuono V4 1100'),
(42, 'MV Agusta Brutale 800'),
(43, 'Husqvarna Svartpilen 401'),
(44, 'Royal Enfield Interceptor 650'),
(45, 'Zero SR/F'),
(46, 'Energica Eva Ribelle'),
(47, 'Kawasaki Z H2'),
(48, 'Ducati Streetfighter V4'),
(49, 'BMW F900R'),
(50, 'Harley-Davidson LiveWire'),
(51, 'Indian Scout Bobber'),
(52, 'Yamaha XSR900'),
(53, 'Triumph Bonneville T120'),
(54, 'Suzuki Boulevard C50'),
(55, 'KTM 690 Enduro R'),
(56, 'Honda Rebel 300'),
(57, 'Ducati Hypermotard 950'),
(58, 'BMW G310GS'),
(59, 'Aprilia RS 660');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(1, 83, 'Men\'s Ultra Cotton T-Shirt, Multipack', 'XL', 'Gray', '1', '19', '1647629329'),
(2, 92, 'Travelpro Laptop Carry-on Travel Tote Bag', 'One Size for All', 'Midnight Blue', '1', '91', '1647798593'),
(4, 101, 'Digital Infrared Thermometer for Adults and Kids', 'One Size for All', 'White', '1', '70', '1647799174'),
(5, 94, 'WD 5TB Elements Portable External Hard Drive HDD', '5T', 'Black', '1', '149', '1647800902'),
(1, 83, 'Men\'s Ultra Cotton T-Shirt, Multipack', 'XL', 'Gray', '1', '19', '1647629329'),
(2, 92, 'Travelpro Laptop Carry-on Travel Tote Bag', 'One Size for All', 'Midnight Blue', '1', '91', '1647798593'),
(4, 101, 'Digital Infrared Thermometer for Adults and Kids', 'One Size for All', 'White', '1', '70', '1647799174'),
(5, 94, 'WD 5TB Elements Portable External Hard Drive HDD', '5T', 'Black', '1', '149', '1647800902'),
(0, 96, 'Men\'s Loose Fit Heavyweight Long-Sleeve Pocket T-Shirt', 'M', 'Green', '1', '2300', '1700761393');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL,
  `calculate_tax_title` varchar(255) NOT NULL,
  `calculate_tax_banner` varchar(255) NOT NULL,
  `calculate_tax_meta_title` varchar(255) NOT NULL,
  `calculate_tax_meta_keyword` varchar(255) NOT NULL,
  `calculate_tax_meta_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`, `calculate_tax_title`, `calculate_tax_banner`, `calculate_tax_meta_title`, `calculate_tax_meta_keyword`, `calculate_tax_meta_description`) VALUES
(1, 'About Us', '<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Welcome to My Tax Project!</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">We aim to offer our customers a variety of the latest [PRODUCTS_CATEGORY_NAME]. Weâ€™ve come a long way, so we know exactly which direction to take when supplying you with high quality yet budget-friendly products. We offer all of this while providing excellent customer service and friendly support.</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">We always keep an eye on the latest trends in [PRODUCTS CATEGORY NAME] and put our customersâ€™ wishes first. That is why we have satisfied customers all over the world, and are thrilled to be a part of the [PRODUCTS CATEGORY NAME] industry.</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">The interests of our customers are always top priority for us, so we hope you will enjoy our products as much as we enjoy making them available to you.</span></p><p style=\"\">We make sure you get the best quality outfits with hassle free returns and exchanges policy. We ensure what you see is exactly what you get!</p><ul><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Low Price Guarantee</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">24/7 Customer Support</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">E-Mail - Text - Call</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">We are here for you 24/7 online and via phone.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Sizing &amp; Color</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Worldwide Shipping</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Weâ€™d love to expand our business Internationally soon.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Easy Returns</span></font></li></ul><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Bought an outfit but want to return it? We have a 3 days easy return policy. Please mail us at support@ecommercephp.com for more details.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Dream Dresses for Every Occasion</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Fashionys.com carries all carefully handpicked by our stylists. If youâ€™re interested in a particular model please mail us we will try our best to offer you the loved dress.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Verified Security</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">All our transactions are Verified by Norton and with the highest standards of security. Plus, there\'s a lot to go around too through regular exciting offers and gifts, so spread the word and refer us to everyone from your family, friends and colleagues and get rewarded for it. And to top it all, you can share your user experience by posting reviews. Donâ€™t wait any longer Sign up with us now! start stalking, start buying and start loving and start Introducing the beauty in you.</span></font></p>\r\n', 'about-banner.jpg', 'My Tax App - About Us', 'about, about us,, about company, about My Tax App project', 'Our goal has always been to get the best in you we brought a huge collection.', 'FAQ', 'faq-banner.jpg', 'My Tax Application - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contact Us', 'contact-banner.jpg', 'My Tax Application - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '', 'Get the Right Figure', 'banner_calculate-tax.jpg', 'Calculate -Tax Any Where', '', ''),
(2, 'About Us', '<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Welcome to My Tax Project!</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">We aim to offer our customers a variety of the latest [PRODUCTS_CATEGORY_NAME]. Weâ€™ve come a long way, so we know exactly which direction to take when supplying you with high quality yet budget-friendly products. We offer all of this while providing excellent customer service and friendly support.</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">We always keep an eye on the latest trends in [PRODUCTS CATEGORY NAME] and put our customersâ€™ wishes first. That is why we have satisfied customers all over the world, and are thrilled to be a part of the [PRODUCTS CATEGORY NAME] industry.</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">The interests of our customers are always top priority for us, so we hope you will enjoy our products as much as we enjoy making them available to you.</span></p><p style=\"\">We make sure you get the best quality outfits with hassle free returns and exchanges policy. We ensure what you see is exactly what you get!</p><ul><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Low Price Guarantee</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">24/7 Customer Support</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">E-Mail - Text - Call</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">We are here for you 24/7 online and via phone.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Sizing &amp; Color</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Worldwide Shipping</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Weâ€™d love to expand our business Internationally soon.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Easy Returns</span></font></li></ul><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Bought an outfit but want to return it? We have a 3 days easy return policy. Please mail us at support@ecommercephp.com for more details.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Dream Dresses for Every Occasion</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Fashionys.com carries all carefully handpicked by our stylists. If youâ€™re interested in a particular model please mail us we will try our best to offer you the loved dress.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Verified Security</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">All our transactions are Verified by Norton and with the highest standards of security. Plus, there\'s a lot to go around too through regular exciting offers and gifts, so spread the word and refer us to everyone from your family, friends and colleagues and get rewarded for it. And to top it all, you can share your user experience by posting reviews. Donâ€™t wait any longer Sign up with us now! start stalking, start buying and start loving and start Introducing the beauty in you.</span></font></p>\r\n', 'about-banner.jpg', 'My Tax App - About Us', 'about, about us,, about company, about My Tax App project', 'Our goal has always been to get the best in you we brought a huge collection.', 'FAQ', 'faq-banner.jpg', 'My Tax Application - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contact Us', 'contact-banner.jpg', 'My Tax Application - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '', 'Get the Right Figure', 'banner_calculate-tax.jpg', 'Caculate - Tax Any Where', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(1, 2, 'Chad N. Carney', 'chad@mail.com', '2022-03-18 22:48:49', '', 19, '', '', '', '', 'Transaction Id: CA01010158967840\r\nTransaction Date: 3/19/2022\r\nBank: WestView Bank, CA Branch\r\nSender A/C: 102458965WV', 'Bank Deposit', 'Completed', 'Completed', '1647629329'),
(2, 3, 'Jean Collins', 'jean@mail.com', '2022-03-20 10:49:53', '', 91, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1647798593'),
(6, 17, 'Gibson Murimi', 'gibsonmurimi4@gmail.com', '2023-11-23 18:43:13', '', 2400, '', '', '', '', '', 'PayPal', 'Pending', 'Pending', '1700761393'),
(4, 6, 'August F. Freels', 'august@mail.com', '2022-03-20 10:59:34', '', 70, '', '', '', '', 'Transaction Id: CA01101198945600\nTransaction Date: 3/20/2022 \nBank: WestView Bank, CA Branch \nSender A/C: 1100047860WV', 'Bank Deposit', 'Completed', 'Pending', '1647799174'),
(5, 10, 'Will Williams', 'williams@mail.com', '2022-03-20 11:28:22', '', 149, '', '', '', '', 'Transaction Id: CA01003177945009\r\nTransaction Date: 3/20/2022 \r\nBank: WestView Bank, CA Branch \r\nSender A/C: NQ1011050160WV', 'Bank Deposit', 'Completed', 'Completed', '1647800902');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_barcode` varchar(255) NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL,
  `tax_imposed_variat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_barcode`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`, `tax_imposed_variat`) VALUES
(83, 'Men\'s Ultra Cotton T-Shirt, Multipack', '2600', '1900', 77, 'product-featured-83.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Solids: 100% Cotton; Sport Grey And Antique Heather: 90% Cotton, 10% Polyester; Safety Colors And Heather: 50% Cotton, 50% Polyester.</span></p><p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Available in 2 packs and a wide array of colors so you can stock up on your favorite.</span></p>', '<p><span style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\">Style 20020-Multipack; Solids: 100% Cotton.</span><br></p>', '<ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: Arial;\">Pull On closure</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: Arial;\">Machine Wash</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: Arial;\">Longer dropped shoulder, straighter armhole, and wider, shorter sleeves</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: Arial;\">Double-stitching at the hems to make it built to last</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: Arial;\">Thick and hefty fabric</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: Arial;\">Tear away tag</span></li></ul>', '<p>This is a sample text for conditions.</p>', '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401224', 3, 0, 1, 21, 'imported'),
(84, 'Loose-fit One-Shoulder Cutout Rib Knit Maxi Dress', '5100', '3900', 26, 'product-featured-84.jpg', 'A <span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">source for must-have style inspiration from global influencers. Shop limited-edition collections and discover chic wardrobe essentials. Look out for trend inspiration, exclusive brand collaborations, and expert styling tips from those in the know.</span>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">86% Tencel, 14% Elastane</span></p>', '<ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Machine Wash</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Staples by The Drop</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">This maxi dress measures 48\"/122 cm long</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Loose-Fit: designed for comfort</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">A subtle twist cutout adds a touch of romance to this minimal one-shoulder flowy maxi dress silhouette, cut from a lightweight Tencel blend ribbed knit. Belt the waist for added shape and a pop of color</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401224', 14, 1, 1, 109, 'imported'),
(85, 'Men\'s Soft Classic Sneaker', '11000', '9100', 32, 'product-featured-85.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Brings a formal leather finish to a laidback silhouette in a shoe that delivers equally on quality and comfort The metal eyelets and contrasting heel patch balance out the style\'s sleek uniformity Wear yours with jeans an Oxford shirt and a blazer.</span><br></p>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Synthetic sole, Secure fit.</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Crafted in either hand-finished crust leather or brushed nubuck made in our own tanneries</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Textile lining and molded removable insole offer softness and breathability</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Lightweight sole provides cushioning grip and flexibility using innovative ECCO FluidForm Direct Comfort Technology</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Textile laces are easily adjusted for a secure fit</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">A full anatomical last shape provides a supremely comfortable fit</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401485', 5, 0, 1, 25, 'imported'),
(86, 'Amazfit GTS 3 Smart Watch for Android iPhone', '1990', '1790', 32, 'product-featured-86.jpg', '<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\">Amazfit GTS 3 is the most powerful, easy-to-use smartwatch that combining cutting-edge health & fitness features and a fashionable slim & light design. The smartwatch adopts a 1.75-inch ultra HD AMOLED display which has increased by 14% compared with the previous generation and boasts a 72.4% screen-to-body ratio that\'s among the highest in the smartwatch industry. Match your mood, an outfit or the occasion with a wide selection of more than 100 stylish watch faces - or even upload your own photo as the background image for true personalization. Thanks to the advanced 6PD (six photodiodes) BioTrackerâ„¢ PPG 3.0 biometric sensor, GTS 3 can track your heart rate, blood-oxygen saturation, stress level and breathing rate in one single tap of the watch, for a result in as little as 45 seconds. And Its health management features also includes in-depth monitoring of sleep & sleep breathing quality and female cycle tracking. This sports watch is your next-level fitness partner with 150+ sports modes, smart recognition of 8 sports, and a water-resistance grade of 5 ATM. Comes with Alexa built-in and an offline voice assistant to liberate your hands, and supports GPS, GLONASS, Galileo, BDS and QZSS satellite navigation systems to accurately track your route. Super endurance that won\'t let you down, it can last for up to 12 days with typical usage and 20 days with battery saver mode. Compatible with Android 7.0 and above, iOS 12.0 and above device.<br></p>', '<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important; font-family: Roboto;\">Alexa Built-in, GPS Fitness Sports Watch with 150 Sports Modes, 1.75â€ AMOLED Display, 12-Day Battery Life, Blood Oxygen Heart Rate Tracking</span></p>', '<ul><li>Smart 24H Monitoring of Blood-oxygen Levels</li><li>Monitor Heart Rate All Day & While Swimming</li><li>A Simple Health Overview with PAI Health Assessment</li><li>In-depth Monitoring of Sleep & Sleep Breathing Quality</li><li>Stress Level Monitoring & Measurement</li><li>Female Cycle Tracking</li><li><span style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\">Alexa Built in</span></li><li><span style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\">12-Day battery life<br></span><span style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px; font-weight: 700;\"><br></span><span style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px; font-weight: 700;\"><br></span><br></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161100122486', 29, 1, 1, 3, 'imported'),
(87, 'Truck Boys Pajamas Toddler Sleepwear Clothes', '5900', '3700', 68, 'product-featured-87.jpg', '<p style=\"padding: 0px; margin-bottom: 14px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><span class=\"a-text-bold\" style=\"\">Airplane Pajamas:</span></p><p style=\"padding: 0px; margin-bottom: 14px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\">Wide crew neckline, elastic waistband and stretchable material make them easily skip on/off. Breathable, moisture absorbent material and pants set design help kids to lose heat faster and keep warm in cool day</p><p style=\"padding: 0px; margin-bottom: 14px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\">Great set with colorful cartoon pattern, sporty and stylish, suitable for both sleepwear and daily wear, especially for school pajamas day</p>', 'T shirt Pants set for Kids Size 1Y - 14Y', '<p></p><p><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><ul></ul></ul></p><ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">SUPER COZY PAJAMAS SET - Both the top and bottoms are made of 100% natural cotton, extremely soft, comfortable and keep cool in summer</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">ADORABLE PATTERN - Super cool airplane and space cartoon pattern on the top, a lot of little airplane prints on the bottom, boys favorite</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">CONSIDERATE DESIGN - Casual wide neckline, heat-sale label at the collar, relaxed straight legs, allow for unrestricted movement and a better sleep</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">EASY CARE - As the durable and high quality material, simply machine wash or hand wash in mild water</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">SNUGLY FITTED - As the snugly fitted design and shrinkable cotton material, youÂ¡Â¯d better consider one or two bigger size</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401287', 2, 0, 1, 26, 'imported'),
(88, 'Under Armour Men\'s Sportstyle Left Chest Short Sleeve T-shirt', '1080', '830', 59, 'product-featured-88.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Super-soft, cotton-blend fabric provides all-day comfort.</span><br></p>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Loose:Â Fuller cut for complete comfort.</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Super-soft, cotton-blend fabric provides all-day comfort</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Loose:Â Fuller cut for complete comfort.</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401234', 4, 0, 1, 21, 'imported'),
(89, 'Men\'s Fleece Jogger Pant', '5800', '3000', 110, 'product-featured-89.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">A relaxed leg and elastic waistband bring lounge-ready style to this classic casual pant</span><br></p>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">A relaxed leg and elastic, drawstring waistband bring lounge-ready style to this classic casual pant</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Elastic cuffs at ankle and on-seam side pockets</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Everyday made better: we listen to customer feedback and fine-tune every detail to ensure quality, fit, and comfort</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6110440122489', 5, 0, 1, 18, 'imported'),
(90, 'Women\'s Thin Cotton Zip Up Hoodie Jacket', '4300', '3200', 64, 'product-featured-90.jpg', '<p><span style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\">Made with quality thin cotton material, this casual style zip-up hoodie is perfect for when you want extra protection without having a bulky jacket on or to keep up with your active lifestyle. Comfortable, flattering, and functional. Itâ€™s perfect for when you need to get things done.</span><br></p>', '<p>CASUAL & COMFY<br></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Full zip up closure with pockets</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">The perfect year-long hoodie</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Uniquely thin design</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Pullover Series also available</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Model is 5\' 7\" with 34-25-36 measurement.</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6160440122490', 4, 0, 1, 158, 'imported'),
(91, 'Women\'s Oversized Fleece Hoodie', '6800', '5600', 41, 'product-featured-91.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Oversized silhouette for maximum comfort and quality layering</span></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Built for her lifestyle.</span><br></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Oversized silhouette for maximum comfort and quality layering</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Soft and warm fleece for ultimate comfort and wearability</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401291', 3, 0, 1, 158, 'imported'),
(92, 'Travelpro Laptop Carry-on Travel Tote Bag', '11000', '9100', 29, 'product-featured-92.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Everything she needs in one perfect bag! It delivers big on performance in a compact, lightweight carry-on. Organization is effortless with interior pockets for everything from power cords and back-up batteries to cosmetics and accessories. Padded laptop and tablet sleeves keep your electronics protected, while a quick-access front pocket with magnetic closure is ideal for storing a cell phone, keys or other necessities. There is even a side pocket perfect for a water bottle, compact umbrella, gloves or other convenience. A rear strap lets you Stack this bag on a spinner or Rollaboard for hands-free mobility.</span><br></p>', '<p>Padded laptop (up to 14â€) and tablet sleeves offer protection for electronics.<br></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Polyester</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Padded laptop (up to 14â€) and tablet sleeves offer protection for electronics. Organizational pockets store power cords, powerbanks and other essentials</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Quick access, magnetic front pocket is ideal for storing a cell phone or other essentials. Exterior side pocket holds a water bottle, compact umbrella or other accessories</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Polyester fabric with DuraGuard coating resists water and stains to keep luggage looking great. Unobtrusive rear strap fits around the extension handle of a Rollaboard or spinner suitcase for secure stacking and hands-free mobility</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Ergonomic, high-tensile-strength zipper pulls are tough yet easy on the hands</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Backed by Travelpro Built For A Lifetime Limited Warranty. Dimensions: 11 x 21x 5 inches weight: 1.4 lbs</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '616110440122492', 13, 0, 1, 60, 'imported'),
(93, 'Gold Plated Leopard Print Crystal Big Round Hoop Earrings', '3200', '2500', 165, 'product-featured-93.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">These beautiful 18k gold filled dangle earrings sparkle with stunning created ruby center stones surrounded by a shining Cubic Zirconia halo. These extravagant earrings are the perfect anniversary or birthday gift for your special!</span><br></p>', '<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important; font-family: Roboto;\">Gm148 2\" inches</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Width: 6mm</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Diamter: 2 inches</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401293', 8, 0, 1, 42, 'imported'),
(94, 'WD 5TB Elements Portable External Hard Drive HDD', '1600', '1490', 46, 'product-featured-94.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Western Digital elements portable hard drives offer reliable, high-capacity storage, fast data transfer rates and universal connectivity with USB 3.0 and USB 2.0 devices to back up your photos, videos and files on the go. The small, lightweight design offers up to 5TB capacity.</span><br></p>', '<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">USB 3.0, Compatible with PC, Mac, PS4 & Xbox - WDBU6Y0050BBK-WESN</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">USB 3.0 and USB 2.0 Compatibility</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Compatible with PC, Mac, PS4 & Xbox</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Fast Data Transfers, Improve PC Performance</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">High Capacity</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Memory Storage Capacity: 5TB</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401294', 14, 0, 1, 71, 'imported'),
(95, 'Bose QuietComfort 45 Bluetooth Wireless Headphones', '3290', '2790', 52, 'product-featured-95.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">The first noise cancelling headphones are back, with world-class quiet, lightweight materials, and proprietary technology for deep, clear sound. Bose QuietComfort 45 headphones arenâ€™t just an icon reborn â€“ theyâ€™re the perfect balance of quiet, comfort, and sound. Plus, everything that made the first around ear headphones an icon is still here. Just refined. Like an updated design with smooth cushions and a clean look. Plush synthetic leather, impact-resistant glass-filled nylon, and cast-metal hinges were all selected for their comfort as well as their durability. Add in minimal clamping force, and youâ€™ll almost forget youâ€™re wearing Bluetooth wireless noise cancelling headphones.</span><br></p>', 'Iconic, Quiet, Comfort and Sound.', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Noise cancelling wireless headphones â€“ The perfect balance of quiet, comfort, and sound. Bose uses tiny mics to measure, compare, and react to outside noise, cancelling it with opposite signals.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">High-fidelity audio â€“ The TriPort acoustic architecture offers depth and fullness. Volume-optimized Active EQ maintains balanced performance at any volume, so bass stays consistent when turned down and the music remains clear when turned up.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Quiet and Aware Modes â€“ Choose Quiet Mode for full noise cancelling, or Aware Mode to bring the outside into the around ear headphones and hear your environment and your music at the same time.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Over ear headphones â€“ These comfortable wireless headphones are suitable for all-day wear. Crafted with plush synthetic leather and impact-resistant nylon, and designed with minimal clamping force, theyâ€™re as luxurious as they are durable.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Up to 24 hours battery life â€“ Enjoy 24 hours of battery life from a single charge. A quick 15-minute charge offers 3 hours when youâ€™re on the go, or plug in the included audio cable to listen for even longer in wired mode.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Around ear headphones charge via USB-C â€“ Headphones charge via the included USB-C cable.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Bluetooth wireless noise cancelling headphones â€“ These headphones are optimized for a strong, reliable Bluetooth connection within 30 feet of the paired device.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Bose Music app â€“ The app walks you through guided setup of your over ear headphones, making it easy to get started. Plus, access adjustable noise cancellation settings, manage your Bluetooth connections, enable shortcuts, and more.</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '616110440122495', 17, 1, 1, 62, 'imported'),
(96, 'Men\'s Loose Fit Heavyweight Long-Sleeve Pocket T-Shirt', '2900', '2300', 101, 'product-featured-96.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men\'s long-sleeve t-shirt bears our logo proudly on the chest pocket. It\'s made of heavyweight cotton jersey and cut generously for a roomy fit.</span><br></p>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% cotton (fiber content varies by color)</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% cotton (fiber content varies by color)</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Rib-knit crewneck and cuffs</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Left-chest pocket with sewn on Carhartt label</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Loose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Loose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Previous Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '616110440122496', 16, 1, 1, 15, 'imported'),
(97, 'Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)', '8700', '6700', 53, 'product-featured-97.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Our t-length party dress has a solid stretch top, full soutache sequin skirt and tie belt that is perfect for any evening event.</span><br></p>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Short-sleeve v-neck midi blue dress</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Sequin detail</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">This style is available in Regular and Plus Size on Amazon.com</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Center back zip</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Joanna Chen design</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Short-sleeve v-neck midi blue dress</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401297', 16, 1, 1, 109, 'imported'),
(98, 'Women\'s Fuzzy Fleece Lapel Open Front Long Cardigan Coat', '5200', '4300', 41, 'product-featured-98.jpg', '<h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: \"Amazon Ember\", Arial, sans-serif; color: rgb(15, 17, 17); margin-bottom: 6px !important;\">Design Details - Women Fuzzy Winter Teddy Coat</h3><p class=\"a-spacing-base\" style=\"padding: 0px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px; margin-bottom: 14px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 18px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Material:</span>Â 85% Cotton + 15% Spandex. This women\'s teddy coat is 100% brand new and high quality!</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Style:</span>Â Causal, Long Sleeves, Knee Length, Fuzzy, Faux Fur, Lapel, Open Front, this women\'s teddy coat can be both chic and warm.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Occasion:</span>Â Spring, Fall, Winter, Work, Date, Vacation, Daily Casual, At Home . This women\'s faux fur coat is suitable for both formal and casual occasions.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Package include:</span>Â 1 Womens Fuzzy Coat</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">KINDLY NOTE: Different body types may have different fit from the model pictures, please refer to customer review images for more fitting information.</span></span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">KINDLY NOTE: this item is designed to be open front and has no button or zipper closure. Please take it into consideration before purchase.</span></span></li></ul>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Material:85% Polyester; 15% Spandex. 100% brand new and high quality!</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">No closure closure</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Material:85% Polyester; 15% Spandex. 100% brand new and high quality!</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Style: Causal, Long Sleeves, Knee Length, Fuzzy, Faux Fur, Lapel, Open Front</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Occasion: Spring, Fall, Winter, Work, Date, Vacation, Daily Casual, At Home</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Pair with: This women\'s coat goes perfect with a shirt/sweater & jeans/leggings/palazoo pants underneath and with short boots.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">KINDLY NOTE: Different body types may have different fit from the model pictures, please refer to customer review images for more fitting information.</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401224', 5, 1, 1, 157, 'imported');
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_barcode`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`, `tax_imposed_variat`) VALUES
(99, 'Oculus Quest 2 - Advanced All-In-One Virtual Reality Headset', '5120', '4950', 46, 'product-featured-99.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Oculus quest 2 is our most advanced all-in-one VR system yet. Every detail has been engineered to make virtual worlds adapt to your movements, letting you explore awe-inspiring games and experiences with unparalleled freedom. No PC or Console required. Get the most out of each moment with blazing-fast performance and next-generation graphics. Stay focused with a stunning display that features 50% more pixels than the original quest. Or take a break from the action and grab front-row seats to live concerts, exclusive events and more. The redesigned touch controllers feature improved ergonomics and intuitive controls that transport your gestures, motions and actions directly into VR. You can even connect your VR headset to a gaming-compatible computer with an Oculus Link cable to access hundreds of PC VR games and experiences. Quest 2 also lets you bring your friends into the action. With live casting, you can share your VR experience with people around you. Or meet up with friends in virtual worlds to battle in multiplayer competitions or just spend some time together. With Oculus quest 2, there\'s no end in sight to what you can play, create and discover in virtual reality.</span><br></p>', '<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important; font-family: Roboto;\">Advanced All-In-One Virtual Reality Headset</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Next-level Hardware - Make every move count with a blazing-fast processor and our highest-resolution display</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">All-In-One Gaming - With backward compatibility, you can explore new titles and old favorites in the expansive Quest content library</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Immersive Entertainment - Get the best seat in the house to live concerts, groundbreaking films, exclusive events and more</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Easy Setup - Just open the box, set up with the smartphone app and jump into VR. No PC or console needed. Requires wireless internet access and the Oculus app (free download) to set up device</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Premium Display - Catch every detail with a stunning display that features 50% more pixels than the original Quest</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Ultimate Control - Redesigned Oculus Touch controllers transport your movements directly into VR with intuitive controls</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">PC VR Compatible - Step into incredible Oculus Rift titles by connecting an Oculus Link cable to a compatible gaming PC. Oculus Link Cable sold separately</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">3D Cinematic Sound - Hear in all directions with built-in speakers that deliver cinematic 3D positional audio</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401299', 6, 1, 1, 61, 'imported'),
(100, 'Men\'s Long Cuffed Jogger Yoga Sweat Pant', '1050', '950', 78, 'product-featured-100.jpg', '<p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em; color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">We warmly welcome you to our \"Long\" Mens Cuffed Perfection Yoga Pant - our most exciting product launch of the year - <span style=\"font-weight: 700;\">and voted \"Favorite Yoga Pant\" by Instructors in YOGA JOURNAL magazine! (Spring/2015)</span></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em; color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">It\'s FORM & FASHION - <span style=\"font-weight: 700;\">you\'ll transition to errands in style!</span></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em; color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Please notice in the pictures, the fabric paneling in the upper leg area <span style=\"font-weight: 700;\">that allows for complete expansion of the crotch area in ALL directions.</span> It is simply perfect for Yoga, pilates, lounging, the gym & running errands!</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em; color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Relaxed elastic waist band with 1/4\" drawcord in contrasting White with super light-weight metal tips (they will NOT clang in the dryer).</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em; color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">2x1 rib cuffing at the bottom will <span style=\"font-weight: 700;\">keep your pants \"in place\"</span> for those inversions and hand stands!</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em; color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\"><span style=\"font-weight: 700;\">DEEP pockets</span> that are sewn on top of the garment so they do not \"float.\" The pockets are 6.5\" deep to the side-seam so they can encase your large cell phones!</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em; color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">The rib piping extends <span style=\"font-weight: 700;\">uninterrupted</span> from the side of the pant to the back of the rear - <span style=\"font-weight: 700;\">providing amazing flexibility & stability for stretching and rigorous activity.</span></p>', '<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Long Cuffed Jogger Pants</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Proudly brought to you by 4-rth: over 10 years in business from LA, California. Designed, manufactured & shipped from Los Angeles, CA.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Fabric strips in the upper leg allow for complete expansion of the crotch area in ALL directions.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Made from our Custom MODAL French-Terry fabric from the sustainable Birch Tree wood.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Cuff at the bottom is form-fitting, yet relaxed. IDEAL for all Yoga styles - Ashtanga, Bikram, Hatha, Hot - as well as Pilates, Tennis & Soccer!</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">MODEL: 6\'2, 175lbs. Size: M. (See Product Description for specific SIZE guidelines!) Please IGNORE the \"size chart\" above!!</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '616110440100', 5, 0, 1, 18, 'imported'),
(101, 'Digital Infrared Thermometer for Adults and Kids', '790', '700', 289, 'product-featured-101.jpg', '<h5 class=\"a-spacing-mini a-color-secondary\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; font-weight: bold; font-size: 13px; line-height: 19px; font-family: \"Amazon Ember\", Arial, sans-serif; margin-bottom: 6px !important; color: rgb(86, 89, 89) !important;\">Safe and Hygienic</h5><p class=\"a-spacing-base\" style=\"padding: 0px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px; margin-bottom: 14px !important;\">No-Touch measuring reads body temperature within 1.18 inches of the center of the forehead without physical contact.</p><h5 class=\"a-spacing-mini a-color-secondary\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; font-weight: bold; font-size: 13px; line-height: 19px; font-family: \"Amazon Ember\", Arial, sans-serif; margin-bottom: 6px !important; color: rgb(86, 89, 89) !important;\">Tri-Point Sensors Accuracy</h5><p class=\"a-spacing-base\" style=\"padding: 0px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px; margin-bottom: 14px !important;\">An ultra-sensitive infrared sensor collects more than 100 data points per second while distance and environmental sensors combine to account for other variables; ensuring maximum accuracy every time a temperature is taken.</p><h5 class=\"a-spacing-mini a-color-secondary\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; font-weight: bold; font-size: 13px; line-height: 19px; font-family: \"Amazon Ember\", Arial, sans-serif; margin-bottom: 6px !important; color: rgb(86, 89, 89) !important;\">Fast, Simple, Clear and Quiet</h5><p class=\"a-spacing-base\" style=\"padding: 0px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px; margin-bottom: 14px !important;\">The intuitive single-button control design thermometer reads the temperature in just 1 second from a clear bright large LED screen, even in total darkness. The quiet vibrating alert eliminates buzzing noise or disturbance.</p>', '<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">No-Touch Forehead Thermometer</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">No Touch Measuring, Just Safe and Hygienic: PT3 Built-in infrared temperature sensor, reads body temperature within 1.18 inches of the center of the forehead without physical contact.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Tri-Point Sensors Accuracy: An ultra-sensitive infrared sensor collects more than 100 data points per second while distance and environmental sensors combine to account for other variables; ensuring maximum accuracy every time temperature is taken.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Fast, Simple, Clear and Quiet: The intuitive single-button control design thermometer reads the temperature in just 1 second from a clear bright extra-large LED screen, even in total darkness. The quiet vibration alerting ensures there is no buzzing noise and no disturbance.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Suitable for Multi-Scenario and All Ages: iHealth PT3 is designed for all ages: ranging from babies and toddlers to the elderly. An ideal choice for hospitals, hotels, school settings, and public establishments.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">What You Get: 1x PT3 thermometer, 2x AAA batteries, 1x Instruction manual, 1x Quick User Guide, our worry-free 12-month warranty, and friendly California-based customer service.</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401221', 7, 1, 1, 160, 'locally'),
(102, 'Women\'s Plus-Size Shirt Dress with Gold Hardware', '1900', '1690', 112, 'product-featured-102.jpg', '<p><span style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\">This dress has everything! Enough stretch to be forgiving. Works for my hourglass/pear shape just fine. The cap sleeves satisfy conservative dressing requirements (no sleeveless) but still works for spring/summer.</span><br></p>', '<p>From Calvin Klein</p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Cap-sleeve shirt dress featuring belted waist with gold-tone hardware accents</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Split v-neckline</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Exposed center back zipper</span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '6161104401021', 11, 1, 1, 109, 'imported'),
(104, 'Car Tracker in Kenya: Best Phone App, Countrywide Installation', '15500', '8500', 1, 'product-featured-104.jpg', '<p>Car Tracker in Kenya - CarTech Base Package</p><p>An advanced car tracker to help you secure, monitor, and track your car without any hidden charges.</p><p><br></p><p>In real-time, the tracker provides the vehicle’s accurate position or location with additional details like speed, direction, and engine status. Thanks to its geofencing capabilities, you get alerts when the car leaves or enters designated areas. Feel free to get in touch for a free demo. Contact us on 0722 22 00 22 via call or SMS. Click here (WhatsApp Chat) to text us via WhatsApp.</p><p><br></p><p>Car Tracking System Features in Kenya: Advanced GSM GPS GPRS Vehicle Tracker</p><p>1. Real-Time Tracking: This feature provides accurate real-time location updates of your vehicle on a map. You can monitor;</p><p><br></p><p>If your car is moving or stationary</p><p>It’s speed</p><p>Direction</p><p>Engine status (ON or OFF)</p><p>Additionally, the system can tell you how long the vehicle has been static or the engine has been running. This information can help you keep track of your car\'s whereabouts and ensure that it is being used for the intended purpose.</p><p><br></p><p>2. Historical Playback: This feature enables you to access route playback for the last 90 days on a map with;</p><p><br></p><p>Parking details</p><p>Speed</p><p>Direction</p><p>Mileage</p><p>Other alerts like engine ON and OFF.</p><p>This information can help you to identify the patterns of your vehicle\'s usage, such as its regular routes, time parked, and periods of high activity. This feature can also help in case of theft or other incidents where you need to know where the vehicle has been.</p><p><br></p><p>3. Immobilize Remotely: This feature lets you remotely switch the car ON or OFF via the tracker. However, it depends on your car\'s make and is only applicable for light vehicles. This feature can be helpful in case of theft, as you can immobilize the car remotely to prevent the thief from getting away.</p><p><br></p><p>4. Phone App and Web Online Platforms: This feature allows you to track your car via an app on your phone, web browser, or computer, as well as via SMS, from anywhere at any time. This feature makes it convenient for you to access the tracking information and receive alerts on the go.</p><p><br></p><p>5. SMS Control: This feature allows you to use SMS to check the location and immobilize the vehicle. The system sends an SMS alert and calls you when your car\'s battery is disconnected, which can indicate theft.</p><p><br></p><p>6. Geo-Fencing: This feature allows you to set virtual geographical borders and receive alerts whenever your car enters or leaves the geofenced areas. This feature can help monitor your vehicle\'s usage or prevent unauthorized usage.</p><p><br></p><p>7. App & Email Alerts: This feature provides alerts for various events related to your car, such as;</p><p><br></p><p>Engine ON and OFF</p><p>Over-speeding</p><p>Driving during restricted hours</p><p>Engine idle alert</p><p>Offline</p><p>Parking</p><p>Fatigue driving alert</p><p>Minimum rest alert</p><p>Low vehicle battery alarm.</p><p>Call and SMS alerts for car battery disconnection interference</p><p>You can receive alerts via the app or email, informing you of the vehicle\'s status and usage. The alerts help the car owner to stay informed about their vehicle\'s activities and prevent theft and misuse.</p><p><br></p><p>8. Reports: This feature enables you to generate reports based on parameters such as moving overview, mileage reports, speeding reports, trip reports, engine reports, and alert reports. These reports can provide valuable insights into your vehicle\'s usage, helping you optimize it. The car tracking system generates various types of reports, such as;</p><p><br></p><p>Mileage reports: This report shows the total distance the vehicle covers over a certain period, which can be useful for keeping track of the vehicle\'s fuel consumption and maintenance schedules.</p><p>Trip reports: This report shows the details of each trip made by the vehicle, such as the starting and ending points, the duration of the trip, the route taken, and parking details. This information can help monitor employee productivity.</p><p>Moving overview: This report provides a real-time view of the vehicle\'s location and speed. It allows fleet managers or vehicle owners to monitor their assets and respond quickly to any issues.</p><p>Engine reports: This report provides information about the vehicle\'s engine performance, such as the number of hours running and any maintenance required.</p><p>Speeding reports: This report identifies instances where the vehicle has exceeded a specific speed limit, which can help fleet managers or vehicle owners to identify unsafe driving practices and take corrective action.</p><p>Alert reports: This report provides notifications for specific events or conditions, such as when the vehicle enters or exits a predefined geofence or when the engine is turned on or off outside designated hours. These alerts can help fleet managers or vehicle owners proactively manage their assets and respond quickly to any issues. These reports provide detailed information about the vehicle\'s activities, including the distance traveled, the time is taken, the speed at which it was driven, and other important data. The owner can use these reports to optimize vehicle usage, improve fuel efficiency, and track maintenance requirements.</p><p>9. Low Battery Alert: This feature sends SMS, app, and email notifications if the vehicle\'s battery is running low, helping you to take timely action. This alert helps the owner to know when the battery needs to be recharged or replaced, preventing the vehicle from getting stranded in an unknown location.</p><p><br></p><p>10. Power Disconnection Alert: This feature sends notifications via call, SMS, and app if there is a power disconnection in the car, which can indicate theft. This notification indicates that the tracker\'s power supply has been disconnected. The car tracker power disconnection alert helps the owner know if the vehicle is being tampered with or if there is a power outage.</p><p><br></p><p>11. Internal Battery: The car tracking system has an internal battery that can power the device even when the battery is disconnected. The internal battery of the vehicle tracker ensures that the device can continue to track the vehicle\'s location and activities even if it is disconnected from the power supply.</p><p><br></p><p>12. Microphone & SOS: The car tracking system can be equipped with a microphone and SOS feature at an additional cost upon request. The microphone allows the owner to listen to the conversations inside the car. During an emergency, the SOS button is pressed to send out an SOS signal for rescue services.</p><p><br></p><p>13. Hard-Wired: This feature makes the tracker tamper-proof by hard-wiring it into the vehicle\'s electrical system. The car tracking system is hard-wired, which makes it tamper-proof. It cannot be easily removed or disabled by an unauthorized person.</p><p><br></p><p>14. Small Size: The small size of the tracker makes it easy to conceal and difficult for thieves to detect, increasing its effectiveness as a theft deterrent. This feature helps prevent theft and makes it difficult for an unauthorized person to locate and tamper with the device.</p>', '<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 14px;\"> Real-Time Tracking With info about Live Location, Direction, Speed and Vehicle Status | Trip History Replay (up to 3 months) | Mobile App | Web Platform for Computer Access | Immobilize or Switch Off and On Your Car Remotely | Fuel Monitoring from Mileage Reports | Reporting | Ignition Detection | Parking Details | Multiple Map Layouts | Daily Mileage | SMS Control | Internal Battery | Small Size | Hard-Wired and Highly Concealed | No Hidden Charges.</span><br></p>', '<p style=\"margin-bottom: var(--wd-tags-mb); padding: 0px; color: rgb(51, 51, 51); font-size: 14px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">An advanced car tracker to help you secure, monitor, and track your car 24/7. No hidden charges.</p><p style=\"margin-bottom: var(--wd-tags-mb); padding: 0px; color: rgb(51, 51, 51); font-size: 14px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Quick Features:</span> Real-Time Tracking With info about Live Location, Direction, Speed and Vehicle Status | Trip History Replay (up to 3 months) | Mobile App | Web Platform for Computer Access | Immobilize or Switch Off and On Your Car Remotely | Fuel Monitoring from Mileage Reports | Reporting | Ignition Detection | Parking Details | Multiple Map Layouts | Daily Mileage | SMS Control | Internal Battery | Small Size | Hard-Wired and Highly Concealed | No Hidden Charges.</p><p style=\"margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">System Alerts:</span> Engine ON and OFF Alerts | Over-Speeding Alerts | Geo-Fence Alerts | Tampering Alerts | Low Battery Alert | Battery Disconnection Alert | Restricted Time Driving Alert</p>', '<p style=\"padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">Monthly Subscription 3500/=</p><p style=\"padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">Yearly Subscription 10 000/=</p>', '<p>1 month Warrant<br></p>', '6161104401221', 2147483647, 1, 1, 161, 'locally');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(270, 14, 100),
(271, 6, 99),
(276, 2, 95),
(277, 6, 95),
(278, 2, 94),
(279, 16, 93),
(280, 2, 92),
(281, 29, 92),
(282, 1, 83),
(283, 2, 83),
(284, 3, 83),
(285, 4, 83),
(286, 5, 83),
(287, 6, 83),
(288, 8, 83),
(289, 14, 83),
(290, 17, 83),
(291, 18, 83),
(293, 21, 85),
(294, 22, 85),
(295, 23, 85),
(299, 2, 86),
(300, 6, 86),
(301, 17, 86),
(302, 3, 87),
(303, 17, 87),
(304, 2, 88),
(305, 8, 88),
(306, 17, 88),
(307, 12, 89),
(314, 2, 102),
(316, 25, 97),
(318, 5, 98),
(319, 5, 96),
(320, 24, 96),
(321, 2, 84),
(328, 2, 90),
(329, 6, 90),
(330, 25, 90),
(331, 27, 90),
(332, 28, 90),
(333, 27, 91),
(334, 6, 101),
(335, 6, 103),
(339, 6, 104);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(106, '106.jpg', 83),
(107, '107.jpg', 83),
(108, '108.jpg', 84),
(109, '109.jpg', 84),
(110, '110.jpg', 85),
(111, '111.jpg', 85),
(112, '112.jpg', 86),
(113, '113.jpg', 86),
(114, '114.jpg', 87),
(115, '115.jpg', 87),
(116, '116.jpg', 88),
(117, '117.jpg', 88),
(118, '118.jpg', 89),
(119, '119.jpg', 89),
(120, '120.jpg', 90),
(121, '121.jpg', 91),
(122, '122.jpg', 92),
(123, '123.jpg', 92),
(124, '124.jpg', 93),
(125, '125.jpg', 94),
(126, '126.jpg', 95),
(127, '127.jpg', 96),
(128, '128.jpg', 97),
(129, '129.jpg', 98),
(130, '130.jpg', 98),
(131, '131.jpg', 100),
(132, '132.jpg', 102),
(133, '133.jpg', 103),
(134, '134.jpg', 103),
(135, '135.jpg', 104);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(455, 3, 100),
(456, 4, 100),
(457, 5, 100),
(458, 6, 100),
(459, 40, 99),
(460, 41, 99),
(482, 27, 95),
(483, 33, 94),
(484, 27, 93),
(485, 27, 92),
(486, 1, 83),
(487, 2, 83),
(488, 3, 83),
(489, 4, 83),
(490, 5, 83),
(491, 6, 83),
(492, 7, 83),
(498, 15, 85),
(499, 16, 85),
(500, 17, 85),
(501, 18, 85),
(502, 19, 85),
(503, 20, 85),
(504, 21, 85),
(505, 22, 85),
(506, 23, 85),
(507, 24, 85),
(508, 25, 85),
(510, 26, 86),
(511, 29, 87),
(512, 30, 87),
(513, 31, 87),
(514, 32, 87),
(515, 33, 87),
(516, 34, 87),
(517, 35, 87),
(518, 36, 87),
(519, 37, 87),
(520, 38, 87),
(521, 39, 87),
(522, 3, 88),
(523, 4, 88),
(524, 5, 88),
(525, 6, 88),
(526, 7, 88),
(527, 3, 89),
(528, 4, 89),
(529, 5, 89),
(530, 6, 89),
(531, 7, 89),
(541, 42, 102),
(542, 43, 102),
(543, 44, 102),
(544, 45, 102),
(545, 46, 102),
(546, 47, 102),
(548, 8, 97),
(549, 9, 97),
(550, 10, 97),
(551, 11, 97),
(552, 12, 97),
(553, 13, 97),
(554, 14, 97),
(555, 15, 97),
(556, 16, 97),
(557, 17, 97),
(558, 18, 97),
(559, 19, 97),
(564, 4, 98),
(565, 5, 98),
(566, 6, 98),
(567, 7, 98),
(568, 3, 96),
(569, 4, 96),
(570, 5, 96),
(571, 6, 96),
(572, 7, 96),
(573, 2, 84),
(574, 3, 84),
(575, 4, 84),
(576, 5, 84),
(577, 6, 84),
(587, 1, 90),
(588, 2, 90),
(589, 3, 90),
(590, 4, 90),
(591, 2, 91),
(592, 3, 91),
(593, 4, 91),
(594, 5, 91),
(595, 6, 91),
(596, 27, 101),
(597, 2, 103),
(598, 4, 103),
(602, 4, 104);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`rt_id`, `p_id`, `cust_id`, `comment`, `rating`) VALUES
(1, 83, 1, 'The Best', 0),
(2, 84, 0, 'Best Purchase I Have ever made!', 0),
(3, 83, 1, 'Best Products!', 5),
(4, 83, 1, 'Best Products!', 4),
(5, 84, 2, 'Best Products', 3),
(6, 86, 6, 'I recommend this !', 5),
(7, 83, 1, 'Excellent product', 2),
(8, 84, 2, 'Good product', 3),
(9, 85, 3, 'Very satisfied', 4),
(10, 86, 4, 'I recommend this !', 5),
(11, 87, 5, 'Satisfactory', 2),
(12, 88, 6, 'Worth the money', 3),
(13, 89, 7, 'Highly recommended', 4),
(14, 90, 8, 'Top-notch quality', 5),
(15, 91, 9, 'Not as expected', 2),
(16, 92, 10, 'Needs improvement', 3),
(17, 93, 1, 'Great deal', 4),
(18, 94, 2, 'Perfect choice', 5),
(19, 95, 3, 'Affordable price', 2),
(20, 96, 4, 'Outstanding', 3),
(21, 97, 5, 'Very happy', 4),
(22, 98, 6, 'Impressed', 5),
(23, 99, 7, 'Good value', 2),
(24, 100, 8, 'Exceptional', 3),
(25, 101, 9, 'Incredible', 4),
(26, 102, 10, 'Unmatched', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(1, 'Easy Returns', 'Return any item before 15 days!', 'service-5.png'),
(2, 'Free Shipping', 'Enjoy free shipping inside US.', 'service-6.png'),
(3, 'Fast Shipping', 'Items are shipped within 24 hours.', 'service-7.png'),
(4, 'Satisfaction Guarantee', 'We guarantee you with our quality satisfaction.', 'service-8.png'),
(5, 'Secure Checkout', 'Providing Secure Checkout Options for all', 'service-9.png'),
(6, 'Money Back Guarantee', 'Offer money back guarantee on our products', 'service-10.png'),
(7, 'Easy Returns', 'Return any item before 15 days!', 'service-5.png'),
(8, 'Free Shipping', 'Enjoy free shipping inside US.', 'service-6.png'),
(9, 'Fast Shipping', 'Items are shipped within 24 hours.', 'service-7.png'),
(10, 'Satisfaction Guarantee', 'We guarantee you with our quality satisfaction.', 'service-8.png'),
(11, 'Secure Checkout', 'Providing Secure Checkout Options for all', 'service-9.png'),
(12, 'Money Back Guarantee', 'Offer money back guarantee on our products', 'service-10.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(11) NOT NULL,
  `total_popular_post_footer` int(11) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(2552) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_calculate_tax` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(11) NOT NULL,
  `ads_above_featured_product_on_off` int(11) NOT NULL,
  `ads_above_latest_product_on_off` int(11) NOT NULL,
  `ads_above_popular_product_on_off` int(11) NOT NULL,
  `ads_above_testimonial_on_off` int(11) NOT NULL,
  `ads_category_sidebar_on_off` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_calculate_tax`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright Â© 2023 - My Tax Application - Developed By Purity Njenga Wanjiku', '93 Anga Arcade Avenue\r\nNairobi,KE', 'support@mytaxappliance.com', '+254 765 433 333', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.020958405712!2d-84.39261378514685!3d39.151504939531584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841acfb8da30203%3A0x193175e741781f21!2s4293%20Simpson%20Ave%2C%20Cincinnati%2C%20OH%2045227%2C%20USA!5e0!3m2!1sen!2snp!4v1647796779407!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'support@mytaxapplinnce.com', 'Visitor Email Message from Admin', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 15, 10, 12, 'My Tax Application', 'My Tax Application for any product in the market.. ', 'My Tax Aplication', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_calculate-tax.jpg', 'banner_blog.jpg', 'Welcome To My Tax Application', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Updated Ads', 'Updated Ads', 'Latest Ads', 'Recently added Ads', 'Popular  Ads', 'Popular Ads based on most search', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Sign-up to our newsletter for latest promotions and discounts.', 'admin@mytax.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: WestView Bank\nAccount Number: CA100270589600\nBranch Name: CA Branch\nCountry: USA', '', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `county_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `county_id`, `amount`) VALUES
(1, 294, '11'),
(2, 295, '10'),
(3, 294, '8'),
(4, 294, '0'),
(5, 294, '11'),
(6, 294, '10'),
(7, 275, '8'),
(8, 275, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100'),
(2, '100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, '12 Months'),
(30, '2T'),
(31, '3T'),
(32, '4T'),
(33, '5T'),
(34, '6 Years'),
(35, '7 Years'),
(36, '8 Years'),
(37, '10 Years'),
(38, '12 Years'),
(39, '14 Years'),
(40, '256 GB'),
(41, '128 GB'),
(42, '14 Plus'),
(43, '16 Plus'),
(44, '18 Plus'),
(45, '20 Plus'),
(46, '22 Plus'),
(47, '24 Plus'),
(48, 'XS'),
(49, 'S'),
(50, 'M'),
(51, 'L'),
(52, 'XL'),
(53, 'XXL'),
(54, '3XL'),
(55, '31'),
(56, '32'),
(57, '33'),
(58, '34'),
(59, '35'),
(60, '36'),
(61, '37'),
(62, '38'),
(63, '39'),
(64, '40'),
(65, '41'),
(66, '42'),
(67, '43'),
(68, '44'),
(69, '45'),
(70, '46'),
(71, '47'),
(72, '48'),
(73, 'Free Size'),
(74, 'One Size for All'),
(75, '10'),
(76, '12 Months'),
(77, '2T'),
(78, '3T'),
(79, '4T'),
(80, '5T'),
(81, '6 Years'),
(82, '7 Years'),
(83, '8 Years'),
(84, '10 Years'),
(85, '12 Years'),
(86, '14 Years'),
(87, '256 GB'),
(88, '128 GB'),
(89, '14 Plus'),
(90, '16 Plus'),
(91, '18 Plus'),
(92, '20 Plus'),
(93, '22 Plus'),
(94, '24 Plus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'My Tax Application', 'Get to Know All the Taxes imposed to any product your buy ', 'View More Products', 'product-category.php?id=4&type=mid-category', 'Center'),
(2, 'slider-2.jpg', 'View All Products', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Center'),
(3, 'slider-3.jpg', '24 Hours Customer Support', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(1, 'ruth@mail.com', '2022-03-20', '2022-03-20 10:25:18', 'f4eabc1afed38a08da8d1c6e5fb42187', 1),
(2, 'kimberly@mail.com', '2022-03-20', '2022-03-20 10:26:07', '61f3af9cac686555a4bff9e565f88c47', 1),
(3, 'gregobn@mail.com', '2022-03-20', '2022-03-20 10:27:21', '72d6fc3a9e9ed33dfc30b10f4de82f34', 1),
(4, 'morgan.sarahh5@mail.com', '2022-03-20', '2022-03-20 10:27:48', 'bcdeda095a6c882803fc3aaf4a17f08e', 1),
(5, 'greenwd1154@mail.com', '2022-03-20', '2022-03-20 10:28:09', '279ecfe9debbb091c664641f534857ee', 1),
(6, 'awsm785@mail.com', '2022-03-20', '2022-03-20 10:28:21', '94096ae01fc65e71c50c7843d096e041', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taxation_type`
--

CREATE TABLE `tbl_taxation_type` (
  `tax_id` int(11) NOT NULL,
  `tax_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_taxation_type`
--

INSERT INTO `tbl_taxation_type` (`tax_id`, `tax_type`) VALUES
(1, 'imported'),
(2, 'locally');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Men', 1),
(2, 'Women', 1),
(3, 'Kids', 0),
(4, 'Electronics', 1),
(5, 'Health and Household', 1),
(6, 'Automobile', 1),
(7, 'Sporting Goods', 0),
(8, 'SuperMarket', 0),
(9, 'Home & Office', 0),
(10, 'Helath & Beauty', 0),
(11, 'Appliances', 1),
(12, 'Tvs & Audio', 0),
(13, 'Phones & Tablets', 0),
(14, 'Official Stores', 0),
(15, 'Baby Products', 0),
(16, 'Gaming', 1),
(17, 'Garden & OutDoors', 0),
(18, 'Books,Movies & Music', 0),
(19, 'Industrial & Scientific', 0),
(20, 'Livestock', 0),
(21, 'Musical Instruments', 0),
(22, 'Miscellaneous', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@mail.com', '7777777777', 'd00f5d5217896fb7fd601412cb890830', 'user-1.png', 'Super Admin', 'Active'),
(2, 'Christine', 'christine@mail.com', '4444444444', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_body_type`
--

CREATE TABLE `tbl_vehicle_body_type` (
  `id` int(11) NOT NULL,
  `body_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vehicle_body_type`
--

INSERT INTO `tbl_vehicle_body_type` (`id`, `body_type`) VALUES
(1, 'AMB'),
(2, 'BUS'),
(3, ' CC'),
(4, ' Combi Van'),
(5, 'Convertible'),
(6, 'Convertible Coupe'),
(7, ' Coupe'),
(8, 'D/C'),
(9, ' D/CAB'),
(10, 'DCAB'),
(11, ' EST'),
(12, 'EXT CAB'),
(13, 'H/B'),
(14, 'H/BACK'),
(15, 'HAT'),
(16, 'HATCH BACK'),
(17, 'HB'),
(18, ' LIM'),
(19, ' M/BUS'),
(20, 'MIXER'),
(21, ' P/MIxer'),
(22, ' p/u'),
(23, 'P/UP'),
(24, 'PUP'),
(25, ' PM'),
(26, ' Rigid'),
(27, 'Roadster'),
(28, ' S/CAB'),
(29, ' S/CABIN'),
(30, ' S/W'),
(31, 'S/WAGON'),
(32, ' SAL'),
(33, 'SALON'),
(34, ' Sport Car'),
(35, ' SCAB'),
(36, 'SEDAN'),
(37, ' Station Wagon'),
(38, 'SUV'),
(39, ' SW'),
(40, ' minivans'),
(41, 'Tipper'),
(42, 'TRK'),
(43, ' TRK MIXER'),
(44, ' TRK/MIXER'),
(45, ' TRUCK'),
(46, 'VAN'),
(47, 'Hatchbacks');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_engine_size`
--

CREATE TABLE `tbl_vehicle_engine_size` (
  `engine_id` int(11) NOT NULL,
  `engine_size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vehicle_engine_size`
--

INSERT INTO `tbl_vehicle_engine_size` (`engine_id`, `engine_size`) VALUES
(1, '1000'),
(2, '1200'),
(3, '1500'),
(4, '1800'),
(5, '2000'),
(6, '2200'),
(7, '2500'),
(8, '2800'),
(9, '3000'),
(10, '3500'),
(11, '4000'),
(12, '4500'),
(13, '5000'),
(14, '5500'),
(15, '6000'),
(16, '6500'),
(17, '7000'),
(18, '7500'),
(19, '8000'),
(20, '8500'),
(21, '9000'),
(22, '9500'),
(23, '10000'),
(24, '10500'),
(25, '11000'),
(26, '11500'),
(27, '12000'),
(28, '12500'),
(29, '13000'),
(30, '13500'),
(31, '14000'),
(32, '14500'),
(33, '15000'),
(34, '15500'),
(35, '16000'),
(36, '16500'),
(37, '17000'),
(38, '17500'),
(39, '18000'),
(40, '18500'),
(41, '19000'),
(42, '19500'),
(43, '20000'),
(44, '25000'),
(45, '30000'),
(46, '35000'),
(47, '40000'),
(48, '45000'),
(49, '50000'),
(50, '55000'),
(51, '60000'),
(52, '65000'),
(53, '70000'),
(54, '75000'),
(55, '80000'),
(56, '85000'),
(57, '90000'),
(58, '95000'),
(59, '100000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_makers`
--

CREATE TABLE `tbl_vehicle_makers` (
  `id` int(11) NOT NULL,
  `vehicle_makers` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vehicle_makers`
--

INSERT INTO `tbl_vehicle_makers` (`id`, `vehicle_makers`) VALUES
(1, 'Acura'),
(2, 'Alfa Romeo'),
(3, 'Aston Martin'),
(4, 'Audi'),
(5, 'Bentley'),
(6, 'BMW'),
(7, 'Buick'),
(8, 'Cadillac'),
(9, 'Chevrolet'),
(10, 'Chrysler'),
(11, 'Citroën'),
(12, 'Dodge'),
(13, 'Ferrari'),
(14, 'Fiat'),
(15, 'Ford'),
(16, 'Genesis'),
(17, 'GMC'),
(18, 'Honda'),
(19, 'Hyundai'),
(20, 'InfinitiY'),
(21, 'Jaguar'),
(22, 'Jeep'),
(23, 'Kia'),
(24, 'Lamborghini'),
(25, 'Land Rover'),
(26, 'Lexus'),
(27, 'Lincoln'),
(28, 'Lotus'),
(29, 'Maserati'),
(30, 'Mazda'),
(31, 'McLaren'),
(32, 'Mercedes-Benz'),
(33, 'Mini'),
(34, 'Mitsubishi'),
(35, 'Nissan'),
(36, 'Peugeot'),
(37, 'Porsche'),
(38, 'Ram'),
(39, 'Renault'),
(40, 'Rolls-Royce'),
(41, 'Subaru'),
(42, 'Tesla'),
(43, 'Toyota'),
(44, 'Volkswagen'),
(45, 'Volvo'),
(46, 'BEDFORD'),
(47, 'BEIBEN'),
(48, 'DACIA'),
(49, 'DAEWOO'),
(50, 'DAF'),
(51, 'DAIHATSU'),
(52, 'EICHER'),
(53, 'FAW'),
(54, 'FERRARI'),
(55, 'FOTON'),
(56, 'GREAT WALL'),
(57, 'HINO'),
(58, 'HUMMER'),
(59, 'ROVER'),
(60, 'ISUZU'),
(61, 'IVECO'),
(62, 'JAC'),
(63, 'LEYLAND'),
(64, 'MAHINDRA'),
(66, 'MAN'),
(67, 'MARUTI'),
(68, 'SAAB'),
(69, 'SAILOR/MEIYA'),
(70, 'SCANIA'),
(71, 'NISSAN DIESEL/UD'),
(72, 'OPEL'),
(73, 'RANGE ROVER'),
(74, 'SHANQI'),
(75, 'SKODA'),
(76, 'SMART CITY'),
(77, 'SSANG YONG'),
(78, 'TATA'),
(79, 'TIGGO'),
(80, 'VAOXHALL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_models`
--

CREATE TABLE `tbl_vehicle_models` (
  `model_id` int(11) NOT NULL,
  `vehicle_model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vehicle_models`
--

INSERT INTO `tbl_vehicle_models` (`model_id`, `vehicle_model`) VALUES
(1, 'Toyota Camry'),
(2, 'Toyota Corolla'),
(3, 'Toyota Prius'),
(4, 'Toyota RAV4'),
(5, 'Toyota Highlander'),
(6, 'Toyota Tacoma'),
(7, 'Toyota Tundra'),
(8, 'Toyota 4Runner'),
(9, 'Honda Civic'),
(10, 'Honda Accord'),
(11, 'Honda CR-V'),
(12, 'Honda Pilot'),
(13, 'Honda Odyssey'),
(14, 'Honda Fit'),
(15, 'Honda Ridgeline'),
(16, 'Ford Mustang'),
(17, 'Ford F-150'),
(18, 'Ford Explorer'),
(19, 'Ford Escape'),
(20, 'Ford Focus'),
(21, 'Ford Fusion'),
(22, 'Ford Edge'),
(23, 'Ford Ranger'),
(24, 'Chevrolet Silverado'),
(25, 'Chevrolet Equinox'),
(26, 'Chevrolet Malibu'),
(27, 'Chevrolet Traverse'),
(28, 'Chevrolet Camaro'),
(29, 'Chevrolet Tahoe'),
(30, 'Chevrolet Suburban'),
(31, 'Nissan Altima'),
(32, 'Nissan Maxima'),
(33, 'Nissan Rogue'),
(34, 'Nissan Murano'),
(35, 'Nissan Pathfinder'),
(36, 'Nissan Titan'),
(37, 'Nissan Armada'),
(38, 'BMW 3 Series'),
(39, 'BMW 5 Series'),
(40, 'BMW X3'),
(41, 'BMW X5'),
(42, 'BMW 7 Series'),
(43, 'BMW i3'),
(44, 'BMW M3'),
(45, 'BMW M5'),
(46, 'Mercedes-Benz C-Class'),
(47, 'Mercedes-Benz E-Class'),
(48, 'Mercedes-Benz S-Class'),
(49, 'Mercedes-Benz GLC'),
(50, 'Mercedes-Benz GLE'),
(51, 'Mercedes-Benz GLS'),
(52, 'Mercedes-Benz A-Class'),
(53, 'Volkswagen Golf'),
(54, 'Volkswagen Passat'),
(55, 'Volkswagen Tiguan'),
(56, 'Volkswagen Atlas'),
(57, 'Volkswagen Jetta'),
(58, 'Volkswagen Beetle'),
(59, 'Audi A3'),
(60, 'Audi A4'),
(61, 'Audi A6'),
(62, 'Audi Q5'),
(63, 'Audi Q7'),
(64, 'Audi Q8'),
(65, 'Hyundai Sonata'),
(66, 'Hyundai Elantra'),
(67, 'Hyundai Tucson'),
(68, 'Hyundai Santa Fe'),
(69, 'Hyundai Kona'),
(70, 'Hyundai Palisade'),
(71, 'Kia Optima'),
(72, 'Kia Forte'),
(73, 'Kia Sorento'),
(74, 'Kia Sportage'),
(75, 'Kia Telluride'),
(76, 'Kia Soul'),
(77, 'Toyota Avalon'),
(78, 'Toyota Sequoia'),
(79, 'Toyota Land Cruiser'),
(80, 'Honda HR-V'),
(81, 'Honda CR-Z'),
(82, 'Honda Clarity'),
(83, 'Honda Insight'),
(84, 'Ford Expedition'),
(85, 'Ford Bronco'),
(86, 'Ford EcoSport'),
(87, 'Chevrolet Sonic'),
(88, 'Chevrolet Spark'),
(89, 'Chevrolet Volt'),
(90, 'Chevrolet Impala'),
(91, 'Chevrolet Express'),
(92, 'Nissan Sentra'),
(93, 'Nissan Versa'),
(94, 'Nissan Kicks'),
(95, 'Nissan 370Z'),
(96, 'Nissan Frontier'),
(97, 'BMW X1'),
(98, 'BMW X7'),
(99, 'BMW 2 Series'),
(100, 'BMW 4 Series'),
(101, 'BMW 8 Series'),
(102, 'Mercedes-Benz CLA'),
(103, 'Mercedes-Benz GLA'),
(104, 'Mercedes-Benz G-Class'),
(105, 'Volkswagen Arteon'),
(106, 'Volkswagen e-Golf'),
(107, 'Volkswagen e-Up!'),
(108, 'Audi A5'),
(109, 'Audi A7'),
(110, 'Audi A8'),
(111, 'Audi e-tron'),
(112, 'Hyundai Accent'),
(113, 'Hyundai Veloster'),
(114, 'Hyundai Genesis'),
(115, 'Hyundai Venue'),
(116, 'Kia Rio'),
(117, 'Kia Stinger'),
(118, 'Kia Niro'),
(119, 'Kia Carnival'),
(120, 'Lexus ES'),
(121, 'Lexus RX'),
(122, 'Lexus NX'),
(123, 'Lexus GX'),
(124, 'Lexus LX'),
(125, 'Mazda3'),
(126, 'Mazda6'),
(127, 'Mazda CX-3'),
(128, 'Mazda CX-5'),
(129, 'Mazda CX-9'),
(130, 'Subaru Impreza'),
(131, 'Subaru Outback'),
(132, 'Subaru Forester'),
(133, 'Subaru Ascent'),
(134, 'Jaguar F-PACE'),
(135, 'Jaguar I-PACE'),
(136, 'Jaguar XF'),
(137, 'Land Rover Discovery'),
(138, 'Land Rover Range Rover'),
(139, 'Land Rover Defender'),
(140, 'Tesla Model 3'),
(141, 'Tesla Model S'),
(142, 'Tesla Model X'),
(143, 'Tesla Model Y'),
(144, 'Chevrolet Malibu'),
(145, 'Chevrolet Camaro'),
(146, 'Chevrolet Corvette'),
(147, 'Ford Mustang'),
(148, 'Ford Ranger'),
(149, 'Ford Transit'),
(150, 'Nissan Altima'),
(151, 'Nissan Maxima'),
(152, 'Nissan Armada'),
(153, 'BMW 3 Series'),
(154, 'BMW 5 Series'),
(155, 'BMW 7 Series'),
(156, 'Mercedes-Benz C-Class'),
(157, 'Mercedes-Benz E-Class'),
(158, 'Mercedes-Benz S-Class'),
(159, 'Volkswagen Jetta'),
(160, 'Volkswagen Passat'),
(161, 'Audi A3'),
(162, 'Audi A4'),
(163, 'Audi A6'),
(164, 'Hyundai Elantra'),
(165, 'Hyundai Sonata'),
(166, 'Hyundai Palisade'),
(167, 'Kia Optima'),
(168, 'Kia Forte'),
(169, 'Kia Seltos'),
(170, 'Lexus IS'),
(171, 'Lexus LS'),
(172, 'Lexus LC'),
(173, 'Mazda MX-5 Miata'),
(174, 'Mazda CX-30'),
(175, 'Mazda CX-50'),
(176, 'Subaru Legacy'),
(177, 'Subaru WRX'),
(178, 'Subaru BRZ'),
(179, 'Jaguar E-PACE'),
(180, 'Jaguar XE'),
(181, 'Jaguar XJ'),
(182, 'Land Rover Range Rover Sport'),
(183, 'Land Rover Range Rover Velar'),
(184, 'Land Rover Range Rover Evoque'),
(185, 'Tesla Roadster'),
(186, 'Tesla Cybertruck'),
(187, 'Tesla Semi'),
(188, 'Toyota Corolla'),
(189, 'Toyota Camry'),
(190, 'Toyota Prius'),
(191, 'Honda Accord'),
(192, 'Honda Civic'),
(193, 'Honda CR-V'),
(194, 'Chevrolet Silverado'),
(195, 'Chevrolet Equinox'),
(196, 'Chevrolet Tahoe'),
(197, 'Ford F-150'),
(198, 'Ford Explorer'),
(199, 'Ford Escape'),
(200, 'Nissan Rogue'),
(201, 'Nissan Titan'),
(202, 'Nissan Frontier'),
(203, 'BMW X3'),
(204, 'BMW X5'),
(205, 'BMW X7'),
(206, 'Mercedes-Benz GLE'),
(207, 'Mercedes-Benz GLC'),
(208, 'Mercedes-Benz GLA'),
(209, 'Volkswagen Tiguan'),
(210, 'Volkswagen Atlas'),
(211, 'Volkswagen Golf'),
(212, 'Audi Q5'),
(213, 'Audi Q7'),
(214, 'Audi Q8'),
(215, 'Hyundai Tucson'),
(216, 'Hyundai Santa Fe'),
(217, 'Hyundai Kona'),
(218, 'Kia Sportage'),
(219, 'Kia Telluride'),
(220, 'Kia Soul'),
(221, 'Lexus RX'),
(222, 'Lexus NX'),
(223, 'Lexus GX'),
(224, 'Mazda CX-5'),
(225, 'Mazda CX-9'),
(226, 'Mazda3'),
(227, 'Subaru Outback'),
(228, 'Subaru Crosstrek'),
(229, 'Subaru Ascent'),
(230, 'Jaguar F-PACE'),
(231, 'Jaguar XF'),
(232, 'Jaguar XK'),
(233, 'Land Rover Discovery'),
(234, 'Land Rover Defender'),
(235, 'Land Rover Range Rover'),
(236, 'Toyota RAV4'),
(237, 'Toyota Highlander'),
(238, 'Toyota 4Runner'),
(239, 'Honda Pilot'),
(240, 'Honda Odyssey'),
(241, 'Chevrolet Malibu'),
(242, 'Chevrolet Traverse'),
(243, 'Chevrolet Suburban'),
(244, 'Ford Mustang'),
(245, 'Ford Edge'),
(246, 'Ford Expedition'),
(247, 'Nissan Altima'),
(248, 'Nissan Maxima'),
(249, 'Nissan Armada'),
(250, 'BMW 3 Series'),
(251, 'BMW 5 Series'),
(252, 'BMW 7 Series'),
(253, 'Mercedes-Benz C-Class'),
(254, 'Mercedes-Benz E-Class'),
(255, 'Mercedes-Benz S-Class'),
(256, 'Volkswagen Passat'),
(257, 'Volkswagen Jetta'),
(258, 'Volkswagen Arteon'),
(259, 'Audi A4'),
(260, 'Audi A6'),
(261, 'Audi A8'),
(262, 'Hyundai Sonata'),
(263, 'Hyundai Elantra'),
(264, 'Hyundai Palisade'),
(265, 'Kia Optima'),
(266, 'Kia Sorento'),
(267, 'Kia Forte'),
(268, 'Lexus IS'),
(269, 'Lexus LS'),
(270, 'Lexus LC'),
(271, 'Mazda6'),
(272, 'Mazda CX-30'),
(273, 'Mazda MX-5 Miata'),
(274, 'Subaru Legacy'),
(275, 'Subaru Impreza'),
(276, 'Subaru WRX'),
(277, 'Jaguar E-PACE'),
(278, 'Jaguar I-PACE'),
(279, 'Jaguar XE'),
(280, 'Land Rover Range Rover Sport'),
(281, 'Land Rover Range Rover Velar'),
(282, 'Land Rover Range Rover Evoque');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_years`
--

CREATE TABLE `tbl_years` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_years`
--

INSERT INTO `tbl_years` (`id`, `year`) VALUES
(1, 1901),
(2, 1902),
(3, 1903),
(4, 1904),
(5, 1905),
(6, 1906),
(7, 1907),
(8, 1908),
(9, 1909),
(10, 1910),
(11, 1911),
(12, 1912),
(13, 1913),
(14, 1914),
(15, 1915),
(16, 1916),
(17, 1917),
(18, 1918),
(19, 1919),
(20, 1920),
(21, 1921),
(22, 1922),
(23, 1923),
(24, 1924),
(25, 1925),
(26, 1926),
(27, 1927),
(28, 1928),
(29, 1929),
(30, 1930),
(31, 1931),
(32, 1932),
(33, 1933),
(34, 1934),
(35, 1935),
(36, 1936),
(37, 1937),
(38, 1938),
(39, 1939),
(40, 1940),
(41, 1941),
(42, 1942),
(43, 1943),
(44, 1944),
(45, 1945),
(46, 1946),
(47, 1947),
(48, 1948),
(49, 1949),
(50, 1950),
(51, 1951),
(52, 1952),
(53, 1953),
(54, 1954),
(55, 1955),
(56, 1956),
(57, 1957),
(58, 1958),
(59, 1959),
(60, 1960),
(61, 1961),
(62, 1962),
(63, 1963),
(64, 1964),
(65, 1965),
(66, 1966),
(67, 1967),
(68, 1968),
(69, 1969),
(70, 1970),
(71, 1971),
(72, 1972),
(73, 1973),
(74, 1974),
(75, 1975),
(76, 1976),
(77, 1977),
(78, 1978),
(79, 1979),
(80, 1980),
(81, 1981),
(82, 1982),
(83, 1983),
(84, 1984),
(85, 1985),
(86, 1986),
(87, 1987),
(88, 1988),
(89, 1989),
(90, 1990),
(91, 1991),
(92, 1992),
(93, 1993),
(94, 1994),
(95, 1995),
(96, 1996),
(97, 1997),
(98, 1998),
(99, 1999),
(100, 2000),
(101, 2001),
(102, 2002),
(103, 2003),
(104, 2004),
(105, 2005),
(106, 2006),
(107, 2007),
(108, 2008),
(109, 2009),
(110, 2010),
(111, 2011),
(112, 2012),
(113, 2013),
(114, 2014),
(115, 2015),
(116, 2016),
(117, 2017),
(118, 2018),
(119, 2019),
(120, 2020),
(121, 2021),
(122, 2022),
(123, 2023);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_counties`
--
ALTER TABLE `tbl_counties`
  ADD PRIMARY KEY (`county_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`	customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_months`
--
ALTER TABLE `tbl_months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_motors_cycle_makers`
--
ALTER TABLE `tbl_motors_cycle_makers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_motor_cycle_body_type`
--
ALTER TABLE `tbl_motor_cycle_body_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_motor_cycle_engine_size`
--
ALTER TABLE `tbl_motor_cycle_engine_size`
  ADD PRIMARY KEY (`motor_cycle_engine_id`);

--
-- Indexes for table `tbl_motor_cycle_models`
--
ALTER TABLE `tbl_motor_cycle_models`
  ADD PRIMARY KEY (`motor_cycle_model_id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_taxation_type`
--
ALTER TABLE `tbl_taxation_type`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- Indexes for table `tbl_vehicle_body_type`
--
ALTER TABLE `tbl_vehicle_body_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vehicle_engine_size`
--
ALTER TABLE `tbl_vehicle_engine_size`
  ADD PRIMARY KEY (`engine_id`);

--
-- Indexes for table `tbl_vehicle_makers`
--
ALTER TABLE `tbl_vehicle_makers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vehicle_models`
--
ALTER TABLE `tbl_vehicle_models`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_years`
--
ALTER TABLE `tbl_years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_counties`
--
ALTER TABLE `tbl_counties`
  MODIFY `county_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `	customer_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_months`
--
ALTER TABLE `tbl_months`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_motors_cycle_makers`
--
ALTER TABLE `tbl_motors_cycle_makers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_motor_cycle_body_type`
--
ALTER TABLE `tbl_motor_cycle_body_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_motor_cycle_engine_size`
--
ALTER TABLE `tbl_motor_cycle_engine_size`
  MODIFY `motor_cycle_engine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_motor_cycle_models`
--
ALTER TABLE `tbl_motor_cycle_models`
  MODIFY `motor_cycle_model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_taxation_type`
--
ALTER TABLE `tbl_taxation_type`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_vehicle_body_type`
--
ALTER TABLE `tbl_vehicle_body_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_vehicle_engine_size`
--
ALTER TABLE `tbl_vehicle_engine_size`
  MODIFY `engine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_vehicle_makers`
--
ALTER TABLE `tbl_vehicle_makers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_vehicle_models`
--
ALTER TABLE `tbl_vehicle_models`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_years`
--
ALTER TABLE `tbl_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
