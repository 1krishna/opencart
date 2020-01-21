-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 21, 2020 at 06:48 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opencart`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'kjnih', 'redr', 'trdtr', 'redsre', 'trdt', 'trd', '7877657', 223, 3613, ''),
(2, 2, 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 99, 1476, ''),
(3, 2, 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 99, 1476, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'ZFkaxvDb06fGqGaPpvk7Fei4hE87Ux0li88duQ5TUFDbeOFT23qdRIqmKSiKZ3ToqmO9WcMqH7my1zYimsK9JEaL0EX4H9Psc6bXE43cmuc8XQL633rfzsKfBtEujTEUsGNzt54m2LfwY9L4IGB31VuZKCH0FXQScGIUWEb8jis0lBdrjKE3EbXbqGXhwsAIzGwuDO07U6MUMRsHKf8LTjfwQeFqqu1XQv5Rky3xjLNG8EDvjeQveGEPiyJyFlVv', 1, '2019-10-25 21:46:50', '2019-10-25 21:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(12, 1, '6ef0eb07ca09b6eb828547d8e1', '::1', '2020-01-17 02:04:08', '2020-01-17 02:04:08'),
(11, 1, 'b289e3d6029bd9a25ff03aa35f', '::1', '2020-01-17 02:03:44', '2020-01-17 02:03:44'),
(9, 1, '69dce3ca4959e6b0f8a885928d', '::1', '2020-01-17 02:03:08', '2020-01-17 02:03:08'),
(10, 1, 'd24aceb92ff82081bd4dddaab0', '::1', '2020-01-17 02:03:13', '2020-01-17 02:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(9, 'Details', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(129, 9, 1, 'bottom_shot', '#', 'catalog/details/farm-8.jpg', 0),
(127, 9, 1, 'farmer_laptop', '#', 'catalog/details/farm-10.jpg', 0),
(128, 9, 1, 'leaf_picking', '#', 'catalog/details/farm-9.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(3, 0, 1, '922c4c33f2dc8858b3956cac3c', 41, 0, '[]', 1, '2019-10-25 22:40:49'),
(6, 0, 2, '456890465919b5a03f2743a1eb', 112, 0, '[]', 1, '2020-01-21 22:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(62, '', 0, 1, 1, 0, 1, '2020-01-13 19:22:33', '2020-01-13 19:22:33'),
(61, '', 0, 1, 1, 0, 1, '2020-01-13 19:21:29', '2020-01-13 19:21:29'),
(59, '', 0, 1, 1, 0, 1, '2020-01-12 12:14:32', '2020-01-12 12:45:36'),
(63, '', 0, 1, 1, 0, 1, '2020-01-16 14:08:31', '2020-01-16 14:08:31'),
(69, '', 0, 1, 1, 0, 1, '2020-01-16 14:23:35', '2020-01-16 14:23:35'),
(65, '', 0, 0, 1, 0, 1, '2020-01-16 14:10:01', '2020-01-16 14:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(62, 1, 'Vegetables', '', 'Vegetables', '', ''),
(61, 1, 'Fruits', '', 'Fruits', '', ''),
(59, 1, 'Farmers', '', 'Farmers', '', ''),
(63, 1, 'Indian Spices', '', 'Indian Spices', '', ''),
(69, 1, 'Cereals', '', 'Cereals', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(62, 62, 0),
(61, 61, 0),
(59, 59, 0),
(63, 63, 0),
(69, 69, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(69, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(61, 0),
(62, 0),
(63, 0),
(69, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 0),
(2, 'Albania', 'AL', 'ALB', '', 0, 0),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 0),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 0),
(5, 'Andorra', 'AD', 'AND', '', 0, 0),
(6, 'Angola', 'AO', 'AGO', '', 0, 0),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 0),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 0),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 0),
(10, 'Argentina', 'AR', 'ARG', '', 0, 0),
(11, 'Armenia', 'AM', 'ARM', '', 0, 0),
(12, 'Aruba', 'AW', 'ABW', '', 0, 0),
(13, 'Australia', 'AU', 'AUS', '', 0, 0),
(14, 'Austria', 'AT', 'AUT', '', 0, 0),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 0),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 0),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 0),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 0),
(19, 'Barbados', 'BB', 'BRB', '', 0, 0),
(20, 'Belarus', 'BY', 'BLR', '', 0, 0),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 0),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 0),
(23, 'Benin', 'BJ', 'BEN', '', 0, 0),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 0),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 0),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 0),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 0),
(28, 'Botswana', 'BW', 'BWA', '', 0, 0),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 0),
(30, 'Brazil', 'BR', 'BRA', '', 0, 0),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 0),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 0),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 0),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 0),
(35, 'Burundi', 'BI', 'BDI', '', 0, 0),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 0),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 0),
(38, 'Canada', 'CA', 'CAN', '', 0, 0),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 0),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 0),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 0),
(42, 'Chad', 'TD', 'TCD', '', 0, 0),
(43, 'Chile', 'CL', 'CHL', '', 0, 0),
(44, 'China', 'CN', 'CHN', '', 0, 0),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 0),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 0),
(47, 'Colombia', 'CO', 'COL', '', 0, 0),
(48, 'Comoros', 'KM', 'COM', '', 0, 0),
(49, 'Congo', 'CG', 'COG', '', 0, 0),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 0),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 0),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 0),
(53, 'Croatia', 'HR', 'HRV', '', 0, 0),
(54, 'Cuba', 'CU', 'CUB', '', 0, 0),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 0),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 0),
(57, 'Denmark', 'DK', 'DNK', '', 0, 0),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 0),
(59, 'Dominica', 'DM', 'DMA', '', 0, 0),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 0),
(61, 'East Timor', 'TL', 'TLS', '', 0, 0),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 0),
(63, 'Egypt', 'EG', 'EGY', '', 0, 0),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 0),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 0),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 0),
(67, 'Estonia', 'EE', 'EST', '', 0, 0),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 0),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 0),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 0),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 0),
(72, 'Finland', 'FI', 'FIN', '', 0, 0),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 0),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 0),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 0),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 0),
(78, 'Gabon', 'GA', 'GAB', '', 0, 0),
(79, 'Gambia', 'GM', 'GMB', '', 0, 0),
(80, 'Georgia', 'GE', 'GEO', '', 0, 0),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 0),
(82, 'Ghana', 'GH', 'GHA', '', 0, 0),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 0),
(84, 'Greece', 'GR', 'GRC', '', 0, 0),
(85, 'Greenland', 'GL', 'GRL', '', 0, 0),
(86, 'Grenada', 'GD', 'GRD', '', 0, 0),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 0),
(88, 'Guam', 'GU', 'GUM', '', 0, 0),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 0),
(90, 'Guinea', 'GN', 'GIN', '', 0, 0),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 0),
(92, 'Guyana', 'GY', 'GUY', '', 0, 0),
(93, 'Haiti', 'HT', 'HTI', '', 0, 0),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 0),
(95, 'Honduras', 'HN', 'HND', '', 0, 0),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 0),
(97, 'Hungary', 'HU', 'HUN', '', 0, 0),
(98, 'Iceland', 'IS', 'ISL', '', 0, 0),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 0),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 0),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 0),
(103, 'Ireland', 'IE', 'IRL', '', 0, 0),
(104, 'Israel', 'IL', 'ISR', '', 0, 0),
(105, 'Italy', 'IT', 'ITA', '', 0, 0),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 0),
(107, 'Japan', 'JP', 'JPN', '', 0, 0),
(108, 'Jordan', 'JO', 'JOR', '', 0, 0),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 0),
(110, 'Kenya', 'KE', 'KEN', '', 0, 0),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 0),
(112, 'North Korea', 'KP', 'PRK', '', 0, 0),
(113, 'South Korea', 'KR', 'KOR', '', 0, 0),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 0),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 0),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 0),
(117, 'Latvia', 'LV', 'LVA', '', 0, 0),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 0),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 0),
(120, 'Liberia', 'LR', 'LBR', '', 0, 0),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 0),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 0),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 0),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 0),
(125, 'Macau', 'MO', 'MAC', '', 0, 0),
(126, 'FYROM', 'MK', 'MKD', '', 0, 0),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 0),
(128, 'Malawi', 'MW', 'MWI', '', 0, 0),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 0),
(130, 'Maldives', 'MV', 'MDV', '', 0, 0),
(131, 'Mali', 'ML', 'MLI', '', 0, 0),
(132, 'Malta', 'MT', 'MLT', '', 0, 0),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 0),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 0),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 0),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 0),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 0),
(138, 'Mexico', 'MX', 'MEX', '', 0, 0),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 0),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 0),
(141, 'Monaco', 'MC', 'MCO', '', 0, 0),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 0),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 0),
(144, 'Morocco', 'MA', 'MAR', '', 0, 0),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 0),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 0),
(147, 'Namibia', 'NA', 'NAM', '', 0, 0),
(148, 'Nauru', 'NR', 'NRU', '', 0, 0),
(149, 'Nepal', 'NP', 'NPL', '', 0, 0),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 0),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 0),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 0),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 0),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 0),
(155, 'Niger', 'NE', 'NER', '', 0, 0),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 0),
(157, 'Niue', 'NU', 'NIU', '', 0, 0),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 0),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 0),
(160, 'Norway', 'NO', 'NOR', '', 0, 0),
(161, 'Oman', 'OM', 'OMN', '', 0, 0),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 0),
(163, 'Palau', 'PW', 'PLW', '', 0, 0),
(164, 'Panama', 'PA', 'PAN', '', 0, 0),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 0),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 0),
(167, 'Peru', 'PE', 'PER', '', 0, 0),
(168, 'Philippines', 'PH', 'PHL', '', 0, 0),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 0),
(170, 'Poland', 'PL', 'POL', '', 0, 0),
(171, 'Portugal', 'PT', 'PRT', '', 0, 0),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 0),
(173, 'Qatar', 'QA', 'QAT', '', 0, 0),
(174, 'Reunion', 'RE', 'REU', '', 0, 0),
(175, 'Romania', 'RO', 'ROM', '', 0, 0),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 0),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 0),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 0),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 0),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 0),
(181, 'Samoa', 'WS', 'WSM', '', 0, 0),
(182, 'San Marino', 'SM', 'SMR', '', 0, 0),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 0),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 0),
(185, 'Senegal', 'SN', 'SEN', '', 0, 0),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 0),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 0),
(188, 'Singapore', 'SG', 'SGP', '', 0, 0),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 0),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 0),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 0),
(192, 'Somalia', 'SO', 'SOM', '', 0, 0),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 0),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 0),
(195, 'Spain', 'ES', 'ESP', '', 0, 0),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 0),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 0),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 0),
(199, 'Sudan', 'SD', 'SDN', '', 0, 0),
(200, 'Suriname', 'SR', 'SUR', '', 0, 0),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 0),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 0),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 0),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 0),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 0),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 0),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 0),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 0),
(209, 'Thailand', 'TH', 'THA', '', 0, 0),
(210, 'Togo', 'TG', 'TGO', '', 0, 0),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 0),
(212, 'Tonga', 'TO', 'TON', '', 0, 0),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 0),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 0),
(215, 'Turkey', 'TR', 'TUR', '', 0, 0),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 0),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 0),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 0),
(219, 'Uganda', 'UG', 'UGA', '', 0, 0),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 0),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 0),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 0),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 0),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 0),
(225, 'Uruguay', 'UY', 'URY', '', 0, 0),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 0),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 0),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 0),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 0),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 0),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 0),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 0),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 0),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 0),
(235, 'Yemen', 'YE', 'YEM', '', 0, 0),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 0),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 0),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 0),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 0),
(243, 'Serbia', 'RS', 'SRB', '', 0, 0),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 0),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 0),
(246, 'Curacao', 'CW', 'CUW', '', 0, 0),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 0),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 0),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 0),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 0),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 0),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 0),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 0),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 0),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 0),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 0),
(257, 'Jersey', 'JE', 'JEY', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Indian Rupee', 'INR', '₹', '/-', '2', 1.00000000, 1, '2020-01-16 20:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'jhgj', 'dfdg', 'kk@gmail.com', '9603781106', '', 'be3150f1bcc0d100fb06224265aa5246f1be97ce', '8Kw94Yt9T', NULL, NULL, 0, 1, '', '192.168.1.5', 1, 0, '', '', '2019-10-25 22:39:57'),
(2, 1, 0, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '6fef28d662f7fa014d0e8a96a23cb9f9097e5fc2', 'AvnOlNEz1', NULL, NULL, 0, 2, '', '::1', 1, 0, '', 'ViXDWNAGFYGMPvbs4eu6gZnJLPbnA4GlW1K8Hega', '2020-01-14 00:48:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`customer_activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'login', '{\"customer_id\":\"1\",\"name\":\"jhgj dfdg\"}', '192.168.1.5', '2019-10-25 22:40:19'),
(2, 0, 'order_guest', '{\"name\":\"kk kk\",\"order_id\":1}', '192.168.1.5', '2019-10-25 22:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

DROP TABLE IF EXISTS `oc_customer_affiliate`;
CREATE TABLE IF NOT EXISTS `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

DROP TABLE IF EXISTS `oc_customer_approval`;
CREATE TABLE IF NOT EXISTS `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '192.168.1.8', '2019-10-25 22:39:59'),
(2, 1, '192.168.1.5', '2019-10-25 22:40:22'),
(3, 2, '::1', '2020-01-14 00:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
CREATE TABLE IF NOT EXISTS `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(2, 110, '2020-01-21 23:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_dqc_setting`
--

DROP TABLE IF EXISTS `oc_dqc_setting`;
CREATE TABLE IF NOT EXISTS `oc_dqc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_dqc_setting`
--

INSERT INTO `oc_dqc_setting` (`setting_id`, `store_id`, `name`, `value`) VALUES
(1, 0, '01/16/2020 07:00:23 pm', '{\"name\":\"01\\/16\\/2020 07:00:23 pm\",\"general\":{\"clear_session\":\"0\",\"login_refresh\":\"1\",\"analytics_event\":\"0\",\"update_mini_cart\":\"1\",\"compress\":\"1\",\"min_order\":{\"value\":\"0\",\"text\":{\"1\":\"You must have a sum more then %s to make an order     \"}},\"min_quantity\":{\"value\":\"0\",\"text\":{\"1\":\"You must have a quantity more then %s to make an order   \"}},\"config\":\"d_quickcheckout\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_dqc_statistic`
--

DROP TABLE IF EXISTS `oc_dqc_statistic`;
CREATE TABLE IF NOT EXISTS `oc_dqc_statistic` (
  `statistic_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `rating` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`statistic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_dqc_statistic`
--

INSERT INTO `oc_dqc_statistic` (`statistic_id`, `setting_id`, `order_id`, `customer_id`, `data`, `rating`, `date_added`, `date_modified`) VALUES
(1, 1, 4, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"update\":{\"payment_address\":20},\"click\":{\"confirm\":1}}', 0, '2020-01-17 00:33:06', '2020-01-17 00:50:42'),
(2, 1, 5, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"click\":{\"confirm\":1}}', 0, '2020-01-17 00:53:36', '2020-01-17 01:11:32'),
(3, 1, 6, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"click\":{\"confirm\":1}}', 0, '2020-01-17 01:12:23', '2020-01-17 01:12:32'),
(4, 1, 7, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"click\":{\"confirm\":1}}', 0, '2020-01-17 01:15:27', '2020-01-17 01:22:36'),
(5, 1, 8, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}}}', 0, '2020-01-17 01:41:09', '2020-01-17 01:41:09'),
(6, 1, 9, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"click\":{\"confirm\":1}}', 0, '2020-01-17 08:43:44', '2020-01-17 08:43:52'),
(7, 1, 10, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"click\":{\"confirm\":1}}', 0, '2020-01-20 19:14:26', '2020-01-20 19:14:49'),
(8, 1, 11, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"update\":{\"payment_address\":3}}', 0, '2020-01-20 19:39:22', '2020-01-20 19:45:54'),
(9, 1, 12, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"update\":{\"payment_address\":2}}', 0, '2020-01-20 19:45:04', '2020-01-21 17:18:17'),
(10, 1, 13, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"update\":{\"payment_method\":1},\"click\":{\"confirm\":1}}', 0, '2020-01-21 22:45:23', '2020-01-21 22:52:00'),
(11, 1, 14, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"click\":{\"confirm\":1}}', 0, '2020-01-21 22:57:35', '2020-01-21 22:58:08'),
(12, 1, 15, 2, '{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}}}', 0, '2020-01-21 23:29:31', '2020-01-21 23:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry`
--

DROP TABLE IF EXISTS `oc_enquiry`;
CREATE TABLE IF NOT EXISTS `oc_enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_phnum` varchar(20) NOT NULL,
  `f_phnum` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_enquiry`
--

INSERT INTO `oc_enquiry` (`id`, `pr_id`, `c_name`, `c_phnum`, `f_phnum`) VALUES
(1, 76, 'name', '8888888888', '918919548158'),
(2, 76, 'name', '9999999998', '918919548158'),
(3, 101, 'krishna', '9603781106', '919603781106');

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(36, 'voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(56, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(54, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'module', 'mstoreapp'),
(43, 'module', 'mstoreapp_blocks'),
(44, 'theme', 'mintleaf'),
(45, 'module', 'd_quickcheckout'),
(53, 'payment', 'payu'),
(50, 'payment', 'pp_express'),
(48, 'analytics', 'google'),
(51, 'module', 'pp_button'),
(52, 'module', 'latest');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE IF NOT EXISTS `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'mstoreapp.ocmod.zip', '2019-10-25 21:48:23'),
(2, 0, 'mintleaf.ocmod.zip', '2020-01-13 19:17:48'),
(3, 0, 'dquickcheckoutlitecompiledoc3.0.2.0.v6.6.1.ocmod.zip', '2020-01-17 00:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE IF NOT EXISTS `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM AUTO_INCREMENT=481 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 2, 'catalog/view/theme/mintleaf', '2020-01-13 19:17:49'),
(2, 2, 'admin/controller/extension/module/bannergrid.php', '2020-01-13 19:17:49'),
(3, 2, 'admin/controller/extension/module/topcategory.php', '2020-01-13 19:17:49'),
(4, 2, 'admin/controller/extension/theme/mintleaf.php', '2020-01-13 19:17:49'),
(5, 2, 'catalog/controller/extension/module/bannergrid.php', '2020-01-13 19:17:50'),
(6, 2, 'catalog/controller/extension/module/topcategory.php', '2020-01-13 19:17:50'),
(7, 2, 'catalog/view/theme/mintleaf/image', '2020-01-13 19:17:50'),
(8, 2, 'catalog/view/theme/mintleaf/js', '2020-01-13 19:17:50'),
(9, 2, 'catalog/view/theme/mintleaf/stylesheet', '2020-01-13 19:17:50'),
(10, 2, 'catalog/view/theme/mintleaf/template', '2020-01-13 19:17:50'),
(11, 2, 'admin/language/en-gb/extension/module/bannergrid.php', '2020-01-13 19:17:50'),
(12, 2, 'admin/language/en-gb/extension/module/topcategory.php', '2020-01-13 19:17:50'),
(13, 2, 'admin/language/en-gb/extension/theme/mintleaf.php', '2020-01-13 19:17:50'),
(14, 2, 'admin/view/template/extension/module/bannergrid.twig', '2020-01-13 19:17:50'),
(15, 2, 'admin/view/template/extension/module/topcategory.twig', '2020-01-13 19:17:50'),
(16, 2, 'admin/view/template/extension/theme/mintleaf.twig', '2020-01-13 19:17:50'),
(17, 2, 'catalog/view/theme/mintleaf/image/eway_creditcard_amex.png', '2020-01-13 19:17:50'),
(18, 2, 'catalog/view/theme/mintleaf/image/eway_creditcard_diners.png', '2020-01-13 19:17:50'),
(19, 2, 'catalog/view/theme/mintleaf/image/eway_creditcard_jcb.png', '2020-01-13 19:17:50'),
(20, 2, 'catalog/view/theme/mintleaf/image/eway_creditcard_master.png', '2020-01-13 19:17:50'),
(21, 2, 'catalog/view/theme/mintleaf/image/eway_creditcard_visa.png', '2020-01-13 19:17:50'),
(22, 2, 'catalog/view/theme/mintleaf/image/eway_masterpass.png', '2020-01-13 19:17:50'),
(23, 2, 'catalog/view/theme/mintleaf/image/eway_paypal.png', '2020-01-13 19:17:50'),
(24, 2, 'catalog/view/theme/mintleaf/image/eway_vme.png', '2020-01-13 19:17:50'),
(25, 2, 'catalog/view/theme/mintleaf/image/icon', '2020-01-13 19:17:50'),
(26, 2, 'catalog/view/theme/mintleaf/image/klarna_green_full.png', '2020-01-13 19:17:50'),
(27, 2, 'catalog/view/theme/mintleaf/image/klarna_green_middle.png', '2020-01-13 19:17:50'),
(28, 2, 'catalog/view/theme/mintleaf/image/klarna_nld_banner.png', '2020-01-13 19:17:50'),
(29, 2, 'catalog/view/theme/mintleaf/image/mintleaf.png', '2020-01-13 19:17:50'),
(30, 2, 'catalog/view/theme/mintleaf/image/paypal_express_mobile.png', '2020-01-13 19:17:50'),
(31, 2, 'catalog/view/theme/mintleaf/image/pilibaba_button.png', '2020-01-13 19:17:50'),
(32, 2, 'catalog/view/theme/mintleaf/js/common.js', '2020-01-13 19:17:50'),
(33, 2, 'catalog/view/theme/mintleaf/js/custom.js', '2020-01-13 19:17:50'),
(34, 2, 'catalog/view/theme/mintleaf/stylesheet/stylesheet-responsive.css', '2020-01-13 19:17:50'),
(35, 2, 'catalog/view/theme/mintleaf/stylesheet/stylesheet.css', '2020-01-13 19:17:50'),
(36, 2, 'catalog/view/theme/mintleaf/template/account', '2020-01-13 19:17:50'),
(37, 2, 'catalog/view/theme/mintleaf/template/checkout', '2020-01-13 19:17:50'),
(38, 2, 'catalog/view/theme/mintleaf/template/common', '2020-01-13 19:17:50'),
(39, 2, 'catalog/view/theme/mintleaf/template/error', '2020-01-13 19:17:50'),
(40, 2, 'catalog/view/theme/mintleaf/template/extension', '2020-01-13 19:17:50'),
(41, 2, 'catalog/view/theme/mintleaf/template/information', '2020-01-13 19:17:50'),
(42, 2, 'catalog/view/theme/mintleaf/template/product', '2020-01-13 19:17:50'),
(43, 2, 'catalog/view/theme/mintleaf/image/icon/search-icon.png', '2020-01-13 19:17:50'),
(44, 2, 'catalog/view/theme/mintleaf/image/icon/shopping-bag.png', '2020-01-13 19:17:50'),
(45, 2, 'catalog/view/theme/mintleaf/template/account/account.twig', '2020-01-13 19:17:50'),
(46, 2, 'catalog/view/theme/mintleaf/template/account/address_form.twig', '2020-01-13 19:17:50'),
(47, 2, 'catalog/view/theme/mintleaf/template/account/address_list.twig', '2020-01-13 19:17:50'),
(48, 2, 'catalog/view/theme/mintleaf/template/account/affiliate.twig', '2020-01-13 19:17:50'),
(49, 2, 'catalog/view/theme/mintleaf/template/account/download.twig', '2020-01-13 19:17:50'),
(50, 2, 'catalog/view/theme/mintleaf/template/account/edit.twig', '2020-01-13 19:17:50'),
(51, 2, 'catalog/view/theme/mintleaf/template/account/forgotten.twig', '2020-01-13 19:17:50'),
(52, 2, 'catalog/view/theme/mintleaf/template/account/login.twig', '2020-01-13 19:17:50'),
(53, 2, 'catalog/view/theme/mintleaf/template/account/newsletter.twig', '2020-01-13 19:17:50'),
(54, 2, 'catalog/view/theme/mintleaf/template/account/order_info.twig', '2020-01-13 19:17:50'),
(55, 2, 'catalog/view/theme/mintleaf/template/account/order_list.twig', '2020-01-13 19:17:50'),
(56, 2, 'catalog/view/theme/mintleaf/template/account/password.twig', '2020-01-13 19:17:50'),
(57, 2, 'catalog/view/theme/mintleaf/template/account/recurring_info.twig', '2020-01-13 19:17:50'),
(58, 2, 'catalog/view/theme/mintleaf/template/account/recurring_list.twig', '2020-01-13 19:17:50'),
(59, 2, 'catalog/view/theme/mintleaf/template/account/register.twig', '2020-01-13 19:17:50'),
(60, 2, 'catalog/view/theme/mintleaf/template/account/reset.twig', '2020-01-13 19:17:50'),
(61, 2, 'catalog/view/theme/mintleaf/template/account/return_form.twig', '2020-01-13 19:17:50'),
(62, 2, 'catalog/view/theme/mintleaf/template/account/return_info.twig', '2020-01-13 19:17:50'),
(63, 2, 'catalog/view/theme/mintleaf/template/account/return_list.twig', '2020-01-13 19:17:50'),
(64, 2, 'catalog/view/theme/mintleaf/template/account/reward.twig', '2020-01-13 19:17:50'),
(65, 2, 'catalog/view/theme/mintleaf/template/account/tracking.twig', '2020-01-13 19:17:50'),
(66, 2, 'catalog/view/theme/mintleaf/template/account/transaction.twig', '2020-01-13 19:17:50'),
(67, 2, 'catalog/view/theme/mintleaf/template/account/voucher.twig', '2020-01-13 19:17:50'),
(68, 2, 'catalog/view/theme/mintleaf/template/account/wishlist.twig', '2020-01-13 19:17:50'),
(69, 2, 'catalog/view/theme/mintleaf/template/checkout/cart.twig', '2020-01-13 19:17:50'),
(70, 2, 'catalog/view/theme/mintleaf/template/checkout/checkout.twig', '2020-01-13 19:17:50'),
(71, 2, 'catalog/view/theme/mintleaf/template/checkout/confirm.twig', '2020-01-13 19:17:50'),
(72, 2, 'catalog/view/theme/mintleaf/template/checkout/guest.twig', '2020-01-13 19:17:50'),
(73, 2, 'catalog/view/theme/mintleaf/template/checkout/guest_shipping.twig', '2020-01-13 19:17:50'),
(74, 2, 'catalog/view/theme/mintleaf/template/checkout/login.twig', '2020-01-13 19:17:50'),
(75, 2, 'catalog/view/theme/mintleaf/template/checkout/payment_address.twig', '2020-01-13 19:17:50'),
(76, 2, 'catalog/view/theme/mintleaf/template/checkout/payment_method.twig', '2020-01-13 19:17:50'),
(77, 2, 'catalog/view/theme/mintleaf/template/checkout/register.twig', '2020-01-13 19:17:50'),
(78, 2, 'catalog/view/theme/mintleaf/template/checkout/shipping_address.twig', '2020-01-13 19:17:50'),
(79, 2, 'catalog/view/theme/mintleaf/template/checkout/shipping_method.twig', '2020-01-13 19:17:50'),
(80, 2, 'catalog/view/theme/mintleaf/template/common/cart.twig', '2020-01-13 19:17:50'),
(81, 2, 'catalog/view/theme/mintleaf/template/common/footer.twig', '2020-01-13 19:17:50'),
(82, 2, 'catalog/view/theme/mintleaf/template/common/header.twig', '2020-01-13 19:17:50'),
(83, 2, 'catalog/view/theme/mintleaf/template/common/menu.twig', '2020-01-13 19:17:50'),
(84, 2, 'catalog/view/theme/mintleaf/template/common/search.twig', '2020-01-13 19:17:50'),
(85, 2, 'catalog/view/theme/mintleaf/template/common/success.twig', '2020-01-13 19:17:50'),
(86, 2, 'catalog/view/theme/mintleaf/template/error/not_found.twig', '2020-01-13 19:17:50'),
(87, 2, 'catalog/view/theme/mintleaf/template/extension/module', '2020-01-13 19:17:50'),
(88, 2, 'catalog/view/theme/mintleaf/template/extension/payment', '2020-01-13 19:17:50'),
(89, 2, 'catalog/view/theme/mintleaf/template/information/contact.twig', '2020-01-13 19:17:50'),
(90, 2, 'catalog/view/theme/mintleaf/template/information/information.twig', '2020-01-13 19:17:50'),
(91, 2, 'catalog/view/theme/mintleaf/template/information/sitemap.twig', '2020-01-13 19:17:50'),
(92, 2, 'catalog/view/theme/mintleaf/template/information/tracking.twig', '2020-01-13 19:17:50'),
(93, 2, 'catalog/view/theme/mintleaf/template/product/category.twig', '2020-01-13 19:17:50'),
(94, 2, 'catalog/view/theme/mintleaf/template/product/compare.twig', '2020-01-13 19:17:50'),
(95, 2, 'catalog/view/theme/mintleaf/template/product/manufacturer_info.twig', '2020-01-13 19:17:50'),
(96, 2, 'catalog/view/theme/mintleaf/template/product/manufacturer_list.twig', '2020-01-13 19:17:50'),
(97, 2, 'catalog/view/theme/mintleaf/template/product/product.twig', '2020-01-13 19:17:50'),
(98, 2, 'catalog/view/theme/mintleaf/template/product/search.twig', '2020-01-13 19:17:50'),
(99, 2, 'catalog/view/theme/mintleaf/template/product/special.twig', '2020-01-13 19:17:50'),
(100, 2, 'catalog/view/theme/mintleaf/template/extension/module/account.twig', '2020-01-13 19:17:50'),
(101, 2, 'catalog/view/theme/mintleaf/template/extension/module/bannergrid.twig', '2020-01-13 19:17:50'),
(102, 2, 'catalog/view/theme/mintleaf/template/extension/module/bestseller.twig', '2020-01-13 19:17:50'),
(103, 2, 'catalog/view/theme/mintleaf/template/extension/module/carousel.twig', '2020-01-13 19:17:50'),
(104, 2, 'catalog/view/theme/mintleaf/template/extension/module/category.twig', '2020-01-13 19:17:50'),
(105, 2, 'catalog/view/theme/mintleaf/template/extension/module/featured.twig', '2020-01-13 19:17:50'),
(106, 2, 'catalog/view/theme/mintleaf/template/extension/module/information.twig', '2020-01-13 19:17:50'),
(107, 2, 'catalog/view/theme/mintleaf/template/extension/module/latest.twig', '2020-01-13 19:17:50'),
(108, 2, 'catalog/view/theme/mintleaf/template/extension/module/slideshow.twig', '2020-01-13 19:17:50'),
(109, 2, 'catalog/view/theme/mintleaf/template/extension/module/special.twig', '2020-01-13 19:17:50'),
(110, 2, 'catalog/view/theme/mintleaf/template/extension/module/topcategory.twig', '2020-01-13 19:17:50'),
(111, 2, 'catalog/view/theme/mintleaf/template/extension/payment/cod.twig', '2020-01-13 19:17:50'),
(112, 3, 'image/catalog/d_quickcheckout', '2020-01-17 00:27:36'),
(113, 3, 'system/config/d_quickcheckout.php', '2020-01-17 00:27:36'),
(114, 3, 'system/library/d_compress', '2020-01-17 00:27:36'),
(115, 3, 'system/library/d_shopunity', '2020-01-17 00:27:36'),
(116, 3, 'admin/model/extension/d_opencart_patch', '2020-01-17 00:27:36'),
(117, 3, 'admin/model/extension/module', '2020-01-17 00:27:36'),
(118, 3, 'admin/view/javascript/d_bootstrap_switch', '2020-01-17 00:27:36'),
(119, 3, 'admin/view/javascript/d_quickcheckout', '2020-01-17 00:27:36'),
(120, 3, 'admin/view/javascript/d_rubaxa_sortable', '2020-01-17 00:27:36'),
(121, 3, 'admin/view/javascript/d_tinysort', '2020-01-17 00:27:36'),
(122, 3, 'admin/view/stylesheet/d_quickcheckout.css', '2020-01-17 00:27:36'),
(123, 3, 'admin/view/stylesheet/d_quickcheckout.less', '2020-01-17 00:27:36'),
(124, 3, 'catalog/controller/extension/d_quickcheckout', '2020-01-17 00:27:36'),
(125, 3, 'catalog/model/extension/d_opencart_patch', '2020-01-17 00:27:36'),
(126, 3, 'catalog/model/extension/d_quickcheckout', '2020-01-17 00:27:36'),
(127, 3, 'catalog/view/javascript/d_bootstrap_switch', '2020-01-17 00:27:36'),
(128, 3, 'catalog/view/javascript/d_quickcheckout', '2020-01-17 00:27:36'),
(129, 3, 'catalog/view/javascript/d_rubaxa_sortable', '2020-01-17 00:27:36'),
(130, 3, 'catalog/view/javascript/d_tinysort', '2020-01-17 00:27:36'),
(131, 3, 'image/catalog/d_quickcheckout/payment', '2020-01-17 00:27:36'),
(132, 3, 'image/catalog/d_quickcheckout/svg-loaders', '2020-01-17 00:27:36'),
(133, 3, 'system/library/d_compress/compress.php', '2020-01-17 00:27:36'),
(134, 3, 'system/library/d_compress/cssmin.php', '2020-01-17 00:27:36'),
(135, 3, 'system/library/d_compress/jsmin.php', '2020-01-17 00:27:36'),
(136, 3, 'system/library/d_shopunity/extension', '2020-01-17 00:27:36'),
(137, 3, 'system/library/d_shopunity/install', '2020-01-17 00:27:36'),
(138, 3, 'system/library/d_shopunity/readme', '2020-01-17 00:27:36'),
(139, 3, 'admin/controller/extension/module/d_quickcheckout.php', '2020-01-17 00:27:36'),
(140, 3, 'admin/model/extension/d_opencart_patch/cache.php', '2020-01-17 00:27:37'),
(141, 3, 'admin/model/extension/d_opencart_patch/event.php', '2020-01-17 00:27:37'),
(142, 3, 'admin/model/extension/d_opencart_patch/extension.php', '2020-01-17 00:27:37'),
(143, 3, 'admin/model/extension/d_opencart_patch/load.php', '2020-01-17 00:27:37'),
(144, 3, 'admin/model/extension/d_opencart_patch/modification.php', '2020-01-17 00:27:37'),
(145, 3, 'admin/model/extension/d_opencart_patch/module.php', '2020-01-17 00:27:37'),
(146, 3, 'admin/model/extension/d_opencart_patch/setting.php', '2020-01-17 00:27:37'),
(147, 3, 'admin/model/extension/d_opencart_patch/store.php', '2020-01-17 00:27:37'),
(148, 3, 'admin/model/extension/d_opencart_patch/url.php', '2020-01-17 00:27:37'),
(149, 3, 'admin/model/extension/d_opencart_patch/user.php', '2020-01-17 00:27:37'),
(150, 3, 'admin/model/extension/d_opencart_patch/vqmod.php', '2020-01-17 00:27:37'),
(151, 3, 'admin/model/extension/module/d_quickcheckout.php', '2020-01-17 00:27:37'),
(152, 3, 'admin/model/extension/module/d_twig_manager.php', '2020-01-17 00:27:37'),
(153, 3, 'admin/view/javascript/d_bootstrap_switch/css', '2020-01-17 00:27:37'),
(154, 3, 'admin/view/javascript/d_bootstrap_switch/js', '2020-01-17 00:27:37'),
(155, 3, 'admin/view/javascript/d_quickcheckout/bootstrap-slider', '2020-01-17 00:27:37'),
(156, 3, 'admin/view/javascript/d_quickcheckout/bootstrap-sortable', '2020-01-17 00:27:37'),
(157, 3, 'admin/view/javascript/d_quickcheckout/bootstrap-sortable.js', '2020-01-17 00:27:37'),
(158, 3, 'admin/view/javascript/d_quickcheckout/bootstrap.css', '2020-01-17 00:27:37'),
(159, 3, 'admin/view/javascript/d_quickcheckout/jquery.tinysort.min.js', '2020-01-17 00:27:37'),
(160, 3, 'admin/view/javascript/d_quickcheckout/serializeObject', '2020-01-17 00:27:37'),
(161, 3, 'admin/view/javascript/d_rubaxa_sortable/jquery.binding.js', '2020-01-17 00:27:37'),
(162, 3, 'admin/view/javascript/d_rubaxa_sortable/knockout-sortable.js', '2020-01-17 00:27:37'),
(163, 3, 'admin/view/javascript/d_rubaxa_sortable/ng-sortable.js', '2020-01-17 00:27:37'),
(164, 3, 'admin/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js', '2020-01-17 00:27:37'),
(165, 3, 'admin/view/javascript/d_rubaxa_sortable/sortable.css', '2020-01-17 00:27:37'),
(166, 3, 'admin/view/javascript/d_rubaxa_sortable/sortable.js', '2020-01-17 00:27:37'),
(167, 3, 'admin/view/javascript/d_rubaxa_sortable/sortable.min.js', '2020-01-17 00:27:37'),
(168, 3, 'admin/view/javascript/d_tinysort/jquery.tinysort.js', '2020-01-17 00:27:37'),
(169, 3, 'admin/view/javascript/d_tinysort/jquery.tinysort.min.js', '2020-01-17 00:27:37'),
(170, 3, 'admin/view/javascript/d_tinysort/tinysort.charorder.js', '2020-01-17 00:27:37'),
(171, 3, 'admin/view/javascript/d_tinysort/tinysort.charorder.min.js', '2020-01-17 00:27:37'),
(172, 3, 'admin/view/javascript/d_tinysort/tinysort.js', '2020-01-17 00:27:37'),
(173, 3, 'admin/view/javascript/d_tinysort/tinysort.min.js', '2020-01-17 00:27:37'),
(174, 3, 'catalog/controller/extension/d_quickcheckout/cart.php', '2020-01-17 00:27:37'),
(175, 3, 'catalog/controller/extension/d_quickcheckout/confirm.php', '2020-01-17 00:27:37'),
(176, 3, 'catalog/controller/extension/d_quickcheckout/field.php', '2020-01-17 00:27:37'),
(177, 3, 'catalog/controller/extension/d_quickcheckout/login.php', '2020-01-17 00:27:37'),
(178, 3, 'catalog/controller/extension/d_quickcheckout/payment.php', '2020-01-17 00:27:37'),
(179, 3, 'catalog/controller/extension/d_quickcheckout/payment_address.php', '2020-01-17 00:27:37'),
(180, 3, 'catalog/controller/extension/d_quickcheckout/payment_method.php', '2020-01-17 00:27:37'),
(181, 3, 'catalog/controller/extension/d_quickcheckout/shipping_address.php', '2020-01-17 00:27:37'),
(182, 3, 'catalog/controller/extension/d_quickcheckout/shipping_method.php', '2020-01-17 00:27:37'),
(183, 3, 'catalog/controller/extension/module/d_quickcheckout.php', '2020-01-17 00:27:37'),
(184, 3, 'catalog/model/extension/d_opencart_patch/load.php', '2020-01-17 00:27:37'),
(185, 3, 'catalog/model/extension/d_opencart_patch/user.php', '2020-01-17 00:27:37'),
(186, 3, 'catalog/model/extension/d_quickcheckout/address.php', '2020-01-17 00:27:37'),
(187, 3, 'catalog/model/extension/d_quickcheckout/custom_field.php', '2020-01-17 00:27:37'),
(188, 3, 'catalog/model/extension/d_quickcheckout/method.php', '2020-01-17 00:27:37'),
(189, 3, 'catalog/model/extension/d_quickcheckout/order.php', '2020-01-17 00:27:37'),
(190, 3, 'catalog/model/extension/module/d_quickcheckout.php', '2020-01-17 00:27:37'),
(191, 3, 'catalog/view/javascript/d_bootstrap_switch/css', '2020-01-17 00:27:37'),
(192, 3, 'catalog/view/javascript/d_bootstrap_switch/js', '2020-01-17 00:27:37'),
(193, 3, 'catalog/view/javascript/d_quickcheckout/compress', '2020-01-17 00:27:37'),
(194, 3, 'catalog/view/javascript/d_quickcheckout/engine', '2020-01-17 00:27:37'),
(195, 3, 'catalog/view/javascript/d_quickcheckout/library', '2020-01-17 00:27:37'),
(196, 3, 'catalog/view/javascript/d_quickcheckout/main.js', '2020-01-17 00:27:37'),
(197, 3, 'catalog/view/javascript/d_quickcheckout/model', '2020-01-17 00:27:37'),
(198, 3, 'catalog/view/javascript/d_quickcheckout/require.js', '2020-01-17 00:27:37'),
(199, 3, 'catalog/view/javascript/d_quickcheckout/view', '2020-01-17 00:27:37'),
(200, 3, 'catalog/view/javascript/d_rubaxa_sortable/jquery.binding.js', '2020-01-17 00:27:37'),
(201, 3, 'catalog/view/javascript/d_rubaxa_sortable/knockout-sortable.js', '2020-01-17 00:27:37'),
(202, 3, 'catalog/view/javascript/d_rubaxa_sortable/ng-sortable.js', '2020-01-17 00:27:37'),
(203, 3, 'catalog/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js', '2020-01-17 00:27:37'),
(204, 3, 'catalog/view/javascript/d_rubaxa_sortable/sortable.css', '2020-01-17 00:27:37'),
(205, 3, 'catalog/view/javascript/d_rubaxa_sortable/sortable.js', '2020-01-17 00:27:37'),
(206, 3, 'catalog/view/javascript/d_rubaxa_sortable/sortable.min.js', '2020-01-17 00:27:37'),
(207, 3, 'catalog/view/javascript/d_tinysort/jquery.tinysort.js', '2020-01-17 00:27:37'),
(208, 3, 'catalog/view/javascript/d_tinysort/jquery.tinysort.min.js', '2020-01-17 00:27:37'),
(209, 3, 'catalog/view/javascript/d_tinysort/tinysort.charorder.js', '2020-01-17 00:27:37'),
(210, 3, 'catalog/view/javascript/d_tinysort/tinysort.charorder.min.js', '2020-01-17 00:27:37'),
(211, 3, 'catalog/view/javascript/d_tinysort/tinysort.js', '2020-01-17 00:27:37'),
(212, 3, 'catalog/view/javascript/d_tinysort/tinysort.min.js', '2020-01-17 00:27:37'),
(213, 3, 'image/catalog/d_quickcheckout/payment/authorizenet_aim.png', '2020-01-17 00:27:37'),
(214, 3, 'image/catalog/d_quickcheckout/payment/bank_transfer.png', '2020-01-17 00:27:37'),
(215, 3, 'image/catalog/d_quickcheckout/payment/cheque.png', '2020-01-17 00:27:37'),
(216, 3, 'image/catalog/d_quickcheckout/payment/cod.png', '2020-01-17 00:27:37'),
(217, 3, 'image/catalog/d_quickcheckout/payment/liqpay.png', '2020-01-17 00:27:37'),
(218, 3, 'image/catalog/d_quickcheckout/payment/moneybookers.png', '2020-01-17 00:27:37'),
(219, 3, 'image/catalog/d_quickcheckout/payment/nochex.png', '2020-01-17 00:27:37'),
(220, 3, 'image/catalog/d_quickcheckout/payment/paymate.png', '2020-01-17 00:27:37'),
(221, 3, 'image/catalog/d_quickcheckout/payment/paypoint.png', '2020-01-17 00:27:37'),
(222, 3, 'image/catalog/d_quickcheckout/payment/payza.png', '2020-01-17 00:27:37'),
(223, 3, 'image/catalog/d_quickcheckout/payment/pp_express.png', '2020-01-17 00:27:37'),
(224, 3, 'image/catalog/d_quickcheckout/payment/pp_pro.png', '2020-01-17 00:27:37'),
(225, 3, 'image/catalog/d_quickcheckout/payment/pp_pro_uk.png', '2020-01-17 00:27:37'),
(226, 3, 'image/catalog/d_quickcheckout/payment/pp_standard.png', '2020-01-17 00:27:37'),
(227, 3, 'image/catalog/d_quickcheckout/payment/sagepay.png', '2020-01-17 00:27:37'),
(228, 3, 'image/catalog/d_quickcheckout/payment/sagepay_direct.png', '2020-01-17 00:27:37'),
(229, 3, 'image/catalog/d_quickcheckout/payment/sagepay_us.png', '2020-01-17 00:27:37'),
(230, 3, 'image/catalog/d_quickcheckout/payment/twocheckout.png', '2020-01-17 00:27:37'),
(231, 3, 'image/catalog/d_quickcheckout/payment/web_payment_software.png', '2020-01-17 00:27:37'),
(232, 3, 'image/catalog/d_quickcheckout/payment/worldpay.png', '2020-01-17 00:27:37'),
(233, 3, 'image/catalog/d_quickcheckout/svg-loaders/audio.svg', '2020-01-17 00:27:37'),
(234, 3, 'image/catalog/d_quickcheckout/svg-loaders/ball-triangle.svg', '2020-01-17 00:27:37'),
(235, 3, 'image/catalog/d_quickcheckout/svg-loaders/bars.svg', '2020-01-17 00:27:37'),
(236, 3, 'image/catalog/d_quickcheckout/svg-loaders/circles.svg', '2020-01-17 00:27:37'),
(237, 3, 'image/catalog/d_quickcheckout/svg-loaders/grid.svg', '2020-01-17 00:27:37'),
(238, 3, 'image/catalog/d_quickcheckout/svg-loaders/hearts.svg', '2020-01-17 00:27:37'),
(239, 3, 'image/catalog/d_quickcheckout/svg-loaders/oval.svg', '2020-01-17 00:27:37'),
(240, 3, 'image/catalog/d_quickcheckout/svg-loaders/puff.svg', '2020-01-17 00:27:37'),
(241, 3, 'image/catalog/d_quickcheckout/svg-loaders/rings.svg', '2020-01-17 00:27:37'),
(242, 3, 'image/catalog/d_quickcheckout/svg-loaders/spinning-circles.svg', '2020-01-17 00:27:37'),
(243, 3, 'image/catalog/d_quickcheckout/svg-loaders/tail-spin.svg', '2020-01-17 00:27:37'),
(244, 3, 'image/catalog/d_quickcheckout/svg-loaders/three-dots.svg', '2020-01-17 00:27:37'),
(245, 3, 'system/library/d_shopunity/extension/d_bootstrap_switch.json', '2020-01-17 00:27:37'),
(246, 3, 'system/library/d_shopunity/extension/d_opencart_patch.json', '2020-01-17 00:27:37'),
(247, 3, 'system/library/d_shopunity/extension/d_quickcheckout_lite.json', '2020-01-17 00:27:37'),
(248, 3, 'system/library/d_shopunity/extension/d_rubaxa_sortable.json', '2020-01-17 00:27:37'),
(249, 3, 'system/library/d_shopunity/extension/d_tinysort.json', '2020-01-17 00:27:37'),
(250, 3, 'system/library/d_shopunity/extension/d_twig_manager.json', '2020-01-17 00:27:37'),
(251, 3, 'system/library/d_shopunity/install/d_opencart_patch.xml', '2020-01-17 00:27:37'),
(252, 3, 'system/library/d_shopunity/install/d_quickcheckout.xml', '2020-01-17 00:27:37'),
(253, 3, 'system/library/d_shopunity/install/d_twig_manager.xml', '2020-01-17 00:27:37'),
(254, 3, 'system/library/d_shopunity/readme/d_opencart_patch.md', '2020-01-17 00:27:37'),
(255, 3, 'admin/language/en-gb/extension/module/d_quickcheckout.php', '2020-01-17 00:27:37'),
(256, 3, 'admin/language/en-gb/extension/module/d_quickcheckout_instruction.php', '2020-01-17 00:27:37'),
(257, 3, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2020-01-17 00:27:37'),
(258, 3, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2020-01-17 00:27:38'),
(259, 3, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2020-01-17 00:27:38'),
(260, 3, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2020-01-17 00:27:38'),
(261, 3, 'admin/view/javascript/d_quickcheckout/bootstrap-slider/css', '2020-01-17 00:27:38'),
(262, 3, 'admin/view/javascript/d_quickcheckout/bootstrap-slider/js', '2020-01-17 00:27:38'),
(263, 3, 'admin/view/javascript/d_quickcheckout/bootstrap-sortable/bootstrap-sortable.js', '2020-01-17 00:27:38'),
(264, 3, 'admin/view/javascript/d_quickcheckout/serializeObject/serializeObject.js', '2020-01-17 00:27:38'),
(265, 3, 'admin/view/template/extension/module/d_quickcheckout.twig', '2020-01-17 00:27:38'),
(266, 3, 'catalog/language/en-gb/extension/module/d_quickcheckout.php', '2020-01-17 00:27:38'),
(267, 3, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2020-01-17 00:27:38'),
(268, 3, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2020-01-17 00:27:38'),
(269, 3, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2020-01-17 00:27:38'),
(270, 3, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2020-01-17 00:27:38'),
(271, 3, 'catalog/view/javascript/d_quickcheckout/compress/d_quickcheckout.min.js', '2020-01-17 00:27:38'),
(272, 3, 'catalog/view/javascript/d_quickcheckout/engine/model.js', '2020-01-17 00:27:38'),
(273, 3, 'catalog/view/javascript/d_quickcheckout/engine/view.js', '2020-01-17 00:27:38'),
(274, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone', '2020-01-17 00:27:38'),
(275, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms', '2020-01-17 00:27:38'),
(276, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-nested', '2020-01-17 00:27:38'),
(277, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-maskedinput', '2020-01-17 00:27:38'),
(278, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate', '2020-01-17 00:27:38'),
(279, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat', '2020-01-17 00:27:38'),
(280, 3, 'catalog/view/javascript/d_quickcheckout/library/tinysort', '2020-01-17 00:27:38'),
(281, 3, 'catalog/view/javascript/d_quickcheckout/library/underscore', '2020-01-17 00:27:38'),
(282, 3, 'catalog/view/javascript/d_quickcheckout/model/_field.js', '2020-01-17 00:27:38'),
(283, 3, 'catalog/view/javascript/d_quickcheckout/model/cart.js', '2020-01-17 00:27:38'),
(284, 3, 'catalog/view/javascript/d_quickcheckout/model/confirm.js', '2020-01-17 00:27:38'),
(285, 3, 'catalog/view/javascript/d_quickcheckout/model/login.js', '2020-01-17 00:27:38'),
(286, 3, 'catalog/view/javascript/d_quickcheckout/model/payment.js', '2020-01-17 00:27:38'),
(287, 3, 'catalog/view/javascript/d_quickcheckout/model/payment_address.js', '2020-01-17 00:27:38'),
(288, 3, 'catalog/view/javascript/d_quickcheckout/model/payment_method.js', '2020-01-17 00:27:38'),
(289, 3, 'catalog/view/javascript/d_quickcheckout/model/shipping_address.js', '2020-01-17 00:27:38'),
(290, 3, 'catalog/view/javascript/d_quickcheckout/model/shipping_method.js', '2020-01-17 00:27:38'),
(291, 3, 'catalog/view/javascript/d_quickcheckout/view/cart.js', '2020-01-17 00:27:38'),
(292, 3, 'catalog/view/javascript/d_quickcheckout/view/confirm.js', '2020-01-17 00:27:38'),
(293, 3, 'catalog/view/javascript/d_quickcheckout/view/field.js', '2020-01-17 00:27:38'),
(294, 3, 'catalog/view/javascript/d_quickcheckout/view/login.js', '2020-01-17 00:27:38'),
(295, 3, 'catalog/view/javascript/d_quickcheckout/view/payment.js', '2020-01-17 00:27:38'),
(296, 3, 'catalog/view/javascript/d_quickcheckout/view/payment_address.js', '2020-01-17 00:27:38'),
(297, 3, 'catalog/view/javascript/d_quickcheckout/view/payment_method.js', '2020-01-17 00:27:38'),
(298, 3, 'catalog/view/javascript/d_quickcheckout/view/shipping_address.js', '2020-01-17 00:27:38'),
(299, 3, 'catalog/view/javascript/d_quickcheckout/view/shipping_method.js', '2020-01-17 00:27:38'),
(300, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout', '2020-01-17 00:27:38'),
(301, 3, 'catalog/view/theme/default/template/d_quickcheckout', '2020-01-17 00:27:38'),
(302, 3, 'catalog/view/theme/default/template/module', '2020-01-17 00:27:38'),
(303, 3, 'system/library/template/Twig/Extension/DTwigManager.php', '2020-01-17 00:27:38'),
(304, 3, 'admin/view/javascript/d_quickcheckout/bootstrap-slider/css/slider.css', '2020-01-17 00:27:38'),
(305, 3, 'admin/view/javascript/d_quickcheckout/bootstrap-slider/js/bootstrap-slider.js', '2020-01-17 00:27:38'),
(306, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone/backbone-min.js', '2020-01-17 00:27:38'),
(307, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone/backbone.epoxy.min.js', '2020-01-17 00:27:38'),
(308, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone/backbone.validation.min.js', '2020-01-17 00:27:38'),
(309, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/adapters', '2020-01-17 00:27:38'),
(310, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/backbone-forms.js', '2020-01-17 00:27:38'),
(311, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/backbone-forms.min.js', '2020-01-17 00:27:38'),
(312, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/editors', '2020-01-17 00:27:38'),
(313, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/templates', '2020-01-17 00:27:38'),
(314, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-nested/backbone-nested.js', '2020-01-17 00:27:38'),
(315, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-maskedinput/jquery.maskedinput.min.js', '2020-01-17 00:27:38'),
(316, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/additional-methods.js', '2020-01-17 00:27:38'),
(317, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/additional-methods.min.js', '2020-01-17 00:27:38'),
(318, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/jquery.validate.js', '2020-01-17 00:27:38'),
(319, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/jquery.validate.min.js', '2020-01-17 00:27:38'),
(320, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization', '2020-01-17 00:27:38'),
(321, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat/css', '2020-01-17 00:27:38'),
(322, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat/img', '2020-01-17 00:27:38'),
(323, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat/js', '2020-01-17 00:27:38'),
(324, 3, 'catalog/view/javascript/d_quickcheckout/library/tinysort/jquery.tinysort.min.js', '2020-01-17 00:27:38'),
(325, 3, 'catalog/view/javascript/d_quickcheckout/library/underscore/underscore-min.js', '2020-01-17 00:27:38'),
(326, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/bootstrap.css', '2020-01-17 00:27:38'),
(327, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/bootstrap.less', '2020-01-17 00:27:38'),
(328, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/d_quickcheckout.css', '2020-01-17 00:27:38'),
(329, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/d_quickcheckout.less', '2020-01-17 00:27:38'),
(330, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme', '2020-01-17 00:27:38'),
(331, 3, 'catalog/view/theme/default/template/checkout/d_quickcheckout.twig', '2020-01-17 00:27:38'),
(332, 3, 'catalog/view/theme/default/template/d_quickcheckout/cart.twig', '2020-01-17 00:27:38'),
(333, 3, 'catalog/view/theme/default/template/d_quickcheckout/confirm.twig', '2020-01-17 00:27:38'),
(334, 3, 'catalog/view/theme/default/template/d_quickcheckout/field.twig', '2020-01-17 00:27:38'),
(335, 3, 'catalog/view/theme/default/template/d_quickcheckout/login.twig', '2020-01-17 00:27:38'),
(336, 3, 'catalog/view/theme/default/template/d_quickcheckout/payment.twig', '2020-01-17 00:27:38'),
(337, 3, 'catalog/view/theme/default/template/d_quickcheckout/payment_address.twig', '2020-01-17 00:27:38'),
(338, 3, 'catalog/view/theme/default/template/d_quickcheckout/payment_method.twig', '2020-01-17 00:27:38'),
(339, 3, 'catalog/view/theme/default/template/d_quickcheckout/shipping_address.twig', '2020-01-17 00:27:38'),
(340, 3, 'catalog/view/theme/default/template/d_quickcheckout/shipping_method.twig', '2020-01-17 00:27:38'),
(341, 3, 'catalog/view/theme/default/template/module/d_quickcheckout.twig', '2020-01-17 00:27:38'),
(342, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/adapters/backbone.bootstrap-modal.js', '2020-01-17 00:27:38'),
(343, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/adapters/backbone.bootstrap-modal.min.js', '2020-01-17 00:27:38'),
(344, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/editors/list.js', '2020-01-17 00:27:38'),
(345, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/editors/list.min.js', '2020-01-17 00:27:38'),
(346, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/templates/bootstrap.css', '2020-01-17 00:27:38'),
(347, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/templates/bootstrap.js', '2020-01-17 00:27:38'),
(348, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/templates/bootstrap3.css', '2020-01-17 00:27:38'),
(349, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/templates/bootstrap3.js', '2020-01-17 00:27:38'),
(350, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/templates/old.css', '2020-01-17 00:27:38'),
(351, 3, 'catalog/view/javascript/d_quickcheckout/library/backbone-forms/templates/old.js', '2020-01-17 00:27:38'),
(352, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ar.js', '2020-01-17 00:27:38'),
(353, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ar.min.js', '2020-01-17 00:27:38'),
(354, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_bg.js', '2020-01-17 00:27:38'),
(355, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_bg.min.js', '2020-01-17 00:27:38'),
(356, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ca.js', '2020-01-17 00:27:38'),
(357, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ca.min.js', '2020-01-17 00:27:38'),
(358, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_cs.js', '2020-01-17 00:27:38'),
(359, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_cs.min.js', '2020-01-17 00:27:38'),
(360, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_da.js', '2020-01-17 00:27:38'),
(361, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_da.min.js', '2020-01-17 00:27:38'),
(362, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_de.js', '2020-01-17 00:27:38'),
(363, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_de.min.js', '2020-01-17 00:27:38'),
(364, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_el.js', '2020-01-17 00:27:38'),
(365, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_el.min.js', '2020-01-17 00:27:38'),
(366, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_es.js', '2020-01-17 00:27:38'),
(367, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_es.min.js', '2020-01-17 00:27:38'),
(368, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_es_AR.js', '2020-01-17 00:27:38'),
(369, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_es_AR.min.js', '2020-01-17 00:27:38'),
(370, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_et.js', '2020-01-17 00:27:38'),
(371, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_et.min.js', '2020-01-17 00:27:38'),
(372, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_eu.js', '2020-01-17 00:27:38'),
(373, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_eu.min.js', '2020-01-17 00:27:38'),
(374, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_fa.js', '2020-01-17 00:27:38'),
(375, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_fa.min.js', '2020-01-17 00:27:38'),
(376, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_fi.js', '2020-01-17 00:27:38'),
(377, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_fi.min.js', '2020-01-17 00:27:39'),
(378, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_fr.js', '2020-01-17 00:27:39'),
(379, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_fr.min.js', '2020-01-17 00:27:39'),
(380, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_gl.js', '2020-01-17 00:27:39'),
(381, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_gl.min.js', '2020-01-17 00:27:39'),
(382, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_he.js', '2020-01-17 00:27:39'),
(383, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_he.min.js', '2020-01-17 00:27:39'),
(384, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_hr.js', '2020-01-17 00:27:39'),
(385, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_hr.min.js', '2020-01-17 00:27:39'),
(386, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_hu.js', '2020-01-17 00:27:39'),
(387, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_hu.min.js', '2020-01-17 00:27:39'),
(388, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_id.js', '2020-01-17 00:27:39'),
(389, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_id.min.js', '2020-01-17 00:27:39'),
(390, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_is.js', '2020-01-17 00:27:39'),
(391, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_is.min.js', '2020-01-17 00:27:39'),
(392, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_it.js', '2020-01-17 00:27:39'),
(393, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_it.min.js', '2020-01-17 00:27:39'),
(394, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ja.js', '2020-01-17 00:27:39'),
(395, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ja.min.js', '2020-01-17 00:27:39'),
(396, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ka.js', '2020-01-17 00:27:39'),
(397, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ka.min.js', '2020-01-17 00:27:39'),
(398, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_kk.js', '2020-01-17 00:27:39'),
(399, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_kk.min.js', '2020-01-17 00:27:39'),
(400, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ko.js', '2020-01-17 00:27:39'),
(401, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ko.min.js', '2020-01-17 00:27:39'),
(402, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_lt.js', '2020-01-17 00:27:39'),
(403, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_lt.min.js', '2020-01-17 00:27:39'),
(404, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_lv.js', '2020-01-17 00:27:39'),
(405, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_lv.min.js', '2020-01-17 00:27:39'),
(406, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_my.js', '2020-01-17 00:27:39'),
(407, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_my.min.js', '2020-01-17 00:27:39'),
(408, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_nl.js', '2020-01-17 00:27:39'),
(409, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_nl.min.js', '2020-01-17 00:27:39'),
(410, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_no.js', '2020-01-17 00:27:39'),
(411, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_no.min.js', '2020-01-17 00:27:39'),
(412, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_pl.js', '2020-01-17 00:27:39'),
(413, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_pl.min.js', '2020-01-17 00:27:39'),
(414, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_pt_BR.js', '2020-01-17 00:27:39'),
(415, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_pt_BR.min.js', '2020-01-17 00:27:39'),
(416, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_pt_PT.js', '2020-01-17 00:27:39'),
(417, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_pt_PT.min.js', '2020-01-17 00:27:39'),
(418, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ro.js', '2020-01-17 00:27:39'),
(419, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ro.min.js', '2020-01-17 00:27:39'),
(420, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ru.js', '2020-01-17 00:27:39'),
(421, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_ru.min.js', '2020-01-17 00:27:39'),
(422, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_si.js', '2020-01-17 00:27:39'),
(423, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_si.min.js', '2020-01-17 00:27:39'),
(424, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_sk.js', '2020-01-17 00:27:39'),
(425, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_sk.min.js', '2020-01-17 00:27:39'),
(426, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_sl.js', '2020-01-17 00:27:39'),
(427, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_sl.min.js', '2020-01-17 00:27:39'),
(428, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_sr.js', '2020-01-17 00:27:39'),
(429, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_sr.min.js', '2020-01-17 00:27:39'),
(430, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_sr_lat.js', '2020-01-17 00:27:39'),
(431, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_sr_lat.min.js', '2020-01-17 00:27:39'),
(432, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_sv.js', '2020-01-17 00:27:39'),
(433, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_sv.min.js', '2020-01-17 00:27:39'),
(434, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_th.js', '2020-01-17 00:27:39'),
(435, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_th.min.js', '2020-01-17 00:27:39'),
(436, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_tj.js', '2020-01-17 00:27:39'),
(437, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_tj.min.js', '2020-01-17 00:27:39'),
(438, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_tr.js', '2020-01-17 00:27:39'),
(439, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_tr.min.js', '2020-01-17 00:27:39'),
(440, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_uk.js', '2020-01-17 00:27:39'),
(441, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_uk.min.js', '2020-01-17 00:27:39'),
(442, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_vi.js', '2020-01-17 00:27:39'),
(443, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_vi.min.js', '2020-01-17 00:27:39'),
(444, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_zh.js', '2020-01-17 00:27:39'),
(445, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_zh.min.js', '2020-01-17 00:27:39'),
(446, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_zh_TW.js', '2020-01-17 00:27:39'),
(447, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/messages_zh_TW.min.js', '2020-01-17 00:27:39'),
(448, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/methods_de.js', '2020-01-17 00:27:39'),
(449, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/methods_de.min.js', '2020-01-17 00:27:39'),
(450, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/methods_es_CL.js', '2020-01-17 00:27:39'),
(451, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/methods_es_CL.min.js', '2020-01-17 00:27:39'),
(452, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/methods_fi.js', '2020-01-17 00:27:39'),
(453, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/methods_fi.min.js', '2020-01-17 00:27:39'),
(454, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/methods_nl.js', '2020-01-17 00:27:39'),
(455, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/methods_nl.min.js', '2020-01-17 00:27:39'),
(456, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/methods_pt.js', '2020-01-17 00:27:39'),
(457, 3, 'catalog/view/javascript/d_quickcheckout/library/jquery-validate/localization/methods_pt.min.js', '2020-01-17 00:27:39'),
(458, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat/css/demo.css', '2020-01-17 00:27:39'),
(459, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat/css/intlTelInput.css', '2020-01-17 00:27:39'),
(460, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat/img/flags.png', '2020-01-17 00:27:39'),
(461, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat/img/flags@2x.png', '2020-01-17 00:27:39'),
(462, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat/js/intlTelInput.js', '2020-01-17 00:27:39'),
(463, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat/js/intlTelInput.min.js', '2020-01-17 00:27:39'),
(464, 3, 'catalog/view/javascript/d_quickcheckout/library/phoneformat/js/utils.js', '2020-01-17 00:27:39'),
(465, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/BurnEngine.css', '2020-01-17 00:27:39'),
(466, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/blue.css', '2020-01-17 00:27:39'),
(467, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/blue.less', '2020-01-17 00:27:39'),
(468, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/dark.css', '2020-01-17 00:27:39'),
(469, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/dark.less', '2020-01-17 00:27:39'),
(470, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/default.css', '2020-01-17 00:27:39'),
(471, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/green.css', '2020-01-17 00:27:39'),
(472, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/green.less', '2020-01-17 00:27:39'),
(473, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/journal.css', '2020-01-17 00:27:39'),
(474, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/journal.less', '2020-01-17 00:27:39'),
(475, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/red.css', '2020-01-17 00:27:39'),
(476, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/red.less', '2020-01-17 00:27:39'),
(477, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/seablue.css', '2020-01-17 00:27:39'),
(478, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/seablue.less', '2020-01-17 00:27:39'),
(479, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/yellow.css', '2020-01-17 00:27:39'),
(480, 3, 'catalog/view/theme/default/stylesheet/d_quickcheckout/theme/yellow.less', '2020-01-17 00:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `oc_farmer`
--

DROP TABLE IF EXISTS `oc_farmer`;
CREATE TABLE IF NOT EXISTS `oc_farmer` (
  `oc_f_name` varchar(200) NOT NULL,
  `oc_f_num` varchar(12) NOT NULL,
  `oc_f_mail` varchar(200) DEFAULT NULL,
  `oc_f_password` varchar(200) NOT NULL,
  `oc_f_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `oc_f_status` varchar(20) NOT NULL,
  `oc_f_otp` varchar(6) NOT NULL,
  `oc_f_otp_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oc_f_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_farmer`
--

INSERT INTO `oc_farmer` (`oc_f_name`, `oc_f_num`, `oc_f_mail`, `oc_f_password`, `oc_f_created_at`, `oc_f_status`, `oc_f_otp`, `oc_f_otp_status`) VALUES
('ADURI TARAKA RAMA SAIKIRAN', '919666247249', 'saikiranatr@gmail.com', '123456', '2020-01-13 06:48:28', '0', '179393', 1),
('Sireesha', '918143515536', 'sireesha@gmail.com', '123456', '2020-01-17 17:44:11', '0', '0', 1),
('A V naveen', '917989000913', '234@gmail.com', '123456', '2020-01-17 18:21:02', '0', '0', 1),
('Avvaru Krishna Kanth', '919603781106', 'krishna.23.11.98@gmail.com', '123456', '2020-01-15 06:07:04', '0', '0', 1),
('Sri Ram', '919618212278', 'sriram99634@gmail.com', '123456', '2020-01-20 16:08:45', '0', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(83, 1, 'latest.33', 'content_top', 1),
(82, 1, 'banner.32', 'content_top', 0),
(74, 3, 'category', 'column_left', 1),
(76, 2, 'carousel.29', 'content_top', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(55, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(54, 3, 0, 'product/category'),
(61, 1, 0, 'common/home'),
(57, 2, 0, 'product/details'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0),
(11, 'Farmers', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 2, 'Mint Leaf', 'mintleaf', 'Santosh Setty', '1.0.0', 'http://www.santoshsetty.com', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n\r\n<modification>\r\n\r\n    <name>Mint Leaf</name>\r\n    <code>mintleaf</code>\r\n    <version>1.0.0</version>\r\n    <author>Santosh Setty</author>\r\n    <link>http://www.santoshsetty.com</link>\r\n\r\n    <file path=\"catalog/controller/common/menu.php\">\r\n        <operation>\r\n            <search><![CDATA[return $this->load->view(\'common/menu\', $data);]]></search>\r\n            <add position=\"before\"><![CDATA[if ($this->request->server[\'HTTPS\']) {\r\n        $server = $this->config->get(\'config_ssl\');\r\n        } else {\r\n            $server = $this->config->get(\'config_url\');\r\n        }\r\n\r\n        $data[\'name\'] = $this->config->get(\'config_name\');\r\n\r\n        $data[\'search\'] = $this->load->controller(\'common/search\');\r\n        $data[\'cart\'] = $this->load->controller(\'common/cart\');\r\n\r\n        if (is_file(DIR_IMAGE . $this->config->get(\'config_logo\'))) {\r\n            $data[\'logo\'] = $server . \'image/\' . $this->config->get(\'config_logo\');\r\n        } else {\r\n            $data[\'logo\'] = \'\';\r\n        }]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/language/en-gb/common/cart.php\">\r\n        <operation>\r\n            <search><![CDATA[%s item(s) - %s]]></search>\r\n            <add position=\"replace\"><![CDATA[%s]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n</modification>\r\n', 1, '2020-01-13 19:17:51'),
(2, 3, 'd_opencart_patch', 'd_opencart_patch', 'Dreamvention', '3.0.9', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_opencart_patch</name>\n    <code>d_opencart_patch</code>\n    <description>Permission fixes in Opencart 3.x</description>\n    <version>3.0.9</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"admin/controller/user/user_permission.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$path[] = $file . \'/*\';]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            $files[] = $file;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\">\n            <search><![CDATA[$permission = substr($controller, 0, strrpos($controller, \'.\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_opencart_patch.xml 2\n            $permission = (strrpos($controller, \'.\') !== false) ? substr($controller, 0, strrpos($controller, \'.\')) : $controller;\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/extension/installer.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$modification_info = $this->model_setting_modification->getModificationByCode($code);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            if (strpos($code, \'d_\') === 0 && $modification_info) {\n                $this->model_setting_modification->deleteModification($modification_info[\'modification_id\']);\n                $modification_info = false; \n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/setting/extension.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' ORDER BY `date_added` ASC\");]]></search>\n            <add position=\"replace\"><![CDATA[\n        //d_opencart_patch.xml 1\n        $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_install` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n\n        $extension = $query->row;\n\n        if(isset($extension[\'filename\']) && strpos($extension[\'filename\'], \'_compiled_\')){\n\n\n            $parts = explode(\'_compiled_\', $extension[\'filename\']);\n            $extension_name = $parts[0];\n            $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' AND path LIKE \'%\".$this->db->escape($extension_name).\"%\' ORDER BY `date_added` ASC\");\n        }else{\n            $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' ORDER BY `date_added` ASC\");\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/setting/modification.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");]]></search>\n            <add position=\"replace\"><![CDATA[\n        //d_opencart_patch.xml 1\n        $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_install` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n\n        $extension = $query->row;\n\n        if(isset($extension[\'filename\']) && strpos($extension[\'filename\'], \'_compiled_\') !== false){\n\n\n            $parts = explode(\'_compiled_\', $extension[\'filename\']);\n            $extension_name = $parts[0];\n            $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' AND `name` LIKE \'%\".$this->db->escape($extension_name).\"%\'\");\n\n        }else{\n            $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/marketplace/install.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->model_setting_extension->deleteExtensionInstall($extension_install_id);]]></search>\n            <add position=\"replace\"><![CDATA[//d_opencart_patch.xml 1 moved down]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/marketplace/install.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->model_setting_modification->deleteModificationsByExtensionInstallId($extension_install_id);]]></search>\n            <add position=\"after\"><![CDATA[\n                //d_opencart_patch.xml 2\n                $this->model_setting_extension->deleteExtensionInstall($extension_install_id);]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/common/filemanager.php\">\n        <operation>\n            <search><![CDATA[$files = glob($directory . \'/\' . $filter_name . \'*.{jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF}\', GLOB_BRACE);]]></search>\n            <add position=\"replace\"><![CDATA[$files = glob($directory . \'/\' . $filter_name . \'*.{jpg,jpeg,svg,png,gif,JPG,JPEG,PNG,GIF}\', GLOB_BRACE);]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\'jpg\',]]></search>\n            <add position=\"after\"><![CDATA[\'svg\',]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\'image/jpeg\',]]></search>\n            <add position=\"after\"><![CDATA[\'image/svg+xml\',]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/filemanager.twig\">\n        <operation>\n            <search><![CDATA[<img src=\"{{ image.thumb }}\" alt=\"{{ image.name }}\" title=\"{{ image.name }}\" />]]></search>\n            <add position=\"replace\"><![CDATA[<img src=\"{{ image.thumb }}\" alt=\"{{ image.name }}\" title=\"{{ image.name }}\" width=\"100\" height=\"100\" />]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/header.twig\">\n        <operation>\n            <search><![CDATA[</header>]]></search>\n            <add position=\"before\"><![CDATA[\n                <style type=\"text/css\">\n                    a.img-thumbnail{\n                        min-width:100px;\n                    }\n                </style>\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/tool/image.php\">\n        <operation>\n            <search><![CDATA[public function resize($filename, $width, $height) {]]></search>\n            <add position=\"after\"><![CDATA[\n                if (isset($this->request->server[\'HTTPS\']) && (($this->request->server[\'HTTPS\'] == \'on\') || ($this->request->server[\'HTTPS\'] == \'1\'))) {\n                    $server = HTTPS_CATALOG;\n                } else {\n                    $server = HTTP_CATALOG;\n                }\n\n                if ($filename) {\n                    $image_info = @getimagesize(DIR_IMAGE . $filename);\n                    if (!$image_info) {\n                        return $server . \'image/\' . $filename;\n                    }\n                } else {\n                    $filename = \"no_image.png\";\n                }\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/model/tool/image.php\">\n        <operation>\n            <search><![CDATA[public function resize($filename, $width, $height) {]]></search>\n            <add position=\"after\"><![CDATA[\n                if (isset($this->request->server[\'HTTPS\']) && (($this->request->server[\'HTTPS\'] == \'on\') || ($this->request->server[\'HTTPS\'] == \'1\'))) {\n                    $server = HTTPS_SERVER;\n                } else {\n                    $server = HTTP_SERVER;\n                }\n\n                if ($filename) {\n                    $image_info = @getimagesize(DIR_IMAGE . $filename);\n                    if (!$image_info) {\n                        return $server . \'image/\' . $filename;\n                    }\n                } else {\n                    $filename = \"no_image.png\";\n                }\n                ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2020-01-17 00:27:45'),
(3, 0, 'd_twig_manager', 'd_twig_manager', 'Dreamvention', '2.0.0', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_twig_manager</name>\n    <code>d_twig_manager</code>\n    <description>Adds support for twig templating engine</description>\n    <version>2.0.0</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"system/engine/loader.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$template = new Template($this->registry->get(\'config\')->get(\'template_engine\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $template = new Template($this->registry->get(\'config\')->get(\'template_engine\'), $this->registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct($adaptor) {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($adaptor, $registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->adaptor = new $class();]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $this->adaptor = new $class($registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template/twig.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[private $data = array();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            private $registry = array();\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct() {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[\\Twig_Autoloader::register();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $this->registry = $registry;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            if (file_exists(DIR_SYSTEM . \'library/template/Twig/Extension/DTwigManager.php\')) {\n                $this->twig->addExtension(new \\Twig_Extension_DTwigManager($this->registry));\n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/event/theme.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            if (file_exists(DIR_SYSTEM . \'library/template/Twig/Extension/DTwigManager.php\')) {\n                $twig->addExtension(new Twig_Extension_DTwigManager($this->registry));\n            }\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2020-01-17 00:29:53'),
(4, 0, 'Ajax Quick Checkout', 'd_quickcheckout', 'Dreamvention', '6.4.1', 'https://dreamvention.zendesk.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>Ajax Quick Checkout</name>\n    <code>d_quickcheckout</code>\n    <version>6.4.1</version>\n    <author>Dreamvention</author>\n    <link>https://dreamvention.zendesk.com</link>\n\n    <file path=\"catalog/controller/checkout/checkout.php\">\n        <operation>\n            <search ><![CDATA[if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/checkout/checkout.tpl\')) {]]></search>\n            <add position=\"replace\" offset=\"4\"><![CDATA[\n            // a_vqmod_d_quickcheckout.xml\n            if($this->config->get(\'d_quickcheckout_status\')){\n                $template = \'d_quickcheckout\';\n            }else{\n                $template = \'checkout\';\n            }\n            \n            if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/checkout/\'.$template.\'.tpl\')) {\n                $template = $this->config->get(\'config_template\') . \'/template/checkout/\'.$template.\'.tpl\';\n            } else {\n                $template = \'default/template/checkout/\'.$template.\'.tpl\';\n            }\n            $this->response->setOutput($this->load->view($template, $data));]]>\n            </add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/checkout/checkout.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->response->setOutput($this->load->view(\'checkout/checkout\', $data));]]></search>\n            <add position=\"replace\"><![CDATA[\n            // a_vqmod_d_quickcheckout.xml\n            if($this->config->get(\'d_quickcheckout_status\')){\n                $template = \'d_quickcheckout\';\n            }else{\n                $template = \'checkout\';\n            }\n            \n            $this->response->setOutput($this->load->view(\'checkout/\'.$template, $data));]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/checkout/checkout.php\">\n        <operation>\n            <search ><![CDATA[$data[\'header\'] = $this->load->controller(\'common/header\');]]></search>\n            <add position=\"before\"><![CDATA[\n        if($this->config->get(\'d_quickcheckout_status\')){\n            $data[\'d_quickcheckout\'] = $this->load->controller(\'extension/module/d_quickcheckout\');\n        }\n        ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/cart/tax.php\">\n        <operation>\n            <search ><![CDATA[final class Tax {]]></search>\n            <add position=\"after\"><![CDATA[\n    // a_vqmod_d_quickcheckout.xml\n    public function clearRates(){\n        $this->tax_rates = array();\n    }\n            ]]></add>\n        </operation>\n    </file> \n    <file path=\"system/library/tax.php\">\n        <operation>\n            <search ><![CDATA[final class Tax {]]></search>\n            <add position=\"after\"><![CDATA[\n    // a_vqmod_d_quickcheckout.xml\n    public function clearRates(){\n        $this->tax_rates = array();\n    }\n            ]]></add>\n        </operation>\n    </file> \n</modification>', 1, '2020-01-17 00:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Details', 'banner', '{\"name\":\"Details\",\"banner_id\":\"9\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(33, 'Latest', 'latest', '{\"name\":\"Latest\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_msg`
--

DROP TABLE IF EXISTS `oc_msg`;
CREATE TABLE IF NOT EXISTS `oc_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `msgtime` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_msg`
--

INSERT INTO `oc_msg` (`id`, `mobile`, `msg`, `msgtime`, `status`) VALUES
(15, '919603781106', 'XA3Q9 1 33 280', 'Mon, 13 Jan 2020 10:19:46 +0000', 1),
(14, '917989000913', 'XA3Q9 1 20 2500', 'Mon, 13 Jan 2020 13:56:34 +0000', 0),
(13, '918919548158', 'XA3Q9 2 40 1500', 'Tue, 14 Jan 2020 05:58:24 +0000', 0),
(34, '917989000913', 'XA3Q9 ADD 10 11 12', 'Fri, 17 Jan 2020 15:03:59 +0000', 1),
(12, '919603781106', 'XA3Q9 3 20 3500', 'Tue, 14 Jan 2020 13:06:23 +0000', 1),
(11, '919949808678', 'XA3Q9 3 21 7000', 'Tue, 14 Jan 2020 14:17:13 +0000', 0),
(10, '918143515536', 'XA3Q9 3 5 550', 'Tue, 14 Jan 2020 14:41:45 +0000', 1),
(16, '918328504967', 'XA3Q9 1 89 2001', 'Mon, 13 Jan 2020 05:04:26 +0000', 0),
(33, '917989000913', 'XA3Q9 UPD 111 12 1200', 'Fri, 17 Jan 2020 15:10:38 +0000', 1),
(32, '917989000913', 'XA3Q9 ADD 10 11 12000', 'Fri, 17 Jan 2020 15:18:11 +0000', 1),
(31, '917989000913', 'XA3Q9 ADD 10 11 12000', 'Fri, 17 Jan 2020 15:19:16 +0000', 1),
(30, '917989000913', 'XA3Q9 ADD 10 11 12300', 'Fri, 17 Jan 2020 15:23:53 +0000', 1),
(29, '917989000913', 'XA3Q9 ADD 10 11 12234', 'Fri, 17 Jan 2020 15:27:59 +0000', 1),
(28, '917989000913', 'XA3Q9 ADD 10 11 12232', 'Fri, 17 Jan 2020 15:29:53 +0000', 1),
(27, '917989000913', 'XA3Q9 ADD 10 11 12235', 'Fri, 17 Jan 2020 15:33:03 +0000', 1),
(35, '917989000913', 'XA3Q9 ADD  10 11 12', 'Fri, 17 Jan 2020 15:00:28 +0000', 1),
(36, '919603781106', 'XA3Q9 ADD 7 20 3500', 'Fri, 17 Jan 2020 18:25:50 +0000', 1),
(37, '919603781106', 'XA3Q9 ADD 6 28 10000', 'Fri, 17 Jan 2020 18:27:02 +0000', 1),
(38, '919603781106', 'XA3Q9 ADD 4 10 3000', 'Mon, 20 Jan 2020 13:43:16 +0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_mstoreapp_blocks`
--

DROP TABLE IF EXISTS `oc_mstoreapp_blocks`;
CREATE TABLE IF NOT EXISTS `oc_mstoreapp_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `parent_id` int(15) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` int(4) DEFAULT '1',
  `block_type` varchar(200) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `image_width` int(50) DEFAULT '200',
  `image_height` int(50) DEFAULT '200',
  `link_id` int(50) DEFAULT NULL,
  `link_type` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `sort_order` int(15) DEFAULT NULL,
  `margin_between` int(4) DEFAULT '10',
  `width` int(4) DEFAULT '100',
  `margin_top` int(4) DEFAULT '0',
  `margin_right` int(4) DEFAULT '0',
  `margin_bottom` int(4) DEFAULT '0',
  `margin_left` int(4) DEFAULT '0',
  `padding_top` int(4) DEFAULT '0',
  `padding_right` int(4) DEFAULT '0',
  `padding_bottom` int(4) DEFAULT '0',
  `padding_left` int(4) DEFAULT '0',
  `border_radius` int(4) DEFAULT '0',
  `layout` varchar(50) DEFAULT 'grid',
  `layout_grid_col` varchar(50) DEFAULT 'two',
  `card_style` varchar(50) DEFAULT NULL,
  `shape` varchar(50) DEFAULT NULL,
  `header_align` varchar(50) DEFAULT NULL,
  `text_color` varchar(50) DEFAULT NULL,
  `bg_color` varchar(50) DEFAULT '#ffffff',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_mstoreapp_blocks`
--

INSERT INTO `oc_mstoreapp_blocks` (`id`, `name`, `parent_id`, `description`, `status`, `block_type`, `image_url`, `image_width`, `image_height`, `link_id`, `link_type`, `end_time`, `sort_order`, `margin_between`, `width`, `margin_top`, `margin_right`, `margin_bottom`, `margin_left`, `padding_top`, `padding_right`, `padding_bottom`, `padding_left`, `border_radius`, `layout`, `layout_grid_col`, `card_style`, `shape`, `header_align`, `text_color`, `bg_color`) VALUES
(1, 'HOME', 0, '', 1, 'home', '', 0, 0, 0, '', '', 0, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_with_shadow', 'square', 'top_left', '#000000', '#ffffff'),
(2, 'BANNER SLIDER', 1, '', 1, 'banner_block', '', 0, 0, 0, 'product', '', 0, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'slider', 'two', 'card_with_shadow', 'square', 'none', '#000000', '#ffffff'),
(3, 'BANNER SLIDER BANNER 1', 2, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner1.png', 1080, 1080, 0, '', '', 0, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'top_left', '#000000', '#ffffff'),
(4, 'BANNER SLIDER BANNER 2', 2, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner2.png', 1080, 1080, 0, '', '', 1, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'top_left', '#000000', '#ffffff'),
(5, 'BANNER SLIDER BANNER 3', 2, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner3.png', 1080, 1080, 0, '', '', 2, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'top_left', '#000000', '#ffffff'),
(6, 'BANNER SLIDER BANNER 4', 2, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner4.png', 1080, 1080, 0, '', '', 3, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'top_left', '#000000', '#ffffff'),
(7, 'CATEGORIES', 1, '', 1, 'category_block', '', 600, 314, 0, 'product', '', 1, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'grid', 'two', 'card_ios', 'square', 'none', '#000000', '#80ff00'),
(8, 'PRODUCT SLIDER', 1, '', 1, 'product_block', '', 600, 314, 20, 'product', '', 15, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(14, 'NEWLY LANDED', 1, '', 1, 'banner_block', '', 600, 314, 0, 'product', '', 0, 10, 50, 0, 0, 0, 0, 30, 0, 30, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'left_floating', '#000000', '#fafafa'),
(15, 'NEWLY LANDED BANNER 1', 14, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner5.png', 200, 200, 0, '', '', 0, 0, 100, 15, 40, 15, 150, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(16, 'NEWLY LANDED BANNER 2', 14, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner3.png', 200, 200, 0, '', '', 2, 10, 100, 15, 40, 15, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(17, 'NEWLY LANDED BANNER 3', 14, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner4.png', 200, 200, 0, '', '', 0, 10, 100, 15, 40, 15, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(18, 'NEWLY LANDED BANNER 4', 14, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner2.png', 200, 200, 0, '', '', 0, 10, 100, 15, 40, 15, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(19, 'NEW ARRIVALS', 1, '', 1, 'banner_block', '', 200, 200, 0, 'product', '', 8, 10, 100, 0, 0, 0, 0, 20, 0, 40, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(20, 'NEW ARRIVALS BANNER 1', 19, '', 1, 'banner', 'catalog/mobile-blocks/600x314/Banner5.jpg', 600, 314, 0, '', '', 0, 10, 100, 0, 40, 0, 40, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(21, 'NEW ARRIVALS BANNER 2', 19, '', 1, 'banner', 'catalog/mobile-blocks/600x314/Banner4.jpg', 600, 314, 0, '', '', 2, 10, 100, 0, 40, 0, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(22, 'NEW ARRIVALS BANNER 3', 19, '', 1, 'banner', 'catalog/mobile-blocks/600x314/Banner8.jpg', 600, 314, 0, '', '', 0, 10, 100, 0, 40, 0, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(23, 'NEW ARRIVALS BANNER 4', 19, '', 1, 'banner', 'catalog/mobile-blocks/600x314/Banner10.jpg', 600, 314, 0, '', '', 0, 10, 100, 0, 40, 0, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(24, 'TOP BRANDS', 1, '', 1, 'banner_block', '', 0, 0, 0, 'product', '', 10, 10, 50, 0, 0, 0, 0, 40, 0, 40, 0, 50, 'scroll', 'two', 'card_ios', 'square', 'left_floating', '#000000', '#f3f7f8'),
(25, 'TOP BRANDS NEW COLLECTION BANNER 1', 24, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner7.png', 200, 200, 0, '', '', 0, 10, 100, 15, 40, 15, 140, 0, 0, 0, 0, 50, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(26, 'TOP BRANDS NEW COLLECTION BANNER 4', 24, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner6.png', 200, 200, 0, '', '', 4, 10, 100, 15, 40, 15, 0, 0, 0, 0, 0, 50, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(27, 'TOP BRANDS NEW COlLECTIONS BANNER 2', 24, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner5.png', 200, 200, 0, '', '', 0, 10, 100, 15, 40, 15, 0, 0, 0, 0, 0, 50, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(28, 'TOP BRANDS NEW COlLECTIONS BANNER 3', 24, '', 1, 'banner', 'catalog/mobile-blocks/Banners/Banner7.png', 200, 200, 0, '', '', 0, 10, 100, 15, 40, 15, 0, 0, 0, 0, 0, 50, 'scroll', 'two', 'card_ios', 'square', 'none', '#000000', '#ffffff'),
(29, 'Flash Sale', 1, '', 1, 'flash_sale', '', 200, 200, 20, '', 'Sep 09, 2019 12:00', 11, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'scroll', 'two', 'card_ios', 'square', 'top_center', '#000000', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(2, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '405.0000', 1, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-17 00:09:53', '2020-01-17 00:10:01'),
(3, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '305.0000', 1, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-17 00:21:59', '2020-01-17 00:22:10'),
(4, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '205.0000', 1, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-17 00:50:42', '2020-01-17 00:50:50'),
(5, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '305.0000', 1, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-17 01:11:32', '2020-01-17 01:11:40'),
(6, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '405.0000', 1, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-17 01:12:32', '2020-01-17 01:12:40'),
(7, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '205.0000', 5, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-17 01:22:36', '2020-01-17 02:03:39'),
(8, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '305.0000', 0, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-17 01:41:09', '2020-01-17 01:41:09'),
(9, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '205.0000', 1, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-17 08:43:52', '2020-01-17 08:44:01'),
(10, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '3005.0000', 1, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-20 19:14:49', '2020-01-20 19:14:58'),
(11, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '12005.0000', 0, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-20 19:49:22', '2020-01-20 19:49:22'),
(12, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '12005.0000', 0, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-21 17:18:17', '2020-01-21 17:18:17'),
(13, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'PayUMoney', 'payu', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '17.0000', 0, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-21 22:52:00', '2020-01-21 22:52:00'),
(14, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'PayUMoney', 'payu', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '6.0000', 0, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-21 22:58:08', '2020-01-21 22:58:08'),
(15, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/opencart/', 2, 1, 'Avvaru', 'Krishna Kanth', 'kk1@gmail.com', '9603781106', '', '', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'PayUMoney', 'payu', 'krishna ', 'kanth', '', '1234', '', 'kkkkkk', '534204', 'India', 99, 'Andhra Pradesh', 1476, '{firstname} {lastname}{company}\n{address_1}{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1.0000', 0, 0, '0.0000', 0, '', 1, 4, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'en-US,en;q=0.9', '2020-01-21 23:35:00', '2020-01-21 23:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(3, 2, 1, 0, '', '2020-01-17 00:10:01'),
(4, 3, 1, 0, '', '2020-01-17 00:22:10'),
(5, 4, 1, 0, '', '2020-01-17 00:50:50'),
(6, 5, 1, 0, '', '2020-01-17 01:11:40'),
(7, 6, 1, 0, '', '2020-01-17 01:12:40'),
(8, 7, 1, 0, '', '2020-01-17 01:22:43'),
(9, 7, 5, 0, '', '2020-01-17 02:03:39'),
(10, 9, 1, 0, '', '2020-01-17 08:44:01'),
(11, 10, 1, 0, '', '2020-01-20 19:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(2, 2, 101, 'Lemon(20 Kg)', 'Lemon', 1, '400.0000', '400.0000', '0.0000', 0),
(3, 3, 100, 'strawberry(30 Kg)', 'strawberry', 1, '300.0000', '300.0000', '0.0000', 0),
(36, 4, 103, 'Capsicum(30 Kg)', 'Capsicum', 1, '200.0000', '200.0000', '0.0000', 0),
(39, 5, 100, 'strawberry(30 Kg)', 'strawberry', 1, '300.0000', '300.0000', '0.0000', 0),
(41, 6, 101, 'Lemon(20 Kg)', 'Lemon', 1, '400.0000', '400.0000', '0.0000', 0),
(47, 7, 103, 'Capsicum(30 Kg)', 'Capsicum', 1, '200.0000', '200.0000', '0.0000', 0),
(48, 8, 100, 'strawberry(30 Kg)', 'strawberry', 1, '300.0000', '300.0000', '0.0000', 0),
(50, 9, 103, 'Capsicum(30 Kg)', 'Capsicum', 1, '200.0000', '200.0000', '0.0000', 0),
(52, 10, 115, 'Oats(10Kg)', 'Oats', 1, '3000.0000', '3000.0000', '0.0000', 0),
(67, 11, 110, 'Black Pepper(11Kg)', 'Black Pepper', 1, '12000.0000', '12000.0000', '0.0000', 0),
(69, 12, 110, 'Black Pepper(11Kg)', 'Black Pepper', 1, '12000.0000', '12000.0000', '0.0000', 0),
(73, 13, 112, 'Black Pepper(11Kg)', 'Black Pepper', 1, '12.0000', '12.0000', '0.0000', 0),
(75, 14, 112, 'Black Pepper(11Kg)', 'Black Pepper', 1, '1.0000', '1.0000', '0.0000', 0),
(80, 15, 112, 'Black Pepper(11Kg)', 'Black Pepper', 1, '1.0000', '1.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

DROP TABLE IF EXISTS `oc_order_shipment`;
CREATE TABLE IF NOT EXISTS `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(6, 2, 'sub_total', 'Sub-Total', '400.0000', 1),
(7, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(8, 2, 'total', 'Total', '405.0000', 9),
(9, 3, 'sub_total', 'Sub-Total', '300.0000', 1),
(10, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(11, 3, 'total', 'Total', '305.0000', 9),
(110, 4, 'total', 'Total', '205.0000', 9),
(109, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(108, 4, 'sub_total', 'Sub-Total', '200.0000', 1),
(119, 5, 'total', 'Total', '305.0000', 9),
(118, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(117, 5, 'sub_total', 'Sub-Total', '300.0000', 1),
(124, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(123, 6, 'sub_total', 'Sub-Total', '400.0000', 1),
(125, 6, 'total', 'Total', '405.0000', 9),
(143, 7, 'total', 'Total', '205.0000', 9),
(142, 7, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(141, 7, 'sub_total', 'Sub-Total', '200.0000', 1),
(144, 8, 'sub_total', 'Sub-Total', '300.0000', 1),
(145, 8, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(146, 8, 'total', 'Total', '305.0000', 9),
(151, 9, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(150, 9, 'sub_total', 'Sub-Total', '200.0000', 1),
(152, 9, 'total', 'Total', '205.0000', 9),
(157, 10, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(156, 10, 'sub_total', 'Sub-Total', '3000.0000', 1),
(158, 10, 'total', 'Total', '3005.0000', 9),
(203, 11, 'total', 'Total', '12005.0000', 9),
(202, 11, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(201, 11, 'sub_total', 'Sub-Total', '12000.0000', 1),
(209, 12, 'total', 'Total', '12005.0000', 9),
(207, 12, 'sub_total', 'Sub-Total', '12000.0000', 1),
(208, 12, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(221, 13, 'total', 'Total', '17.0000', 9),
(219, 13, 'sub_total', 'Sub-Total', '12.0000', 1),
(220, 13, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(226, 14, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(225, 14, 'sub_total', 'Sub-Total', '1.0000', 1),
(227, 14, 'total', 'Total', '6.0000', 9),
(237, 15, 'total', 'Total', '1.0000', 9),
(236, 15, 'sub_total', 'Sub-Total', '1.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_paypal_order`
--

DROP TABLE IF EXISTS `oc_paypal_order`;
CREATE TABLE IF NOT EXISTS `oc_paypal_order` (
  `paypal_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `capture_status` enum('Complete','NotComplete') DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `authorization_id` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`paypal_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_paypal_order_transaction`
--

DROP TABLE IF EXISTS `oc_paypal_order_transaction`;
CREATE TABLE IF NOT EXISTS `oc_paypal_order_transaction` (
  `paypal_order_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_order_id` int(11) NOT NULL,
  `transaction_id` char(20) NOT NULL,
  `parent_id` char(20) NOT NULL,
  `date_added` datetime NOT NULL,
  `note` varchar(255) NOT NULL,
  `msgsubid` char(38) NOT NULL,
  `receipt_id` char(20) NOT NULL,
  `payment_type` enum('none','echeck','instant','refund','void') DEFAULT NULL,
  `payment_status` char(20) NOT NULL,
  `pending_reason` char(50) NOT NULL,
  `transaction_entity` char(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `debug_data` text NOT NULL,
  `call_data` text NOT NULL,
  PRIMARY KEY (`paypal_order_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pro`
--

DROP TABLE IF EXISTS `oc_pro`;
CREATE TABLE IF NOT EXISTS `oc_pro` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(30) NOT NULL,
  `pro_img` varchar(60) NOT NULL,
  `pro_category` int(11) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_pro`
--

INSERT INTO `oc_pro` (`pro_id`, `pro_name`, `pro_img`, `pro_category`) VALUES
(1, 'Lemon', 'catalog/items/lemon.jpg', 59),
(2, 'Capsicum', 'catalog/items/capsicum.jpg', 62),
(3, 'strawberry', 'catalog/items/strawberry.jpg', 61),
(4, 'Oats', 'catalog/items/oats.jpg', 69),
(5, 'Wheat', 'catalog/items/wheat.jpg', 69),
(6, 'Onion', 'catalog/items/onion.jpg', 62),
(7, 'Tomato', 'catalog/items/tomato.jpg', 62),
(8, 'Red MIrchi', 'catalog/items/red_mirchi.jpg', 63),
(9, 'Ilaichi', 'catalog/items/ilaichi.jpg', 63),
(10, 'Black Pepper', 'catalog/items/blackpepper.jpg', 63),
(11, 'Apple', 'catalog/items/apple.jpg', 61);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `phnum` varchar(20) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `qnt` int(11) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `phnum`, `pro_id`, `qnt`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(112, 'Black Pepper', '917989000913', 10, 11, '', '', '', '', '', '', '', 1, 7, 'catalog/items/blackpepper.jpg', 0, 1, '1.0000', 0, 0, '2020-01-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2009-02-03 16:06:50', '2020-01-21 22:56:07'),
(104, 'strawberry', '918143515536', 3, 40, '', '', '', '', '', '', '', 1, 7, 'catalog/items/strawberry.jpg', 0, 1, '600.0000', 0, 0, '2020-01-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 1, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(103, 'Capsicum', '918143515536', 2, 30, '', '', '', '', '', '', '', 0, 7, 'catalog/items/capsicum.jpg', 0, 1, '200.0000', 0, 0, '2020-01-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 7, '2009-02-03 16:06:50', '2020-01-17 01:23:33'),
(107, 'Black Pepper', '917989000913', 10, 11, '', '', '', '', '', '', '', 1, 7, 'catalog/items/blackpepper.jpg', 0, 1, '12232.0000', 0, 0, '2020-01-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(108, 'Black Pepper', '917989000913', 10, 11, '', '', '', '', '', '', '', 1, 7, 'catalog/items/blackpepper.jpg', 0, 1, '12234.0000', 0, 0, '2020-01-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(109, 'Black Pepper', '917989000913', 10, 11, '', '', '', '', '', '', '', 1, 7, 'catalog/items/blackpepper.jpg', 0, 1, '12300.0000', 0, 0, '2020-01-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(110, 'Black Pepper', '917989000913', 10, 11, '', '', '', '', '', '', '', 1, 7, 'catalog/items/blackpepper.jpg', 0, 1, '12000.0000', 0, 0, '2020-01-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 32, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(111, 'Black Pepper', '917989000913', 10, 12, '', '', '', '', '', '', '', 1, 7, 'catalog/items/blackpepper.jpg', 0, 1, '1200.0000', 0, 0, '2020-01-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(105, 'Red MIrchi', '919666247249', 8, 55, '', '', '', '', '', '', '', 0, 7, 'catalog/items/red_mirchi.jpg', 0, 1, '1200.0000', 0, 0, '2020-01-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 1, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(100, 'strawberry', '919603781106', 3, 30, '', '', '', '', '', '', '', 1, 7, 'catalog/items/strawberry.jpg', 0, 1, '300.0000', 0, 0, '2020-01-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 12, '2009-02-03 16:06:50', '2020-01-17 01:12:04'),
(101, 'Lemon', '919603781106', 1, 20, '', '', '', '', '', '', '', 1, 7, 'catalog/items/lemon.jpg', 0, 1, '400.0000', 0, 0, '2020-01-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 13, '2009-02-03 16:06:50', '2020-01-17 01:54:52'),
(106, 'Black Pepper', '917989000913', 10, 11, '', '', '', '', '', '', '', 1, 7, 'catalog/items/blackpepper.jpg', 0, 1, '12235.0000', 0, 0, '2020-01-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(113, 'Tomato', '917989000913', 7, 20, '', '', '', '', '', '', '', 1, 7, 'catalog/items/tomato.jpg', 0, 1, '3500.0000', 0, 0, '2020-01-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(114, 'Onion', '917989000913', 6, 28, '', '', '', '', '', '', '', 1, 7, 'catalog/items/onion.jpg', 0, 1, '10000.0000', 0, 0, '2020-01-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(115, 'Oats', '918143515536', 4, 10, '', '', '', '', '', '', '', 0, 7, 'catalog/items/oats.jpg', 0, 1, '3000.0000', 0, 0, '2020-01-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 2, '2009-02-03 16:06:50', '2009-02-03 16:06:50'),
(116, 'Ilaichi', '919618212278', 9, 30, '', '', '', '', '', '', '', 1, 7, 'catalog/items/ilaichi.jpg', 0, 1, '4000.0000', 0, 0, '2020-01-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2009-02-03 16:06:50', '2009-02-03 16:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(109, 1, 'Black Pepper(11Kg)', '', '', 'Black Pepper', '', ''),
(0, 1, 'strawberry(30 Kg)', '', '', 'Lemon', '', ''),
(104, 1, 'strawberry(40 Kg)', '', '', 'strawberry', '', ''),
(107, 1, 'Black Pepper(11Kg)', '', '', 'Black Pepper', '', ''),
(108, 1, 'Black Pepper(11Kg)', '', '', 'Black Pepper', '', ''),
(106, 1, 'Black Pepper(11Kg)', '', '', 'Black Pepper', '', ''),
(103, 1, 'Capsicum(30 Kg)', '', '', 'Capsicum', '', ''),
(105, 1, 'Red MIrchi(55Kg)', '', '', 'Red MIrchi', '', ''),
(100, 1, 'strawberry(30 Kg)', '', '', 'strawberry', '', ''),
(101, 1, 'Lemon(20 Kg)', '', '', 'Lemon', '', ''),
(110, 1, 'Black Pepper(11Kg)', '', '', 'Black Pepper', '', ''),
(111, 1, 'Black Pepper(12 Kg)', '', '', 'Black Pepper', '', ''),
(112, 1, 'Black Pepper(11Kg)', '', '', 'Black Pepper', '', ''),
(113, 1, 'Tomato(20Kg)', '', '', 'Tomato', '', ''),
(114, 1, 'Onion(28Kg)', '', '', 'Onion', '', ''),
(115, 1, 'Oats(10Kg)', '', '', 'Oats', '', ''),
(116, 1, 'Ilaichi(30Kg)', '', '', 'Ilaichi', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2352 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(100, 61),
(101, 59),
(103, 62),
(104, 61),
(105, 63),
(106, 63),
(107, 63),
(108, 63),
(109, 63),
(110, 63),
(111, 63),
(112, 63),
(113, 62),
(114, 62),
(115, 69),
(116, 63);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(61, 0, 0),
(109, 0, 0),
(106, 0, 0),
(104, 0, 0),
(0, 0, 0),
(103, 0, 0),
(100, 0, 0),
(112, 0, 0),
(111, 0, 0),
(108, 0, 0),
(105, 0, 0),
(101, 0, 0),
(110, 0, 0),
(107, 0, 0),
(113, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(0, 0),
(61, 0),
(100, 0),
(101, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 110, 2, 'Avvaru Krishna Kanth', 'Thank youThank youThank youThank youThank you', 3, 0, '2020-01-21 23:55:11', '0000-00-00 00:00:00'),
(2, 110, 2, 'Avvaru Krishna Kanth', 'hgftutfkutfktfyktfytfktyfku', 5, 0, '2020-01-21 23:55:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

DROP TABLE IF EXISTS `oc_seo_url`;
CREATE TABLE IF NOT EXISTS `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=844 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(772, 0, 1, 'information_id=4', 'about_us'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

DROP TABLE IF EXISTS `oc_session`;
CREATE TABLE IF NOT EXISTS `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('0086c552e4dccd4f01cfd94dd9', '{\"language\":\"en-gb\",\"currency\":\"INR\",\"customer_id\":\"2\",\"shipping_address\":false}', '2020-01-14 06:29:39'),
('081a15b0599b1b0866dd7b3081', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-25 17:36:15'),
('0d124f660a078923ea58ebc948', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-25 17:37:52'),
('40543f1175e28c01fd8f6e4bf0', '{\"api_id\":\"1\"}', '2020-01-16 19:04:36');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('456890465919b5a03f2743a1eb', '{\"user_id\":\"1\",\"user_token\":\"0cUUGA68Z4eoWYQPbvwIsYejV9jfbYDc\",\"language\":\"en-gb\",\"currency\":\"INR\",\"d_quickcheckout_debug\":\"0\",\"current_setting_id\":1,\"account\":\"logged\",\"d_quickcheckout\":{\"version\":\"\",\"name\":\"01\\/16\\/2020 07:00:23 pm\",\"general\":{\"enable\":0,\"min_order\":{\"value\":\"0\",\"text\":\"You must have a sum more then %s to make an order     \"},\"min_quantity\":{\"value\":\"0\",\"text\":\"You must have a quantity more then %s to make an order   \"},\"main_checkout\":1,\"social_login_style\":\"icons\",\"store_id\":0,\"clear_session\":\"0\",\"login_refresh\":\"1\",\"settings\":{\"value\":0,\"bulk\":\"\"},\"social_login\":0,\"analytics_event\":\"0\",\"loader\":\"catalog\\/d_quickcheckout\\/svg-loaders\\/puff.svg\",\"compress\":\"1\",\"update_mini_cart\":\"1\",\"default_email\":\"admin@gmail.com\",\"config\":\"d_quickcheckout\",\"debug\":\"0\"},\"design\":{\"theme\":\"default\",\"column_width\":{\"1\":\"4\",\"2\":\"4\",\"3\":\"4\",\"4\":\"8\"},\"login_style\":\"popup\",\"address_style\":\"radio\",\"placeholder\":1,\"breadcrumb\":1,\"block_style\":\"row\",\"uniform\":0,\"max_width\":\"\",\"only_quickcheckout\":0,\"telephone_countries\":\"\",\"telephone_preferred_countries\":\"\",\"telephone_validation\":0,\"cart_image_size\":{\"width\":80,\"height\":80},\"custom_style\":\"\",\"bootstrap\":1,\"autocomplete\":1},\"account\":{\"register\":{\"display\":1,\"login\":{\"id\":\"login\",\"icon\":\"fa fa-user\",\"description\":\"\",\"sort_order\":1,\"column\":1,\"row\":1,\"width\":\"50\",\"default_option\":\"guest\",\"option\":{\"register\":{\"title\":\"Register Account\",\"description\":\"By creating an account you will be able to shop faster, be up to date on an order\'s status, and keep track of the orders you have previously made.\",\"display\":1},\"guest\":{\"title\":\"Guest Checkout\",\"description\":\"Use guest checkout to buy without creating an account\",\"display\":1},\"login\":{\"title\":\"Login\",\"display\":1}}},\"payment_address\":{\"display\":1,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":0,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"email\":{\"display\":1,\"require\":1,\"error\":{\"0\":{\"min_length\":3,\"max_length\":96,\"text\":\"Sorry, but you need to have the length of the text more then 3 and less then 96 \"},\"2\":{\"email_exists\":true,\"text\":\"Warning: E-Mail Address is already registered!\"},\"3\":{\"not_empty\":true,\"text\":\"E-Mail address does not appear to be valid!\"}},\"value\":\"\",\"id\":\"email\",\"title\":\"E-Mail\",\"tooltip\":\"\",\"type\":\"email\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"email_confirm\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"email_confirm\",\"title\":\"Confirm E-mail\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_email\",\"text\":\"Email confirmation does not match email!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"heading\":{\"display\":1,\"value\":\"\",\"id\":\"heading\",\"title\":\"Your Address\",\"type\":\"heading\",\"sort_order\":8,\"class\":\"\"},\"telephone\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"telephone\",\"title\":\"Telephone\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"},{\"telephone\":true,\"text\":\"Please enter a valid telephone number\"}],\"placeholder\":\"050 123 45 54\",\"type\":\"tel\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"fax\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"fax\",\"title\":\"Fax:\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"password\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"password\",\"title\":\"Password\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":20,\"text\":\"Password must be between 4 and 20 characters!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":6,\"class\":\"\"},\"confirm\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"confirm\",\"title\":\"Password Confirm\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_password\",\"text\":\"Password confirmation does not match password!\"},{\"min_length\":\"1\",\"text\":\"Password confirmation does not match password!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":7,\"class\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":34,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"mask\":\"\"},\"customer_group_id\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"customer_group_id\",\"title\":\"Buyer Group\",\"tooltip\":\"\",\"type\":\"radio\",\"refresh\":\"2\",\"custom\":0,\"sort_order\":10,\"class\":\"\",\"options\":[{\"customer_group_id\":\"1\",\"approval\":\"0\",\"sort_order\":\"1\",\"language_id\":\"1\",\"name\":\"Default\",\"description\":\"test\",\"value\":\"1\",\"title\":\"Default\"}]},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":11,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":12,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":13,\"class\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":14,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":15,\"class\":\"country\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":16,\"class\":\"zone\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]},\"newsletter\":{\"display\":1,\"require\":0,\"value\":\"1\",\"id\":\"newsletter\",\"title\":\"I wish to subscribe to the Your Store newsletter.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"You must subsribe to our newsletter to make the order\"}],\"type\":\"checkbox\",\"custom\":0,\"class\":\"\",\"refresh\":\"0\",\"sort_order\":17},\"shipping_address\":{\"display\":1,\"value\":1,\"id\":\"shipping_address\",\"title\":\"My delivery and billing addresses are the same.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"error_step_payment_address_fields_shipping_address\"}],\"type\":\"checkbox\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":18,\"class\":\"\"},\"agree\":{\"display\":1,\"require\":1,\"value\":\"0\",\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=3\\\" class=\\\"agree\\\"><b>Privacy Policy<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Privacy Policy!\",\"information_id\":\"3\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":19,\"class\":\"\",\"information_id\":\"3\"}},\"id\":\"payment_address\",\"title\":\"Payment details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"2\",\"column\":1,\"row\":2,\"width\":\"50\"},\"shipping_address\":{\"display\":1,\"require\":0,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":6,\"class\":\"\",\"mask\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":7,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":8,\"class\":\"\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]}},\"id\":\"shipping_address\",\"title\":\"Delivery details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"3\",\"column\":1,\"row\":3,\"width\":\"30\"},\"shipping_method\":{\"id\":\"shipping_method\",\"title\":\"Shipping method\",\"description\":\"\",\"icon\":\"fa fa-truck\",\"sort_order\":4,\"column\":2,\"row\":1,\"display\":1,\"input_style\":\"radio\",\"display_title\":1,\"display_desciption\":1,\"display_options\":1,\"width\":\"30\",\"default_option\":\"\"},\"payment_method\":{\"id\":\"payment_method\",\"title\":\"Payment method\",\"description\":\"\",\"icon\":\"fa fa-credit-card\",\"sort_order\":5,\"column\":3,\"row\":1,\"display\":1,\"display_options\":1,\"display_images\":1,\"input_style\":\"radio\",\"display_logos\":1,\"width\":\"30\",\"default_option\":\"\"},\"cart\":{\"display\":1,\"option\":{\"voucher\":{\"display\":1,\"value\":\"\",\"id\":\"voucher\",\"title\":\"voucher\",\"tooltip\":\"voucher\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"coupon\":{\"display\":1,\"value\":\"\",\"id\":\"coupon\",\"title\":\"coupon\",\"tooltip\":\"coupon\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"reward\":{\"display\":1,\"value\":\"\",\"id\":\"reward\",\"title\":\"reward\",\"tooltip\":\"reward\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"}},\"columns\":{\"image\":1,\"name\":1,\"model\":0,\"quantity\":1,\"price\":1,\"total\":1},\"id\":\"cart\",\"title\":\"Shopping cart\",\"description\":\"\",\"icon\":\"fa fa-shopping-cart\",\"sort_order\":6,\"column\":4,\"row\":2,\"display_title\":1,\"display_description\":1,\"width\":\"50\"},\"confirm\":{\"display\":1,\"fields\":{\"comment\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"comment\",\"title\":\"Add Comments About Your Order\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please fill in the comment to the order\"}],\"type\":\"textarea\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":0},\"agree\":{\"display\":1,\"require\":1,\"value\":0,\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=5\\\" class=\\\"agree\\\"><b>Terms &amp; Conditions<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Terms &amp; Conditions!\",\"information_id\":\"5\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":1,\"information_id\":\"5\"}},\"id\":\"confirm\",\"icon\":\"\",\"display_confirm\":1,\"sort_order\":8,\"column\":4,\"row\":2,\"width\":\"50\"},\"payment\":{\"id\":\"payment\",\"title\":\"\",\"icon\":\"\",\"sort_order\":7,\"column\":4,\"row\":2,\"default_payment_popup\":0,\"payment_popups\":[],\"width\":\"50\"}},\"guest\":{\"display\":1,\"login\":{\"id\":\"login\",\"icon\":\"fa fa-user\",\"description\":\"\",\"sort_order\":1,\"column\":1,\"row\":1,\"width\":\"50\",\"default_option\":\"guest\",\"option\":{\"register\":{\"title\":\"Register Account\",\"description\":\"By creating an account you will be able to shop faster, be up to date on an order\'s status, and keep track of the orders you have previously made.\",\"display\":1},\"guest\":{\"title\":\"Guest Checkout\",\"description\":\"Use guest checkout to buy without creating an account\",\"display\":1},\"login\":{\"title\":\"Login\",\"display\":1}}},\"payment_address\":{\"display\":1,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":0,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"email\":{\"display\":1,\"require\":1,\"error\":[{\"min_length\":3,\"max_length\":96,\"text\":\"Sorry, but you need to have the length of the text more then 3 and less then 96 \"},{\"regex\":\"\\/^[^\\\\@]+@.*\\\\.[a-z]{2,6}$\\/i\",\"text\":\"E-Mail address does not appear to be valid!\"},{\"not_empty\":true,\"text\":\"E-Mail address does not appear to be valid!\"}],\"value\":\"\",\"id\":\"email\",\"title\":\"E-Mail\",\"tooltip\":\"\",\"type\":\"email\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"email_confirm\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"email_confirm\",\"title\":\"Confirm E-mail\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_email\",\"text\":\"Email confirmation does not match email!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"heading\":{\"display\":1,\"value\":\"\",\"id\":\"heading\",\"title\":\"Your Address\",\"type\":\"heading\",\"sort_order\":8,\"class\":\"\"},\"telephone\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"telephone\",\"title\":\"Telephone\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"},{\"telephone\":true,\"text\":\"Please enter a valid telephone number\"}],\"placeholder\":\"050 123 45 54\",\"type\":\"tel\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"fax\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"fax\",\"title\":\"Fax:\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":34,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"mask\":\"\"},\"customer_group_id\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"customer_group_id\",\"title\":\"Buyer Group\",\"tooltip\":\"\",\"type\":\"radio\",\"refresh\":\"2\",\"custom\":0,\"sort_order\":10,\"class\":\"\",\"options\":[{\"customer_group_id\":\"1\",\"approval\":\"0\",\"sort_order\":\"1\",\"language_id\":\"1\",\"name\":\"Default\",\"description\":\"test\",\"value\":\"1\",\"title\":\"Default\"}]},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":11,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":12,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":13,\"class\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":14,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":15,\"class\":\"country\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":16,\"class\":\"zone\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]},\"shipping_address\":{\"display\":1,\"value\":1,\"id\":\"shipping_address\",\"title\":\"My delivery and billing addresses are the same.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"error_step_payment_address_fields_shipping_address\"}],\"type\":\"checkbox\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":18,\"class\":\"\"},\"agree\":{\"display\":1,\"require\":1,\"value\":\"0\",\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=3\\\" class=\\\"agree\\\"><b>Privacy Policy<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Privacy Policy!\",\"information_id\":\"3\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":19,\"class\":\"\",\"information_id\":\"3\"},\"password\":{\"id\":\"password\",\"title\":\"Password\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":20,\"text\":\"Password must be between 4 and 20 characters!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":6,\"class\":\"\"},\"confirm\":{\"id\":\"confirm\",\"title\":\"Password Confirm\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_password\",\"text\":\"Password confirmation does not match password!\"},{\"min_length\":\"1\",\"text\":\"Password confirmation does not match password!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":7,\"class\":\"\"},\"newsletter\":{\"id\":\"newsletter\",\"title\":\"I wish to subscribe to the Your Store newsletter.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"You must subsribe to our newsletter to make the order\"}],\"type\":\"checkbox\",\"custom\":0,\"class\":\"\",\"refresh\":\"0\",\"sort_order\":17,\"value\":\"1\"}},\"id\":\"payment_address\",\"title\":\"Payment details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"2\",\"column\":1,\"row\":2,\"width\":\"50\"},\"shipping_address\":{\"display\":1,\"require\":0,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":6,\"class\":\"\",\"mask\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":7,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":8,\"class\":\"\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]}},\"id\":\"shipping_address\",\"title\":\"Delivery details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"3\",\"column\":1,\"row\":3,\"width\":\"30\"},\"shipping_method\":{\"id\":\"shipping_method\",\"title\":\"Shipping method\",\"description\":\"\",\"icon\":\"fa fa-truck\",\"sort_order\":4,\"column\":2,\"row\":1,\"display\":1,\"input_style\":\"radio\",\"display_title\":1,\"display_desciption\":1,\"display_options\":1,\"width\":\"30\",\"default_option\":\"\"},\"payment_method\":{\"id\":\"payment_method\",\"title\":\"Payment method\",\"description\":\"\",\"icon\":\"fa fa-credit-card\",\"sort_order\":5,\"column\":3,\"row\":1,\"display\":1,\"display_options\":1,\"display_images\":1,\"input_style\":\"radio\",\"display_logos\":1,\"width\":\"30\",\"default_option\":\"\"},\"cart\":{\"display\":1,\"option\":{\"voucher\":{\"display\":1,\"value\":\"\",\"id\":\"voucher\",\"title\":\"voucher\",\"tooltip\":\"voucher\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"coupon\":{\"display\":1,\"value\":\"\",\"id\":\"coupon\",\"title\":\"coupon\",\"tooltip\":\"coupon\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"reward\":{\"display\":1,\"value\":\"\",\"id\":\"reward\",\"title\":\"reward\",\"tooltip\":\"reward\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"}},\"columns\":{\"image\":1,\"name\":1,\"model\":0,\"quantity\":1,\"price\":1,\"total\":1},\"id\":\"cart\",\"title\":\"Shopping cart\",\"description\":\"\",\"icon\":\"fa fa-shopping-cart\",\"sort_order\":6,\"column\":4,\"row\":2,\"display_title\":1,\"display_description\":1,\"width\":\"50\"},\"confirm\":{\"display\":1,\"fields\":{\"comment\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"comment\",\"title\":\"Add Comments About Your Order\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please fill in the comment to the order\"}],\"type\":\"textarea\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":0},\"agree\":{\"display\":1,\"require\":1,\"value\":0,\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=5\\\" class=\\\"agree\\\"><b>Terms &amp; Conditions<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Terms &amp; Conditions!\",\"information_id\":\"5\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":1,\"information_id\":\"5\"}},\"id\":\"confirm\",\"icon\":\"\",\"display_confirm\":1,\"sort_order\":8,\"column\":4,\"row\":2,\"width\":\"50\"},\"payment\":{\"id\":\"payment\",\"title\":\"\",\"icon\":\"\",\"sort_order\":7,\"column\":4,\"row\":2,\"default_payment_popup\":0,\"payment_popups\":[],\"width\":\"50\"}},\"logged\":{\"login\":{\"id\":\"login\",\"icon\":\"fa fa-user\",\"description\":\"\",\"sort_order\":1,\"column\":1,\"row\":1,\"width\":\"50\",\"default_option\":\"guest\",\"option\":{\"register\":{\"title\":\"Register Account\",\"description\":\"By creating an account you will be able to shop faster, be up to date on an order\'s status, and keep track of the orders you have previously made.\",\"display\":1},\"guest\":{\"title\":\"Guest Checkout\",\"description\":\"Use guest checkout to buy without creating an account\",\"display\":1},\"login\":{\"title\":\"Login\",\"display\":1}}},\"payment_address\":{\"display\":1,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":0,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":34,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":11,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":12,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":13,\"class\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":14,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":15,\"class\":\"country\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":16,\"class\":\"zone\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]},\"shipping_address\":{\"display\":1,\"value\":1,\"id\":\"shipping_address\",\"title\":\"My delivery and billing addresses are the same.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"error_step_payment_address_fields_shipping_address\"}],\"type\":\"checkbox\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":18,\"class\":\"\"},\"address_id\":[],\"email\":{\"id\":\"email\",\"title\":\"E-Mail\",\"tooltip\":\"\",\"error\":[],\"type\":\"email\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"email_confirm\":{\"id\":\"email_confirm\",\"title\":\"Confirm E-mail\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_email\",\"text\":\"Email confirmation does not match email!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"telephone\":{\"id\":\"telephone\",\"title\":\"Telephone\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"},{\"telephone\":true,\"text\":\"Please enter a valid telephone number\"}],\"placeholder\":\"050 123 45 54\",\"type\":\"tel\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"fax\":{\"id\":\"fax\",\"title\":\"Fax:\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"password\":{\"id\":\"password\",\"title\":\"Password\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":20,\"text\":\"Password must be between 4 and 20 characters!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":6,\"class\":\"\"},\"confirm\":{\"id\":\"confirm\",\"title\":\"Password Confirm\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_password\",\"text\":\"Password confirmation does not match password!\"},{\"min_length\":\"1\",\"text\":\"Password confirmation does not match password!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":7,\"class\":\"\"},\"heading\":{\"id\":\"heading\",\"title\":\"Your Address\",\"type\":\"heading\",\"sort_order\":8,\"class\":\"\"},\"customer_group_id\":{\"id\":\"customer_group_id\",\"title\":\"Buyer Group\",\"tooltip\":\"\",\"type\":\"radio\",\"refresh\":\"2\",\"custom\":0,\"sort_order\":10,\"class\":\"\",\"options\":[{\"customer_group_id\":\"1\",\"approval\":\"0\",\"sort_order\":\"1\",\"language_id\":\"1\",\"name\":\"Default\",\"description\":\"test\",\"value\":\"1\",\"title\":\"Default\"}]},\"newsletter\":{\"id\":\"newsletter\",\"title\":\"I wish to subscribe to the Your Store newsletter.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"You must subsribe to our newsletter to make the order\"}],\"type\":\"checkbox\",\"custom\":0,\"class\":\"\",\"refresh\":\"0\",\"sort_order\":17,\"value\":\"1\"},\"agree\":{\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=3\\\" class=\\\"agree\\\"><b>Privacy Policy<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Privacy Policy!\",\"information_id\":\"3\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":19,\"class\":\"\",\"information_id\":\"3\"}},\"id\":\"payment_address\",\"title\":\"Payment details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"2\",\"column\":1,\"row\":2,\"width\":\"50\"},\"shipping_address\":{\"display\":1,\"require\":0,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":6,\"class\":\"\",\"mask\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":7,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":8,\"class\":\"\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]}},\"id\":\"shipping_address\",\"title\":\"Delivery details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"3\",\"column\":1,\"row\":3,\"width\":\"30\"},\"shipping_method\":{\"id\":\"shipping_method\",\"title\":\"Shipping method\",\"description\":\"\",\"icon\":\"fa fa-truck\",\"sort_order\":4,\"column\":2,\"row\":1,\"display\":1,\"input_style\":\"radio\",\"display_title\":1,\"display_desciption\":1,\"display_options\":1,\"width\":\"30\",\"default_option\":\"\"},\"payment_method\":{\"id\":\"payment_method\",\"title\":\"Payment method\",\"description\":\"\",\"icon\":\"fa fa-credit-card\",\"sort_order\":5,\"column\":3,\"row\":1,\"display\":1,\"display_options\":1,\"display_images\":1,\"input_style\":\"radio\",\"display_logos\":1,\"width\":\"30\",\"default_option\":\"\"},\"cart\":{\"display\":1,\"option\":{\"voucher\":{\"display\":1,\"value\":\"\",\"id\":\"voucher\",\"title\":\"voucher\",\"tooltip\":\"voucher\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"coupon\":{\"display\":1,\"value\":\"\",\"id\":\"coupon\",\"title\":\"coupon\",\"tooltip\":\"coupon\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"reward\":{\"display\":1,\"value\":\"\",\"id\":\"reward\",\"title\":\"reward\",\"tooltip\":\"reward\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"}},\"columns\":{\"image\":1,\"name\":1,\"model\":0,\"quantity\":1,\"price\":1,\"total\":1},\"id\":\"cart\",\"title\":\"Shopping cart\",\"description\":\"\",\"icon\":\"fa fa-shopping-cart\",\"sort_order\":6,\"column\":4,\"row\":2,\"display_title\":1,\"display_description\":1,\"width\":\"50\"},\"confirm\":{\"display\":1,\"fields\":{\"comment\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"comment\",\"title\":\"Add Comments About Your Order\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please fill in the comment to the order\"}],\"type\":\"textarea\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":0},\"agree\":{\"display\":1,\"require\":1,\"value\":0,\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=5\\\" class=\\\"agree\\\"><b>Terms &amp; Conditions<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Terms &amp; Conditions!\",\"information_id\":\"5\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":1,\"information_id\":\"5\"}},\"id\":\"confirm\",\"icon\":\"\",\"display_confirm\":1,\"sort_order\":8,\"column\":4,\"row\":2,\"width\":\"50\"},\"payment\":{\"id\":\"payment\",\"title\":\"\",\"icon\":\"\",\"sort_order\":7,\"column\":4,\"row\":2,\"default_payment_popup\":0,\"payment_popups\":[],\"width\":\"50\"}}},\"trigger\":\"#button-confirm, .button, .btn, .button_oc, input[type=submit]\"},\"confirm\":{\"comment\":\"\",\"agree\":\"\"},\"total\":1,\"statistic\":{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}}},\"statistic_id\":12,\"totals\":[{\"title\":\"Sub-Total\",\"text\":\"\\u20b91.00\\/-\"},{\"title\":\"Total\",\"text\":\"\\u20b91.00\\/-\"}],\"customer_id\":\"2\",\"shipping_address\":{\"firstname\":\"krishna \",\"lastname\":\"kanth\",\"company\":\"\",\"address_1\":\"1234\",\"address_2\":\"\",\"postcode\":\"534204\",\"city\":\"kkkkkk\",\"country_id\":\"99\",\"zone_id\":\"1476\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"{firstname} {lastname}{company}\\n{address_1}{address_2}\\n{city} {postcode}\\n{zone}\\n{country}\",\"custom_field\":[],\"zone\":\"Andhra Pradesh\",\"zone_code\":\"AP\",\"address_id\":\"2\"},\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"krishna \",\"lastname\":\"kanth\",\"email\":\"\",\"password\":\"\",\"telephone\":\"\",\"fax\":\"\",\"custom_field\":[],\"shipping_address\":1},\"payment_address\":{\"firstname\":\"krishna \",\"lastname\":\"kanth\",\"email\":\"\",\"email_confirm\":\"\",\"telephone\":\"\",\"fax\":\"\",\"password\":\"\",\"confirm\":\"\",\"customer_group_id\":\"1\",\"company\":\"\",\"address_1\":\"1234\",\"address_2\":\"\",\"postcode\":\"534204\",\"city\":\"kkkkkk\",\"country_id\":\"99\",\"zone_id\":\"1476\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"{firstname} {lastname}{company}\\n{address_1}{address_2}\\n{city} {postcode}\\n{zone}\\n{country}\",\"custom_field\":[],\"zone\":\"Andhra Pradesh\",\"zone_code\":\"AP\",\"agree\":\"\",\"shipping_address\":1,\"newsletter\":\"1\",\"address_id\":\"2\"},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\u20b95.00\\/-\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\u20b95.00\\/-\"},\"comment\":\"\",\"payment_methods\":{\"payu\":{\"code\":\"payu\",\"title\":\"PayUMoney\",\"terms\":\"\",\"sort_order\":\"\"},\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\",\"image\":\"image\\/catalog\\/d_quickcheckout\\/payment\\/cod.png\"}},\"payment_method\":{\"code\":\"payu\",\"title\":\"PayUMoney\",\"terms\":\"\",\"sort_order\":\"\"},\"order_id\":15,\"recreate_order\":false}', '2020-01-21 18:50:50');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('568c31d10680a6757ff33af8e6', '{\"api_id\":\"1\"}', '2020-01-16 19:45:10'),
('57f6ed5745633363cc90336a57', '{\"api_id\":\"1\"}', '2019-10-25 17:40:09'),
('5d1735815734cf612b0105e365', '{\"api_id\":\"1\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-01-13 11:16:32');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('65b117b5270a46a18292f63595', '{\"language\":\"en-gb\",\"currency\":\"INR\",\"user_id\":\"1\",\"user_token\":\"7LgpmL0JGxVH46NbpXij5P5U9WODGkHd\",\"install\":\"mjKBCxFsYk\",\"d_quickcheckout_debug\":\"0\",\"current_setting_id\":1,\"account\":\"logged\",\"d_quickcheckout\":{\"version\":\"\",\"name\":\"01\\/16\\/2020 07:00:23 pm\",\"general\":{\"enable\":0,\"min_order\":{\"value\":\"0\",\"text\":\"You must have a sum more then %s to make an order     \"},\"min_quantity\":{\"value\":\"0\",\"text\":\"You must have a quantity more then %s to make an order   \"},\"main_checkout\":1,\"social_login_style\":\"icons\",\"store_id\":0,\"clear_session\":\"0\",\"login_refresh\":\"1\",\"settings\":{\"value\":0,\"bulk\":\"\"},\"social_login\":0,\"analytics_event\":\"0\",\"loader\":\"catalog\\/d_quickcheckout\\/svg-loaders\\/puff.svg\",\"compress\":\"1\",\"update_mini_cart\":\"1\",\"default_email\":\"admin@gmail.com\",\"config\":\"d_quickcheckout\",\"debug\":\"0\"},\"design\":{\"theme\":\"default\",\"column_width\":{\"1\":\"4\",\"2\":\"4\",\"3\":\"4\",\"4\":\"8\"},\"login_style\":\"popup\",\"address_style\":\"radio\",\"placeholder\":1,\"breadcrumb\":1,\"block_style\":\"row\",\"uniform\":0,\"max_width\":\"\",\"only_quickcheckout\":0,\"telephone_countries\":\"\",\"telephone_preferred_countries\":\"\",\"telephone_validation\":0,\"cart_image_size\":{\"width\":80,\"height\":80},\"custom_style\":\"\",\"bootstrap\":1,\"autocomplete\":1},\"account\":{\"register\":{\"display\":1,\"login\":{\"id\":\"login\",\"icon\":\"fa fa-user\",\"description\":\"\",\"sort_order\":1,\"column\":1,\"row\":1,\"width\":\"50\",\"default_option\":\"guest\",\"option\":{\"register\":{\"title\":\"Register Account\",\"description\":\"By creating an account you will be able to shop faster, be up to date on an order\'s status, and keep track of the orders you have previously made.\",\"display\":1},\"guest\":{\"title\":\"Guest Checkout\",\"description\":\"Use guest checkout to buy without creating an account\",\"display\":1},\"login\":{\"title\":\"Login\",\"display\":1}}},\"payment_address\":{\"display\":1,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":0,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"email\":{\"display\":1,\"require\":1,\"error\":{\"0\":{\"min_length\":3,\"max_length\":96,\"text\":\"Sorry, but you need to have the length of the text more then 3 and less then 96 \"},\"2\":{\"email_exists\":true,\"text\":\"Warning: E-Mail Address is already registered!\"},\"3\":{\"not_empty\":true,\"text\":\"E-Mail address does not appear to be valid!\"}},\"value\":\"\",\"id\":\"email\",\"title\":\"E-Mail\",\"tooltip\":\"\",\"type\":\"email\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"email_confirm\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"email_confirm\",\"title\":\"Confirm E-mail\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_email\",\"text\":\"Email confirmation does not match email!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"heading\":{\"display\":1,\"value\":\"\",\"id\":\"heading\",\"title\":\"Your Address\",\"type\":\"heading\",\"sort_order\":8,\"class\":\"\"},\"telephone\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"telephone\",\"title\":\"Telephone\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"},{\"telephone\":true,\"text\":\"Please enter a valid telephone number\"}],\"placeholder\":\"050 123 45 54\",\"type\":\"tel\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"fax\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"fax\",\"title\":\"Fax:\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"password\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"password\",\"title\":\"Password\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":20,\"text\":\"Password must be between 4 and 20 characters!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":6,\"class\":\"\"},\"confirm\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"confirm\",\"title\":\"Password Confirm\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_password\",\"text\":\"Password confirmation does not match password!\"},{\"min_length\":\"1\",\"text\":\"Password confirmation does not match password!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":7,\"class\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":34,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"mask\":\"\"},\"customer_group_id\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"customer_group_id\",\"title\":\"Customer Group\",\"tooltip\":\"\",\"type\":\"radio\",\"refresh\":\"2\",\"custom\":0,\"sort_order\":10,\"class\":\"\",\"options\":[{\"customer_group_id\":\"1\",\"approval\":\"0\",\"sort_order\":\"1\",\"language_id\":\"1\",\"name\":\"Default\",\"description\":\"test\",\"value\":\"1\",\"title\":\"Default\"}]},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":11,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":12,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":13,\"class\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":14,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":15,\"class\":\"country\",\"options\":[{\"name\":\"Aaland Islands\",\"iso_code_2\":\"AX\",\"iso_code_3\":\"ALA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"244\"},{\"name\":\"Afghanistan\",\"iso_code_2\":\"AF\",\"iso_code_3\":\"AFG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"1\"},{\"name\":\"Albania\",\"iso_code_2\":\"AL\",\"iso_code_3\":\"ALB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"2\"},{\"name\":\"Algeria\",\"iso_code_2\":\"DZ\",\"iso_code_3\":\"DZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"3\"},{\"name\":\"American Samoa\",\"iso_code_2\":\"AS\",\"iso_code_3\":\"ASM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"4\"},{\"name\":\"Andorra\",\"iso_code_2\":\"AD\",\"iso_code_3\":\"AND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"5\"},{\"name\":\"Angola\",\"iso_code_2\":\"AO\",\"iso_code_3\":\"AGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"6\"},{\"name\":\"Anguilla\",\"iso_code_2\":\"AI\",\"iso_code_3\":\"AIA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"7\"},{\"name\":\"Antarctica\",\"iso_code_2\":\"AQ\",\"iso_code_3\":\"ATA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"8\"},{\"name\":\"Antigua and Barbuda\",\"iso_code_2\":\"AG\",\"iso_code_3\":\"ATG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"9\"},{\"name\":\"Argentina\",\"iso_code_2\":\"AR\",\"iso_code_3\":\"ARG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"10\"},{\"name\":\"Armenia\",\"iso_code_2\":\"AM\",\"iso_code_3\":\"ARM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"11\"},{\"name\":\"Aruba\",\"iso_code_2\":\"AW\",\"iso_code_3\":\"ABW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"12\"},{\"name\":\"Ascension Island (British)\",\"iso_code_2\":\"AC\",\"iso_code_3\":\"ASC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"252\"},{\"name\":\"Australia\",\"iso_code_2\":\"AU\",\"iso_code_3\":\"AUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"13\"},{\"name\":\"Austria\",\"iso_code_2\":\"AT\",\"iso_code_3\":\"AUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"14\"},{\"name\":\"Azerbaijan\",\"iso_code_2\":\"AZ\",\"iso_code_3\":\"AZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"15\"},{\"name\":\"Bahamas\",\"iso_code_2\":\"BS\",\"iso_code_3\":\"BHS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"16\"},{\"name\":\"Bahrain\",\"iso_code_2\":\"BH\",\"iso_code_3\":\"BHR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"17\"},{\"name\":\"Bangladesh\",\"iso_code_2\":\"BD\",\"iso_code_3\":\"BGD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"18\"},{\"name\":\"Barbados\",\"iso_code_2\":\"BB\",\"iso_code_3\":\"BRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"19\"},{\"name\":\"Belarus\",\"iso_code_2\":\"BY\",\"iso_code_3\":\"BLR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"20\"},{\"name\":\"Belgium\",\"iso_code_2\":\"BE\",\"iso_code_3\":\"BEL\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"21\"},{\"name\":\"Belize\",\"iso_code_2\":\"BZ\",\"iso_code_3\":\"BLZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"22\"},{\"name\":\"Benin\",\"iso_code_2\":\"BJ\",\"iso_code_3\":\"BEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"23\"},{\"name\":\"Bermuda\",\"iso_code_2\":\"BM\",\"iso_code_3\":\"BMU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"24\"},{\"name\":\"Bhutan\",\"iso_code_2\":\"BT\",\"iso_code_3\":\"BTN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"25\"},{\"name\":\"Bolivia\",\"iso_code_2\":\"BO\",\"iso_code_3\":\"BOL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"26\"},{\"name\":\"Bonaire, Sint Eustatius and Saba\",\"iso_code_2\":\"BQ\",\"iso_code_3\":\"BES\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"245\"},{\"name\":\"Bosnia and Herzegovina\",\"iso_code_2\":\"BA\",\"iso_code_3\":\"BIH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"27\"},{\"name\":\"Botswana\",\"iso_code_2\":\"BW\",\"iso_code_3\":\"BWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"28\"},{\"name\":\"Bouvet Island\",\"iso_code_2\":\"BV\",\"iso_code_3\":\"BVT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"29\"},{\"name\":\"Brazil\",\"iso_code_2\":\"BR\",\"iso_code_3\":\"BRA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"30\"},{\"name\":\"British Indian Ocean Territory\",\"iso_code_2\":\"IO\",\"iso_code_3\":\"IOT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"31\"},{\"name\":\"Brunei Darussalam\",\"iso_code_2\":\"BN\",\"iso_code_3\":\"BRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"32\"},{\"name\":\"Bulgaria\",\"iso_code_2\":\"BG\",\"iso_code_3\":\"BGR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"33\"},{\"name\":\"Burkina Faso\",\"iso_code_2\":\"BF\",\"iso_code_3\":\"BFA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"34\"},{\"name\":\"Burundi\",\"iso_code_2\":\"BI\",\"iso_code_3\":\"BDI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"35\"},{\"name\":\"Cambodia\",\"iso_code_2\":\"KH\",\"iso_code_3\":\"KHM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"36\"},{\"name\":\"Cameroon\",\"iso_code_2\":\"CM\",\"iso_code_3\":\"CMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"37\"},{\"name\":\"Canada\",\"iso_code_2\":\"CA\",\"iso_code_3\":\"CAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"38\"},{\"name\":\"Canary Islands\",\"iso_code_2\":\"IC\",\"iso_code_3\":\"ICA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"251\"},{\"name\":\"Cape Verde\",\"iso_code_2\":\"CV\",\"iso_code_3\":\"CPV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"39\"},{\"name\":\"Cayman Islands\",\"iso_code_2\":\"KY\",\"iso_code_3\":\"CYM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"40\"},{\"name\":\"Central African Republic\",\"iso_code_2\":\"CF\",\"iso_code_3\":\"CAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"41\"},{\"name\":\"Chad\",\"iso_code_2\":\"TD\",\"iso_code_3\":\"TCD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"42\"},{\"name\":\"Chile\",\"iso_code_2\":\"CL\",\"iso_code_3\":\"CHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"43\"},{\"name\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"44\"},{\"name\":\"Christmas Island\",\"iso_code_2\":\"CX\",\"iso_code_3\":\"CXR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"45\"},{\"name\":\"Cocos (Keeling) Islands\",\"iso_code_2\":\"CC\",\"iso_code_3\":\"CCK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"46\"},{\"name\":\"Colombia\",\"iso_code_2\":\"CO\",\"iso_code_3\":\"COL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"47\"},{\"name\":\"Comoros\",\"iso_code_2\":\"KM\",\"iso_code_3\":\"COM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"48\"},{\"name\":\"Congo\",\"iso_code_2\":\"CG\",\"iso_code_3\":\"COG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"49\"},{\"name\":\"Cook Islands\",\"iso_code_2\":\"CK\",\"iso_code_3\":\"COK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"50\"},{\"name\":\"Costa Rica\",\"iso_code_2\":\"CR\",\"iso_code_3\":\"CRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"51\"},{\"name\":\"Cote D\'Ivoire\",\"iso_code_2\":\"CI\",\"iso_code_3\":\"CIV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"52\"},{\"name\":\"Croatia\",\"iso_code_2\":\"HR\",\"iso_code_3\":\"HRV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"53\"},{\"name\":\"Cuba\",\"iso_code_2\":\"CU\",\"iso_code_3\":\"CUB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"54\"},{\"name\":\"Curacao\",\"iso_code_2\":\"CW\",\"iso_code_3\":\"CUW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"246\"},{\"name\":\"Cyprus\",\"iso_code_2\":\"CY\",\"iso_code_3\":\"CYP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"55\"},{\"name\":\"Czech Republic\",\"iso_code_2\":\"CZ\",\"iso_code_3\":\"CZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"56\"},{\"name\":\"Democratic Republic of Congo\",\"iso_code_2\":\"CD\",\"iso_code_3\":\"COD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"237\"},{\"name\":\"Denmark\",\"iso_code_2\":\"DK\",\"iso_code_3\":\"DNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"57\"},{\"name\":\"Djibouti\",\"iso_code_2\":\"DJ\",\"iso_code_3\":\"DJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"58\"},{\"name\":\"Dominica\",\"iso_code_2\":\"DM\",\"iso_code_3\":\"DMA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"59\"},{\"name\":\"Dominican Republic\",\"iso_code_2\":\"DO\",\"iso_code_3\":\"DOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"60\"},{\"name\":\"East Timor\",\"iso_code_2\":\"TL\",\"iso_code_3\":\"TLS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"61\"},{\"name\":\"Ecuador\",\"iso_code_2\":\"EC\",\"iso_code_3\":\"ECU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"62\"},{\"name\":\"Egypt\",\"iso_code_2\":\"EG\",\"iso_code_3\":\"EGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"63\"},{\"name\":\"El Salvador\",\"iso_code_2\":\"SV\",\"iso_code_3\":\"SLV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"64\"},{\"name\":\"Equatorial Guinea\",\"iso_code_2\":\"GQ\",\"iso_code_3\":\"GNQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"65\"},{\"name\":\"Eritrea\",\"iso_code_2\":\"ER\",\"iso_code_3\":\"ERI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"66\"},{\"name\":\"Estonia\",\"iso_code_2\":\"EE\",\"iso_code_3\":\"EST\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"67\"},{\"name\":\"Ethiopia\",\"iso_code_2\":\"ET\",\"iso_code_3\":\"ETH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"68\"},{\"name\":\"Falkland Islands (Malvinas)\",\"iso_code_2\":\"FK\",\"iso_code_3\":\"FLK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"69\"},{\"name\":\"Faroe Islands\",\"iso_code_2\":\"FO\",\"iso_code_3\":\"FRO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"70\"},{\"name\":\"Fiji\",\"iso_code_2\":\"FJ\",\"iso_code_3\":\"FJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"71\"},{\"name\":\"Finland\",\"iso_code_2\":\"FI\",\"iso_code_3\":\"FIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"72\"},{\"name\":\"France, Metropolitan\",\"iso_code_2\":\"FR\",\"iso_code_3\":\"FRA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"74\"},{\"name\":\"French Guiana\",\"iso_code_2\":\"GF\",\"iso_code_3\":\"GUF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"75\"},{\"name\":\"French Polynesia\",\"iso_code_2\":\"PF\",\"iso_code_3\":\"PYF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"76\"},{\"name\":\"French Southern Territories\",\"iso_code_2\":\"TF\",\"iso_code_3\":\"ATF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"77\"},{\"name\":\"FYROM\",\"iso_code_2\":\"MK\",\"iso_code_3\":\"MKD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"126\"},{\"name\":\"Gabon\",\"iso_code_2\":\"GA\",\"iso_code_3\":\"GAB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"78\"},{\"name\":\"Gambia\",\"iso_code_2\":\"GM\",\"iso_code_3\":\"GMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"79\"},{\"name\":\"Georgia\",\"iso_code_2\":\"GE\",\"iso_code_3\":\"GEO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"80\"},{\"name\":\"Germany\",\"iso_code_2\":\"DE\",\"iso_code_3\":\"DEU\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"81\"},{\"name\":\"Ghana\",\"iso_code_2\":\"GH\",\"iso_code_3\":\"GHA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"82\"},{\"name\":\"Gibraltar\",\"iso_code_2\":\"GI\",\"iso_code_3\":\"GIB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"83\"},{\"name\":\"Greece\",\"iso_code_2\":\"GR\",\"iso_code_3\":\"GRC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"84\"},{\"name\":\"Greenland\",\"iso_code_2\":\"GL\",\"iso_code_3\":\"GRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"85\"},{\"name\":\"Grenada\",\"iso_code_2\":\"GD\",\"iso_code_3\":\"GRD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"86\"},{\"name\":\"Guadeloupe\",\"iso_code_2\":\"GP\",\"iso_code_3\":\"GLP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"87\"},{\"name\":\"Guam\",\"iso_code_2\":\"GU\",\"iso_code_3\":\"GUM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"88\"},{\"name\":\"Guatemala\",\"iso_code_2\":\"GT\",\"iso_code_3\":\"GTM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"89\"},{\"name\":\"Guernsey\",\"iso_code_2\":\"GG\",\"iso_code_3\":\"GGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"256\"},{\"name\":\"Guinea\",\"iso_code_2\":\"GN\",\"iso_code_3\":\"GIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"90\"},{\"name\":\"Guinea-Bissau\",\"iso_code_2\":\"GW\",\"iso_code_3\":\"GNB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"91\"},{\"name\":\"Guyana\",\"iso_code_2\":\"GY\",\"iso_code_3\":\"GUY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"92\"},{\"name\":\"Haiti\",\"iso_code_2\":\"HT\",\"iso_code_3\":\"HTI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"93\"},{\"name\":\"Heard and Mc Donald Islands\",\"iso_code_2\":\"HM\",\"iso_code_3\":\"HMD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"94\"},{\"name\":\"Honduras\",\"iso_code_2\":\"HN\",\"iso_code_3\":\"HND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"95\"},{\"name\":\"Hong Kong\",\"iso_code_2\":\"HK\",\"iso_code_3\":\"HKG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"96\"},{\"name\":\"Hungary\",\"iso_code_2\":\"HU\",\"iso_code_3\":\"HUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"97\"},{\"name\":\"Iceland\",\"iso_code_2\":\"IS\",\"iso_code_3\":\"ISL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"98\"},{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"},{\"name\":\"Indonesia\",\"iso_code_2\":\"ID\",\"iso_code_3\":\"IDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"100\"},{\"name\":\"Iran (Islamic Republic of)\",\"iso_code_2\":\"IR\",\"iso_code_3\":\"IRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"101\"},{\"name\":\"Iraq\",\"iso_code_2\":\"IQ\",\"iso_code_3\":\"IRQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"102\"},{\"name\":\"Ireland\",\"iso_code_2\":\"IE\",\"iso_code_3\":\"IRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"103\"},{\"name\":\"Isle of Man\",\"iso_code_2\":\"IM\",\"iso_code_3\":\"IMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"254\"},{\"name\":\"Israel\",\"iso_code_2\":\"IL\",\"iso_code_3\":\"ISR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"104\"},{\"name\":\"Italy\",\"iso_code_2\":\"IT\",\"iso_code_3\":\"ITA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"105\"},{\"name\":\"Jamaica\",\"iso_code_2\":\"JM\",\"iso_code_3\":\"JAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"106\"},{\"name\":\"Japan\",\"iso_code_2\":\"JP\",\"iso_code_3\":\"JPN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"107\"},{\"name\":\"Jersey\",\"iso_code_2\":\"JE\",\"iso_code_3\":\"JEY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"257\"},{\"name\":\"Jordan\",\"iso_code_2\":\"JO\",\"iso_code_3\":\"JOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"108\"},{\"name\":\"Kazakhstan\",\"iso_code_2\":\"KZ\",\"iso_code_3\":\"KAZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"109\"},{\"name\":\"Kenya\",\"iso_code_2\":\"KE\",\"iso_code_3\":\"KEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"110\"},{\"name\":\"Kiribati\",\"iso_code_2\":\"KI\",\"iso_code_3\":\"KIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"111\"},{\"name\":\"Kosovo, Republic of\",\"iso_code_2\":\"XK\",\"iso_code_3\":\"UNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"253\"},{\"name\":\"Kuwait\",\"iso_code_2\":\"KW\",\"iso_code_3\":\"KWT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"114\"},{\"name\":\"Kyrgyzstan\",\"iso_code_2\":\"KG\",\"iso_code_3\":\"KGZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"115\"},{\"name\":\"Lao People\'s Democratic Republic\",\"iso_code_2\":\"LA\",\"iso_code_3\":\"LAO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"116\"},{\"name\":\"Latvia\",\"iso_code_2\":\"LV\",\"iso_code_3\":\"LVA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"117\"},{\"name\":\"Lebanon\",\"iso_code_2\":\"LB\",\"iso_code_3\":\"LBN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"118\"},{\"name\":\"Lesotho\",\"iso_code_2\":\"LS\",\"iso_code_3\":\"LSO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"119\"},{\"name\":\"Liberia\",\"iso_code_2\":\"LR\",\"iso_code_3\":\"LBR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"120\"},{\"name\":\"Libyan Arab Jamahiriya\",\"iso_code_2\":\"LY\",\"iso_code_3\":\"LBY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"121\"},{\"name\":\"Liechtenstein\",\"iso_code_2\":\"LI\",\"iso_code_3\":\"LIE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"122\"},{\"name\":\"Lithuania\",\"iso_code_2\":\"LT\",\"iso_code_3\":\"LTU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"123\"},{\"name\":\"Luxembourg\",\"iso_code_2\":\"LU\",\"iso_code_3\":\"LUX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"124\"},{\"name\":\"Macau\",\"iso_code_2\":\"MO\",\"iso_code_3\":\"MAC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"125\"},{\"name\":\"Madagascar\",\"iso_code_2\":\"MG\",\"iso_code_3\":\"MDG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"127\"},{\"name\":\"Malawi\",\"iso_code_2\":\"MW\",\"iso_code_3\":\"MWI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"128\"},{\"name\":\"Malaysia\",\"iso_code_2\":\"MY\",\"iso_code_3\":\"MYS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"129\"},{\"name\":\"Maldives\",\"iso_code_2\":\"MV\",\"iso_code_3\":\"MDV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"130\"},{\"name\":\"Mali\",\"iso_code_2\":\"ML\",\"iso_code_3\":\"MLI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"131\"},{\"name\":\"Malta\",\"iso_code_2\":\"MT\",\"iso_code_3\":\"MLT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"132\"},{\"name\":\"Marshall Islands\",\"iso_code_2\":\"MH\",\"iso_code_3\":\"MHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"133\"},{\"name\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"134\"},{\"name\":\"Mauritania\",\"iso_code_2\":\"MR\",\"iso_code_3\":\"MRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"135\"},{\"name\":\"Mauritius\",\"iso_code_2\":\"MU\",\"iso_code_3\":\"MUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"136\"},{\"name\":\"Mayotte\",\"iso_code_2\":\"YT\",\"iso_code_3\":\"MYT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"137\"},{\"name\":\"Mexico\",\"iso_code_2\":\"MX\",\"iso_code_3\":\"MEX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"138\"},{\"name\":\"Micronesia, Federated States of\",\"iso_code_2\":\"FM\",\"iso_code_3\":\"FSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"139\"},{\"name\":\"Moldova, Republic of\",\"iso_code_2\":\"MD\",\"iso_code_3\":\"MDA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"140\"},{\"name\":\"Monaco\",\"iso_code_2\":\"MC\",\"iso_code_3\":\"MCO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"141\"},{\"name\":\"Mongolia\",\"iso_code_2\":\"MN\",\"iso_code_3\":\"MNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"142\"},{\"name\":\"Montenegro\",\"iso_code_2\":\"ME\",\"iso_code_3\":\"MNE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"242\"},{\"name\":\"Montserrat\",\"iso_code_2\":\"MS\",\"iso_code_3\":\"MSR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"143\"},{\"name\":\"Morocco\",\"iso_code_2\":\"MA\",\"iso_code_3\":\"MAR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"144\"},{\"name\":\"Mozambique\",\"iso_code_2\":\"MZ\",\"iso_code_3\":\"MOZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"145\"},{\"name\":\"Myanmar\",\"iso_code_2\":\"MM\",\"iso_code_3\":\"MMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"146\"},{\"name\":\"Namibia\",\"iso_code_2\":\"NA\",\"iso_code_3\":\"NAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"147\"},{\"name\":\"Nauru\",\"iso_code_2\":\"NR\",\"iso_code_3\":\"NRU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"148\"},{\"name\":\"Nepal\",\"iso_code_2\":\"NP\",\"iso_code_3\":\"NPL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"149\"},{\"name\":\"Netherlands\",\"iso_code_2\":\"NL\",\"iso_code_3\":\"NLD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"150\"},{\"name\":\"Netherlands Antilles\",\"iso_code_2\":\"AN\",\"iso_code_3\":\"ANT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"151\"},{\"name\":\"New Caledonia\",\"iso_code_2\":\"NC\",\"iso_code_3\":\"NCL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"152\"},{\"name\":\"New Zealand\",\"iso_code_2\":\"NZ\",\"iso_code_3\":\"NZL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"153\"},{\"name\":\"Nicaragua\",\"iso_code_2\":\"NI\",\"iso_code_3\":\"NIC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"154\"},{\"name\":\"Niger\",\"iso_code_2\":\"NE\",\"iso_code_3\":\"NER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"155\"},{\"name\":\"Nigeria\",\"iso_code_2\":\"NG\",\"iso_code_3\":\"NGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"156\"},{\"name\":\"Niue\",\"iso_code_2\":\"NU\",\"iso_code_3\":\"NIU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"157\"},{\"name\":\"Norfolk Island\",\"iso_code_2\":\"NF\",\"iso_code_3\":\"NFK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"158\"},{\"name\":\"North Korea\",\"iso_code_2\":\"KP\",\"iso_code_3\":\"PRK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"112\"},{\"name\":\"Northern Mariana Islands\",\"iso_code_2\":\"MP\",\"iso_code_3\":\"MNP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"159\"},{\"name\":\"Norway\",\"iso_code_2\":\"NO\",\"iso_code_3\":\"NOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"160\"},{\"name\":\"Oman\",\"iso_code_2\":\"OM\",\"iso_code_3\":\"OMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"161\"},{\"name\":\"Pakistan\",\"iso_code_2\":\"PK\",\"iso_code_3\":\"PAK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"162\"},{\"name\":\"Palau\",\"iso_code_2\":\"PW\",\"iso_code_3\":\"PLW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"163\"},{\"name\":\"Palestinian Territory, Occupied\",\"iso_code_2\":\"PS\",\"iso_code_3\":\"PSE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"247\"},{\"name\":\"Panama\",\"iso_code_2\":\"PA\",\"iso_code_3\":\"PAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"164\"},{\"name\":\"Papua New Guinea\",\"iso_code_2\":\"PG\",\"iso_code_3\":\"PNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"165\"},{\"name\":\"Paraguay\",\"iso_code_2\":\"PY\",\"iso_code_3\":\"PRY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"166\"},{\"name\":\"Peru\",\"iso_code_2\":\"PE\",\"iso_code_3\":\"PER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"167\"},{\"name\":\"Philippines\",\"iso_code_2\":\"PH\",\"iso_code_3\":\"PHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"168\"},{\"name\":\"Pitcairn\",\"iso_code_2\":\"PN\",\"iso_code_3\":\"PCN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"169\"},{\"name\":\"Poland\",\"iso_code_2\":\"PL\",\"iso_code_3\":\"POL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"170\"},{\"name\":\"Portugal\",\"iso_code_2\":\"PT\",\"iso_code_3\":\"PRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"171\"},{\"name\":\"Puerto Rico\",\"iso_code_2\":\"PR\",\"iso_code_3\":\"PRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"172\"},{\"name\":\"Qatar\",\"iso_code_2\":\"QA\",\"iso_code_3\":\"QAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"173\"},{\"name\":\"Reunion\",\"iso_code_2\":\"RE\",\"iso_code_3\":\"REU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"174\"},{\"name\":\"Romania\",\"iso_code_2\":\"RO\",\"iso_code_3\":\"ROM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"175\"},{\"name\":\"Russian Federation\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"176\"},{\"name\":\"Rwanda\",\"iso_code_2\":\"RW\",\"iso_code_3\":\"RWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"177\"},{\"name\":\"Saint Kitts and Nevis\",\"iso_code_2\":\"KN\",\"iso_code_3\":\"KNA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"178\"},{\"name\":\"Saint Lucia\",\"iso_code_2\":\"LC\",\"iso_code_3\":\"LCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"179\"},{\"name\":\"Saint Vincent and the Grenadines\",\"iso_code_2\":\"VC\",\"iso_code_3\":\"VCT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"180\"},{\"name\":\"Samoa\",\"iso_code_2\":\"WS\",\"iso_code_3\":\"WSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"181\"},{\"name\":\"San Marino\",\"iso_code_2\":\"SM\",\"iso_code_3\":\"SMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"182\"},{\"name\":\"Sao Tome and Principe\",\"iso_code_2\":\"ST\",\"iso_code_3\":\"STP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"183\"},{\"name\":\"Saudi Arabia\",\"iso_code_2\":\"SA\",\"iso_code_3\":\"SAU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"184\"},{\"name\":\"Senegal\",\"iso_code_2\":\"SN\",\"iso_code_3\":\"SEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"185\"},{\"name\":\"Serbia\",\"iso_code_2\":\"RS\",\"iso_code_3\":\"SRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"243\"},{\"name\":\"Seychelles\",\"iso_code_2\":\"SC\",\"iso_code_3\":\"SYC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"186\"},{\"name\":\"Sierra Leone\",\"iso_code_2\":\"SL\",\"iso_code_3\":\"SLE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"187\"},{\"name\":\"Singapore\",\"iso_code_2\":\"SG\",\"iso_code_3\":\"SGP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"188\"},{\"name\":\"Slovak Republic\",\"iso_code_2\":\"SK\",\"iso_code_3\":\"SVK\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city} {postcode}\\r\\n{zone}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"189\"},{\"name\":\"Slovenia\",\"iso_code_2\":\"SI\",\"iso_code_3\":\"SVN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"190\"},{\"name\":\"Solomon Islands\",\"iso_code_2\":\"SB\",\"iso_code_3\":\"SLB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"191\"},{\"name\":\"Somalia\",\"iso_code_2\":\"SO\",\"iso_code_3\":\"SOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"192\"},{\"name\":\"South Africa\",\"iso_code_2\":\"ZA\",\"iso_code_3\":\"ZAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"193\"},{\"name\":\"South Georgia &amp; South Sandwich Islands\",\"iso_code_2\":\"GS\",\"iso_code_3\":\"SGS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"194\"},{\"name\":\"South Korea\",\"iso_code_2\":\"KR\",\"iso_code_3\":\"KOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"113\"},{\"name\":\"South Sudan\",\"iso_code_2\":\"SS\",\"iso_code_3\":\"SSD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"248\"},{\"name\":\"Spain\",\"iso_code_2\":\"ES\",\"iso_code_3\":\"ESP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"195\"},{\"name\":\"Sri Lanka\",\"iso_code_2\":\"LK\",\"iso_code_3\":\"LKA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"196\"},{\"name\":\"St. Barthelemy\",\"iso_code_2\":\"BL\",\"iso_code_3\":\"BLM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"249\"},{\"name\":\"St. Helena\",\"iso_code_2\":\"SH\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"197\"},{\"name\":\"St. Martin (French part)\",\"iso_code_2\":\"MF\",\"iso_code_3\":\"MAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"250\"},{\"name\":\"St. Pierre and Miquelon\",\"iso_code_2\":\"PM\",\"iso_code_3\":\"SPM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"198\"},{\"name\":\"Sudan\",\"iso_code_2\":\"SD\",\"iso_code_3\":\"SDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"199\"},{\"name\":\"Suriname\",\"iso_code_2\":\"SR\",\"iso_code_3\":\"SUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"200\"},{\"name\":\"Svalbard and Jan Mayen Islands\",\"iso_code_2\":\"SJ\",\"iso_code_3\":\"SJM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"201\"},{\"name\":\"Swaziland\",\"iso_code_2\":\"SZ\",\"iso_code_3\":\"SWZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"202\"},{\"name\":\"Sweden\",\"iso_code_2\":\"SE\",\"iso_code_3\":\"SWE\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"203\"},{\"name\":\"Switzerland\",\"iso_code_2\":\"CH\",\"iso_code_3\":\"CHE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"204\"},{\"name\":\"Syrian Arab Republic\",\"iso_code_2\":\"SY\",\"iso_code_3\":\"SYR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"205\"},{\"name\":\"Taiwan\",\"iso_code_2\":\"TW\",\"iso_code_3\":\"TWN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"206\"},{\"name\":\"Tajikistan\",\"iso_code_2\":\"TJ\",\"iso_code_3\":\"TJK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"207\"},{\"name\":\"Tanzania, United Republic of\",\"iso_code_2\":\"TZ\",\"iso_code_3\":\"TZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"208\"},{\"name\":\"Thailand\",\"iso_code_2\":\"TH\",\"iso_code_3\":\"THA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"209\"},{\"name\":\"Togo\",\"iso_code_2\":\"TG\",\"iso_code_3\":\"TGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"210\"},{\"name\":\"Tokelau\",\"iso_code_2\":\"TK\",\"iso_code_3\":\"TKL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"211\"},{\"name\":\"Tonga\",\"iso_code_2\":\"TO\",\"iso_code_3\":\"TON\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"212\"},{\"name\":\"Trinidad and Tobago\",\"iso_code_2\":\"TT\",\"iso_code_3\":\"TTO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"213\"},{\"name\":\"Tristan da Cunha\",\"iso_code_2\":\"TA\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"255\"},{\"name\":\"Tunisia\",\"iso_code_2\":\"TN\",\"iso_code_3\":\"TUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"214\"},{\"name\":\"Turkey\",\"iso_code_2\":\"TR\",\"iso_code_3\":\"TUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"215\"},{\"name\":\"Turkmenistan\",\"iso_code_2\":\"TM\",\"iso_code_3\":\"TKM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"216\"},{\"name\":\"Turks and Caicos Islands\",\"iso_code_2\":\"TC\",\"iso_code_3\":\"TCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"217\"},{\"name\":\"Tuvalu\",\"iso_code_2\":\"TV\",\"iso_code_3\":\"TUV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"218\"},{\"name\":\"Uganda\",\"iso_code_2\":\"UG\",\"iso_code_3\":\"UGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"219\"},{\"name\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"220\"},{\"name\":\"United Arab Emirates\",\"iso_code_2\":\"AE\",\"iso_code_3\":\"ARE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"221\"},{\"name\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"222\"},{\"name\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"223\"},{\"name\":\"United States Minor Outlying Islands\",\"iso_code_2\":\"UM\",\"iso_code_3\":\"UMI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"224\"},{\"name\":\"Uruguay\",\"iso_code_2\":\"UY\",\"iso_code_3\":\"URY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"225\"},{\"name\":\"Uzbekistan\",\"iso_code_2\":\"UZ\",\"iso_code_3\":\"UZB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"226\"},{\"name\":\"Vanuatu\",\"iso_code_2\":\"VU\",\"iso_code_3\":\"VUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"227\"},{\"name\":\"Vatican City State (Holy See)\",\"iso_code_2\":\"VA\",\"iso_code_3\":\"VAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"228\"},{\"name\":\"Venezuela\",\"iso_code_2\":\"VE\",\"iso_code_3\":\"VEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"229\"},{\"name\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"230\"},{\"name\":\"Virgin Islands (British)\",\"iso_code_2\":\"VG\",\"iso_code_3\":\"VGB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"231\"},{\"name\":\"Virgin Islands (U.S.)\",\"iso_code_2\":\"VI\",\"iso_code_3\":\"VIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"232\"},{\"name\":\"Wallis and Futuna Islands\",\"iso_code_2\":\"WF\",\"iso_code_3\":\"WLF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"233\"},{\"name\":\"Western Sahara\",\"iso_code_2\":\"EH\",\"iso_code_3\":\"ESH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"234\"},{\"name\":\"Yemen\",\"iso_code_2\":\"YE\",\"iso_code_3\":\"YEM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"235\"},{\"name\":\"Zambia\",\"iso_code_2\":\"ZM\",\"iso_code_3\":\"ZMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"238\"},{\"name\":\"Zimbabwe\",\"iso_code_2\":\"ZW\",\"iso_code_3\":\"ZWE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"239\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":16,\"class\":\"zone\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]},\"newsletter\":{\"display\":1,\"require\":0,\"value\":\"1\",\"id\":\"newsletter\",\"title\":\"I wish to subscribe to the Your Store newsletter.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"You must subsribe to our newsletter to make the order\"}],\"type\":\"checkbox\",\"custom\":0,\"class\":\"\",\"refresh\":\"0\",\"sort_order\":17},\"shipping_address\":{\"display\":1,\"value\":1,\"id\":\"shipping_address\",\"title\":\"My delivery and billing addresses are the same.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"error_step_payment_address_fields_shipping_address\"}],\"type\":\"checkbox\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":18,\"class\":\"\"},\"agree\":{\"display\":1,\"require\":1,\"value\":\"0\",\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=3\\\" class=\\\"agree\\\"><b>Privacy Policy<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Privacy Policy!\",\"information_id\":\"3\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":19,\"class\":\"\",\"information_id\":\"3\"}},\"id\":\"payment_address\",\"title\":\"Payment details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"2\",\"column\":1,\"row\":2,\"width\":\"50\"},\"shipping_address\":{\"display\":1,\"require\":0,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":6,\"class\":\"\",\"mask\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":7,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":8,\"class\":\"\",\"options\":[{\"name\":\"Aaland Islands\",\"iso_code_2\":\"AX\",\"iso_code_3\":\"ALA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"244\"},{\"name\":\"Afghanistan\",\"iso_code_2\":\"AF\",\"iso_code_3\":\"AFG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"1\"},{\"name\":\"Albania\",\"iso_code_2\":\"AL\",\"iso_code_3\":\"ALB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"2\"},{\"name\":\"Algeria\",\"iso_code_2\":\"DZ\",\"iso_code_3\":\"DZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"3\"},{\"name\":\"American Samoa\",\"iso_code_2\":\"AS\",\"iso_code_3\":\"ASM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"4\"},{\"name\":\"Andorra\",\"iso_code_2\":\"AD\",\"iso_code_3\":\"AND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"5\"},{\"name\":\"Angola\",\"iso_code_2\":\"AO\",\"iso_code_3\":\"AGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"6\"},{\"name\":\"Anguilla\",\"iso_code_2\":\"AI\",\"iso_code_3\":\"AIA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"7\"},{\"name\":\"Antarctica\",\"iso_code_2\":\"AQ\",\"iso_code_3\":\"ATA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"8\"},{\"name\":\"Antigua and Barbuda\",\"iso_code_2\":\"AG\",\"iso_code_3\":\"ATG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"9\"},{\"name\":\"Argentina\",\"iso_code_2\":\"AR\",\"iso_code_3\":\"ARG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"10\"},{\"name\":\"Armenia\",\"iso_code_2\":\"AM\",\"iso_code_3\":\"ARM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"11\"},{\"name\":\"Aruba\",\"iso_code_2\":\"AW\",\"iso_code_3\":\"ABW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"12\"},{\"name\":\"Ascension Island (British)\",\"iso_code_2\":\"AC\",\"iso_code_3\":\"ASC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"252\"},{\"name\":\"Australia\",\"iso_code_2\":\"AU\",\"iso_code_3\":\"AUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"13\"},{\"name\":\"Austria\",\"iso_code_2\":\"AT\",\"iso_code_3\":\"AUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"14\"},{\"name\":\"Azerbaijan\",\"iso_code_2\":\"AZ\",\"iso_code_3\":\"AZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"15\"},{\"name\":\"Bahamas\",\"iso_code_2\":\"BS\",\"iso_code_3\":\"BHS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"16\"},{\"name\":\"Bahrain\",\"iso_code_2\":\"BH\",\"iso_code_3\":\"BHR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"17\"},{\"name\":\"Bangladesh\",\"iso_code_2\":\"BD\",\"iso_code_3\":\"BGD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"18\"},{\"name\":\"Barbados\",\"iso_code_2\":\"BB\",\"iso_code_3\":\"BRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"19\"},{\"name\":\"Belarus\",\"iso_code_2\":\"BY\",\"iso_code_3\":\"BLR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"20\"},{\"name\":\"Belgium\",\"iso_code_2\":\"BE\",\"iso_code_3\":\"BEL\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"21\"},{\"name\":\"Belize\",\"iso_code_2\":\"BZ\",\"iso_code_3\":\"BLZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"22\"},{\"name\":\"Benin\",\"iso_code_2\":\"BJ\",\"iso_code_3\":\"BEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"23\"},{\"name\":\"Bermuda\",\"iso_code_2\":\"BM\",\"iso_code_3\":\"BMU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"24\"},{\"name\":\"Bhutan\",\"iso_code_2\":\"BT\",\"iso_code_3\":\"BTN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"25\"},{\"name\":\"Bolivia\",\"iso_code_2\":\"BO\",\"iso_code_3\":\"BOL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"26\"},{\"name\":\"Bonaire, Sint Eustatius and Saba\",\"iso_code_2\":\"BQ\",\"iso_code_3\":\"BES\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"245\"},{\"name\":\"Bosnia and Herzegovina\",\"iso_code_2\":\"BA\",\"iso_code_3\":\"BIH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"27\"},{\"name\":\"Botswana\",\"iso_code_2\":\"BW\",\"iso_code_3\":\"BWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"28\"},{\"name\":\"Bouvet Island\",\"iso_code_2\":\"BV\",\"iso_code_3\":\"BVT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"29\"},{\"name\":\"Brazil\",\"iso_code_2\":\"BR\",\"iso_code_3\":\"BRA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"30\"},{\"name\":\"British Indian Ocean Territory\",\"iso_code_2\":\"IO\",\"iso_code_3\":\"IOT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"31\"},{\"name\":\"Brunei Darussalam\",\"iso_code_2\":\"BN\",\"iso_code_3\":\"BRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"32\"},{\"name\":\"Bulgaria\",\"iso_code_2\":\"BG\",\"iso_code_3\":\"BGR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"33\"},{\"name\":\"Burkina Faso\",\"iso_code_2\":\"BF\",\"iso_code_3\":\"BFA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"34\"},{\"name\":\"Burundi\",\"iso_code_2\":\"BI\",\"iso_code_3\":\"BDI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"35\"},{\"name\":\"Cambodia\",\"iso_code_2\":\"KH\",\"iso_code_3\":\"KHM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"36\"},{\"name\":\"Cameroon\",\"iso_code_2\":\"CM\",\"iso_code_3\":\"CMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"37\"},{\"name\":\"Canada\",\"iso_code_2\":\"CA\",\"iso_code_3\":\"CAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"38\"},{\"name\":\"Canary Islands\",\"iso_code_2\":\"IC\",\"iso_code_3\":\"ICA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"251\"},{\"name\":\"Cape Verde\",\"iso_code_2\":\"CV\",\"iso_code_3\":\"CPV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"39\"},{\"name\":\"Cayman Islands\",\"iso_code_2\":\"KY\",\"iso_code_3\":\"CYM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"40\"},{\"name\":\"Central African Republic\",\"iso_code_2\":\"CF\",\"iso_code_3\":\"CAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"41\"},{\"name\":\"Chad\",\"iso_code_2\":\"TD\",\"iso_code_3\":\"TCD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"42\"},{\"name\":\"Chile\",\"iso_code_2\":\"CL\",\"iso_code_3\":\"CHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"43\"},{\"name\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"44\"},{\"name\":\"Christmas Island\",\"iso_code_2\":\"CX\",\"iso_code_3\":\"CXR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"45\"},{\"name\":\"Cocos (Keeling) Islands\",\"iso_code_2\":\"CC\",\"iso_code_3\":\"CCK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"46\"},{\"name\":\"Colombia\",\"iso_code_2\":\"CO\",\"iso_code_3\":\"COL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"47\"},{\"name\":\"Comoros\",\"iso_code_2\":\"KM\",\"iso_code_3\":\"COM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"48\"},{\"name\":\"Congo\",\"iso_code_2\":\"CG\",\"iso_code_3\":\"COG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"49\"},{\"name\":\"Cook Islands\",\"iso_code_2\":\"CK\",\"iso_code_3\":\"COK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"50\"},{\"name\":\"Costa Rica\",\"iso_code_2\":\"CR\",\"iso_code_3\":\"CRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"51\"},{\"name\":\"Cote D\'Ivoire\",\"iso_code_2\":\"CI\",\"iso_code_3\":\"CIV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"52\"},{\"name\":\"Croatia\",\"iso_code_2\":\"HR\",\"iso_code_3\":\"HRV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"53\"},{\"name\":\"Cuba\",\"iso_code_2\":\"CU\",\"iso_code_3\":\"CUB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"54\"},{\"name\":\"Curacao\",\"iso_code_2\":\"CW\",\"iso_code_3\":\"CUW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"246\"},{\"name\":\"Cyprus\",\"iso_code_2\":\"CY\",\"iso_code_3\":\"CYP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"55\"},{\"name\":\"Czech Republic\",\"iso_code_2\":\"CZ\",\"iso_code_3\":\"CZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"56\"},{\"name\":\"Democratic Republic of Congo\",\"iso_code_2\":\"CD\",\"iso_code_3\":\"COD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"237\"},{\"name\":\"Denmark\",\"iso_code_2\":\"DK\",\"iso_code_3\":\"DNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"57\"},{\"name\":\"Djibouti\",\"iso_code_2\":\"DJ\",\"iso_code_3\":\"DJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"58\"},{\"name\":\"Dominica\",\"iso_code_2\":\"DM\",\"iso_code_3\":\"DMA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"59\"},{\"name\":\"Dominican Republic\",\"iso_code_2\":\"DO\",\"iso_code_3\":\"DOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"60\"},{\"name\":\"East Timor\",\"iso_code_2\":\"TL\",\"iso_code_3\":\"TLS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"61\"},{\"name\":\"Ecuador\",\"iso_code_2\":\"EC\",\"iso_code_3\":\"ECU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"62\"},{\"name\":\"Egypt\",\"iso_code_2\":\"EG\",\"iso_code_3\":\"EGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"63\"},{\"name\":\"El Salvador\",\"iso_code_2\":\"SV\",\"iso_code_3\":\"SLV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"64\"},{\"name\":\"Equatorial Guinea\",\"iso_code_2\":\"GQ\",\"iso_code_3\":\"GNQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"65\"},{\"name\":\"Eritrea\",\"iso_code_2\":\"ER\",\"iso_code_3\":\"ERI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"66\"},{\"name\":\"Estonia\",\"iso_code_2\":\"EE\",\"iso_code_3\":\"EST\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"67\"},{\"name\":\"Ethiopia\",\"iso_code_2\":\"ET\",\"iso_code_3\":\"ETH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"68\"},{\"name\":\"Falkland Islands (Malvinas)\",\"iso_code_2\":\"FK\",\"iso_code_3\":\"FLK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"69\"},{\"name\":\"Faroe Islands\",\"iso_code_2\":\"FO\",\"iso_code_3\":\"FRO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"70\"},{\"name\":\"Fiji\",\"iso_code_2\":\"FJ\",\"iso_code_3\":\"FJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"71\"},{\"name\":\"Finland\",\"iso_code_2\":\"FI\",\"iso_code_3\":\"FIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"72\"},{\"name\":\"France, Metropolitan\",\"iso_code_2\":\"FR\",\"iso_code_3\":\"FRA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"74\"},{\"name\":\"French Guiana\",\"iso_code_2\":\"GF\",\"iso_code_3\":\"GUF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"75\"},{\"name\":\"French Polynesia\",\"iso_code_2\":\"PF\",\"iso_code_3\":\"PYF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"76\"},{\"name\":\"French Southern Territories\",\"iso_code_2\":\"TF\",\"iso_code_3\":\"ATF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"77\"},{\"name\":\"FYROM\",\"iso_code_2\":\"MK\",\"iso_code_3\":\"MKD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"126\"},{\"name\":\"Gabon\",\"iso_code_2\":\"GA\",\"iso_code_3\":\"GAB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"78\"},{\"name\":\"Gambia\",\"iso_code_2\":\"GM\",\"iso_code_3\":\"GMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"79\"},{\"name\":\"Georgia\",\"iso_code_2\":\"GE\",\"iso_code_3\":\"GEO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"80\"},{\"name\":\"Germany\",\"iso_code_2\":\"DE\",\"iso_code_3\":\"DEU\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"81\"},{\"name\":\"Ghana\",\"iso_code_2\":\"GH\",\"iso_code_3\":\"GHA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"82\"},{\"name\":\"Gibraltar\",\"iso_code_2\":\"GI\",\"iso_code_3\":\"GIB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"83\"},{\"name\":\"Greece\",\"iso_code_2\":\"GR\",\"iso_code_3\":\"GRC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"84\"},{\"name\":\"Greenland\",\"iso_code_2\":\"GL\",\"iso_code_3\":\"GRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"85\"},{\"name\":\"Grenada\",\"iso_code_2\":\"GD\",\"iso_code_3\":\"GRD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"86\"},{\"name\":\"Guadeloupe\",\"iso_code_2\":\"GP\",\"iso_code_3\":\"GLP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"87\"},{\"name\":\"Guam\",\"iso_code_2\":\"GU\",\"iso_code_3\":\"GUM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"88\"},{\"name\":\"Guatemala\",\"iso_code_2\":\"GT\",\"iso_code_3\":\"GTM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"89\"},{\"name\":\"Guernsey\",\"iso_code_2\":\"GG\",\"iso_code_3\":\"GGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"256\"},{\"name\":\"Guinea\",\"iso_code_2\":\"GN\",\"iso_code_3\":\"GIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"90\"},{\"name\":\"Guinea-Bissau\",\"iso_code_2\":\"GW\",\"iso_code_3\":\"GNB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"91\"},{\"name\":\"Guyana\",\"iso_code_2\":\"GY\",\"iso_code_3\":\"GUY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"92\"},{\"name\":\"Haiti\",\"iso_code_2\":\"HT\",\"iso_code_3\":\"HTI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"93\"},{\"name\":\"Heard and Mc Donald Islands\",\"iso_code_2\":\"HM\",\"iso_code_3\":\"HMD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"94\"},{\"name\":\"Honduras\",\"iso_code_2\":\"HN\",\"iso_code_3\":\"HND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"95\"},{\"name\":\"Hong Kong\",\"iso_code_2\":\"HK\",\"iso_code_3\":\"HKG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"96\"},{\"name\":\"Hungary\",\"iso_code_2\":\"HU\",\"iso_code_3\":\"HUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"97\"},{\"name\":\"Iceland\",\"iso_code_2\":\"IS\",\"iso_code_3\":\"ISL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"98\"},{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"},{\"name\":\"Indonesia\",\"iso_code_2\":\"ID\",\"iso_code_3\":\"IDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"100\"},{\"name\":\"Iran (Islamic Republic of)\",\"iso_code_2\":\"IR\",\"iso_code_3\":\"IRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"101\"},{\"name\":\"Iraq\",\"iso_code_2\":\"IQ\",\"iso_code_3\":\"IRQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"102\"},{\"name\":\"Ireland\",\"iso_code_2\":\"IE\",\"iso_code_3\":\"IRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"103\"},{\"name\":\"Isle of Man\",\"iso_code_2\":\"IM\",\"iso_code_3\":\"IMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"254\"},{\"name\":\"Israel\",\"iso_code_2\":\"IL\",\"iso_code_3\":\"ISR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"104\"},{\"name\":\"Italy\",\"iso_code_2\":\"IT\",\"iso_code_3\":\"ITA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"105\"},{\"name\":\"Jamaica\",\"iso_code_2\":\"JM\",\"iso_code_3\":\"JAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"106\"},{\"name\":\"Japan\",\"iso_code_2\":\"JP\",\"iso_code_3\":\"JPN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"107\"},{\"name\":\"Jersey\",\"iso_code_2\":\"JE\",\"iso_code_3\":\"JEY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"257\"},{\"name\":\"Jordan\",\"iso_code_2\":\"JO\",\"iso_code_3\":\"JOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"108\"},{\"name\":\"Kazakhstan\",\"iso_code_2\":\"KZ\",\"iso_code_3\":\"KAZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"109\"},{\"name\":\"Kenya\",\"iso_code_2\":\"KE\",\"iso_code_3\":\"KEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"110\"},{\"name\":\"Kiribati\",\"iso_code_2\":\"KI\",\"iso_code_3\":\"KIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"111\"},{\"name\":\"Kosovo, Republic of\",\"iso_code_2\":\"XK\",\"iso_code_3\":\"UNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"253\"},{\"name\":\"Kuwait\",\"iso_code_2\":\"KW\",\"iso_code_3\":\"KWT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"114\"},{\"name\":\"Kyrgyzstan\",\"iso_code_2\":\"KG\",\"iso_code_3\":\"KGZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"115\"},{\"name\":\"Lao People\'s Democratic Republic\",\"iso_code_2\":\"LA\",\"iso_code_3\":\"LAO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"116\"},{\"name\":\"Latvia\",\"iso_code_2\":\"LV\",\"iso_code_3\":\"LVA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"117\"},{\"name\":\"Lebanon\",\"iso_code_2\":\"LB\",\"iso_code_3\":\"LBN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"118\"},{\"name\":\"Lesotho\",\"iso_code_2\":\"LS\",\"iso_code_3\":\"LSO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"119\"},{\"name\":\"Liberia\",\"iso_code_2\":\"LR\",\"iso_code_3\":\"LBR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"120\"},{\"name\":\"Libyan Arab Jamahiriya\",\"iso_code_2\":\"LY\",\"iso_code_3\":\"LBY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"121\"},{\"name\":\"Liechtenstein\",\"iso_code_2\":\"LI\",\"iso_code_3\":\"LIE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"122\"},{\"name\":\"Lithuania\",\"iso_code_2\":\"LT\",\"iso_code_3\":\"LTU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"123\"},{\"name\":\"Luxembourg\",\"iso_code_2\":\"LU\",\"iso_code_3\":\"LUX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"124\"},{\"name\":\"Macau\",\"iso_code_2\":\"MO\",\"iso_code_3\":\"MAC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"125\"},{\"name\":\"Madagascar\",\"iso_code_2\":\"MG\",\"iso_code_3\":\"MDG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"127\"},{\"name\":\"Malawi\",\"iso_code_2\":\"MW\",\"iso_code_3\":\"MWI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"128\"},{\"name\":\"Malaysia\",\"iso_code_2\":\"MY\",\"iso_code_3\":\"MYS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"129\"},{\"name\":\"Maldives\",\"iso_code_2\":\"MV\",\"iso_code_3\":\"MDV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"130\"},{\"name\":\"Mali\",\"iso_code_2\":\"ML\",\"iso_code_3\":\"MLI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"131\"},{\"name\":\"Malta\",\"iso_code_2\":\"MT\",\"iso_code_3\":\"MLT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"132\"},{\"name\":\"Marshall Islands\",\"iso_code_2\":\"MH\",\"iso_code_3\":\"MHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"133\"},{\"name\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"134\"},{\"name\":\"Mauritania\",\"iso_code_2\":\"MR\",\"iso_code_3\":\"MRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"135\"},{\"name\":\"Mauritius\",\"iso_code_2\":\"MU\",\"iso_code_3\":\"MUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"136\"},{\"name\":\"Mayotte\",\"iso_code_2\":\"YT\",\"iso_code_3\":\"MYT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"137\"},{\"name\":\"Mexico\",\"iso_code_2\":\"MX\",\"iso_code_3\":\"MEX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"138\"},{\"name\":\"Micronesia, Federated States of\",\"iso_code_2\":\"FM\",\"iso_code_3\":\"FSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"139\"},{\"name\":\"Moldova, Republic of\",\"iso_code_2\":\"MD\",\"iso_code_3\":\"MDA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"140\"},{\"name\":\"Monaco\",\"iso_code_2\":\"MC\",\"iso_code_3\":\"MCO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"141\"},{\"name\":\"Mongolia\",\"iso_code_2\":\"MN\",\"iso_code_3\":\"MNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"142\"},{\"name\":\"Montenegro\",\"iso_code_2\":\"ME\",\"iso_code_3\":\"MNE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"242\"},{\"name\":\"Montserrat\",\"iso_code_2\":\"MS\",\"iso_code_3\":\"MSR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"143\"},{\"name\":\"Morocco\",\"iso_code_2\":\"MA\",\"iso_code_3\":\"MAR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"144\"},{\"name\":\"Mozambique\",\"iso_code_2\":\"MZ\",\"iso_code_3\":\"MOZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"145\"},{\"name\":\"Myanmar\",\"iso_code_2\":\"MM\",\"iso_code_3\":\"MMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"146\"},{\"name\":\"Namibia\",\"iso_code_2\":\"NA\",\"iso_code_3\":\"NAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"147\"},{\"name\":\"Nauru\",\"iso_code_2\":\"NR\",\"iso_code_3\":\"NRU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"148\"},{\"name\":\"Nepal\",\"iso_code_2\":\"NP\",\"iso_code_3\":\"NPL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"149\"},{\"name\":\"Netherlands\",\"iso_code_2\":\"NL\",\"iso_code_3\":\"NLD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"150\"},{\"name\":\"Netherlands Antilles\",\"iso_code_2\":\"AN\",\"iso_code_3\":\"ANT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"151\"},{\"name\":\"New Caledonia\",\"iso_code_2\":\"NC\",\"iso_code_3\":\"NCL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"152\"},{\"name\":\"New Zealand\",\"iso_code_2\":\"NZ\",\"iso_code_3\":\"NZL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"153\"},{\"name\":\"Nicaragua\",\"iso_code_2\":\"NI\",\"iso_code_3\":\"NIC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"154\"},{\"name\":\"Niger\",\"iso_code_2\":\"NE\",\"iso_code_3\":\"NER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"155\"},{\"name\":\"Nigeria\",\"iso_code_2\":\"NG\",\"iso_code_3\":\"NGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"156\"},{\"name\":\"Niue\",\"iso_code_2\":\"NU\",\"iso_code_3\":\"NIU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"157\"},{\"name\":\"Norfolk Island\",\"iso_code_2\":\"NF\",\"iso_code_3\":\"NFK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"158\"},{\"name\":\"North Korea\",\"iso_code_2\":\"KP\",\"iso_code_3\":\"PRK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"112\"},{\"name\":\"Northern Mariana Islands\",\"iso_code_2\":\"MP\",\"iso_code_3\":\"MNP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"159\"},{\"name\":\"Norway\",\"iso_code_2\":\"NO\",\"iso_code_3\":\"NOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"160\"},{\"name\":\"Oman\",\"iso_code_2\":\"OM\",\"iso_code_3\":\"OMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"161\"},{\"name\":\"Pakistan\",\"iso_code_2\":\"PK\",\"iso_code_3\":\"PAK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"162\"},{\"name\":\"Palau\",\"iso_code_2\":\"PW\",\"iso_code_3\":\"PLW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"163\"},{\"name\":\"Palestinian Territory, Occupied\",\"iso_code_2\":\"PS\",\"iso_code_3\":\"PSE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"247\"},{\"name\":\"Panama\",\"iso_code_2\":\"PA\",\"iso_code_3\":\"PAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"164\"},{\"name\":\"Papua New Guinea\",\"iso_code_2\":\"PG\",\"iso_code_3\":\"PNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"165\"},{\"name\":\"Paraguay\",\"iso_code_2\":\"PY\",\"iso_code_3\":\"PRY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"166\"},{\"name\":\"Peru\",\"iso_code_2\":\"PE\",\"iso_code_3\":\"PER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"167\"},{\"name\":\"Philippines\",\"iso_code_2\":\"PH\",\"iso_code_3\":\"PHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"168\"},{\"name\":\"Pitcairn\",\"iso_code_2\":\"PN\",\"iso_code_3\":\"PCN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"169\"},{\"name\":\"Poland\",\"iso_code_2\":\"PL\",\"iso_code_3\":\"POL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"170\"},{\"name\":\"Portugal\",\"iso_code_2\":\"PT\",\"iso_code_3\":\"PRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"171\"},{\"name\":\"Puerto Rico\",\"iso_code_2\":\"PR\",\"iso_code_3\":\"PRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"172\"},{\"name\":\"Qatar\",\"iso_code_2\":\"QA\",\"iso_code_3\":\"QAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"173\"},{\"name\":\"Reunion\",\"iso_code_2\":\"RE\",\"iso_code_3\":\"REU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"174\"},{\"name\":\"Romania\",\"iso_code_2\":\"RO\",\"iso_code_3\":\"ROM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"175\"},{\"name\":\"Russian Federation\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"176\"},{\"name\":\"Rwanda\",\"iso_code_2\":\"RW\",\"iso_code_3\":\"RWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"177\"},{\"name\":\"Saint Kitts and Nevis\",\"iso_code_2\":\"KN\",\"iso_code_3\":\"KNA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"178\"},{\"name\":\"Saint Lucia\",\"iso_code_2\":\"LC\",\"iso_code_3\":\"LCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"179\"},{\"name\":\"Saint Vincent and the Grenadines\",\"iso_code_2\":\"VC\",\"iso_code_3\":\"VCT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"180\"},{\"name\":\"Samoa\",\"iso_code_2\":\"WS\",\"iso_code_3\":\"WSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"181\"},{\"name\":\"San Marino\",\"iso_code_2\":\"SM\",\"iso_code_3\":\"SMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"182\"},{\"name\":\"Sao Tome and Principe\",\"iso_code_2\":\"ST\",\"iso_code_3\":\"STP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"183\"},{\"name\":\"Saudi Arabia\",\"iso_code_2\":\"SA\",\"iso_code_3\":\"SAU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"184\"},{\"name\":\"Senegal\",\"iso_code_2\":\"SN\",\"iso_code_3\":\"SEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"185\"},{\"name\":\"Serbia\",\"iso_code_2\":\"RS\",\"iso_code_3\":\"SRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"243\"},{\"name\":\"Seychelles\",\"iso_code_2\":\"SC\",\"iso_code_3\":\"SYC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"186\"},{\"name\":\"Sierra Leone\",\"iso_code_2\":\"SL\",\"iso_code_3\":\"SLE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"187\"},{\"name\":\"Singapore\",\"iso_code_2\":\"SG\",\"iso_code_3\":\"SGP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"188\"},{\"name\":\"Slovak Republic\",\"iso_code_2\":\"SK\",\"iso_code_3\":\"SVK\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city} {postcode}\\r\\n{zone}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"189\"},{\"name\":\"Slovenia\",\"iso_code_2\":\"SI\",\"iso_code_3\":\"SVN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"190\"},{\"name\":\"Solomon Islands\",\"iso_code_2\":\"SB\",\"iso_code_3\":\"SLB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"191\"},{\"name\":\"Somalia\",\"iso_code_2\":\"SO\",\"iso_code_3\":\"SOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"192\"},{\"name\":\"South Africa\",\"iso_code_2\":\"ZA\",\"iso_code_3\":\"ZAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"193\"},{\"name\":\"South Georgia &amp; South Sandwich Islands\",\"iso_code_2\":\"GS\",\"iso_code_3\":\"SGS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"194\"},{\"name\":\"South Korea\",\"iso_code_2\":\"KR\",\"iso_code_3\":\"KOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"113\"},{\"name\":\"South Sudan\",\"iso_code_2\":\"SS\",\"iso_code_3\":\"SSD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"248\"},{\"name\":\"Spain\",\"iso_code_2\":\"ES\",\"iso_code_3\":\"ESP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"195\"},{\"name\":\"Sri Lanka\",\"iso_code_2\":\"LK\",\"iso_code_3\":\"LKA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"196\"},{\"name\":\"St. Barthelemy\",\"iso_code_2\":\"BL\",\"iso_code_3\":\"BLM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"249\"},{\"name\":\"St. Helena\",\"iso_code_2\":\"SH\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"197\"},{\"name\":\"St. Martin (French part)\",\"iso_code_2\":\"MF\",\"iso_code_3\":\"MAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"250\"},{\"name\":\"St. Pierre and Miquelon\",\"iso_code_2\":\"PM\",\"iso_code_3\":\"SPM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"198\"},{\"name\":\"Sudan\",\"iso_code_2\":\"SD\",\"iso_code_3\":\"SDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"199\"},{\"name\":\"Suriname\",\"iso_code_2\":\"SR\",\"iso_code_3\":\"SUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"200\"},{\"name\":\"Svalbard and Jan Mayen Islands\",\"iso_code_2\":\"SJ\",\"iso_code_3\":\"SJM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"201\"},{\"name\":\"Swaziland\",\"iso_code_2\":\"SZ\",\"iso_code_3\":\"SWZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"202\"},{\"name\":\"Sweden\",\"iso_code_2\":\"SE\",\"iso_code_3\":\"SWE\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"203\"},{\"name\":\"Switzerland\",\"iso_code_2\":\"CH\",\"iso_code_3\":\"CHE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"204\"},{\"name\":\"Syrian Arab Republic\",\"iso_code_2\":\"SY\",\"iso_code_3\":\"SYR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"205\"},{\"name\":\"Taiwan\",\"iso_code_2\":\"TW\",\"iso_code_3\":\"TWN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"206\"},{\"name\":\"Tajikistan\",\"iso_code_2\":\"TJ\",\"iso_code_3\":\"TJK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"207\"},{\"name\":\"Tanzania, United Republic of\",\"iso_code_2\":\"TZ\",\"iso_code_3\":\"TZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"208\"},{\"name\":\"Thailand\",\"iso_code_2\":\"TH\",\"iso_code_3\":\"THA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"209\"},{\"name\":\"Togo\",\"iso_code_2\":\"TG\",\"iso_code_3\":\"TGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"210\"},{\"name\":\"Tokelau\",\"iso_code_2\":\"TK\",\"iso_code_3\":\"TKL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"211\"},{\"name\":\"Tonga\",\"iso_code_2\":\"TO\",\"iso_code_3\":\"TON\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"212\"},{\"name\":\"Trinidad and Tobago\",\"iso_code_2\":\"TT\",\"iso_code_3\":\"TTO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"213\"},{\"name\":\"Tristan da Cunha\",\"iso_code_2\":\"TA\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"255\"},{\"name\":\"Tunisia\",\"iso_code_2\":\"TN\",\"iso_code_3\":\"TUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"214\"},{\"name\":\"Turkey\",\"iso_code_2\":\"TR\",\"iso_code_3\":\"TUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"215\"},{\"name\":\"Turkmenistan\",\"iso_code_2\":\"TM\",\"iso_code_3\":\"TKM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"216\"},{\"name\":\"Turks and Caicos Islands\",\"iso_code_2\":\"TC\",\"iso_code_3\":\"TCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"217\"},{\"name\":\"Tuvalu\",\"iso_code_2\":\"TV\",\"iso_code_3\":\"TUV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"218\"},{\"name\":\"Uganda\",\"iso_code_2\":\"UG\",\"iso_code_3\":\"UGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"219\"},{\"name\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"220\"},{\"name\":\"United Arab Emirates\",\"iso_code_2\":\"AE\",\"iso_code_3\":\"ARE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"221\"},{\"name\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"222\"},{\"name\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"223\"},{\"name\":\"United States Minor Outlying Islands\",\"iso_code_2\":\"UM\",\"iso_code_3\":\"UMI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"224\"},{\"name\":\"Uruguay\",\"iso_code_2\":\"UY\",\"iso_code_3\":\"URY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"225\"},{\"name\":\"Uzbekistan\",\"iso_code_2\":\"UZ\",\"iso_code_3\":\"UZB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"226\"},{\"name\":\"Vanuatu\",\"iso_code_2\":\"VU\",\"iso_code_3\":\"VUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"227\"},{\"name\":\"Vatican City State (Holy See)\",\"iso_code_2\":\"VA\",\"iso_code_3\":\"VAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"228\"},{\"name\":\"Venezuela\",\"iso_code_2\":\"VE\",\"iso_code_3\":\"VEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"229\"},{\"name\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"230\"},{\"name\":\"Virgin Islands (British)\",\"iso_code_2\":\"VG\",\"iso_code_3\":\"VGB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"231\"},{\"name\":\"Virgin Islands (U.S.)\",\"iso_code_2\":\"VI\",\"iso_code_3\":\"VIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"232\"},{\"name\":\"Wallis and Futuna Islands\",\"iso_code_2\":\"WF\",\"iso_code_3\":\"WLF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"233\"},{\"name\":\"Western Sahara\",\"iso_code_2\":\"EH\",\"iso_code_3\":\"ESH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"234\"},{\"name\":\"Yemen\",\"iso_code_2\":\"YE\",\"iso_code_3\":\"YEM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"235\"},{\"name\":\"Zambia\",\"iso_code_2\":\"ZM\",\"iso_code_3\":\"ZMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"238\"},{\"name\":\"Zimbabwe\",\"iso_code_2\":\"ZW\",\"iso_code_3\":\"ZWE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"239\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]}},\"id\":\"shipping_address\",\"title\":\"Delivery details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"3\",\"column\":1,\"row\":3,\"width\":\"30\"},\"shipping_method\":{\"id\":\"shipping_method\",\"title\":\"Shipping method\",\"description\":\"\",\"icon\":\"fa fa-truck\",\"sort_order\":4,\"column\":2,\"row\":1,\"display\":1,\"input_style\":\"radio\",\"display_title\":1,\"display_desciption\":1,\"display_options\":1,\"width\":\"30\",\"default_option\":\"\"},\"payment_method\":{\"id\":\"payment_method\",\"title\":\"Payment method\",\"description\":\"\",\"icon\":\"fa fa-credit-card\",\"sort_order\":5,\"column\":3,\"row\":1,\"display\":1,\"display_options\":1,\"display_images\":1,\"input_style\":\"radio\",\"display_logos\":1,\"width\":\"30\",\"default_option\":\"\"},\"cart\":{\"display\":1,\"option\":{\"voucher\":{\"display\":1,\"value\":\"\",\"id\":\"voucher\",\"title\":\"voucher\",\"tooltip\":\"voucher\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"coupon\":{\"display\":1,\"value\":\"\",\"id\":\"coupon\",\"title\":\"coupon\",\"tooltip\":\"coupon\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"reward\":{\"display\":1,\"value\":\"\",\"id\":\"reward\",\"title\":\"reward\",\"tooltip\":\"reward\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"}},\"columns\":{\"image\":1,\"name\":1,\"model\":0,\"quantity\":1,\"price\":1,\"total\":1},\"id\":\"cart\",\"title\":\"Shopping cart\",\"description\":\"\",\"icon\":\"fa fa-shopping-cart\",\"sort_order\":6,\"column\":4,\"row\":2,\"display_title\":1,\"display_description\":1,\"width\":\"50\"},\"confirm\":{\"display\":1,\"fields\":{\"comment\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"comment\",\"title\":\"Add Comments About Your Order\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please fill in the comment to the order\"}],\"type\":\"textarea\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":0},\"agree\":{\"display\":1,\"require\":1,\"value\":0,\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=5\\\" class=\\\"agree\\\"><b>Terms &amp; Conditions<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Terms &amp; Conditions!\",\"information_id\":\"5\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":1,\"information_id\":\"5\"}},\"id\":\"confirm\",\"icon\":\"\",\"display_confirm\":1,\"sort_order\":8,\"column\":4,\"row\":2,\"width\":\"50\"},\"payment\":{\"id\":\"payment\",\"title\":\"\",\"icon\":\"\",\"sort_order\":7,\"column\":4,\"row\":2,\"default_payment_popup\":0,\"payment_popups\":[],\"width\":\"50\"}},\"guest\":{\"display\":1,\"login\":{\"id\":\"login\",\"icon\":\"fa fa-user\",\"description\":\"\",\"sort_order\":1,\"column\":1,\"row\":1,\"width\":\"50\",\"default_option\":\"guest\",\"option\":{\"register\":{\"title\":\"Register Account\",\"description\":\"By creating an account you will be able to shop faster, be up to date on an order\'s status, and keep track of the orders you have previously made.\",\"display\":1},\"guest\":{\"title\":\"Guest Checkout\",\"description\":\"Use guest checkout to buy without creating an account\",\"display\":1},\"login\":{\"title\":\"Login\",\"display\":1}}},\"payment_address\":{\"display\":1,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":0,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"email\":{\"display\":1,\"require\":1,\"error\":[{\"min_length\":3,\"max_length\":96,\"text\":\"Sorry, but you need to have the length of the text more then 3 and less then 96 \"},{\"regex\":\"\\/^[^\\\\@]+@.*\\\\.[a-z]{2,6}$\\/i\",\"text\":\"E-Mail address does not appear to be valid!\"},{\"not_empty\":true,\"text\":\"E-Mail address does not appear to be valid!\"}],\"value\":\"\",\"id\":\"email\",\"title\":\"E-Mail\",\"tooltip\":\"\",\"type\":\"email\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"email_confirm\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"email_confirm\",\"title\":\"Confirm E-mail\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_email\",\"text\":\"Email confirmation does not match email!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"heading\":{\"display\":1,\"value\":\"\",\"id\":\"heading\",\"title\":\"Your Address\",\"type\":\"heading\",\"sort_order\":8,\"class\":\"\"},\"telephone\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"telephone\",\"title\":\"Telephone\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"},{\"telephone\":true,\"text\":\"Please enter a valid telephone number\"}],\"placeholder\":\"050 123 45 54\",\"type\":\"tel\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"fax\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"fax\",\"title\":\"Fax:\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":34,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"mask\":\"\"},\"customer_group_id\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"customer_group_id\",\"title\":\"Customer Group\",\"tooltip\":\"\",\"type\":\"radio\",\"refresh\":\"2\",\"custom\":0,\"sort_order\":10,\"class\":\"\",\"options\":[{\"customer_group_id\":\"1\",\"approval\":\"0\",\"sort_order\":\"1\",\"language_id\":\"1\",\"name\":\"Default\",\"description\":\"test\",\"value\":\"1\",\"title\":\"Default\"}]},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":11,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":12,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":13,\"class\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":14,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":15,\"class\":\"country\",\"options\":[{\"name\":\"Aaland Islands\",\"iso_code_2\":\"AX\",\"iso_code_3\":\"ALA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"244\"},{\"name\":\"Afghanistan\",\"iso_code_2\":\"AF\",\"iso_code_3\":\"AFG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"1\"},{\"name\":\"Albania\",\"iso_code_2\":\"AL\",\"iso_code_3\":\"ALB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"2\"},{\"name\":\"Algeria\",\"iso_code_2\":\"DZ\",\"iso_code_3\":\"DZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"3\"},{\"name\":\"American Samoa\",\"iso_code_2\":\"AS\",\"iso_code_3\":\"ASM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"4\"},{\"name\":\"Andorra\",\"iso_code_2\":\"AD\",\"iso_code_3\":\"AND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"5\"},{\"name\":\"Angola\",\"iso_code_2\":\"AO\",\"iso_code_3\":\"AGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"6\"},{\"name\":\"Anguilla\",\"iso_code_2\":\"AI\",\"iso_code_3\":\"AIA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"7\"},{\"name\":\"Antarctica\",\"iso_code_2\":\"AQ\",\"iso_code_3\":\"ATA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"8\"},{\"name\":\"Antigua and Barbuda\",\"iso_code_2\":\"AG\",\"iso_code_3\":\"ATG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"9\"},{\"name\":\"Argentina\",\"iso_code_2\":\"AR\",\"iso_code_3\":\"ARG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"10\"},{\"name\":\"Armenia\",\"iso_code_2\":\"AM\",\"iso_code_3\":\"ARM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"11\"},{\"name\":\"Aruba\",\"iso_code_2\":\"AW\",\"iso_code_3\":\"ABW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"12\"},{\"name\":\"Ascension Island (British)\",\"iso_code_2\":\"AC\",\"iso_code_3\":\"ASC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"252\"},{\"name\":\"Australia\",\"iso_code_2\":\"AU\",\"iso_code_3\":\"AUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"13\"},{\"name\":\"Austria\",\"iso_code_2\":\"AT\",\"iso_code_3\":\"AUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"14\"},{\"name\":\"Azerbaijan\",\"iso_code_2\":\"AZ\",\"iso_code_3\":\"AZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"15\"},{\"name\":\"Bahamas\",\"iso_code_2\":\"BS\",\"iso_code_3\":\"BHS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"16\"},{\"name\":\"Bahrain\",\"iso_code_2\":\"BH\",\"iso_code_3\":\"BHR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"17\"},{\"name\":\"Bangladesh\",\"iso_code_2\":\"BD\",\"iso_code_3\":\"BGD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"18\"},{\"name\":\"Barbados\",\"iso_code_2\":\"BB\",\"iso_code_3\":\"BRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"19\"},{\"name\":\"Belarus\",\"iso_code_2\":\"BY\",\"iso_code_3\":\"BLR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"20\"},{\"name\":\"Belgium\",\"iso_code_2\":\"BE\",\"iso_code_3\":\"BEL\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"21\"},{\"name\":\"Belize\",\"iso_code_2\":\"BZ\",\"iso_code_3\":\"BLZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"22\"},{\"name\":\"Benin\",\"iso_code_2\":\"BJ\",\"iso_code_3\":\"BEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"23\"},{\"name\":\"Bermuda\",\"iso_code_2\":\"BM\",\"iso_code_3\":\"BMU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"24\"},{\"name\":\"Bhutan\",\"iso_code_2\":\"BT\",\"iso_code_3\":\"BTN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"25\"},{\"name\":\"Bolivia\",\"iso_code_2\":\"BO\",\"iso_code_3\":\"BOL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"26\"},{\"name\":\"Bonaire, Sint Eustatius and Saba\",\"iso_code_2\":\"BQ\",\"iso_code_3\":\"BES\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"245\"},{\"name\":\"Bosnia and Herzegovina\",\"iso_code_2\":\"BA\",\"iso_code_3\":\"BIH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"27\"},{\"name\":\"Botswana\",\"iso_code_2\":\"BW\",\"iso_code_3\":\"BWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"28\"},{\"name\":\"Bouvet Island\",\"iso_code_2\":\"BV\",\"iso_code_3\":\"BVT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"29\"},{\"name\":\"Brazil\",\"iso_code_2\":\"BR\",\"iso_code_3\":\"BRA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"30\"},{\"name\":\"British Indian Ocean Territory\",\"iso_code_2\":\"IO\",\"iso_code_3\":\"IOT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"31\"},{\"name\":\"Brunei Darussalam\",\"iso_code_2\":\"BN\",\"iso_code_3\":\"BRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"32\"},{\"name\":\"Bulgaria\",\"iso_code_2\":\"BG\",\"iso_code_3\":\"BGR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"33\"},{\"name\":\"Burkina Faso\",\"iso_code_2\":\"BF\",\"iso_code_3\":\"BFA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"34\"},{\"name\":\"Burundi\",\"iso_code_2\":\"BI\",\"iso_code_3\":\"BDI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"35\"},{\"name\":\"Cambodia\",\"iso_code_2\":\"KH\",\"iso_code_3\":\"KHM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"36\"},{\"name\":\"Cameroon\",\"iso_code_2\":\"CM\",\"iso_code_3\":\"CMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"37\"},{\"name\":\"Canada\",\"iso_code_2\":\"CA\",\"iso_code_3\":\"CAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"38\"},{\"name\":\"Canary Islands\",\"iso_code_2\":\"IC\",\"iso_code_3\":\"ICA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"251\"},{\"name\":\"Cape Verde\",\"iso_code_2\":\"CV\",\"iso_code_3\":\"CPV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"39\"},{\"name\":\"Cayman Islands\",\"iso_code_2\":\"KY\",\"iso_code_3\":\"CYM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"40\"},{\"name\":\"Central African Republic\",\"iso_code_2\":\"CF\",\"iso_code_3\":\"CAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"41\"},{\"name\":\"Chad\",\"iso_code_2\":\"TD\",\"iso_code_3\":\"TCD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"42\"},{\"name\":\"Chile\",\"iso_code_2\":\"CL\",\"iso_code_3\":\"CHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"43\"},{\"name\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"44\"},{\"name\":\"Christmas Island\",\"iso_code_2\":\"CX\",\"iso_code_3\":\"CXR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"45\"},{\"name\":\"Cocos (Keeling) Islands\",\"iso_code_2\":\"CC\",\"iso_code_3\":\"CCK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"46\"},{\"name\":\"Colombia\",\"iso_code_2\":\"CO\",\"iso_code_3\":\"COL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"47\"},{\"name\":\"Comoros\",\"iso_code_2\":\"KM\",\"iso_code_3\":\"COM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"48\"},{\"name\":\"Congo\",\"iso_code_2\":\"CG\",\"iso_code_3\":\"COG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"49\"},{\"name\":\"Cook Islands\",\"iso_code_2\":\"CK\",\"iso_code_3\":\"COK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"50\"},{\"name\":\"Costa Rica\",\"iso_code_2\":\"CR\",\"iso_code_3\":\"CRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"51\"},{\"name\":\"Cote D\'Ivoire\",\"iso_code_2\":\"CI\",\"iso_code_3\":\"CIV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"52\"},{\"name\":\"Croatia\",\"iso_code_2\":\"HR\",\"iso_code_3\":\"HRV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"53\"},{\"name\":\"Cuba\",\"iso_code_2\":\"CU\",\"iso_code_3\":\"CUB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"54\"},{\"name\":\"Curacao\",\"iso_code_2\":\"CW\",\"iso_code_3\":\"CUW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"246\"},{\"name\":\"Cyprus\",\"iso_code_2\":\"CY\",\"iso_code_3\":\"CYP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"55\"},{\"name\":\"Czech Republic\",\"iso_code_2\":\"CZ\",\"iso_code_3\":\"CZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"56\"},{\"name\":\"Democratic Republic of Congo\",\"iso_code_2\":\"CD\",\"iso_code_3\":\"COD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"237\"},{\"name\":\"Denmark\",\"iso_code_2\":\"DK\",\"iso_code_3\":\"DNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"57\"},{\"name\":\"Djibouti\",\"iso_code_2\":\"DJ\",\"iso_code_3\":\"DJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"58\"},{\"name\":\"Dominica\",\"iso_code_2\":\"DM\",\"iso_code_3\":\"DMA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"59\"},{\"name\":\"Dominican Republic\",\"iso_code_2\":\"DO\",\"iso_code_3\":\"DOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"60\"},{\"name\":\"East Timor\",\"iso_code_2\":\"TL\",\"iso_code_3\":\"TLS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"61\"},{\"name\":\"Ecuador\",\"iso_code_2\":\"EC\",\"iso_code_3\":\"ECU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"62\"},{\"name\":\"Egypt\",\"iso_code_2\":\"EG\",\"iso_code_3\":\"EGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"63\"},{\"name\":\"El Salvador\",\"iso_code_2\":\"SV\",\"iso_code_3\":\"SLV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"64\"},{\"name\":\"Equatorial Guinea\",\"iso_code_2\":\"GQ\",\"iso_code_3\":\"GNQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"65\"},{\"name\":\"Eritrea\",\"iso_code_2\":\"ER\",\"iso_code_3\":\"ERI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"66\"},{\"name\":\"Estonia\",\"iso_code_2\":\"EE\",\"iso_code_3\":\"EST\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"67\"},{\"name\":\"Ethiopia\",\"iso_code_2\":\"ET\",\"iso_code_3\":\"ETH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"68\"},{\"name\":\"Falkland Islands (Malvinas)\",\"iso_code_2\":\"FK\",\"iso_code_3\":\"FLK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"69\"},{\"name\":\"Faroe Islands\",\"iso_code_2\":\"FO\",\"iso_code_3\":\"FRO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"70\"},{\"name\":\"Fiji\",\"iso_code_2\":\"FJ\",\"iso_code_3\":\"FJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"71\"},{\"name\":\"Finland\",\"iso_code_2\":\"FI\",\"iso_code_3\":\"FIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"72\"},{\"name\":\"France, Metropolitan\",\"iso_code_2\":\"FR\",\"iso_code_3\":\"FRA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"74\"},{\"name\":\"French Guiana\",\"iso_code_2\":\"GF\",\"iso_code_3\":\"GUF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"75\"},{\"name\":\"French Polynesia\",\"iso_code_2\":\"PF\",\"iso_code_3\":\"PYF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"76\"},{\"name\":\"French Southern Territories\",\"iso_code_2\":\"TF\",\"iso_code_3\":\"ATF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"77\"},{\"name\":\"FYROM\",\"iso_code_2\":\"MK\",\"iso_code_3\":\"MKD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"126\"},{\"name\":\"Gabon\",\"iso_code_2\":\"GA\",\"iso_code_3\":\"GAB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"78\"},{\"name\":\"Gambia\",\"iso_code_2\":\"GM\",\"iso_code_3\":\"GMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"79\"},{\"name\":\"Georgia\",\"iso_code_2\":\"GE\",\"iso_code_3\":\"GEO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"80\"},{\"name\":\"Germany\",\"iso_code_2\":\"DE\",\"iso_code_3\":\"DEU\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"81\"},{\"name\":\"Ghana\",\"iso_code_2\":\"GH\",\"iso_code_3\":\"GHA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"82\"},{\"name\":\"Gibraltar\",\"iso_code_2\":\"GI\",\"iso_code_3\":\"GIB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"83\"},{\"name\":\"Greece\",\"iso_code_2\":\"GR\",\"iso_code_3\":\"GRC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"84\"},{\"name\":\"Greenland\",\"iso_code_2\":\"GL\",\"iso_code_3\":\"GRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"85\"},{\"name\":\"Grenada\",\"iso_code_2\":\"GD\",\"iso_code_3\":\"GRD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"86\"},{\"name\":\"Guadeloupe\",\"iso_code_2\":\"GP\",\"iso_code_3\":\"GLP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"87\"},{\"name\":\"Guam\",\"iso_code_2\":\"GU\",\"iso_code_3\":\"GUM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"88\"},{\"name\":\"Guatemala\",\"iso_code_2\":\"GT\",\"iso_code_3\":\"GTM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"89\"},{\"name\":\"Guernsey\",\"iso_code_2\":\"GG\",\"iso_code_3\":\"GGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"256\"},{\"name\":\"Guinea\",\"iso_code_2\":\"GN\",\"iso_code_3\":\"GIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"90\"},{\"name\":\"Guinea-Bissau\",\"iso_code_2\":\"GW\",\"iso_code_3\":\"GNB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"91\"},{\"name\":\"Guyana\",\"iso_code_2\":\"GY\",\"iso_code_3\":\"GUY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"92\"},{\"name\":\"Haiti\",\"iso_code_2\":\"HT\",\"iso_code_3\":\"HTI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"93\"},{\"name\":\"Heard and Mc Donald Islands\",\"iso_code_2\":\"HM\",\"iso_code_3\":\"HMD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"94\"},{\"name\":\"Honduras\",\"iso_code_2\":\"HN\",\"iso_code_3\":\"HND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"95\"},{\"name\":\"Hong Kong\",\"iso_code_2\":\"HK\",\"iso_code_3\":\"HKG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"96\"},{\"name\":\"Hungary\",\"iso_code_2\":\"HU\",\"iso_code_3\":\"HUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"97\"},{\"name\":\"Iceland\",\"iso_code_2\":\"IS\",\"iso_code_3\":\"ISL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"98\"},{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"},{\"name\":\"Indonesia\",\"iso_code_2\":\"ID\",\"iso_code_3\":\"IDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"100\"},{\"name\":\"Iran (Islamic Republic of)\",\"iso_code_2\":\"IR\",\"iso_code_3\":\"IRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"101\"},{\"name\":\"Iraq\",\"iso_code_2\":\"IQ\",\"iso_code_3\":\"IRQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"102\"},{\"name\":\"Ireland\",\"iso_code_2\":\"IE\",\"iso_code_3\":\"IRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"103\"},{\"name\":\"Isle of Man\",\"iso_code_2\":\"IM\",\"iso_code_3\":\"IMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"254\"},{\"name\":\"Israel\",\"iso_code_2\":\"IL\",\"iso_code_3\":\"ISR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"104\"},{\"name\":\"Italy\",\"iso_code_2\":\"IT\",\"iso_code_3\":\"ITA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"105\"},{\"name\":\"Jamaica\",\"iso_code_2\":\"JM\",\"iso_code_3\":\"JAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"106\"},{\"name\":\"Japan\",\"iso_code_2\":\"JP\",\"iso_code_3\":\"JPN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"107\"},{\"name\":\"Jersey\",\"iso_code_2\":\"JE\",\"iso_code_3\":\"JEY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"257\"},{\"name\":\"Jordan\",\"iso_code_2\":\"JO\",\"iso_code_3\":\"JOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"108\"},{\"name\":\"Kazakhstan\",\"iso_code_2\":\"KZ\",\"iso_code_3\":\"KAZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"109\"},{\"name\":\"Kenya\",\"iso_code_2\":\"KE\",\"iso_code_3\":\"KEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"110\"},{\"name\":\"Kiribati\",\"iso_code_2\":\"KI\",\"iso_code_3\":\"KIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"111\"},{\"name\":\"Kosovo, Republic of\",\"iso_code_2\":\"XK\",\"iso_code_3\":\"UNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"253\"},{\"name\":\"Kuwait\",\"iso_code_2\":\"KW\",\"iso_code_3\":\"KWT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"114\"},{\"name\":\"Kyrgyzstan\",\"iso_code_2\":\"KG\",\"iso_code_3\":\"KGZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"115\"},{\"name\":\"Lao People\'s Democratic Republic\",\"iso_code_2\":\"LA\",\"iso_code_3\":\"LAO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"116\"},{\"name\":\"Latvia\",\"iso_code_2\":\"LV\",\"iso_code_3\":\"LVA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"117\"},{\"name\":\"Lebanon\",\"iso_code_2\":\"LB\",\"iso_code_3\":\"LBN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"118\"},{\"name\":\"Lesotho\",\"iso_code_2\":\"LS\",\"iso_code_3\":\"LSO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"119\"},{\"name\":\"Liberia\",\"iso_code_2\":\"LR\",\"iso_code_3\":\"LBR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"120\"},{\"name\":\"Libyan Arab Jamahiriya\",\"iso_code_2\":\"LY\",\"iso_code_3\":\"LBY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"121\"},{\"name\":\"Liechtenstein\",\"iso_code_2\":\"LI\",\"iso_code_3\":\"LIE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"122\"},{\"name\":\"Lithuania\",\"iso_code_2\":\"LT\",\"iso_code_3\":\"LTU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"123\"},{\"name\":\"Luxembourg\",\"iso_code_2\":\"LU\",\"iso_code_3\":\"LUX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"124\"},{\"name\":\"Macau\",\"iso_code_2\":\"MO\",\"iso_code_3\":\"MAC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"125\"},{\"name\":\"Madagascar\",\"iso_code_2\":\"MG\",\"iso_code_3\":\"MDG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"127\"},{\"name\":\"Malawi\",\"iso_code_2\":\"MW\",\"iso_code_3\":\"MWI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"128\"},{\"name\":\"Malaysia\",\"iso_code_2\":\"MY\",\"iso_code_3\":\"MYS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"129\"},{\"name\":\"Maldives\",\"iso_code_2\":\"MV\",\"iso_code_3\":\"MDV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"130\"},{\"name\":\"Mali\",\"iso_code_2\":\"ML\",\"iso_code_3\":\"MLI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"131\"},{\"name\":\"Malta\",\"iso_code_2\":\"MT\",\"iso_code_3\":\"MLT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"132\"},{\"name\":\"Marshall Islands\",\"iso_code_2\":\"MH\",\"iso_code_3\":\"MHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"133\"},{\"name\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"134\"},{\"name\":\"Mauritania\",\"iso_code_2\":\"MR\",\"iso_code_3\":\"MRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"135\"},{\"name\":\"Mauritius\",\"iso_code_2\":\"MU\",\"iso_code_3\":\"MUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"136\"},{\"name\":\"Mayotte\",\"iso_code_2\":\"YT\",\"iso_code_3\":\"MYT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"137\"},{\"name\":\"Mexico\",\"iso_code_2\":\"MX\",\"iso_code_3\":\"MEX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"138\"},{\"name\":\"Micronesia, Federated States of\",\"iso_code_2\":\"FM\",\"iso_code_3\":\"FSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"139\"},{\"name\":\"Moldova, Republic of\",\"iso_code_2\":\"MD\",\"iso_code_3\":\"MDA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"140\"},{\"name\":\"Monaco\",\"iso_code_2\":\"MC\",\"iso_code_3\":\"MCO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"141\"},{\"name\":\"Mongolia\",\"iso_code_2\":\"MN\",\"iso_code_3\":\"MNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"142\"},{\"name\":\"Montenegro\",\"iso_code_2\":\"ME\",\"iso_code_3\":\"MNE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"242\"},{\"name\":\"Montserrat\",\"iso_code_2\":\"MS\",\"iso_code_3\":\"MSR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"143\"},{\"name\":\"Morocco\",\"iso_code_2\":\"MA\",\"iso_code_3\":\"MAR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"144\"},{\"name\":\"Mozambique\",\"iso_code_2\":\"MZ\",\"iso_code_3\":\"MOZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"145\"},{\"name\":\"Myanmar\",\"iso_code_2\":\"MM\",\"iso_code_3\":\"MMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"146\"},{\"name\":\"Namibia\",\"iso_code_2\":\"NA\",\"iso_code_3\":\"NAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"147\"},{\"name\":\"Nauru\",\"iso_code_2\":\"NR\",\"iso_code_3\":\"NRU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"148\"},{\"name\":\"Nepal\",\"iso_code_2\":\"NP\",\"iso_code_3\":\"NPL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"149\"},{\"name\":\"Netherlands\",\"iso_code_2\":\"NL\",\"iso_code_3\":\"NLD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"150\"},{\"name\":\"Netherlands Antilles\",\"iso_code_2\":\"AN\",\"iso_code_3\":\"ANT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"151\"},{\"name\":\"New Caledonia\",\"iso_code_2\":\"NC\",\"iso_code_3\":\"NCL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"152\"},{\"name\":\"New Zealand\",\"iso_code_2\":\"NZ\",\"iso_code_3\":\"NZL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"153\"},{\"name\":\"Nicaragua\",\"iso_code_2\":\"NI\",\"iso_code_3\":\"NIC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"154\"},{\"name\":\"Niger\",\"iso_code_2\":\"NE\",\"iso_code_3\":\"NER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"155\"},{\"name\":\"Nigeria\",\"iso_code_2\":\"NG\",\"iso_code_3\":\"NGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"156\"},{\"name\":\"Niue\",\"iso_code_2\":\"NU\",\"iso_code_3\":\"NIU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"157\"},{\"name\":\"Norfolk Island\",\"iso_code_2\":\"NF\",\"iso_code_3\":\"NFK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"158\"},{\"name\":\"North Korea\",\"iso_code_2\":\"KP\",\"iso_code_3\":\"PRK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"112\"},{\"name\":\"Northern Mariana Islands\",\"iso_code_2\":\"MP\",\"iso_code_3\":\"MNP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"159\"},{\"name\":\"Norway\",\"iso_code_2\":\"NO\",\"iso_code_3\":\"NOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"160\"},{\"name\":\"Oman\",\"iso_code_2\":\"OM\",\"iso_code_3\":\"OMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"161\"},{\"name\":\"Pakistan\",\"iso_code_2\":\"PK\",\"iso_code_3\":\"PAK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"162\"},{\"name\":\"Palau\",\"iso_code_2\":\"PW\",\"iso_code_3\":\"PLW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"163\"},{\"name\":\"Palestinian Territory, Occupied\",\"iso_code_2\":\"PS\",\"iso_code_3\":\"PSE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"247\"},{\"name\":\"Panama\",\"iso_code_2\":\"PA\",\"iso_code_3\":\"PAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"164\"},{\"name\":\"Papua New Guinea\",\"iso_code_2\":\"PG\",\"iso_code_3\":\"PNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"165\"},{\"name\":\"Paraguay\",\"iso_code_2\":\"PY\",\"iso_code_3\":\"PRY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"166\"},{\"name\":\"Peru\",\"iso_code_2\":\"PE\",\"iso_code_3\":\"PER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"167\"},{\"name\":\"Philippines\",\"iso_code_2\":\"PH\",\"iso_code_3\":\"PHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"168\"},{\"name\":\"Pitcairn\",\"iso_code_2\":\"PN\",\"iso_code_3\":\"PCN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"169\"},{\"name\":\"Poland\",\"iso_code_2\":\"PL\",\"iso_code_3\":\"POL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"170\"},{\"name\":\"Portugal\",\"iso_code_2\":\"PT\",\"iso_code_3\":\"PRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"171\"},{\"name\":\"Puerto Rico\",\"iso_code_2\":\"PR\",\"iso_code_3\":\"PRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"172\"},{\"name\":\"Qatar\",\"iso_code_2\":\"QA\",\"iso_code_3\":\"QAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"173\"},{\"name\":\"Reunion\",\"iso_code_2\":\"RE\",\"iso_code_3\":\"REU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"174\"},{\"name\":\"Romania\",\"iso_code_2\":\"RO\",\"iso_code_3\":\"ROM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"175\"},{\"name\":\"Russian Federation\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"176\"},{\"name\":\"Rwanda\",\"iso_code_2\":\"RW\",\"iso_code_3\":\"RWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"177\"},{\"name\":\"Saint Kitts and Nevis\",\"iso_code_2\":\"KN\",\"iso_code_3\":\"KNA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"178\"},{\"name\":\"Saint Lucia\",\"iso_code_2\":\"LC\",\"iso_code_3\":\"LCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"179\"},{\"name\":\"Saint Vincent and the Grenadines\",\"iso_code_2\":\"VC\",\"iso_code_3\":\"VCT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"180\"},{\"name\":\"Samoa\",\"iso_code_2\":\"WS\",\"iso_code_3\":\"WSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"181\"},{\"name\":\"San Marino\",\"iso_code_2\":\"SM\",\"iso_code_3\":\"SMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"182\"},{\"name\":\"Sao Tome and Principe\",\"iso_code_2\":\"ST\",\"iso_code_3\":\"STP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"183\"},{\"name\":\"Saudi Arabia\",\"iso_code_2\":\"SA\",\"iso_code_3\":\"SAU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"184\"},{\"name\":\"Senegal\",\"iso_code_2\":\"SN\",\"iso_code_3\":\"SEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"185\"},{\"name\":\"Serbia\",\"iso_code_2\":\"RS\",\"iso_code_3\":\"SRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"243\"},{\"name\":\"Seychelles\",\"iso_code_2\":\"SC\",\"iso_code_3\":\"SYC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"186\"},{\"name\":\"Sierra Leone\",\"iso_code_2\":\"SL\",\"iso_code_3\":\"SLE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"187\"},{\"name\":\"Singapore\",\"iso_code_2\":\"SG\",\"iso_code_3\":\"SGP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"188\"},{\"name\":\"Slovak Republic\",\"iso_code_2\":\"SK\",\"iso_code_3\":\"SVK\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city} {postcode}\\r\\n{zone}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"189\"},{\"name\":\"Slovenia\",\"iso_code_2\":\"SI\",\"iso_code_3\":\"SVN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"190\"},{\"name\":\"Solomon Islands\",\"iso_code_2\":\"SB\",\"iso_code_3\":\"SLB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"191\"},{\"name\":\"Somalia\",\"iso_code_2\":\"SO\",\"iso_code_3\":\"SOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"192\"},{\"name\":\"South Africa\",\"iso_code_2\":\"ZA\",\"iso_code_3\":\"ZAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"193\"},{\"name\":\"South Georgia &amp; South Sandwich Islands\",\"iso_code_2\":\"GS\",\"iso_code_3\":\"SGS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"194\"},{\"name\":\"South Korea\",\"iso_code_2\":\"KR\",\"iso_code_3\":\"KOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"113\"},{\"name\":\"South Sudan\",\"iso_code_2\":\"SS\",\"iso_code_3\":\"SSD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"248\"},{\"name\":\"Spain\",\"iso_code_2\":\"ES\",\"iso_code_3\":\"ESP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"195\"},{\"name\":\"Sri Lanka\",\"iso_code_2\":\"LK\",\"iso_code_3\":\"LKA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"196\"},{\"name\":\"St. Barthelemy\",\"iso_code_2\":\"BL\",\"iso_code_3\":\"BLM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"249\"},{\"name\":\"St. Helena\",\"iso_code_2\":\"SH\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"197\"},{\"name\":\"St. Martin (French part)\",\"iso_code_2\":\"MF\",\"iso_code_3\":\"MAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"250\"},{\"name\":\"St. Pierre and Miquelon\",\"iso_code_2\":\"PM\",\"iso_code_3\":\"SPM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"198\"},{\"name\":\"Sudan\",\"iso_code_2\":\"SD\",\"iso_code_3\":\"SDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"199\"},{\"name\":\"Suriname\",\"iso_code_2\":\"SR\",\"iso_code_3\":\"SUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"200\"},{\"name\":\"Svalbard and Jan Mayen Islands\",\"iso_code_2\":\"SJ\",\"iso_code_3\":\"SJM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"201\"},{\"name\":\"Swaziland\",\"iso_code_2\":\"SZ\",\"iso_code_3\":\"SWZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"202\"},{\"name\":\"Sweden\",\"iso_code_2\":\"SE\",\"iso_code_3\":\"SWE\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"203\"},{\"name\":\"Switzerland\",\"iso_code_2\":\"CH\",\"iso_code_3\":\"CHE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"204\"},{\"name\":\"Syrian Arab Republic\",\"iso_code_2\":\"SY\",\"iso_code_3\":\"SYR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"205\"},{\"name\":\"Taiwan\",\"iso_code_2\":\"TW\",\"iso_code_3\":\"TWN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"206\"},{\"name\":\"Tajikistan\",\"iso_code_2\":\"TJ\",\"iso_code_3\":\"TJK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"207\"},{\"name\":\"Tanzania, United Republic of\",\"iso_code_2\":\"TZ\",\"iso_code_3\":\"TZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"208\"},{\"name\":\"Thailand\",\"iso_code_2\":\"TH\",\"iso_code_3\":\"THA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"209\"},{\"name\":\"Togo\",\"iso_code_2\":\"TG\",\"iso_code_3\":\"TGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"210\"},{\"name\":\"Tokelau\",\"iso_code_2\":\"TK\",\"iso_code_3\":\"TKL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"211\"},{\"name\":\"Tonga\",\"iso_code_2\":\"TO\",\"iso_code_3\":\"TON\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"212\"},{\"name\":\"Trinidad and Tobago\",\"iso_code_2\":\"TT\",\"iso_code_3\":\"TTO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"213\"},{\"name\":\"Tristan da Cunha\",\"iso_code_2\":\"TA\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"255\"},{\"name\":\"Tunisia\",\"iso_code_2\":\"TN\",\"iso_code_3\":\"TUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"214\"},{\"name\":\"Turkey\",\"iso_code_2\":\"TR\",\"iso_code_3\":\"TUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"215\"},{\"name\":\"Turkmenistan\",\"iso_code_2\":\"TM\",\"iso_code_3\":\"TKM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"216\"},{\"name\":\"Turks and Caicos Islands\",\"iso_code_2\":\"TC\",\"iso_code_3\":\"TCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"217\"},{\"name\":\"Tuvalu\",\"iso_code_2\":\"TV\",\"iso_code_3\":\"TUV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"218\"},{\"name\":\"Uganda\",\"iso_code_2\":\"UG\",\"iso_code_3\":\"UGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"219\"},{\"name\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"220\"},{\"name\":\"United Arab Emirates\",\"iso_code_2\":\"AE\",\"iso_code_3\":\"ARE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"221\"},{\"name\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"222\"},{\"name\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"223\"},{\"name\":\"United States Minor Outlying Islands\",\"iso_code_2\":\"UM\",\"iso_code_3\":\"UMI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"224\"},{\"name\":\"Uruguay\",\"iso_code_2\":\"UY\",\"iso_code_3\":\"URY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"225\"},{\"name\":\"Uzbekistan\",\"iso_code_2\":\"UZ\",\"iso_code_3\":\"UZB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"226\"},{\"name\":\"Vanuatu\",\"iso_code_2\":\"VU\",\"iso_code_3\":\"VUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"227\"},{\"name\":\"Vatican City State (Holy See)\",\"iso_code_2\":\"VA\",\"iso_code_3\":\"VAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"228\"},{\"name\":\"Venezuela\",\"iso_code_2\":\"VE\",\"iso_code_3\":\"VEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"229\"},{\"name\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"230\"},{\"name\":\"Virgin Islands (British)\",\"iso_code_2\":\"VG\",\"iso_code_3\":\"VGB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"231\"},{\"name\":\"Virgin Islands (U.S.)\",\"iso_code_2\":\"VI\",\"iso_code_3\":\"VIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"232\"},{\"name\":\"Wallis and Futuna Islands\",\"iso_code_2\":\"WF\",\"iso_code_3\":\"WLF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"233\"},{\"name\":\"Western Sahara\",\"iso_code_2\":\"EH\",\"iso_code_3\":\"ESH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"234\"},{\"name\":\"Yemen\",\"iso_code_2\":\"YE\",\"iso_code_3\":\"YEM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"235\"},{\"name\":\"Zambia\",\"iso_code_2\":\"ZM\",\"iso_code_3\":\"ZMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"238\"},{\"name\":\"Zimbabwe\",\"iso_code_2\":\"ZW\",\"iso_code_3\":\"ZWE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"239\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":16,\"class\":\"zone\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]},\"shipping_address\":{\"display\":1,\"value\":1,\"id\":\"shipping_address\",\"title\":\"My delivery and billing addresses are the same.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"error_step_payment_address_fields_shipping_address\"}],\"type\":\"checkbox\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":18,\"class\":\"\"},\"agree\":{\"display\":1,\"require\":1,\"value\":\"0\",\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=3\\\" class=\\\"agree\\\"><b>Privacy Policy<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Privacy Policy!\",\"information_id\":\"3\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":19,\"class\":\"\",\"information_id\":\"3\"},\"password\":{\"id\":\"password\",\"title\":\"Password\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":20,\"text\":\"Password must be between 4 and 20 characters!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":6,\"class\":\"\"},\"confirm\":{\"id\":\"confirm\",\"title\":\"Password Confirm\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_password\",\"text\":\"Password confirmation does not match password!\"},{\"min_length\":\"1\",\"text\":\"Password confirmation does not match password!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":7,\"class\":\"\"},\"newsletter\":{\"id\":\"newsletter\",\"title\":\"I wish to subscribe to the Your Store newsletter.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"You must subsribe to our newsletter to make the order\"}],\"type\":\"checkbox\",\"custom\":0,\"class\":\"\",\"refresh\":\"0\",\"sort_order\":17,\"value\":\"1\"}},\"id\":\"payment_address\",\"title\":\"Payment details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"2\",\"column\":1,\"row\":2,\"width\":\"50\"},\"shipping_address\":{\"display\":1,\"require\":0,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":6,\"class\":\"\",\"mask\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":7,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":8,\"class\":\"\",\"options\":[{\"name\":\"Aaland Islands\",\"iso_code_2\":\"AX\",\"iso_code_3\":\"ALA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"244\"},{\"name\":\"Afghanistan\",\"iso_code_2\":\"AF\",\"iso_code_3\":\"AFG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"1\"},{\"name\":\"Albania\",\"iso_code_2\":\"AL\",\"iso_code_3\":\"ALB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"2\"},{\"name\":\"Algeria\",\"iso_code_2\":\"DZ\",\"iso_code_3\":\"DZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"3\"},{\"name\":\"American Samoa\",\"iso_code_2\":\"AS\",\"iso_code_3\":\"ASM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"4\"},{\"name\":\"Andorra\",\"iso_code_2\":\"AD\",\"iso_code_3\":\"AND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"5\"},{\"name\":\"Angola\",\"iso_code_2\":\"AO\",\"iso_code_3\":\"AGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"6\"},{\"name\":\"Anguilla\",\"iso_code_2\":\"AI\",\"iso_code_3\":\"AIA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"7\"},{\"name\":\"Antarctica\",\"iso_code_2\":\"AQ\",\"iso_code_3\":\"ATA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"8\"},{\"name\":\"Antigua and Barbuda\",\"iso_code_2\":\"AG\",\"iso_code_3\":\"ATG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"9\"},{\"name\":\"Argentina\",\"iso_code_2\":\"AR\",\"iso_code_3\":\"ARG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"10\"},{\"name\":\"Armenia\",\"iso_code_2\":\"AM\",\"iso_code_3\":\"ARM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"11\"},{\"name\":\"Aruba\",\"iso_code_2\":\"AW\",\"iso_code_3\":\"ABW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"12\"},{\"name\":\"Ascension Island (British)\",\"iso_code_2\":\"AC\",\"iso_code_3\":\"ASC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"252\"},{\"name\":\"Australia\",\"iso_code_2\":\"AU\",\"iso_code_3\":\"AUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"13\"},{\"name\":\"Austria\",\"iso_code_2\":\"AT\",\"iso_code_3\":\"AUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"14\"},{\"name\":\"Azerbaijan\",\"iso_code_2\":\"AZ\",\"iso_code_3\":\"AZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"15\"},{\"name\":\"Bahamas\",\"iso_code_2\":\"BS\",\"iso_code_3\":\"BHS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"16\"},{\"name\":\"Bahrain\",\"iso_code_2\":\"BH\",\"iso_code_3\":\"BHR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"17\"},{\"name\":\"Bangladesh\",\"iso_code_2\":\"BD\",\"iso_code_3\":\"BGD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"18\"},{\"name\":\"Barbados\",\"iso_code_2\":\"BB\",\"iso_code_3\":\"BRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"19\"},{\"name\":\"Belarus\",\"iso_code_2\":\"BY\",\"iso_code_3\":\"BLR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"20\"},{\"name\":\"Belgium\",\"iso_code_2\":\"BE\",\"iso_code_3\":\"BEL\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"21\"},{\"name\":\"Belize\",\"iso_code_2\":\"BZ\",\"iso_code_3\":\"BLZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"22\"},{\"name\":\"Benin\",\"iso_code_2\":\"BJ\",\"iso_code_3\":\"BEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"23\"},{\"name\":\"Bermuda\",\"iso_code_2\":\"BM\",\"iso_code_3\":\"BMU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"24\"},{\"name\":\"Bhutan\",\"iso_code_2\":\"BT\",\"iso_code_3\":\"BTN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"25\"},{\"name\":\"Bolivia\",\"iso_code_2\":\"BO\",\"iso_code_3\":\"BOL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"26\"},{\"name\":\"Bonaire, Sint Eustatius and Saba\",\"iso_code_2\":\"BQ\",\"iso_code_3\":\"BES\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"245\"},{\"name\":\"Bosnia and Herzegovina\",\"iso_code_2\":\"BA\",\"iso_code_3\":\"BIH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"27\"},{\"name\":\"Botswana\",\"iso_code_2\":\"BW\",\"iso_code_3\":\"BWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"28\"},{\"name\":\"Bouvet Island\",\"iso_code_2\":\"BV\",\"iso_code_3\":\"BVT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"29\"},{\"name\":\"Brazil\",\"iso_code_2\":\"BR\",\"iso_code_3\":\"BRA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"30\"},{\"name\":\"British Indian Ocean Territory\",\"iso_code_2\":\"IO\",\"iso_code_3\":\"IOT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"31\"},{\"name\":\"Brunei Darussalam\",\"iso_code_2\":\"BN\",\"iso_code_3\":\"BRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"32\"},{\"name\":\"Bulgaria\",\"iso_code_2\":\"BG\",\"iso_code_3\":\"BGR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"33\"},{\"name\":\"Burkina Faso\",\"iso_code_2\":\"BF\",\"iso_code_3\":\"BFA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"34\"},{\"name\":\"Burundi\",\"iso_code_2\":\"BI\",\"iso_code_3\":\"BDI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"35\"},{\"name\":\"Cambodia\",\"iso_code_2\":\"KH\",\"iso_code_3\":\"KHM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"36\"},{\"name\":\"Cameroon\",\"iso_code_2\":\"CM\",\"iso_code_3\":\"CMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"37\"},{\"name\":\"Canada\",\"iso_code_2\":\"CA\",\"iso_code_3\":\"CAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"38\"},{\"name\":\"Canary Islands\",\"iso_code_2\":\"IC\",\"iso_code_3\":\"ICA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"251\"},{\"name\":\"Cape Verde\",\"iso_code_2\":\"CV\",\"iso_code_3\":\"CPV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"39\"},{\"name\":\"Cayman Islands\",\"iso_code_2\":\"KY\",\"iso_code_3\":\"CYM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"40\"},{\"name\":\"Central African Republic\",\"iso_code_2\":\"CF\",\"iso_code_3\":\"CAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"41\"},{\"name\":\"Chad\",\"iso_code_2\":\"TD\",\"iso_code_3\":\"TCD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"42\"},{\"name\":\"Chile\",\"iso_code_2\":\"CL\",\"iso_code_3\":\"CHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"43\"},{\"name\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"44\"},{\"name\":\"Christmas Island\",\"iso_code_2\":\"CX\",\"iso_code_3\":\"CXR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"45\"},{\"name\":\"Cocos (Keeling) Islands\",\"iso_code_2\":\"CC\",\"iso_code_3\":\"CCK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"46\"},{\"name\":\"Colombia\",\"iso_code_2\":\"CO\",\"iso_code_3\":\"COL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"47\"},{\"name\":\"Comoros\",\"iso_code_2\":\"KM\",\"iso_code_3\":\"COM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"48\"},{\"name\":\"Congo\",\"iso_code_2\":\"CG\",\"iso_code_3\":\"COG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"49\"},{\"name\":\"Cook Islands\",\"iso_code_2\":\"CK\",\"iso_code_3\":\"COK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"50\"},{\"name\":\"Costa Rica\",\"iso_code_2\":\"CR\",\"iso_code_3\":\"CRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"51\"},{\"name\":\"Cote D\'Ivoire\",\"iso_code_2\":\"CI\",\"iso_code_3\":\"CIV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"52\"},{\"name\":\"Croatia\",\"iso_code_2\":\"HR\",\"iso_code_3\":\"HRV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"53\"},{\"name\":\"Cuba\",\"iso_code_2\":\"CU\",\"iso_code_3\":\"CUB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"54\"},{\"name\":\"Curacao\",\"iso_code_2\":\"CW\",\"iso_code_3\":\"CUW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"246\"},{\"name\":\"Cyprus\",\"iso_code_2\":\"CY\",\"iso_code_3\":\"CYP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"55\"},{\"name\":\"Czech Republic\",\"iso_code_2\":\"CZ\",\"iso_code_3\":\"CZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"56\"},{\"name\":\"Democratic Republic of Congo\",\"iso_code_2\":\"CD\",\"iso_code_3\":\"COD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"237\"},{\"name\":\"Denmark\",\"iso_code_2\":\"DK\",\"iso_code_3\":\"DNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"57\"},{\"name\":\"Djibouti\",\"iso_code_2\":\"DJ\",\"iso_code_3\":\"DJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"58\"},{\"name\":\"Dominica\",\"iso_code_2\":\"DM\",\"iso_code_3\":\"DMA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"59\"},{\"name\":\"Dominican Republic\",\"iso_code_2\":\"DO\",\"iso_code_3\":\"DOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"60\"},{\"name\":\"East Timor\",\"iso_code_2\":\"TL\",\"iso_code_3\":\"TLS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"61\"},{\"name\":\"Ecuador\",\"iso_code_2\":\"EC\",\"iso_code_3\":\"ECU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"62\"},{\"name\":\"Egypt\",\"iso_code_2\":\"EG\",\"iso_code_3\":\"EGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"63\"},{\"name\":\"El Salvador\",\"iso_code_2\":\"SV\",\"iso_code_3\":\"SLV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"64\"},{\"name\":\"Equatorial Guinea\",\"iso_code_2\":\"GQ\",\"iso_code_3\":\"GNQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"65\"},{\"name\":\"Eritrea\",\"iso_code_2\":\"ER\",\"iso_code_3\":\"ERI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"66\"},{\"name\":\"Estonia\",\"iso_code_2\":\"EE\",\"iso_code_3\":\"EST\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"67\"},{\"name\":\"Ethiopia\",\"iso_code_2\":\"ET\",\"iso_code_3\":\"ETH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"68\"},{\"name\":\"Falkland Islands (Malvinas)\",\"iso_code_2\":\"FK\",\"iso_code_3\":\"FLK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"69\"},{\"name\":\"Faroe Islands\",\"iso_code_2\":\"FO\",\"iso_code_3\":\"FRO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"70\"},{\"name\":\"Fiji\",\"iso_code_2\":\"FJ\",\"iso_code_3\":\"FJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"71\"},{\"name\":\"Finland\",\"iso_code_2\":\"FI\",\"iso_code_3\":\"FIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"72\"},{\"name\":\"France, Metropolitan\",\"iso_code_2\":\"FR\",\"iso_code_3\":\"FRA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"74\"},{\"name\":\"French Guiana\",\"iso_code_2\":\"GF\",\"iso_code_3\":\"GUF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"75\"},{\"name\":\"French Polynesia\",\"iso_code_2\":\"PF\",\"iso_code_3\":\"PYF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"76\"},{\"name\":\"French Southern Territories\",\"iso_code_2\":\"TF\",\"iso_code_3\":\"ATF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"77\"},{\"name\":\"FYROM\",\"iso_code_2\":\"MK\",\"iso_code_3\":\"MKD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"126\"},{\"name\":\"Gabon\",\"iso_code_2\":\"GA\",\"iso_code_3\":\"GAB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"78\"},{\"name\":\"Gambia\",\"iso_code_2\":\"GM\",\"iso_code_3\":\"GMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"79\"},{\"name\":\"Georgia\",\"iso_code_2\":\"GE\",\"iso_code_3\":\"GEO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"80\"},{\"name\":\"Germany\",\"iso_code_2\":\"DE\",\"iso_code_3\":\"DEU\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"81\"},{\"name\":\"Ghana\",\"iso_code_2\":\"GH\",\"iso_code_3\":\"GHA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"82\"},{\"name\":\"Gibraltar\",\"iso_code_2\":\"GI\",\"iso_code_3\":\"GIB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"83\"},{\"name\":\"Greece\",\"iso_code_2\":\"GR\",\"iso_code_3\":\"GRC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"84\"},{\"name\":\"Greenland\",\"iso_code_2\":\"GL\",\"iso_code_3\":\"GRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"85\"},{\"name\":\"Grenada\",\"iso_code_2\":\"GD\",\"iso_code_3\":\"GRD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"86\"},{\"name\":\"Guadeloupe\",\"iso_code_2\":\"GP\",\"iso_code_3\":\"GLP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"87\"},{\"name\":\"Guam\",\"iso_code_2\":\"GU\",\"iso_code_3\":\"GUM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"88\"},{\"name\":\"Guatemala\",\"iso_code_2\":\"GT\",\"iso_code_3\":\"GTM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"89\"},{\"name\":\"Guernsey\",\"iso_code_2\":\"GG\",\"iso_code_3\":\"GGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"256\"},{\"name\":\"Guinea\",\"iso_code_2\":\"GN\",\"iso_code_3\":\"GIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"90\"},{\"name\":\"Guinea-Bissau\",\"iso_code_2\":\"GW\",\"iso_code_3\":\"GNB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"91\"},{\"name\":\"Guyana\",\"iso_code_2\":\"GY\",\"iso_code_3\":\"GUY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"92\"},{\"name\":\"Haiti\",\"iso_code_2\":\"HT\",\"iso_code_3\":\"HTI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"93\"},{\"name\":\"Heard and Mc Donald Islands\",\"iso_code_2\":\"HM\",\"iso_code_3\":\"HMD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"94\"},{\"name\":\"Honduras\",\"iso_code_2\":\"HN\",\"iso_code_3\":\"HND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"95\"},{\"name\":\"Hong Kong\",\"iso_code_2\":\"HK\",\"iso_code_3\":\"HKG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"96\"},{\"name\":\"Hungary\",\"iso_code_2\":\"HU\",\"iso_code_3\":\"HUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"97\"},{\"name\":\"Iceland\",\"iso_code_2\":\"IS\",\"iso_code_3\":\"ISL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"98\"},{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"},{\"name\":\"Indonesia\",\"iso_code_2\":\"ID\",\"iso_code_3\":\"IDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"100\"},{\"name\":\"Iran (Islamic Republic of)\",\"iso_code_2\":\"IR\",\"iso_code_3\":\"IRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"101\"},{\"name\":\"Iraq\",\"iso_code_2\":\"IQ\",\"iso_code_3\":\"IRQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"102\"},{\"name\":\"Ireland\",\"iso_code_2\":\"IE\",\"iso_code_3\":\"IRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"103\"},{\"name\":\"Isle of Man\",\"iso_code_2\":\"IM\",\"iso_code_3\":\"IMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"254\"},{\"name\":\"Israel\",\"iso_code_2\":\"IL\",\"iso_code_3\":\"ISR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"104\"},{\"name\":\"Italy\",\"iso_code_2\":\"IT\",\"iso_code_3\":\"ITA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"105\"},{\"name\":\"Jamaica\",\"iso_code_2\":\"JM\",\"iso_code_3\":\"JAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"106\"},{\"name\":\"Japan\",\"iso_code_2\":\"JP\",\"iso_code_3\":\"JPN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"107\"},{\"name\":\"Jersey\",\"iso_code_2\":\"JE\",\"iso_code_3\":\"JEY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"257\"},{\"name\":\"Jordan\",\"iso_code_2\":\"JO\",\"iso_code_3\":\"JOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"108\"},{\"name\":\"Kazakhstan\",\"iso_code_2\":\"KZ\",\"iso_code_3\":\"KAZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"109\"},{\"name\":\"Kenya\",\"iso_code_2\":\"KE\",\"iso_code_3\":\"KEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"110\"},{\"name\":\"Kiribati\",\"iso_code_2\":\"KI\",\"iso_code_3\":\"KIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"111\"},{\"name\":\"Kosovo, Republic of\",\"iso_code_2\":\"XK\",\"iso_code_3\":\"UNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"253\"},{\"name\":\"Kuwait\",\"iso_code_2\":\"KW\",\"iso_code_3\":\"KWT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"114\"},{\"name\":\"Kyrgyzstan\",\"iso_code_2\":\"KG\",\"iso_code_3\":\"KGZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"115\"},{\"name\":\"Lao People\'s Democratic Republic\",\"iso_code_2\":\"LA\",\"iso_code_3\":\"LAO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"116\"},{\"name\":\"Latvia\",\"iso_code_2\":\"LV\",\"iso_code_3\":\"LVA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"117\"},{\"name\":\"Lebanon\",\"iso_code_2\":\"LB\",\"iso_code_3\":\"LBN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"118\"},{\"name\":\"Lesotho\",\"iso_code_2\":\"LS\",\"iso_code_3\":\"LSO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"119\"},{\"name\":\"Liberia\",\"iso_code_2\":\"LR\",\"iso_code_3\":\"LBR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"120\"},{\"name\":\"Libyan Arab Jamahiriya\",\"iso_code_2\":\"LY\",\"iso_code_3\":\"LBY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"121\"},{\"name\":\"Liechtenstein\",\"iso_code_2\":\"LI\",\"iso_code_3\":\"LIE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"122\"},{\"name\":\"Lithuania\",\"iso_code_2\":\"LT\",\"iso_code_3\":\"LTU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"123\"},{\"name\":\"Luxembourg\",\"iso_code_2\":\"LU\",\"iso_code_3\":\"LUX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"124\"},{\"name\":\"Macau\",\"iso_code_2\":\"MO\",\"iso_code_3\":\"MAC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"125\"},{\"name\":\"Madagascar\",\"iso_code_2\":\"MG\",\"iso_code_3\":\"MDG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"127\"},{\"name\":\"Malawi\",\"iso_code_2\":\"MW\",\"iso_code_3\":\"MWI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"128\"},{\"name\":\"Malaysia\",\"iso_code_2\":\"MY\",\"iso_code_3\":\"MYS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"129\"},{\"name\":\"Maldives\",\"iso_code_2\":\"MV\",\"iso_code_3\":\"MDV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"130\"},{\"name\":\"Mali\",\"iso_code_2\":\"ML\",\"iso_code_3\":\"MLI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"131\"},{\"name\":\"Malta\",\"iso_code_2\":\"MT\",\"iso_code_3\":\"MLT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"132\"},{\"name\":\"Marshall Islands\",\"iso_code_2\":\"MH\",\"iso_code_3\":\"MHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"133\"},{\"name\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"134\"},{\"name\":\"Mauritania\",\"iso_code_2\":\"MR\",\"iso_code_3\":\"MRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"135\"},{\"name\":\"Mauritius\",\"iso_code_2\":\"MU\",\"iso_code_3\":\"MUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"136\"},{\"name\":\"Mayotte\",\"iso_code_2\":\"YT\",\"iso_code_3\":\"MYT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"137\"},{\"name\":\"Mexico\",\"iso_code_2\":\"MX\",\"iso_code_3\":\"MEX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"138\"},{\"name\":\"Micronesia, Federated States of\",\"iso_code_2\":\"FM\",\"iso_code_3\":\"FSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"139\"},{\"name\":\"Moldova, Republic of\",\"iso_code_2\":\"MD\",\"iso_code_3\":\"MDA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"140\"},{\"name\":\"Monaco\",\"iso_code_2\":\"MC\",\"iso_code_3\":\"MCO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"141\"},{\"name\":\"Mongolia\",\"iso_code_2\":\"MN\",\"iso_code_3\":\"MNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"142\"},{\"name\":\"Montenegro\",\"iso_code_2\":\"ME\",\"iso_code_3\":\"MNE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"242\"},{\"name\":\"Montserrat\",\"iso_code_2\":\"MS\",\"iso_code_3\":\"MSR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"143\"},{\"name\":\"Morocco\",\"iso_code_2\":\"MA\",\"iso_code_3\":\"MAR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"144\"},{\"name\":\"Mozambique\",\"iso_code_2\":\"MZ\",\"iso_code_3\":\"MOZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"145\"},{\"name\":\"Myanmar\",\"iso_code_2\":\"MM\",\"iso_code_3\":\"MMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"146\"},{\"name\":\"Namibia\",\"iso_code_2\":\"NA\",\"iso_code_3\":\"NAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"147\"},{\"name\":\"Nauru\",\"iso_code_2\":\"NR\",\"iso_code_3\":\"NRU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"148\"},{\"name\":\"Nepal\",\"iso_code_2\":\"NP\",\"iso_code_3\":\"NPL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"149\"},{\"name\":\"Netherlands\",\"iso_code_2\":\"NL\",\"iso_code_3\":\"NLD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"150\"},{\"name\":\"Netherlands Antilles\",\"iso_code_2\":\"AN\",\"iso_code_3\":\"ANT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"151\"},{\"name\":\"New Caledonia\",\"iso_code_2\":\"NC\",\"iso_code_3\":\"NCL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"152\"},{\"name\":\"New Zealand\",\"iso_code_2\":\"NZ\",\"iso_code_3\":\"NZL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"153\"},{\"name\":\"Nicaragua\",\"iso_code_2\":\"NI\",\"iso_code_3\":\"NIC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"154\"},{\"name\":\"Niger\",\"iso_code_2\":\"NE\",\"iso_code_3\":\"NER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"155\"},{\"name\":\"Nigeria\",\"iso_code_2\":\"NG\",\"iso_code_3\":\"NGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"156\"},{\"name\":\"Niue\",\"iso_code_2\":\"NU\",\"iso_code_3\":\"NIU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"157\"},{\"name\":\"Norfolk Island\",\"iso_code_2\":\"NF\",\"iso_code_3\":\"NFK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"158\"},{\"name\":\"North Korea\",\"iso_code_2\":\"KP\",\"iso_code_3\":\"PRK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"112\"},{\"name\":\"Northern Mariana Islands\",\"iso_code_2\":\"MP\",\"iso_code_3\":\"MNP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"159\"},{\"name\":\"Norway\",\"iso_code_2\":\"NO\",\"iso_code_3\":\"NOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"160\"},{\"name\":\"Oman\",\"iso_code_2\":\"OM\",\"iso_code_3\":\"OMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"161\"},{\"name\":\"Pakistan\",\"iso_code_2\":\"PK\",\"iso_code_3\":\"PAK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"162\"},{\"name\":\"Palau\",\"iso_code_2\":\"PW\",\"iso_code_3\":\"PLW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"163\"},{\"name\":\"Palestinian Territory, Occupied\",\"iso_code_2\":\"PS\",\"iso_code_3\":\"PSE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"247\"},{\"name\":\"Panama\",\"iso_code_2\":\"PA\",\"iso_code_3\":\"PAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"164\"},{\"name\":\"Papua New Guinea\",\"iso_code_2\":\"PG\",\"iso_code_3\":\"PNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"165\"},{\"name\":\"Paraguay\",\"iso_code_2\":\"PY\",\"iso_code_3\":\"PRY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"166\"},{\"name\":\"Peru\",\"iso_code_2\":\"PE\",\"iso_code_3\":\"PER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"167\"},{\"name\":\"Philippines\",\"iso_code_2\":\"PH\",\"iso_code_3\":\"PHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"168\"},{\"name\":\"Pitcairn\",\"iso_code_2\":\"PN\",\"iso_code_3\":\"PCN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"169\"},{\"name\":\"Poland\",\"iso_code_2\":\"PL\",\"iso_code_3\":\"POL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"170\"},{\"name\":\"Portugal\",\"iso_code_2\":\"PT\",\"iso_code_3\":\"PRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"171\"},{\"name\":\"Puerto Rico\",\"iso_code_2\":\"PR\",\"iso_code_3\":\"PRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"172\"},{\"name\":\"Qatar\",\"iso_code_2\":\"QA\",\"iso_code_3\":\"QAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"173\"},{\"name\":\"Reunion\",\"iso_code_2\":\"RE\",\"iso_code_3\":\"REU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"174\"},{\"name\":\"Romania\",\"iso_code_2\":\"RO\",\"iso_code_3\":\"ROM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"175\"},{\"name\":\"Russian Federation\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"176\"},{\"name\":\"Rwanda\",\"iso_code_2\":\"RW\",\"iso_code_3\":\"RWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"177\"},{\"name\":\"Saint Kitts and Nevis\",\"iso_code_2\":\"KN\",\"iso_code_3\":\"KNA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"178\"},{\"name\":\"Saint Lucia\",\"iso_code_2\":\"LC\",\"iso_code_3\":\"LCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"179\"},{\"name\":\"Saint Vincent and the Grenadines\",\"iso_code_2\":\"VC\",\"iso_code_3\":\"VCT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"180\"},{\"name\":\"Samoa\",\"iso_code_2\":\"WS\",\"iso_code_3\":\"WSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"181\"},{\"name\":\"San Marino\",\"iso_code_2\":\"SM\",\"iso_code_3\":\"SMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"182\"},{\"name\":\"Sao Tome and Principe\",\"iso_code_2\":\"ST\",\"iso_code_3\":\"STP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"183\"},{\"name\":\"Saudi Arabia\",\"iso_code_2\":\"SA\",\"iso_code_3\":\"SAU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"184\"},{\"name\":\"Senegal\",\"iso_code_2\":\"SN\",\"iso_code_3\":\"SEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"185\"},{\"name\":\"Serbia\",\"iso_code_2\":\"RS\",\"iso_code_3\":\"SRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"243\"},{\"name\":\"Seychelles\",\"iso_code_2\":\"SC\",\"iso_code_3\":\"SYC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"186\"},{\"name\":\"Sierra Leone\",\"iso_code_2\":\"SL\",\"iso_code_3\":\"SLE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"187\"},{\"name\":\"Singapore\",\"iso_code_2\":\"SG\",\"iso_code_3\":\"SGP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"188\"},{\"name\":\"Slovak Republic\",\"iso_code_2\":\"SK\",\"iso_code_3\":\"SVK\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city} {postcode}\\r\\n{zone}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"189\"},{\"name\":\"Slovenia\",\"iso_code_2\":\"SI\",\"iso_code_3\":\"SVN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"190\"},{\"name\":\"Solomon Islands\",\"iso_code_2\":\"SB\",\"iso_code_3\":\"SLB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"191\"},{\"name\":\"Somalia\",\"iso_code_2\":\"SO\",\"iso_code_3\":\"SOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"192\"},{\"name\":\"South Africa\",\"iso_code_2\":\"ZA\",\"iso_code_3\":\"ZAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"193\"},{\"name\":\"South Georgia &amp; South Sandwich Islands\",\"iso_code_2\":\"GS\",\"iso_code_3\":\"SGS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"194\"},{\"name\":\"South Korea\",\"iso_code_2\":\"KR\",\"iso_code_3\":\"KOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"113\"},{\"name\":\"South Sudan\",\"iso_code_2\":\"SS\",\"iso_code_3\":\"SSD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"248\"},{\"name\":\"Spain\",\"iso_code_2\":\"ES\",\"iso_code_3\":\"ESP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"195\"},{\"name\":\"Sri Lanka\",\"iso_code_2\":\"LK\",\"iso_code_3\":\"LKA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"196\"},{\"name\":\"St. Barthelemy\",\"iso_code_2\":\"BL\",\"iso_code_3\":\"BLM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"249\"},{\"name\":\"St. Helena\",\"iso_code_2\":\"SH\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"197\"},{\"name\":\"St. Martin (French part)\",\"iso_code_2\":\"MF\",\"iso_code_3\":\"MAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"250\"},{\"name\":\"St. Pierre and Miquelon\",\"iso_code_2\":\"PM\",\"iso_code_3\":\"SPM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"198\"},{\"name\":\"Sudan\",\"iso_code_2\":\"SD\",\"iso_code_3\":\"SDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"199\"},{\"name\":\"Suriname\",\"iso_code_2\":\"SR\",\"iso_code_3\":\"SUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"200\"},{\"name\":\"Svalbard and Jan Mayen Islands\",\"iso_code_2\":\"SJ\",\"iso_code_3\":\"SJM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"201\"},{\"name\":\"Swaziland\",\"iso_code_2\":\"SZ\",\"iso_code_3\":\"SWZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"202\"},{\"name\":\"Sweden\",\"iso_code_2\":\"SE\",\"iso_code_3\":\"SWE\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"203\"},{\"name\":\"Switzerland\",\"iso_code_2\":\"CH\",\"iso_code_3\":\"CHE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"204\"},{\"name\":\"Syrian Arab Republic\",\"iso_code_2\":\"SY\",\"iso_code_3\":\"SYR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"205\"},{\"name\":\"Taiwan\",\"iso_code_2\":\"TW\",\"iso_code_3\":\"TWN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"206\"},{\"name\":\"Tajikistan\",\"iso_code_2\":\"TJ\",\"iso_code_3\":\"TJK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"207\"},{\"name\":\"Tanzania, United Republic of\",\"iso_code_2\":\"TZ\",\"iso_code_3\":\"TZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"208\"},{\"name\":\"Thailand\",\"iso_code_2\":\"TH\",\"iso_code_3\":\"THA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"209\"},{\"name\":\"Togo\",\"iso_code_2\":\"TG\",\"iso_code_3\":\"TGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"210\"},{\"name\":\"Tokelau\",\"iso_code_2\":\"TK\",\"iso_code_3\":\"TKL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"211\"},{\"name\":\"Tonga\",\"iso_code_2\":\"TO\",\"iso_code_3\":\"TON\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"212\"},{\"name\":\"Trinidad and Tobago\",\"iso_code_2\":\"TT\",\"iso_code_3\":\"TTO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"213\"},{\"name\":\"Tristan da Cunha\",\"iso_code_2\":\"TA\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"255\"},{\"name\":\"Tunisia\",\"iso_code_2\":\"TN\",\"iso_code_3\":\"TUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"214\"},{\"name\":\"Turkey\",\"iso_code_2\":\"TR\",\"iso_code_3\":\"TUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"215\"},{\"name\":\"Turkmenistan\",\"iso_code_2\":\"TM\",\"iso_code_3\":\"TKM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"216\"},{\"name\":\"Turks and Caicos Islands\",\"iso_code_2\":\"TC\",\"iso_code_3\":\"TCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"217\"},{\"name\":\"Tuvalu\",\"iso_code_2\":\"TV\",\"iso_code_3\":\"TUV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"218\"},{\"name\":\"Uganda\",\"iso_code_2\":\"UG\",\"iso_code_3\":\"UGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"219\"},{\"name\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"220\"},{\"name\":\"United Arab Emirates\",\"iso_code_2\":\"AE\",\"iso_code_3\":\"ARE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"221\"},{\"name\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"222\"},{\"name\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"223\"},{\"name\":\"United States Minor Outlying Islands\",\"iso_code_2\":\"UM\",\"iso_code_3\":\"UMI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"224\"},{\"name\":\"Uruguay\",\"iso_code_2\":\"UY\",\"iso_code_3\":\"URY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"225\"},{\"name\":\"Uzbekistan\",\"iso_code_2\":\"UZ\",\"iso_code_3\":\"UZB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"226\"},{\"name\":\"Vanuatu\",\"iso_code_2\":\"VU\",\"iso_code_3\":\"VUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"227\"},{\"name\":\"Vatican City State (Holy See)\",\"iso_code_2\":\"VA\",\"iso_code_3\":\"VAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"228\"},{\"name\":\"Venezuela\",\"iso_code_2\":\"VE\",\"iso_code_3\":\"VEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"229\"},{\"name\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"230\"},{\"name\":\"Virgin Islands (British)\",\"iso_code_2\":\"VG\",\"iso_code_3\":\"VGB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"231\"},{\"name\":\"Virgin Islands (U.S.)\",\"iso_code_2\":\"VI\",\"iso_code_3\":\"VIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"232\"},{\"name\":\"Wallis and Futuna Islands\",\"iso_code_2\":\"WF\",\"iso_code_3\":\"WLF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"233\"},{\"name\":\"Western Sahara\",\"iso_code_2\":\"EH\",\"iso_code_3\":\"ESH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"234\"},{\"name\":\"Yemen\",\"iso_code_2\":\"YE\",\"iso_code_3\":\"YEM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"235\"},{\"name\":\"Zambia\",\"iso_code_2\":\"ZM\",\"iso_code_3\":\"ZMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"238\"},{\"name\":\"Zimbabwe\",\"iso_code_2\":\"ZW\",\"iso_code_3\":\"ZWE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"239\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]}},\"id\":\"shipping_address\",\"title\":\"Delivery details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"3\",\"column\":1,\"row\":3,\"width\":\"30\"},\"shipping_method\":{\"id\":\"shipping_method\",\"title\":\"Shipping method\",\"description\":\"\",\"icon\":\"fa fa-truck\",\"sort_order\":4,\"column\":2,\"row\":1,\"display\":1,\"input_style\":\"radio\",\"display_title\":1,\"display_desciption\":1,\"display_options\":1,\"width\":\"30\",\"default_option\":\"\"},\"payment_method\":{\"id\":\"payment_method\",\"title\":\"Payment method\",\"description\":\"\",\"icon\":\"fa fa-credit-card\",\"sort_order\":5,\"column\":3,\"row\":1,\"display\":1,\"display_options\":1,\"display_images\":1,\"input_style\":\"radio\",\"display_logos\":1,\"width\":\"30\",\"default_option\":\"\"},\"cart\":{\"display\":1,\"option\":{\"voucher\":{\"display\":1,\"value\":\"\",\"id\":\"voucher\",\"title\":\"voucher\",\"tooltip\":\"voucher\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"coupon\":{\"display\":1,\"value\":\"\",\"id\":\"coupon\",\"title\":\"coupon\",\"tooltip\":\"coupon\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"reward\":{\"display\":1,\"value\":\"\",\"id\":\"reward\",\"title\":\"reward\",\"tooltip\":\"reward\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"}},\"columns\":{\"image\":1,\"name\":1,\"model\":0,\"quantity\":1,\"price\":1,\"total\":1},\"id\":\"cart\",\"title\":\"Shopping cart\",\"description\":\"\",\"icon\":\"fa fa-shopping-cart\",\"sort_order\":6,\"column\":4,\"row\":2,\"display_title\":1,\"display_description\":1,\"width\":\"50\"},\"confirm\":{\"display\":1,\"fields\":{\"comment\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"comment\",\"title\":\"Add Comments About Your Order\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please fill in the comment to the order\"}],\"type\":\"textarea\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":0},\"agree\":{\"display\":1,\"require\":1,\"value\":0,\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=5\\\" class=\\\"agree\\\"><b>Terms &amp; Conditions<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Terms &amp; Conditions!\",\"information_id\":\"5\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":1,\"information_id\":\"5\"}},\"id\":\"confirm\",\"icon\":\"\",\"display_confirm\":1,\"sort_order\":8,\"column\":4,\"row\":2,\"width\":\"50\"},\"payment\":{\"id\":\"payment\",\"title\":\"\",\"icon\":\"\",\"sort_order\":7,\"column\":4,\"row\":2,\"default_payment_popup\":0,\"payment_popups\":[],\"width\":\"50\"}},\"logged\":{\"login\":{\"id\":\"login\",\"icon\":\"fa fa-user\",\"description\":\"\",\"sort_order\":1,\"column\":1,\"row\":1,\"width\":\"50\",\"default_option\":\"guest\",\"option\":{\"register\":{\"title\":\"Register Account\",\"description\":\"By creating an account you will be able to shop faster, be up to date on an order\'s status, and keep track of the orders you have previously made.\",\"display\":1},\"guest\":{\"title\":\"Guest Checkout\",\"description\":\"Use guest checkout to buy without creating an account\",\"display\":1},\"login\":{\"title\":\"Login\",\"display\":1}}},\"payment_address\":{\"display\":1,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":0,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":34,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":11,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":12,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":13,\"class\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":14,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":15,\"class\":\"country\",\"options\":[{\"name\":\"Aaland Islands\",\"iso_code_2\":\"AX\",\"iso_code_3\":\"ALA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"244\"},{\"name\":\"Afghanistan\",\"iso_code_2\":\"AF\",\"iso_code_3\":\"AFG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"1\"},{\"name\":\"Albania\",\"iso_code_2\":\"AL\",\"iso_code_3\":\"ALB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"2\"},{\"name\":\"Algeria\",\"iso_code_2\":\"DZ\",\"iso_code_3\":\"DZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"3\"},{\"name\":\"American Samoa\",\"iso_code_2\":\"AS\",\"iso_code_3\":\"ASM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"4\"},{\"name\":\"Andorra\",\"iso_code_2\":\"AD\",\"iso_code_3\":\"AND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"5\"},{\"name\":\"Angola\",\"iso_code_2\":\"AO\",\"iso_code_3\":\"AGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"6\"},{\"name\":\"Anguilla\",\"iso_code_2\":\"AI\",\"iso_code_3\":\"AIA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"7\"},{\"name\":\"Antarctica\",\"iso_code_2\":\"AQ\",\"iso_code_3\":\"ATA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"8\"},{\"name\":\"Antigua and Barbuda\",\"iso_code_2\":\"AG\",\"iso_code_3\":\"ATG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"9\"},{\"name\":\"Argentina\",\"iso_code_2\":\"AR\",\"iso_code_3\":\"ARG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"10\"},{\"name\":\"Armenia\",\"iso_code_2\":\"AM\",\"iso_code_3\":\"ARM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"11\"},{\"name\":\"Aruba\",\"iso_code_2\":\"AW\",\"iso_code_3\":\"ABW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"12\"},{\"name\":\"Ascension Island (British)\",\"iso_code_2\":\"AC\",\"iso_code_3\":\"ASC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"252\"},{\"name\":\"Australia\",\"iso_code_2\":\"AU\",\"iso_code_3\":\"AUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"13\"},{\"name\":\"Austria\",\"iso_code_2\":\"AT\",\"iso_code_3\":\"AUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"14\"},{\"name\":\"Azerbaijan\",\"iso_code_2\":\"AZ\",\"iso_code_3\":\"AZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"15\"},{\"name\":\"Bahamas\",\"iso_code_2\":\"BS\",\"iso_code_3\":\"BHS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"16\"},{\"name\":\"Bahrain\",\"iso_code_2\":\"BH\",\"iso_code_3\":\"BHR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"17\"},{\"name\":\"Bangladesh\",\"iso_code_2\":\"BD\",\"iso_code_3\":\"BGD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"18\"},{\"name\":\"Barbados\",\"iso_code_2\":\"BB\",\"iso_code_3\":\"BRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"19\"},{\"name\":\"Belarus\",\"iso_code_2\":\"BY\",\"iso_code_3\":\"BLR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"20\"},{\"name\":\"Belgium\",\"iso_code_2\":\"BE\",\"iso_code_3\":\"BEL\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"21\"},{\"name\":\"Belize\",\"iso_code_2\":\"BZ\",\"iso_code_3\":\"BLZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"22\"},{\"name\":\"Benin\",\"iso_code_2\":\"BJ\",\"iso_code_3\":\"BEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"23\"},{\"name\":\"Bermuda\",\"iso_code_2\":\"BM\",\"iso_code_3\":\"BMU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"24\"},{\"name\":\"Bhutan\",\"iso_code_2\":\"BT\",\"iso_code_3\":\"BTN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"25\"},{\"name\":\"Bolivia\",\"iso_code_2\":\"BO\",\"iso_code_3\":\"BOL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"26\"},{\"name\":\"Bonaire, Sint Eustatius and Saba\",\"iso_code_2\":\"BQ\",\"iso_code_3\":\"BES\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"245\"},{\"name\":\"Bosnia and Herzegovina\",\"iso_code_2\":\"BA\",\"iso_code_3\":\"BIH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"27\"},{\"name\":\"Botswana\",\"iso_code_2\":\"BW\",\"iso_code_3\":\"BWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"28\"},{\"name\":\"Bouvet Island\",\"iso_code_2\":\"BV\",\"iso_code_3\":\"BVT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"29\"},{\"name\":\"Brazil\",\"iso_code_2\":\"BR\",\"iso_code_3\":\"BRA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"30\"},{\"name\":\"British Indian Ocean Territory\",\"iso_code_2\":\"IO\",\"iso_code_3\":\"IOT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"31\"},{\"name\":\"Brunei Darussalam\",\"iso_code_2\":\"BN\",\"iso_code_3\":\"BRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"32\"},{\"name\":\"Bulgaria\",\"iso_code_2\":\"BG\",\"iso_code_3\":\"BGR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"33\"},{\"name\":\"Burkina Faso\",\"iso_code_2\":\"BF\",\"iso_code_3\":\"BFA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"34\"},{\"name\":\"Burundi\",\"iso_code_2\":\"BI\",\"iso_code_3\":\"BDI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"35\"},{\"name\":\"Cambodia\",\"iso_code_2\":\"KH\",\"iso_code_3\":\"KHM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"36\"},{\"name\":\"Cameroon\",\"iso_code_2\":\"CM\",\"iso_code_3\":\"CMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"37\"},{\"name\":\"Canada\",\"iso_code_2\":\"CA\",\"iso_code_3\":\"CAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"38\"},{\"name\":\"Canary Islands\",\"iso_code_2\":\"IC\",\"iso_code_3\":\"ICA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"251\"},{\"name\":\"Cape Verde\",\"iso_code_2\":\"CV\",\"iso_code_3\":\"CPV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"39\"},{\"name\":\"Cayman Islands\",\"iso_code_2\":\"KY\",\"iso_code_3\":\"CYM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"40\"},{\"name\":\"Central African Republic\",\"iso_code_2\":\"CF\",\"iso_code_3\":\"CAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"41\"},{\"name\":\"Chad\",\"iso_code_2\":\"TD\",\"iso_code_3\":\"TCD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"42\"},{\"name\":\"Chile\",\"iso_code_2\":\"CL\",\"iso_code_3\":\"CHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"43\"},{\"name\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"44\"},{\"name\":\"Christmas Island\",\"iso_code_2\":\"CX\",\"iso_code_3\":\"CXR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"45\"},{\"name\":\"Cocos (Keeling) Islands\",\"iso_code_2\":\"CC\",\"iso_code_3\":\"CCK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"46\"},{\"name\":\"Colombia\",\"iso_code_2\":\"CO\",\"iso_code_3\":\"COL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"47\"},{\"name\":\"Comoros\",\"iso_code_2\":\"KM\",\"iso_code_3\":\"COM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"48\"},{\"name\":\"Congo\",\"iso_code_2\":\"CG\",\"iso_code_3\":\"COG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"49\"},{\"name\":\"Cook Islands\",\"iso_code_2\":\"CK\",\"iso_code_3\":\"COK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"50\"},{\"name\":\"Costa Rica\",\"iso_code_2\":\"CR\",\"iso_code_3\":\"CRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"51\"},{\"name\":\"Cote D\'Ivoire\",\"iso_code_2\":\"CI\",\"iso_code_3\":\"CIV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"52\"},{\"name\":\"Croatia\",\"iso_code_2\":\"HR\",\"iso_code_3\":\"HRV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"53\"},{\"name\":\"Cuba\",\"iso_code_2\":\"CU\",\"iso_code_3\":\"CUB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"54\"},{\"name\":\"Curacao\",\"iso_code_2\":\"CW\",\"iso_code_3\":\"CUW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"246\"},{\"name\":\"Cyprus\",\"iso_code_2\":\"CY\",\"iso_code_3\":\"CYP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"55\"},{\"name\":\"Czech Republic\",\"iso_code_2\":\"CZ\",\"iso_code_3\":\"CZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"56\"},{\"name\":\"Democratic Republic of Congo\",\"iso_code_2\":\"CD\",\"iso_code_3\":\"COD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"237\"},{\"name\":\"Denmark\",\"iso_code_2\":\"DK\",\"iso_code_3\":\"DNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"57\"},{\"name\":\"Djibouti\",\"iso_code_2\":\"DJ\",\"iso_code_3\":\"DJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"58\"},{\"name\":\"Dominica\",\"iso_code_2\":\"DM\",\"iso_code_3\":\"DMA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"59\"},{\"name\":\"Dominican Republic\",\"iso_code_2\":\"DO\",\"iso_code_3\":\"DOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"60\"},{\"name\":\"East Timor\",\"iso_code_2\":\"TL\",\"iso_code_3\":\"TLS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"61\"},{\"name\":\"Ecuador\",\"iso_code_2\":\"EC\",\"iso_code_3\":\"ECU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"62\"},{\"name\":\"Egypt\",\"iso_code_2\":\"EG\",\"iso_code_3\":\"EGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"63\"},{\"name\":\"El Salvador\",\"iso_code_2\":\"SV\",\"iso_code_3\":\"SLV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"64\"},{\"name\":\"Equatorial Guinea\",\"iso_code_2\":\"GQ\",\"iso_code_3\":\"GNQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"65\"},{\"name\":\"Eritrea\",\"iso_code_2\":\"ER\",\"iso_code_3\":\"ERI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"66\"},{\"name\":\"Estonia\",\"iso_code_2\":\"EE\",\"iso_code_3\":\"EST\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"67\"},{\"name\":\"Ethiopia\",\"iso_code_2\":\"ET\",\"iso_code_3\":\"ETH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"68\"},{\"name\":\"Falkland Islands (Malvinas)\",\"iso_code_2\":\"FK\",\"iso_code_3\":\"FLK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"69\"},{\"name\":\"Faroe Islands\",\"iso_code_2\":\"FO\",\"iso_code_3\":\"FRO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"70\"},{\"name\":\"Fiji\",\"iso_code_2\":\"FJ\",\"iso_code_3\":\"FJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"71\"},{\"name\":\"Finland\",\"iso_code_2\":\"FI\",\"iso_code_3\":\"FIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"72\"},{\"name\":\"France, Metropolitan\",\"iso_code_2\":\"FR\",\"iso_code_3\":\"FRA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"74\"},{\"name\":\"French Guiana\",\"iso_code_2\":\"GF\",\"iso_code_3\":\"GUF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"75\"},{\"name\":\"French Polynesia\",\"iso_code_2\":\"PF\",\"iso_code_3\":\"PYF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"76\"},{\"name\":\"French Southern Territories\",\"iso_code_2\":\"TF\",\"iso_code_3\":\"ATF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"77\"},{\"name\":\"FYROM\",\"iso_code_2\":\"MK\",\"iso_code_3\":\"MKD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"126\"},{\"name\":\"Gabon\",\"iso_code_2\":\"GA\",\"iso_code_3\":\"GAB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"78\"},{\"name\":\"Gambia\",\"iso_code_2\":\"GM\",\"iso_code_3\":\"GMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"79\"},{\"name\":\"Georgia\",\"iso_code_2\":\"GE\",\"iso_code_3\":\"GEO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"80\"},{\"name\":\"Germany\",\"iso_code_2\":\"DE\",\"iso_code_3\":\"DEU\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"81\"},{\"name\":\"Ghana\",\"iso_code_2\":\"GH\",\"iso_code_3\":\"GHA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"82\"},{\"name\":\"Gibraltar\",\"iso_code_2\":\"GI\",\"iso_code_3\":\"GIB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"83\"},{\"name\":\"Greece\",\"iso_code_2\":\"GR\",\"iso_code_3\":\"GRC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"84\"},{\"name\":\"Greenland\",\"iso_code_2\":\"GL\",\"iso_code_3\":\"GRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"85\"},{\"name\":\"Grenada\",\"iso_code_2\":\"GD\",\"iso_code_3\":\"GRD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"86\"},{\"name\":\"Guadeloupe\",\"iso_code_2\":\"GP\",\"iso_code_3\":\"GLP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"87\"},{\"name\":\"Guam\",\"iso_code_2\":\"GU\",\"iso_code_3\":\"GUM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"88\"},{\"name\":\"Guatemala\",\"iso_code_2\":\"GT\",\"iso_code_3\":\"GTM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"89\"},{\"name\":\"Guernsey\",\"iso_code_2\":\"GG\",\"iso_code_3\":\"GGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"256\"},{\"name\":\"Guinea\",\"iso_code_2\":\"GN\",\"iso_code_3\":\"GIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"90\"},{\"name\":\"Guinea-Bissau\",\"iso_code_2\":\"GW\",\"iso_code_3\":\"GNB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"91\"},{\"name\":\"Guyana\",\"iso_code_2\":\"GY\",\"iso_code_3\":\"GUY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"92\"},{\"name\":\"Haiti\",\"iso_code_2\":\"HT\",\"iso_code_3\":\"HTI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"93\"},{\"name\":\"Heard and Mc Donald Islands\",\"iso_code_2\":\"HM\",\"iso_code_3\":\"HMD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"94\"},{\"name\":\"Honduras\",\"iso_code_2\":\"HN\",\"iso_code_3\":\"HND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"95\"},{\"name\":\"Hong Kong\",\"iso_code_2\":\"HK\",\"iso_code_3\":\"HKG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"96\"},{\"name\":\"Hungary\",\"iso_code_2\":\"HU\",\"iso_code_3\":\"HUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"97\"},{\"name\":\"Iceland\",\"iso_code_2\":\"IS\",\"iso_code_3\":\"ISL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"98\"},{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"},{\"name\":\"Indonesia\",\"iso_code_2\":\"ID\",\"iso_code_3\":\"IDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"100\"},{\"name\":\"Iran (Islamic Republic of)\",\"iso_code_2\":\"IR\",\"iso_code_3\":\"IRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"101\"},{\"name\":\"Iraq\",\"iso_code_2\":\"IQ\",\"iso_code_3\":\"IRQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"102\"},{\"name\":\"Ireland\",\"iso_code_2\":\"IE\",\"iso_code_3\":\"IRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"103\"},{\"name\":\"Isle of Man\",\"iso_code_2\":\"IM\",\"iso_code_3\":\"IMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"254\"},{\"name\":\"Israel\",\"iso_code_2\":\"IL\",\"iso_code_3\":\"ISR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"104\"},{\"name\":\"Italy\",\"iso_code_2\":\"IT\",\"iso_code_3\":\"ITA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"105\"},{\"name\":\"Jamaica\",\"iso_code_2\":\"JM\",\"iso_code_3\":\"JAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"106\"},{\"name\":\"Japan\",\"iso_code_2\":\"JP\",\"iso_code_3\":\"JPN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"107\"},{\"name\":\"Jersey\",\"iso_code_2\":\"JE\",\"iso_code_3\":\"JEY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"257\"},{\"name\":\"Jordan\",\"iso_code_2\":\"JO\",\"iso_code_3\":\"JOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"108\"},{\"name\":\"Kazakhstan\",\"iso_code_2\":\"KZ\",\"iso_code_3\":\"KAZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"109\"},{\"name\":\"Kenya\",\"iso_code_2\":\"KE\",\"iso_code_3\":\"KEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"110\"},{\"name\":\"Kiribati\",\"iso_code_2\":\"KI\",\"iso_code_3\":\"KIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"111\"},{\"name\":\"Kosovo, Republic of\",\"iso_code_2\":\"XK\",\"iso_code_3\":\"UNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"253\"},{\"name\":\"Kuwait\",\"iso_code_2\":\"KW\",\"iso_code_3\":\"KWT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"114\"},{\"name\":\"Kyrgyzstan\",\"iso_code_2\":\"KG\",\"iso_code_3\":\"KGZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"115\"},{\"name\":\"Lao People\'s Democratic Republic\",\"iso_code_2\":\"LA\",\"iso_code_3\":\"LAO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"116\"},{\"name\":\"Latvia\",\"iso_code_2\":\"LV\",\"iso_code_3\":\"LVA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"117\"},{\"name\":\"Lebanon\",\"iso_code_2\":\"LB\",\"iso_code_3\":\"LBN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"118\"},{\"name\":\"Lesotho\",\"iso_code_2\":\"LS\",\"iso_code_3\":\"LSO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"119\"},{\"name\":\"Liberia\",\"iso_code_2\":\"LR\",\"iso_code_3\":\"LBR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"120\"},{\"name\":\"Libyan Arab Jamahiriya\",\"iso_code_2\":\"LY\",\"iso_code_3\":\"LBY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"121\"},{\"name\":\"Liechtenstein\",\"iso_code_2\":\"LI\",\"iso_code_3\":\"LIE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"122\"},{\"name\":\"Lithuania\",\"iso_code_2\":\"LT\",\"iso_code_3\":\"LTU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"123\"},{\"name\":\"Luxembourg\",\"iso_code_2\":\"LU\",\"iso_code_3\":\"LUX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"124\"},{\"name\":\"Macau\",\"iso_code_2\":\"MO\",\"iso_code_3\":\"MAC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"125\"},{\"name\":\"Madagascar\",\"iso_code_2\":\"MG\",\"iso_code_3\":\"MDG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"127\"},{\"name\":\"Malawi\",\"iso_code_2\":\"MW\",\"iso_code_3\":\"MWI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"128\"},{\"name\":\"Malaysia\",\"iso_code_2\":\"MY\",\"iso_code_3\":\"MYS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"129\"},{\"name\":\"Maldives\",\"iso_code_2\":\"MV\",\"iso_code_3\":\"MDV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"130\"},{\"name\":\"Mali\",\"iso_code_2\":\"ML\",\"iso_code_3\":\"MLI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"131\"},{\"name\":\"Malta\",\"iso_code_2\":\"MT\",\"iso_code_3\":\"MLT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"132\"},{\"name\":\"Marshall Islands\",\"iso_code_2\":\"MH\",\"iso_code_3\":\"MHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"133\"},{\"name\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"134\"},{\"name\":\"Mauritania\",\"iso_code_2\":\"MR\",\"iso_code_3\":\"MRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"135\"},{\"name\":\"Mauritius\",\"iso_code_2\":\"MU\",\"iso_code_3\":\"MUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"136\"},{\"name\":\"Mayotte\",\"iso_code_2\":\"YT\",\"iso_code_3\":\"MYT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"137\"},{\"name\":\"Mexico\",\"iso_code_2\":\"MX\",\"iso_code_3\":\"MEX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"138\"},{\"name\":\"Micronesia, Federated States of\",\"iso_code_2\":\"FM\",\"iso_code_3\":\"FSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"139\"},{\"name\":\"Moldova, Republic of\",\"iso_code_2\":\"MD\",\"iso_code_3\":\"MDA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"140\"},{\"name\":\"Monaco\",\"iso_code_2\":\"MC\",\"iso_code_3\":\"MCO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"141\"},{\"name\":\"Mongolia\",\"iso_code_2\":\"MN\",\"iso_code_3\":\"MNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"142\"},{\"name\":\"Montenegro\",\"iso_code_2\":\"ME\",\"iso_code_3\":\"MNE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"242\"},{\"name\":\"Montserrat\",\"iso_code_2\":\"MS\",\"iso_code_3\":\"MSR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"143\"},{\"name\":\"Morocco\",\"iso_code_2\":\"MA\",\"iso_code_3\":\"MAR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"144\"},{\"name\":\"Mozambique\",\"iso_code_2\":\"MZ\",\"iso_code_3\":\"MOZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"145\"},{\"name\":\"Myanmar\",\"iso_code_2\":\"MM\",\"iso_code_3\":\"MMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"146\"},{\"name\":\"Namibia\",\"iso_code_2\":\"NA\",\"iso_code_3\":\"NAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"147\"},{\"name\":\"Nauru\",\"iso_code_2\":\"NR\",\"iso_code_3\":\"NRU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"148\"},{\"name\":\"Nepal\",\"iso_code_2\":\"NP\",\"iso_code_3\":\"NPL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"149\"},{\"name\":\"Netherlands\",\"iso_code_2\":\"NL\",\"iso_code_3\":\"NLD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"150\"},{\"name\":\"Netherlands Antilles\",\"iso_code_2\":\"AN\",\"iso_code_3\":\"ANT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"151\"},{\"name\":\"New Caledonia\",\"iso_code_2\":\"NC\",\"iso_code_3\":\"NCL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"152\"},{\"name\":\"New Zealand\",\"iso_code_2\":\"NZ\",\"iso_code_3\":\"NZL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"153\"},{\"name\":\"Nicaragua\",\"iso_code_2\":\"NI\",\"iso_code_3\":\"NIC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"154\"},{\"name\":\"Niger\",\"iso_code_2\":\"NE\",\"iso_code_3\":\"NER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"155\"},{\"name\":\"Nigeria\",\"iso_code_2\":\"NG\",\"iso_code_3\":\"NGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"156\"},{\"name\":\"Niue\",\"iso_code_2\":\"NU\",\"iso_code_3\":\"NIU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"157\"},{\"name\":\"Norfolk Island\",\"iso_code_2\":\"NF\",\"iso_code_3\":\"NFK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"158\"},{\"name\":\"North Korea\",\"iso_code_2\":\"KP\",\"iso_code_3\":\"PRK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"112\"},{\"name\":\"Northern Mariana Islands\",\"iso_code_2\":\"MP\",\"iso_code_3\":\"MNP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"159\"},{\"name\":\"Norway\",\"iso_code_2\":\"NO\",\"iso_code_3\":\"NOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"160\"},{\"name\":\"Oman\",\"iso_code_2\":\"OM\",\"iso_code_3\":\"OMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"161\"},{\"name\":\"Pakistan\",\"iso_code_2\":\"PK\",\"iso_code_3\":\"PAK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"162\"},{\"name\":\"Palau\",\"iso_code_2\":\"PW\",\"iso_code_3\":\"PLW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"163\"},{\"name\":\"Palestinian Territory, Occupied\",\"iso_code_2\":\"PS\",\"iso_code_3\":\"PSE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"247\"},{\"name\":\"Panama\",\"iso_code_2\":\"PA\",\"iso_code_3\":\"PAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"164\"},{\"name\":\"Papua New Guinea\",\"iso_code_2\":\"PG\",\"iso_code_3\":\"PNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"165\"},{\"name\":\"Paraguay\",\"iso_code_2\":\"PY\",\"iso_code_3\":\"PRY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"166\"},{\"name\":\"Peru\",\"iso_code_2\":\"PE\",\"iso_code_3\":\"PER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"167\"},{\"name\":\"Philippines\",\"iso_code_2\":\"PH\",\"iso_code_3\":\"PHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"168\"},{\"name\":\"Pitcairn\",\"iso_code_2\":\"PN\",\"iso_code_3\":\"PCN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"169\"},{\"name\":\"Poland\",\"iso_code_2\":\"PL\",\"iso_code_3\":\"POL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"170\"},{\"name\":\"Portugal\",\"iso_code_2\":\"PT\",\"iso_code_3\":\"PRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"171\"},{\"name\":\"Puerto Rico\",\"iso_code_2\":\"PR\",\"iso_code_3\":\"PRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"172\"},{\"name\":\"Qatar\",\"iso_code_2\":\"QA\",\"iso_code_3\":\"QAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"173\"},{\"name\":\"Reunion\",\"iso_code_2\":\"RE\",\"iso_code_3\":\"REU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"174\"},{\"name\":\"Romania\",\"iso_code_2\":\"RO\",\"iso_code_3\":\"ROM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"175\"},{\"name\":\"Russian Federation\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"176\"},{\"name\":\"Rwanda\",\"iso_code_2\":\"RW\",\"iso_code_3\":\"RWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"177\"},{\"name\":\"Saint Kitts and Nevis\",\"iso_code_2\":\"KN\",\"iso_code_3\":\"KNA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"178\"},{\"name\":\"Saint Lucia\",\"iso_code_2\":\"LC\",\"iso_code_3\":\"LCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"179\"},{\"name\":\"Saint Vincent and the Grenadines\",\"iso_code_2\":\"VC\",\"iso_code_3\":\"VCT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"180\"},{\"name\":\"Samoa\",\"iso_code_2\":\"WS\",\"iso_code_3\":\"WSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"181\"},{\"name\":\"San Marino\",\"iso_code_2\":\"SM\",\"iso_code_3\":\"SMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"182\"},{\"name\":\"Sao Tome and Principe\",\"iso_code_2\":\"ST\",\"iso_code_3\":\"STP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"183\"},{\"name\":\"Saudi Arabia\",\"iso_code_2\":\"SA\",\"iso_code_3\":\"SAU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"184\"},{\"name\":\"Senegal\",\"iso_code_2\":\"SN\",\"iso_code_3\":\"SEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"185\"},{\"name\":\"Serbia\",\"iso_code_2\":\"RS\",\"iso_code_3\":\"SRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"243\"},{\"name\":\"Seychelles\",\"iso_code_2\":\"SC\",\"iso_code_3\":\"SYC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"186\"},{\"name\":\"Sierra Leone\",\"iso_code_2\":\"SL\",\"iso_code_3\":\"SLE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"187\"},{\"name\":\"Singapore\",\"iso_code_2\":\"SG\",\"iso_code_3\":\"SGP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"188\"},{\"name\":\"Slovak Republic\",\"iso_code_2\":\"SK\",\"iso_code_3\":\"SVK\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city} {postcode}\\r\\n{zone}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"189\"},{\"name\":\"Slovenia\",\"iso_code_2\":\"SI\",\"iso_code_3\":\"SVN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"190\"},{\"name\":\"Solomon Islands\",\"iso_code_2\":\"SB\",\"iso_code_3\":\"SLB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"191\"},{\"name\":\"Somalia\",\"iso_code_2\":\"SO\",\"iso_code_3\":\"SOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"192\"},{\"name\":\"South Africa\",\"iso_code_2\":\"ZA\",\"iso_code_3\":\"ZAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"193\"},{\"name\":\"South Georgia &amp; South Sandwich Islands\",\"iso_code_2\":\"GS\",\"iso_code_3\":\"SGS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"194\"},{\"name\":\"South Korea\",\"iso_code_2\":\"KR\",\"iso_code_3\":\"KOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"113\"},{\"name\":\"South Sudan\",\"iso_code_2\":\"SS\",\"iso_code_3\":\"SSD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"248\"},{\"name\":\"Spain\",\"iso_code_2\":\"ES\",\"iso_code_3\":\"ESP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"195\"},{\"name\":\"Sri Lanka\",\"iso_code_2\":\"LK\",\"iso_code_3\":\"LKA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"196\"},{\"name\":\"St. Barthelemy\",\"iso_code_2\":\"BL\",\"iso_code_3\":\"BLM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"249\"},{\"name\":\"St. Helena\",\"iso_code_2\":\"SH\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"197\"},{\"name\":\"St. Martin (French part)\",\"iso_code_2\":\"MF\",\"iso_code_3\":\"MAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"250\"},{\"name\":\"St. Pierre and Miquelon\",\"iso_code_2\":\"PM\",\"iso_code_3\":\"SPM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"198\"},{\"name\":\"Sudan\",\"iso_code_2\":\"SD\",\"iso_code_3\":\"SDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"199\"},{\"name\":\"Suriname\",\"iso_code_2\":\"SR\",\"iso_code_3\":\"SUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"200\"},{\"name\":\"Svalbard and Jan Mayen Islands\",\"iso_code_2\":\"SJ\",\"iso_code_3\":\"SJM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"201\"},{\"name\":\"Swaziland\",\"iso_code_2\":\"SZ\",\"iso_code_3\":\"SWZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"202\"},{\"name\":\"Sweden\",\"iso_code_2\":\"SE\",\"iso_code_3\":\"SWE\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"203\"},{\"name\":\"Switzerland\",\"iso_code_2\":\"CH\",\"iso_code_3\":\"CHE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"204\"},{\"name\":\"Syrian Arab Republic\",\"iso_code_2\":\"SY\",\"iso_code_3\":\"SYR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"205\"},{\"name\":\"Taiwan\",\"iso_code_2\":\"TW\",\"iso_code_3\":\"TWN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"206\"},{\"name\":\"Tajikistan\",\"iso_code_2\":\"TJ\",\"iso_code_3\":\"TJK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"207\"},{\"name\":\"Tanzania, United Republic of\",\"iso_code_2\":\"TZ\",\"iso_code_3\":\"TZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"208\"},{\"name\":\"Thailand\",\"iso_code_2\":\"TH\",\"iso_code_3\":\"THA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"209\"},{\"name\":\"Togo\",\"iso_code_2\":\"TG\",\"iso_code_3\":\"TGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"210\"},{\"name\":\"Tokelau\",\"iso_code_2\":\"TK\",\"iso_code_3\":\"TKL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"211\"},{\"name\":\"Tonga\",\"iso_code_2\":\"TO\",\"iso_code_3\":\"TON\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"212\"},{\"name\":\"Trinidad and Tobago\",\"iso_code_2\":\"TT\",\"iso_code_3\":\"TTO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"213\"},{\"name\":\"Tristan da Cunha\",\"iso_code_2\":\"TA\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"255\"},{\"name\":\"Tunisia\",\"iso_code_2\":\"TN\",\"iso_code_3\":\"TUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"214\"},{\"name\":\"Turkey\",\"iso_code_2\":\"TR\",\"iso_code_3\":\"TUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"215\"},{\"name\":\"Turkmenistan\",\"iso_code_2\":\"TM\",\"iso_code_3\":\"TKM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"216\"},{\"name\":\"Turks and Caicos Islands\",\"iso_code_2\":\"TC\",\"iso_code_3\":\"TCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"217\"},{\"name\":\"Tuvalu\",\"iso_code_2\":\"TV\",\"iso_code_3\":\"TUV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"218\"},{\"name\":\"Uganda\",\"iso_code_2\":\"UG\",\"iso_code_3\":\"UGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"219\"},{\"name\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"220\"},{\"name\":\"United Arab Emirates\",\"iso_code_2\":\"AE\",\"iso_code_3\":\"ARE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"221\"},{\"name\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"222\"},{\"name\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"223\"},{\"name\":\"United States Minor Outlying Islands\",\"iso_code_2\":\"UM\",\"iso_code_3\":\"UMI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"224\"},{\"name\":\"Uruguay\",\"iso_code_2\":\"UY\",\"iso_code_3\":\"URY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"225\"},{\"name\":\"Uzbekistan\",\"iso_code_2\":\"UZ\",\"iso_code_3\":\"UZB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"226\"},{\"name\":\"Vanuatu\",\"iso_code_2\":\"VU\",\"iso_code_3\":\"VUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"227\"},{\"name\":\"Vatican City State (Holy See)\",\"iso_code_2\":\"VA\",\"iso_code_3\":\"VAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"228\"},{\"name\":\"Venezuela\",\"iso_code_2\":\"VE\",\"iso_code_3\":\"VEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"229\"},{\"name\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"230\"},{\"name\":\"Virgin Islands (British)\",\"iso_code_2\":\"VG\",\"iso_code_3\":\"VGB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"231\"},{\"name\":\"Virgin Islands (U.S.)\",\"iso_code_2\":\"VI\",\"iso_code_3\":\"VIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"232\"},{\"name\":\"Wallis and Futuna Islands\",\"iso_code_2\":\"WF\",\"iso_code_3\":\"WLF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"233\"},{\"name\":\"Western Sahara\",\"iso_code_2\":\"EH\",\"iso_code_3\":\"ESH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"234\"},{\"name\":\"Yemen\",\"iso_code_2\":\"YE\",\"iso_code_3\":\"YEM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"235\"},{\"name\":\"Zambia\",\"iso_code_2\":\"ZM\",\"iso_code_3\":\"ZMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"238\"},{\"name\":\"Zimbabwe\",\"iso_code_2\":\"ZW\",\"iso_code_3\":\"ZWE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"239\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":16,\"class\":\"zone\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]},\"shipping_address\":{\"display\":1,\"value\":1,\"id\":\"shipping_address\",\"title\":\"My delivery and billing addresses are the same.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"error_step_payment_address_fields_shipping_address\"}],\"type\":\"checkbox\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":18,\"class\":\"\"},\"address_id\":[],\"email\":{\"id\":\"email\",\"title\":\"E-Mail\",\"tooltip\":\"\",\"error\":[],\"type\":\"email\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"email_confirm\":{\"id\":\"email_confirm\",\"title\":\"Confirm E-mail\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_email\",\"text\":\"Email confirmation does not match email!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"telephone\":{\"id\":\"telephone\",\"title\":\"Telephone\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"},{\"telephone\":true,\"text\":\"Please enter a valid telephone number\"}],\"placeholder\":\"050 123 45 54\",\"type\":\"tel\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"fax\":{\"id\":\"fax\",\"title\":\"Fax:\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"password\":{\"id\":\"password\",\"title\":\"Password\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":20,\"text\":\"Password must be between 4 and 20 characters!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":6,\"class\":\"\"},\"confirm\":{\"id\":\"confirm\",\"title\":\"Password Confirm\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_password\",\"text\":\"Password confirmation does not match password!\"},{\"min_length\":\"1\",\"text\":\"Password confirmation does not match password!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":7,\"class\":\"\"},\"heading\":{\"id\":\"heading\",\"title\":\"Your Address\",\"type\":\"heading\",\"sort_order\":8,\"class\":\"\"},\"customer_group_id\":{\"id\":\"customer_group_id\",\"title\":\"Customer Group\",\"tooltip\":\"\",\"type\":\"radio\",\"refresh\":\"2\",\"custom\":0,\"sort_order\":10,\"class\":\"\",\"options\":[{\"customer_group_id\":\"1\",\"approval\":\"0\",\"sort_order\":\"1\",\"language_id\":\"1\",\"name\":\"Default\",\"description\":\"test\",\"value\":\"1\",\"title\":\"Default\"}]},\"newsletter\":{\"id\":\"newsletter\",\"title\":\"I wish to subscribe to the Your Store newsletter.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"You must subsribe to our newsletter to make the order\"}],\"type\":\"checkbox\",\"custom\":0,\"class\":\"\",\"refresh\":\"0\",\"sort_order\":17,\"value\":\"1\"},\"agree\":{\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=3\\\" class=\\\"agree\\\"><b>Privacy Policy<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Privacy Policy!\",\"information_id\":\"3\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":19,\"class\":\"\",\"information_id\":\"3\"}},\"id\":\"payment_address\",\"title\":\"Payment details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"2\",\"column\":1,\"row\":2,\"width\":\"50\"},\"shipping_address\":{\"display\":1,\"require\":0,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":6,\"class\":\"\",\"mask\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":7,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":8,\"class\":\"\",\"options\":[{\"name\":\"Aaland Islands\",\"iso_code_2\":\"AX\",\"iso_code_3\":\"ALA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"244\"},{\"name\":\"Afghanistan\",\"iso_code_2\":\"AF\",\"iso_code_3\":\"AFG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"1\"},{\"name\":\"Albania\",\"iso_code_2\":\"AL\",\"iso_code_3\":\"ALB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"2\"},{\"name\":\"Algeria\",\"iso_code_2\":\"DZ\",\"iso_code_3\":\"DZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"3\"},{\"name\":\"American Samoa\",\"iso_code_2\":\"AS\",\"iso_code_3\":\"ASM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"4\"},{\"name\":\"Andorra\",\"iso_code_2\":\"AD\",\"iso_code_3\":\"AND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"5\"},{\"name\":\"Angola\",\"iso_code_2\":\"AO\",\"iso_code_3\":\"AGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"6\"},{\"name\":\"Anguilla\",\"iso_code_2\":\"AI\",\"iso_code_3\":\"AIA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"7\"},{\"name\":\"Antarctica\",\"iso_code_2\":\"AQ\",\"iso_code_3\":\"ATA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"8\"},{\"name\":\"Antigua and Barbuda\",\"iso_code_2\":\"AG\",\"iso_code_3\":\"ATG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"9\"},{\"name\":\"Argentina\",\"iso_code_2\":\"AR\",\"iso_code_3\":\"ARG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"10\"},{\"name\":\"Armenia\",\"iso_code_2\":\"AM\",\"iso_code_3\":\"ARM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"11\"},{\"name\":\"Aruba\",\"iso_code_2\":\"AW\",\"iso_code_3\":\"ABW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"12\"},{\"name\":\"Ascension Island (British)\",\"iso_code_2\":\"AC\",\"iso_code_3\":\"ASC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"252\"},{\"name\":\"Australia\",\"iso_code_2\":\"AU\",\"iso_code_3\":\"AUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"13\"},{\"name\":\"Austria\",\"iso_code_2\":\"AT\",\"iso_code_3\":\"AUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"14\"},{\"name\":\"Azerbaijan\",\"iso_code_2\":\"AZ\",\"iso_code_3\":\"AZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"15\"},{\"name\":\"Bahamas\",\"iso_code_2\":\"BS\",\"iso_code_3\":\"BHS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"16\"},{\"name\":\"Bahrain\",\"iso_code_2\":\"BH\",\"iso_code_3\":\"BHR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"17\"},{\"name\":\"Bangladesh\",\"iso_code_2\":\"BD\",\"iso_code_3\":\"BGD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"18\"},{\"name\":\"Barbados\",\"iso_code_2\":\"BB\",\"iso_code_3\":\"BRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"19\"},{\"name\":\"Belarus\",\"iso_code_2\":\"BY\",\"iso_code_3\":\"BLR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"20\"},{\"name\":\"Belgium\",\"iso_code_2\":\"BE\",\"iso_code_3\":\"BEL\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"21\"},{\"name\":\"Belize\",\"iso_code_2\":\"BZ\",\"iso_code_3\":\"BLZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"22\"},{\"name\":\"Benin\",\"iso_code_2\":\"BJ\",\"iso_code_3\":\"BEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"23\"},{\"name\":\"Bermuda\",\"iso_code_2\":\"BM\",\"iso_code_3\":\"BMU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"24\"},{\"name\":\"Bhutan\",\"iso_code_2\":\"BT\",\"iso_code_3\":\"BTN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"25\"},{\"name\":\"Bolivia\",\"iso_code_2\":\"BO\",\"iso_code_3\":\"BOL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"26\"},{\"name\":\"Bonaire, Sint Eustatius and Saba\",\"iso_code_2\":\"BQ\",\"iso_code_3\":\"BES\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"245\"},{\"name\":\"Bosnia and Herzegovina\",\"iso_code_2\":\"BA\",\"iso_code_3\":\"BIH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"27\"},{\"name\":\"Botswana\",\"iso_code_2\":\"BW\",\"iso_code_3\":\"BWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"28\"},{\"name\":\"Bouvet Island\",\"iso_code_2\":\"BV\",\"iso_code_3\":\"BVT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"29\"},{\"name\":\"Brazil\",\"iso_code_2\":\"BR\",\"iso_code_3\":\"BRA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"30\"},{\"name\":\"British Indian Ocean Territory\",\"iso_code_2\":\"IO\",\"iso_code_3\":\"IOT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"31\"},{\"name\":\"Brunei Darussalam\",\"iso_code_2\":\"BN\",\"iso_code_3\":\"BRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"32\"},{\"name\":\"Bulgaria\",\"iso_code_2\":\"BG\",\"iso_code_3\":\"BGR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"33\"},{\"name\":\"Burkina Faso\",\"iso_code_2\":\"BF\",\"iso_code_3\":\"BFA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"34\"},{\"name\":\"Burundi\",\"iso_code_2\":\"BI\",\"iso_code_3\":\"BDI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"35\"},{\"name\":\"Cambodia\",\"iso_code_2\":\"KH\",\"iso_code_3\":\"KHM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"36\"},{\"name\":\"Cameroon\",\"iso_code_2\":\"CM\",\"iso_code_3\":\"CMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"37\"},{\"name\":\"Canada\",\"iso_code_2\":\"CA\",\"iso_code_3\":\"CAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"38\"},{\"name\":\"Canary Islands\",\"iso_code_2\":\"IC\",\"iso_code_3\":\"ICA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"251\"},{\"name\":\"Cape Verde\",\"iso_code_2\":\"CV\",\"iso_code_3\":\"CPV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"39\"},{\"name\":\"Cayman Islands\",\"iso_code_2\":\"KY\",\"iso_code_3\":\"CYM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"40\"},{\"name\":\"Central African Republic\",\"iso_code_2\":\"CF\",\"iso_code_3\":\"CAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"41\"},{\"name\":\"Chad\",\"iso_code_2\":\"TD\",\"iso_code_3\":\"TCD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"42\"},{\"name\":\"Chile\",\"iso_code_2\":\"CL\",\"iso_code_3\":\"CHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"43\"},{\"name\":\"China\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"44\"},{\"name\":\"Christmas Island\",\"iso_code_2\":\"CX\",\"iso_code_3\":\"CXR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"45\"},{\"name\":\"Cocos (Keeling) Islands\",\"iso_code_2\":\"CC\",\"iso_code_3\":\"CCK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"46\"},{\"name\":\"Colombia\",\"iso_code_2\":\"CO\",\"iso_code_3\":\"COL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"47\"},{\"name\":\"Comoros\",\"iso_code_2\":\"KM\",\"iso_code_3\":\"COM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"48\"},{\"name\":\"Congo\",\"iso_code_2\":\"CG\",\"iso_code_3\":\"COG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"49\"},{\"name\":\"Cook Islands\",\"iso_code_2\":\"CK\",\"iso_code_3\":\"COK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"50\"},{\"name\":\"Costa Rica\",\"iso_code_2\":\"CR\",\"iso_code_3\":\"CRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"51\"},{\"name\":\"Cote D\'Ivoire\",\"iso_code_2\":\"CI\",\"iso_code_3\":\"CIV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"52\"},{\"name\":\"Croatia\",\"iso_code_2\":\"HR\",\"iso_code_3\":\"HRV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"53\"},{\"name\":\"Cuba\",\"iso_code_2\":\"CU\",\"iso_code_3\":\"CUB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"54\"},{\"name\":\"Curacao\",\"iso_code_2\":\"CW\",\"iso_code_3\":\"CUW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"246\"},{\"name\":\"Cyprus\",\"iso_code_2\":\"CY\",\"iso_code_3\":\"CYP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"55\"},{\"name\":\"Czech Republic\",\"iso_code_2\":\"CZ\",\"iso_code_3\":\"CZE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"56\"},{\"name\":\"Democratic Republic of Congo\",\"iso_code_2\":\"CD\",\"iso_code_3\":\"COD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"237\"},{\"name\":\"Denmark\",\"iso_code_2\":\"DK\",\"iso_code_3\":\"DNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"57\"},{\"name\":\"Djibouti\",\"iso_code_2\":\"DJ\",\"iso_code_3\":\"DJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"58\"},{\"name\":\"Dominica\",\"iso_code_2\":\"DM\",\"iso_code_3\":\"DMA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"59\"},{\"name\":\"Dominican Republic\",\"iso_code_2\":\"DO\",\"iso_code_3\":\"DOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"60\"},{\"name\":\"East Timor\",\"iso_code_2\":\"TL\",\"iso_code_3\":\"TLS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"61\"},{\"name\":\"Ecuador\",\"iso_code_2\":\"EC\",\"iso_code_3\":\"ECU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"62\"},{\"name\":\"Egypt\",\"iso_code_2\":\"EG\",\"iso_code_3\":\"EGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"63\"},{\"name\":\"El Salvador\",\"iso_code_2\":\"SV\",\"iso_code_3\":\"SLV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"64\"},{\"name\":\"Equatorial Guinea\",\"iso_code_2\":\"GQ\",\"iso_code_3\":\"GNQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"65\"},{\"name\":\"Eritrea\",\"iso_code_2\":\"ER\",\"iso_code_3\":\"ERI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"66\"},{\"name\":\"Estonia\",\"iso_code_2\":\"EE\",\"iso_code_3\":\"EST\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"67\"},{\"name\":\"Ethiopia\",\"iso_code_2\":\"ET\",\"iso_code_3\":\"ETH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"68\"},{\"name\":\"Falkland Islands (Malvinas)\",\"iso_code_2\":\"FK\",\"iso_code_3\":\"FLK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"69\"},{\"name\":\"Faroe Islands\",\"iso_code_2\":\"FO\",\"iso_code_3\":\"FRO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"70\"},{\"name\":\"Fiji\",\"iso_code_2\":\"FJ\",\"iso_code_3\":\"FJI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"71\"},{\"name\":\"Finland\",\"iso_code_2\":\"FI\",\"iso_code_3\":\"FIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"72\"},{\"name\":\"France, Metropolitan\",\"iso_code_2\":\"FR\",\"iso_code_3\":\"FRA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"74\"},{\"name\":\"French Guiana\",\"iso_code_2\":\"GF\",\"iso_code_3\":\"GUF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"75\"},{\"name\":\"French Polynesia\",\"iso_code_2\":\"PF\",\"iso_code_3\":\"PYF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"76\"},{\"name\":\"French Southern Territories\",\"iso_code_2\":\"TF\",\"iso_code_3\":\"ATF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"77\"},{\"name\":\"FYROM\",\"iso_code_2\":\"MK\",\"iso_code_3\":\"MKD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"126\"},{\"name\":\"Gabon\",\"iso_code_2\":\"GA\",\"iso_code_3\":\"GAB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"78\"},{\"name\":\"Gambia\",\"iso_code_2\":\"GM\",\"iso_code_3\":\"GMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"79\"},{\"name\":\"Georgia\",\"iso_code_2\":\"GE\",\"iso_code_3\":\"GEO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"80\"},{\"name\":\"Germany\",\"iso_code_2\":\"DE\",\"iso_code_3\":\"DEU\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"81\"},{\"name\":\"Ghana\",\"iso_code_2\":\"GH\",\"iso_code_3\":\"GHA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"82\"},{\"name\":\"Gibraltar\",\"iso_code_2\":\"GI\",\"iso_code_3\":\"GIB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"83\"},{\"name\":\"Greece\",\"iso_code_2\":\"GR\",\"iso_code_3\":\"GRC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"84\"},{\"name\":\"Greenland\",\"iso_code_2\":\"GL\",\"iso_code_3\":\"GRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"85\"},{\"name\":\"Grenada\",\"iso_code_2\":\"GD\",\"iso_code_3\":\"GRD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"86\"},{\"name\":\"Guadeloupe\",\"iso_code_2\":\"GP\",\"iso_code_3\":\"GLP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"87\"},{\"name\":\"Guam\",\"iso_code_2\":\"GU\",\"iso_code_3\":\"GUM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"88\"},{\"name\":\"Guatemala\",\"iso_code_2\":\"GT\",\"iso_code_3\":\"GTM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"89\"},{\"name\":\"Guernsey\",\"iso_code_2\":\"GG\",\"iso_code_3\":\"GGY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"256\"},{\"name\":\"Guinea\",\"iso_code_2\":\"GN\",\"iso_code_3\":\"GIN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"90\"},{\"name\":\"Guinea-Bissau\",\"iso_code_2\":\"GW\",\"iso_code_3\":\"GNB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"91\"},{\"name\":\"Guyana\",\"iso_code_2\":\"GY\",\"iso_code_3\":\"GUY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"92\"},{\"name\":\"Haiti\",\"iso_code_2\":\"HT\",\"iso_code_3\":\"HTI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"93\"},{\"name\":\"Heard and Mc Donald Islands\",\"iso_code_2\":\"HM\",\"iso_code_3\":\"HMD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"94\"},{\"name\":\"Honduras\",\"iso_code_2\":\"HN\",\"iso_code_3\":\"HND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"95\"},{\"name\":\"Hong Kong\",\"iso_code_2\":\"HK\",\"iso_code_3\":\"HKG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"96\"},{\"name\":\"Hungary\",\"iso_code_2\":\"HU\",\"iso_code_3\":\"HUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"97\"},{\"name\":\"Iceland\",\"iso_code_2\":\"IS\",\"iso_code_3\":\"ISL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"98\"},{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"},{\"name\":\"Indonesia\",\"iso_code_2\":\"ID\",\"iso_code_3\":\"IDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"100\"},{\"name\":\"Iran (Islamic Republic of)\",\"iso_code_2\":\"IR\",\"iso_code_3\":\"IRN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"101\"},{\"name\":\"Iraq\",\"iso_code_2\":\"IQ\",\"iso_code_3\":\"IRQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"102\"},{\"name\":\"Ireland\",\"iso_code_2\":\"IE\",\"iso_code_3\":\"IRL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"103\"},{\"name\":\"Isle of Man\",\"iso_code_2\":\"IM\",\"iso_code_3\":\"IMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"254\"},{\"name\":\"Israel\",\"iso_code_2\":\"IL\",\"iso_code_3\":\"ISR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"104\"},{\"name\":\"Italy\",\"iso_code_2\":\"IT\",\"iso_code_3\":\"ITA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"105\"},{\"name\":\"Jamaica\",\"iso_code_2\":\"JM\",\"iso_code_3\":\"JAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"106\"},{\"name\":\"Japan\",\"iso_code_2\":\"JP\",\"iso_code_3\":\"JPN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"107\"},{\"name\":\"Jersey\",\"iso_code_2\":\"JE\",\"iso_code_3\":\"JEY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"257\"},{\"name\":\"Jordan\",\"iso_code_2\":\"JO\",\"iso_code_3\":\"JOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"108\"},{\"name\":\"Kazakhstan\",\"iso_code_2\":\"KZ\",\"iso_code_3\":\"KAZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"109\"},{\"name\":\"Kenya\",\"iso_code_2\":\"KE\",\"iso_code_3\":\"KEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"110\"},{\"name\":\"Kiribati\",\"iso_code_2\":\"KI\",\"iso_code_3\":\"KIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"111\"},{\"name\":\"Kosovo, Republic of\",\"iso_code_2\":\"XK\",\"iso_code_3\":\"UNK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"253\"},{\"name\":\"Kuwait\",\"iso_code_2\":\"KW\",\"iso_code_3\":\"KWT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"114\"},{\"name\":\"Kyrgyzstan\",\"iso_code_2\":\"KG\",\"iso_code_3\":\"KGZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"115\"},{\"name\":\"Lao People\'s Democratic Republic\",\"iso_code_2\":\"LA\",\"iso_code_3\":\"LAO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"116\"},{\"name\":\"Latvia\",\"iso_code_2\":\"LV\",\"iso_code_3\":\"LVA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"117\"},{\"name\":\"Lebanon\",\"iso_code_2\":\"LB\",\"iso_code_3\":\"LBN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"118\"},{\"name\":\"Lesotho\",\"iso_code_2\":\"LS\",\"iso_code_3\":\"LSO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"119\"},{\"name\":\"Liberia\",\"iso_code_2\":\"LR\",\"iso_code_3\":\"LBR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"120\"},{\"name\":\"Libyan Arab Jamahiriya\",\"iso_code_2\":\"LY\",\"iso_code_3\":\"LBY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"121\"},{\"name\":\"Liechtenstein\",\"iso_code_2\":\"LI\",\"iso_code_3\":\"LIE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"122\"},{\"name\":\"Lithuania\",\"iso_code_2\":\"LT\",\"iso_code_3\":\"LTU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"123\"},{\"name\":\"Luxembourg\",\"iso_code_2\":\"LU\",\"iso_code_3\":\"LUX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"124\"},{\"name\":\"Macau\",\"iso_code_2\":\"MO\",\"iso_code_3\":\"MAC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"125\"},{\"name\":\"Madagascar\",\"iso_code_2\":\"MG\",\"iso_code_3\":\"MDG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"127\"},{\"name\":\"Malawi\",\"iso_code_2\":\"MW\",\"iso_code_3\":\"MWI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"128\"},{\"name\":\"Malaysia\",\"iso_code_2\":\"MY\",\"iso_code_3\":\"MYS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"129\"},{\"name\":\"Maldives\",\"iso_code_2\":\"MV\",\"iso_code_3\":\"MDV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"130\"},{\"name\":\"Mali\",\"iso_code_2\":\"ML\",\"iso_code_3\":\"MLI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"131\"},{\"name\":\"Malta\",\"iso_code_2\":\"MT\",\"iso_code_3\":\"MLT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"132\"},{\"name\":\"Marshall Islands\",\"iso_code_2\":\"MH\",\"iso_code_3\":\"MHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"133\"},{\"name\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"134\"},{\"name\":\"Mauritania\",\"iso_code_2\":\"MR\",\"iso_code_3\":\"MRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"135\"},{\"name\":\"Mauritius\",\"iso_code_2\":\"MU\",\"iso_code_3\":\"MUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"136\"},{\"name\":\"Mayotte\",\"iso_code_2\":\"YT\",\"iso_code_3\":\"MYT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"137\"},{\"name\":\"Mexico\",\"iso_code_2\":\"MX\",\"iso_code_3\":\"MEX\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"138\"},{\"name\":\"Micronesia, Federated States of\",\"iso_code_2\":\"FM\",\"iso_code_3\":\"FSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"139\"},{\"name\":\"Moldova, Republic of\",\"iso_code_2\":\"MD\",\"iso_code_3\":\"MDA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"140\"},{\"name\":\"Monaco\",\"iso_code_2\":\"MC\",\"iso_code_3\":\"MCO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"141\"},{\"name\":\"Mongolia\",\"iso_code_2\":\"MN\",\"iso_code_3\":\"MNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"142\"},{\"name\":\"Montenegro\",\"iso_code_2\":\"ME\",\"iso_code_3\":\"MNE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"242\"},{\"name\":\"Montserrat\",\"iso_code_2\":\"MS\",\"iso_code_3\":\"MSR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"143\"},{\"name\":\"Morocco\",\"iso_code_2\":\"MA\",\"iso_code_3\":\"MAR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"144\"},{\"name\":\"Mozambique\",\"iso_code_2\":\"MZ\",\"iso_code_3\":\"MOZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"145\"},{\"name\":\"Myanmar\",\"iso_code_2\":\"MM\",\"iso_code_3\":\"MMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"146\"},{\"name\":\"Namibia\",\"iso_code_2\":\"NA\",\"iso_code_3\":\"NAM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"147\"},{\"name\":\"Nauru\",\"iso_code_2\":\"NR\",\"iso_code_3\":\"NRU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"148\"},{\"name\":\"Nepal\",\"iso_code_2\":\"NP\",\"iso_code_3\":\"NPL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"149\"},{\"name\":\"Netherlands\",\"iso_code_2\":\"NL\",\"iso_code_3\":\"NLD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"150\"},{\"name\":\"Netherlands Antilles\",\"iso_code_2\":\"AN\",\"iso_code_3\":\"ANT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"151\"},{\"name\":\"New Caledonia\",\"iso_code_2\":\"NC\",\"iso_code_3\":\"NCL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"152\"},{\"name\":\"New Zealand\",\"iso_code_2\":\"NZ\",\"iso_code_3\":\"NZL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"153\"},{\"name\":\"Nicaragua\",\"iso_code_2\":\"NI\",\"iso_code_3\":\"NIC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"154\"},{\"name\":\"Niger\",\"iso_code_2\":\"NE\",\"iso_code_3\":\"NER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"155\"},{\"name\":\"Nigeria\",\"iso_code_2\":\"NG\",\"iso_code_3\":\"NGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"156\"},{\"name\":\"Niue\",\"iso_code_2\":\"NU\",\"iso_code_3\":\"NIU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"157\"},{\"name\":\"Norfolk Island\",\"iso_code_2\":\"NF\",\"iso_code_3\":\"NFK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"158\"},{\"name\":\"North Korea\",\"iso_code_2\":\"KP\",\"iso_code_3\":\"PRK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"112\"},{\"name\":\"Northern Mariana Islands\",\"iso_code_2\":\"MP\",\"iso_code_3\":\"MNP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"159\"},{\"name\":\"Norway\",\"iso_code_2\":\"NO\",\"iso_code_3\":\"NOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"160\"},{\"name\":\"Oman\",\"iso_code_2\":\"OM\",\"iso_code_3\":\"OMN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"161\"},{\"name\":\"Pakistan\",\"iso_code_2\":\"PK\",\"iso_code_3\":\"PAK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"162\"},{\"name\":\"Palau\",\"iso_code_2\":\"PW\",\"iso_code_3\":\"PLW\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"163\"},{\"name\":\"Palestinian Territory, Occupied\",\"iso_code_2\":\"PS\",\"iso_code_3\":\"PSE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"247\"},{\"name\":\"Panama\",\"iso_code_2\":\"PA\",\"iso_code_3\":\"PAN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"164\"},{\"name\":\"Papua New Guinea\",\"iso_code_2\":\"PG\",\"iso_code_3\":\"PNG\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"165\"},{\"name\":\"Paraguay\",\"iso_code_2\":\"PY\",\"iso_code_3\":\"PRY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"166\"},{\"name\":\"Peru\",\"iso_code_2\":\"PE\",\"iso_code_3\":\"PER\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"167\"},{\"name\":\"Philippines\",\"iso_code_2\":\"PH\",\"iso_code_3\":\"PHL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"168\"},{\"name\":\"Pitcairn\",\"iso_code_2\":\"PN\",\"iso_code_3\":\"PCN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"169\"},{\"name\":\"Poland\",\"iso_code_2\":\"PL\",\"iso_code_3\":\"POL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"170\"},{\"name\":\"Portugal\",\"iso_code_2\":\"PT\",\"iso_code_3\":\"PRT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"171\"},{\"name\":\"Puerto Rico\",\"iso_code_2\":\"PR\",\"iso_code_3\":\"PRI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"172\"},{\"name\":\"Qatar\",\"iso_code_2\":\"QA\",\"iso_code_3\":\"QAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"173\"},{\"name\":\"Reunion\",\"iso_code_2\":\"RE\",\"iso_code_3\":\"REU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"174\"},{\"name\":\"Romania\",\"iso_code_2\":\"RO\",\"iso_code_3\":\"ROM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"175\"},{\"name\":\"Russian Federation\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"176\"},{\"name\":\"Rwanda\",\"iso_code_2\":\"RW\",\"iso_code_3\":\"RWA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"177\"},{\"name\":\"Saint Kitts and Nevis\",\"iso_code_2\":\"KN\",\"iso_code_3\":\"KNA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"178\"},{\"name\":\"Saint Lucia\",\"iso_code_2\":\"LC\",\"iso_code_3\":\"LCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"179\"},{\"name\":\"Saint Vincent and the Grenadines\",\"iso_code_2\":\"VC\",\"iso_code_3\":\"VCT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"180\"},{\"name\":\"Samoa\",\"iso_code_2\":\"WS\",\"iso_code_3\":\"WSM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"181\"},{\"name\":\"San Marino\",\"iso_code_2\":\"SM\",\"iso_code_3\":\"SMR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"182\"},{\"name\":\"Sao Tome and Principe\",\"iso_code_2\":\"ST\",\"iso_code_3\":\"STP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"183\"},{\"name\":\"Saudi Arabia\",\"iso_code_2\":\"SA\",\"iso_code_3\":\"SAU\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"184\"},{\"name\":\"Senegal\",\"iso_code_2\":\"SN\",\"iso_code_3\":\"SEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"185\"},{\"name\":\"Serbia\",\"iso_code_2\":\"RS\",\"iso_code_3\":\"SRB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"243\"},{\"name\":\"Seychelles\",\"iso_code_2\":\"SC\",\"iso_code_3\":\"SYC\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"186\"},{\"name\":\"Sierra Leone\",\"iso_code_2\":\"SL\",\"iso_code_3\":\"SLE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"187\"},{\"name\":\"Singapore\",\"iso_code_2\":\"SG\",\"iso_code_3\":\"SGP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"188\"},{\"name\":\"Slovak Republic\",\"iso_code_2\":\"SK\",\"iso_code_3\":\"SVK\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city} {postcode}\\r\\n{zone}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"189\"},{\"name\":\"Slovenia\",\"iso_code_2\":\"SI\",\"iso_code_3\":\"SVN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"190\"},{\"name\":\"Solomon Islands\",\"iso_code_2\":\"SB\",\"iso_code_3\":\"SLB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"191\"},{\"name\":\"Somalia\",\"iso_code_2\":\"SO\",\"iso_code_3\":\"SOM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"192\"},{\"name\":\"South Africa\",\"iso_code_2\":\"ZA\",\"iso_code_3\":\"ZAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"193\"},{\"name\":\"South Georgia &amp; South Sandwich Islands\",\"iso_code_2\":\"GS\",\"iso_code_3\":\"SGS\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"194\"},{\"name\":\"South Korea\",\"iso_code_2\":\"KR\",\"iso_code_3\":\"KOR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"113\"},{\"name\":\"South Sudan\",\"iso_code_2\":\"SS\",\"iso_code_3\":\"SSD\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"248\"},{\"name\":\"Spain\",\"iso_code_2\":\"ES\",\"iso_code_3\":\"ESP\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"195\"},{\"name\":\"Sri Lanka\",\"iso_code_2\":\"LK\",\"iso_code_3\":\"LKA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"196\"},{\"name\":\"St. Barthelemy\",\"iso_code_2\":\"BL\",\"iso_code_3\":\"BLM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"249\"},{\"name\":\"St. Helena\",\"iso_code_2\":\"SH\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"197\"},{\"name\":\"St. Martin (French part)\",\"iso_code_2\":\"MF\",\"iso_code_3\":\"MAF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"250\"},{\"name\":\"St. Pierre and Miquelon\",\"iso_code_2\":\"PM\",\"iso_code_3\":\"SPM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"198\"},{\"name\":\"Sudan\",\"iso_code_2\":\"SD\",\"iso_code_3\":\"SDN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"199\"},{\"name\":\"Suriname\",\"iso_code_2\":\"SR\",\"iso_code_3\":\"SUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"200\"},{\"name\":\"Svalbard and Jan Mayen Islands\",\"iso_code_2\":\"SJ\",\"iso_code_3\":\"SJM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"201\"},{\"name\":\"Swaziland\",\"iso_code_2\":\"SZ\",\"iso_code_3\":\"SWZ\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"202\"},{\"name\":\"Sweden\",\"iso_code_2\":\"SE\",\"iso_code_3\":\"SWE\",\"address_format\":\"{company}\\r\\n{firstname} {lastname}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{postcode} {city}\\r\\n{country}\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"203\"},{\"name\":\"Switzerland\",\"iso_code_2\":\"CH\",\"iso_code_3\":\"CHE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"204\"},{\"name\":\"Syrian Arab Republic\",\"iso_code_2\":\"SY\",\"iso_code_3\":\"SYR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"205\"},{\"name\":\"Taiwan\",\"iso_code_2\":\"TW\",\"iso_code_3\":\"TWN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"206\"},{\"name\":\"Tajikistan\",\"iso_code_2\":\"TJ\",\"iso_code_3\":\"TJK\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"207\"},{\"name\":\"Tanzania, United Republic of\",\"iso_code_2\":\"TZ\",\"iso_code_3\":\"TZA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"208\"},{\"name\":\"Thailand\",\"iso_code_2\":\"TH\",\"iso_code_3\":\"THA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"209\"},{\"name\":\"Togo\",\"iso_code_2\":\"TG\",\"iso_code_3\":\"TGO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"210\"},{\"name\":\"Tokelau\",\"iso_code_2\":\"TK\",\"iso_code_3\":\"TKL\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"211\"},{\"name\":\"Tonga\",\"iso_code_2\":\"TO\",\"iso_code_3\":\"TON\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"212\"},{\"name\":\"Trinidad and Tobago\",\"iso_code_2\":\"TT\",\"iso_code_3\":\"TTO\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"213\"},{\"name\":\"Tristan da Cunha\",\"iso_code_2\":\"TA\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"255\"},{\"name\":\"Tunisia\",\"iso_code_2\":\"TN\",\"iso_code_3\":\"TUN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"214\"},{\"name\":\"Turkey\",\"iso_code_2\":\"TR\",\"iso_code_3\":\"TUR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"215\"},{\"name\":\"Turkmenistan\",\"iso_code_2\":\"TM\",\"iso_code_3\":\"TKM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"216\"},{\"name\":\"Turks and Caicos Islands\",\"iso_code_2\":\"TC\",\"iso_code_3\":\"TCA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"217\"},{\"name\":\"Tuvalu\",\"iso_code_2\":\"TV\",\"iso_code_3\":\"TUV\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"218\"},{\"name\":\"Uganda\",\"iso_code_2\":\"UG\",\"iso_code_3\":\"UGA\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"219\"},{\"name\":\"Ukraine\",\"iso_code_2\":\"UA\",\"iso_code_3\":\"UKR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"220\"},{\"name\":\"United Arab Emirates\",\"iso_code_2\":\"AE\",\"iso_code_3\":\"ARE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"221\"},{\"name\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"postcode_required\":\"1\",\"status\":\"1\",\"value\":\"222\"},{\"name\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"223\"},{\"name\":\"United States Minor Outlying Islands\",\"iso_code_2\":\"UM\",\"iso_code_3\":\"UMI\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"224\"},{\"name\":\"Uruguay\",\"iso_code_2\":\"UY\",\"iso_code_3\":\"URY\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"225\"},{\"name\":\"Uzbekistan\",\"iso_code_2\":\"UZ\",\"iso_code_3\":\"UZB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"226\"},{\"name\":\"Vanuatu\",\"iso_code_2\":\"VU\",\"iso_code_3\":\"VUT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"227\"},{\"name\":\"Vatican City State (Holy See)\",\"iso_code_2\":\"VA\",\"iso_code_3\":\"VAT\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"228\"},{\"name\":\"Venezuela\",\"iso_code_2\":\"VE\",\"iso_code_3\":\"VEN\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"229\"},{\"name\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"230\"},{\"name\":\"Virgin Islands (British)\",\"iso_code_2\":\"VG\",\"iso_code_3\":\"VGB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"231\"},{\"name\":\"Virgin Islands (U.S.)\",\"iso_code_2\":\"VI\",\"iso_code_3\":\"VIR\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"232\"},{\"name\":\"Wallis and Futuna Islands\",\"iso_code_2\":\"WF\",\"iso_code_3\":\"WLF\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"233\"},{\"name\":\"Western Sahara\",\"iso_code_2\":\"EH\",\"iso_code_3\":\"ESH\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"234\"},{\"name\":\"Yemen\",\"iso_code_2\":\"YE\",\"iso_code_3\":\"YEM\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"235\"},{\"name\":\"Zambia\",\"iso_code_2\":\"ZM\",\"iso_code_3\":\"ZMB\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"238\"},{\"name\":\"Zimbabwe\",\"iso_code_2\":\"ZW\",\"iso_code_3\":\"ZWE\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"239\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]}},\"id\":\"shipping_address\",\"title\":\"Delivery details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"3\",\"column\":1,\"row\":3,\"width\":\"30\"},\"shipping_method\":{\"id\":\"shipping_method\",\"title\":\"Shipping method\",\"description\":\"\",\"icon\":\"fa fa-truck\",\"sort_order\":4,\"column\":2,\"row\":1,\"display\":1,\"input_style\":\"radio\",\"display_title\":1,\"display_desciption\":1,\"display_options\":1,\"width\":\"30\",\"default_option\":\"\"},\"payment_method\":{\"id\":\"payment_method\",\"title\":\"Payment method\",\"description\":\"\",\"icon\":\"fa fa-credit-card\",\"sort_order\":5,\"column\":3,\"row\":1,\"display\":1,\"display_options\":1,\"display_images\":1,\"input_style\":\"radio\",\"display_logos\":1,\"width\":\"30\",\"default_option\":\"\"},\"cart\":{\"display\":1,\"option\":{\"voucher\":{\"display\":1,\"value\":\"\",\"id\":\"voucher\",\"title\":\"voucher\",\"tooltip\":\"voucher\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"coupon\":{\"display\":1,\"value\":\"\",\"id\":\"coupon\",\"title\":\"coupon\",\"tooltip\":\"coupon\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"reward\":{\"display\":1,\"value\":\"\",\"id\":\"reward\",\"title\":\"reward\",\"tooltip\":\"reward\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"}},\"columns\":{\"image\":1,\"name\":1,\"model\":0,\"quantity\":1,\"price\":1,\"total\":1},\"id\":\"cart\",\"title\":\"Shopping cart\",\"description\":\"\",\"icon\":\"fa fa-shopping-cart\",\"sort_order\":6,\"column\":4,\"row\":2,\"display_title\":1,\"display_description\":1,\"width\":\"50\"},\"confirm\":{\"display\":1,\"fields\":{\"comment\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"comment\",\"title\":\"Add Comments About Your Order\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please fill in the comment to the order\"}],\"type\":\"textarea\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":0},\"agree\":{\"display\":1,\"require\":1,\"value\":0,\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=5\\\" class=\\\"agree\\\"><b>Terms &amp; Conditions<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Terms &amp; Conditions!\",\"information_id\":\"5\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":1,\"information_id\":\"5\"}},\"id\":\"confirm\",\"icon\":\"\",\"display_confirm\":1,\"sort_order\":8,\"column\":4,\"row\":2,\"width\":\"50\"},\"payment\":{\"id\":\"payment\",\"title\":\"\",\"icon\":\"\",\"sort_order\":7,\"column\":4,\"row\":2,\"default_payment_popup\":0,\"payment_popups\":[],\"width\":\"50\"}}},\"trigger\":\"#button-confirm, .button, .btn, .button_oc, input[type=submit]\"},\"confirm\":{\"comment\":\"\",\"agree\":\"\"},\"total\":205,\"recreate_order\":false,\"statistic\":{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"click\":{\"confirm\":1}},\"statistic_id\":6,\"compare\":[]}', '2020-01-18 05:26:29');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('672f204753f0d3dc9ffd9a9a01', '{\"api_id\":\"1\"}', '2020-01-16 19:04:49'),
('69dce3ca4959e6b0f8a885928d', '{\"api_id\":\"1\"}', '2020-01-16 20:57:08'),
('6ef0eb07ca09b6eb828547d8e1', '{\"api_id\":\"1\"}', '2020-01-16 20:58:08'),
('7510676fe2d407d543aec10d00', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"kjnih\",\"lastname\":\"redr\",\"company\":\"trdtr\",\"address_1\":\"redsre\",\"address_2\":\"trdt\",\"postcode\":\"7877657\",\"city\":\"trd\",\"zone_id\":\"3613\",\"zone\":\"Alabama\",\"zone_code\":\"AL\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"kjnih\",\"lastname\":\"redr\",\"company\":\"trdtr\",\"address_1\":\"redsre\",\"address_2\":\"trdt\",\"postcode\":\"7877657\",\"city\":\"trd\",\"zone_id\":\"3613\",\"zone\":\"Alabama\",\"zone_code\":\"AL\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"},\"comment\":\"\",\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}}}', '2019-10-25 17:37:38'),
('80c2b692bde713bac9a48eb90d', '{\"user_id\":\"1\",\"user_token\":\"khosVXJnbePqpo8FrlzwYoyfNME3cKl3\"}', '2019-10-25 18:03:13'),
('83a9f6f769e7b17d3c95b75fad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"GIRUVX2NWk6QoXcU39HkPPmrIde1ZfyH\",\"install\":\"B7bv5PJple\"}', '2019-10-26 14:34:01'),
('846699d68e1f1163ff8358ac48', '{\"api_id\":\"1\"}', '2020-01-13 11:16:32'),
('922c4c33f2dc8858b3956cac3c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"kk\",\"lastname\":\"kk\",\"company\":\"hbnnkk\",\"address_1\":\"jnb\",\"address_2\":\"bbbj\",\"postcode\":\"56447\",\"city\":\"jjjkkk\",\"country_id\":\"222\",\"zone_id\":\"3516\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Angus\",\"zone_code\":\"AGS\"},\"shipping_address\":{\"firstname\":\"kk\",\"lastname\":\"kk\",\"company\":\"hbnnkk\",\"address_1\":\"jnb\",\"address_2\":\"bbbj\",\"postcode\":\"56447\",\"city\":\"jjjkkk\",\"country_id\":\"222\",\"zone_id\":\"3516\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"zone\":\"Angus\",\"zone_code\":\"AGS\",\"custom_field\":[]}}', '2019-10-25 18:03:33'),
('b289e3d6029bd9a25ff03aa35f', '{\"api_id\":\"1\"}', '2020-01-16 20:57:45'),
('b3dbc980666749e5feee3e09e2', '{\"language\":\"en-gb\",\"currency\":\"INR\"}', '2020-01-13 20:01:27'),
('c5f9b7941f7f89f46a8f5c9cee', '{\"language\":\"en-gb\",\"currency\":\"INR\",\"user_id\":\"1\",\"user_token\":\"RJFPRP93PSzX3U4OAsDbVwbYKACoKrZJ\"}', '2020-01-17 07:48:18'),
('c6ca808082abe47333d0a8f7ff', '{\"language\":\"en-gb\",\"currency\":\"INR\",\"user_id\":\"1\",\"user_token\":\"mE4eK1rlNsWFjlJ8baRMTSD5kAgyGpe6\"}', '2020-01-21 14:38:09'),
('cce3d28293d5173ce0cfcd03f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-25 16:49:55'),
('d24aceb92ff82081bd4dddaab0', '{\"api_id\":\"1\",\"language\":\"en-gb\",\"currency\":\"INR\"}', '2020-01-16 20:57:39'),
('dc3d93933b5c4b15cbaad8c6c8', '{\"language\":\"en-gb\",\"currency\":\"INR\"}', '2020-01-14 08:26:59'),
('e16af71a69e4ff612869d241f3', '{\"language\":\"en-gb\",\"currency\":\"INR\"}', '2020-01-14 11:15:05');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('e2870af1c1f70354585676f068', '{\"language\":\"en-gb\",\"currency\":\"INR\",\"customer_id\":\"2\",\"shipping_address\":{\"firstname\":\"krishna \",\"lastname\":\"kanth\",\"email\":\"\",\"email_confirm\":\"\",\"telephone\":\"\",\"fax\":\"\",\"password\":\"\",\"confirm\":\"\",\"customer_group_id\":\"1\",\"company\":\"\",\"address_1\":\"1234\",\"address_2\":\"\",\"postcode\":\"534204\",\"city\":\"kkkkkk\",\"country_id\":\"99\",\"zone_id\":\"1476\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"{firstname} {lastname}{company}\\n{address_1}{address_2}\\n{city} {postcode}\\n{zone}\\n{country}\",\"custom_field\":[],\"zone\":\"Andhra Pradesh\",\"zone_code\":\"AP\",\"agree\":\"\",\"shipping_address\":\"1\",\"newsletter\":\"1\",\"address_id\":\"new\"},\"d_quickcheckout_debug\":\"0\",\"current_setting_id\":1,\"account\":\"logged\",\"d_quickcheckout\":{\"version\":\"\",\"name\":\"01\\/16\\/2020 07:00:23 pm\",\"general\":{\"enable\":0,\"min_order\":{\"value\":\"0\",\"text\":\"You must have a sum more then %s to make an order     \"},\"min_quantity\":{\"value\":\"0\",\"text\":\"You must have a quantity more then %s to make an order   \"},\"main_checkout\":1,\"social_login_style\":\"icons\",\"store_id\":0,\"clear_session\":\"0\",\"login_refresh\":\"1\",\"settings\":{\"value\":0,\"bulk\":\"\"},\"social_login\":0,\"analytics_event\":\"0\",\"loader\":\"catalog\\/d_quickcheckout\\/svg-loaders\\/puff.svg\",\"compress\":\"1\",\"update_mini_cart\":\"1\",\"default_email\":\"admin@gmail.com\",\"config\":\"d_quickcheckout\",\"debug\":\"0\"},\"design\":{\"theme\":\"default\",\"column_width\":{\"1\":\"4\",\"2\":\"4\",\"3\":\"4\",\"4\":\"8\"},\"login_style\":\"popup\",\"address_style\":\"radio\",\"placeholder\":1,\"breadcrumb\":1,\"block_style\":\"row\",\"uniform\":0,\"max_width\":\"\",\"only_quickcheckout\":0,\"telephone_countries\":\"\",\"telephone_preferred_countries\":\"\",\"telephone_validation\":0,\"cart_image_size\":{\"width\":80,\"height\":80},\"custom_style\":\"\",\"bootstrap\":1,\"autocomplete\":1},\"account\":{\"register\":{\"display\":1,\"login\":{\"id\":\"login\",\"icon\":\"fa fa-user\",\"description\":\"\",\"sort_order\":1,\"column\":1,\"row\":1,\"width\":\"50\",\"default_option\":\"guest\",\"option\":{\"register\":{\"title\":\"Register Account\",\"description\":\"By creating an account you will be able to shop faster, be up to date on an order\'s status, and keep track of the orders you have previously made.\",\"display\":1},\"guest\":{\"title\":\"Guest Checkout\",\"description\":\"Use guest checkout to buy without creating an account\",\"display\":1},\"login\":{\"title\":\"Login\",\"display\":1}}},\"payment_address\":{\"display\":1,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":0,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"email\":{\"display\":1,\"require\":1,\"error\":{\"0\":{\"min_length\":3,\"max_length\":96,\"text\":\"Sorry, but you need to have the length of the text more then 3 and less then 96 \"},\"2\":{\"email_exists\":true,\"text\":\"Warning: E-Mail Address is already registered!\"},\"3\":{\"not_empty\":true,\"text\":\"E-Mail address does not appear to be valid!\"}},\"value\":\"\",\"id\":\"email\",\"title\":\"E-Mail\",\"tooltip\":\"\",\"type\":\"email\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"email_confirm\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"email_confirm\",\"title\":\"Confirm E-mail\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_email\",\"text\":\"Email confirmation does not match email!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"heading\":{\"display\":1,\"value\":\"\",\"id\":\"heading\",\"title\":\"Your Address\",\"type\":\"heading\",\"sort_order\":8,\"class\":\"\"},\"telephone\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"telephone\",\"title\":\"Telephone\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"},{\"telephone\":true,\"text\":\"Please enter a valid telephone number\"}],\"placeholder\":\"050 123 45 54\",\"type\":\"tel\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"fax\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"fax\",\"title\":\"Fax:\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"password\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"password\",\"title\":\"Password\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":20,\"text\":\"Password must be between 4 and 20 characters!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":6,\"class\":\"\"},\"confirm\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"confirm\",\"title\":\"Password Confirm\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_password\",\"text\":\"Password confirmation does not match password!\"},{\"min_length\":\"1\",\"text\":\"Password confirmation does not match password!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":7,\"class\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":34,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"mask\":\"\"},\"customer_group_id\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"customer_group_id\",\"title\":\"Buyer Group\",\"tooltip\":\"\",\"type\":\"radio\",\"refresh\":\"2\",\"custom\":0,\"sort_order\":10,\"class\":\"\",\"options\":[{\"customer_group_id\":\"1\",\"approval\":\"0\",\"sort_order\":\"1\",\"language_id\":\"1\",\"name\":\"Default\",\"description\":\"test\",\"value\":\"1\",\"title\":\"Default\"}]},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":11,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":12,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":13,\"class\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":14,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":15,\"class\":\"country\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":16,\"class\":\"zone\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]},\"newsletter\":{\"display\":1,\"require\":0,\"value\":\"1\",\"id\":\"newsletter\",\"title\":\"I wish to subscribe to the Your Store newsletter.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"You must subsribe to our newsletter to make the order\"}],\"type\":\"checkbox\",\"custom\":0,\"class\":\"\",\"refresh\":\"0\",\"sort_order\":17},\"shipping_address\":{\"display\":1,\"value\":1,\"id\":\"shipping_address\",\"title\":\"My delivery and billing addresses are the same.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"error_step_payment_address_fields_shipping_address\"}],\"type\":\"checkbox\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":18,\"class\":\"\"},\"agree\":{\"display\":1,\"require\":1,\"value\":\"0\",\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=3\\\" class=\\\"agree\\\"><b>Privacy Policy<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Privacy Policy!\",\"information_id\":\"3\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":19,\"class\":\"\",\"information_id\":\"3\"}},\"id\":\"payment_address\",\"title\":\"Payment details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"2\",\"column\":1,\"row\":2,\"width\":\"50\"},\"shipping_address\":{\"display\":1,\"require\":0,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":6,\"class\":\"\",\"mask\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":7,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":8,\"class\":\"\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]}},\"id\":\"shipping_address\",\"title\":\"Delivery details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"3\",\"column\":1,\"row\":3,\"width\":\"30\"},\"shipping_method\":{\"id\":\"shipping_method\",\"title\":\"Shipping method\",\"description\":\"\",\"icon\":\"fa fa-truck\",\"sort_order\":4,\"column\":2,\"row\":1,\"display\":1,\"input_style\":\"radio\",\"display_title\":1,\"display_desciption\":1,\"display_options\":1,\"width\":\"30\",\"default_option\":\"\"},\"payment_method\":{\"id\":\"payment_method\",\"title\":\"Payment method\",\"description\":\"\",\"icon\":\"fa fa-credit-card\",\"sort_order\":5,\"column\":3,\"row\":1,\"display\":1,\"display_options\":1,\"display_images\":1,\"input_style\":\"radio\",\"display_logos\":1,\"width\":\"30\",\"default_option\":\"\"},\"cart\":{\"display\":1,\"option\":{\"voucher\":{\"display\":1,\"value\":\"\",\"id\":\"voucher\",\"title\":\"voucher\",\"tooltip\":\"voucher\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"coupon\":{\"display\":1,\"value\":\"\",\"id\":\"coupon\",\"title\":\"coupon\",\"tooltip\":\"coupon\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"reward\":{\"display\":1,\"value\":\"\",\"id\":\"reward\",\"title\":\"reward\",\"tooltip\":\"reward\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"}},\"columns\":{\"image\":1,\"name\":1,\"model\":0,\"quantity\":1,\"price\":1,\"total\":1},\"id\":\"cart\",\"title\":\"Shopping cart\",\"description\":\"\",\"icon\":\"fa fa-shopping-cart\",\"sort_order\":6,\"column\":4,\"row\":2,\"display_title\":1,\"display_description\":1,\"width\":\"50\"},\"confirm\":{\"display\":1,\"fields\":{\"comment\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"comment\",\"title\":\"Add Comments About Your Order\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please fill in the comment to the order\"}],\"type\":\"textarea\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":0},\"agree\":{\"display\":1,\"require\":1,\"value\":0,\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=5\\\" class=\\\"agree\\\"><b>Terms &amp; Conditions<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Terms &amp; Conditions!\",\"information_id\":\"5\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":1,\"information_id\":\"5\"}},\"id\":\"confirm\",\"icon\":\"\",\"display_confirm\":1,\"sort_order\":8,\"column\":4,\"row\":2,\"width\":\"50\"},\"payment\":{\"id\":\"payment\",\"title\":\"\",\"icon\":\"\",\"sort_order\":7,\"column\":4,\"row\":2,\"default_payment_popup\":0,\"payment_popups\":[],\"width\":\"50\"}},\"guest\":{\"display\":1,\"login\":{\"id\":\"login\",\"icon\":\"fa fa-user\",\"description\":\"\",\"sort_order\":1,\"column\":1,\"row\":1,\"width\":\"50\",\"default_option\":\"guest\",\"option\":{\"register\":{\"title\":\"Register Account\",\"description\":\"By creating an account you will be able to shop faster, be up to date on an order\'s status, and keep track of the orders you have previously made.\",\"display\":1},\"guest\":{\"title\":\"Guest Checkout\",\"description\":\"Use guest checkout to buy without creating an account\",\"display\":1},\"login\":{\"title\":\"Login\",\"display\":1}}},\"payment_address\":{\"display\":1,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":0,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"email\":{\"display\":1,\"require\":1,\"error\":[{\"min_length\":3,\"max_length\":96,\"text\":\"Sorry, but you need to have the length of the text more then 3 and less then 96 \"},{\"regex\":\"\\/^[^\\\\@]+@.*\\\\.[a-z]{2,6}$\\/i\",\"text\":\"E-Mail address does not appear to be valid!\"},{\"not_empty\":true,\"text\":\"E-Mail address does not appear to be valid!\"}],\"value\":\"\",\"id\":\"email\",\"title\":\"E-Mail\",\"tooltip\":\"\",\"type\":\"email\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"email_confirm\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"email_confirm\",\"title\":\"Confirm E-mail\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_email\",\"text\":\"Email confirmation does not match email!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"heading\":{\"display\":1,\"value\":\"\",\"id\":\"heading\",\"title\":\"Your Address\",\"type\":\"heading\",\"sort_order\":8,\"class\":\"\"},\"telephone\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"telephone\",\"title\":\"Telephone\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"},{\"telephone\":true,\"text\":\"Please enter a valid telephone number\"}],\"placeholder\":\"050 123 45 54\",\"type\":\"tel\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"fax\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"fax\",\"title\":\"Fax:\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":34,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"mask\":\"\"},\"customer_group_id\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"customer_group_id\",\"title\":\"Buyer Group\",\"tooltip\":\"\",\"type\":\"radio\",\"refresh\":\"2\",\"custom\":0,\"sort_order\":10,\"class\":\"\",\"options\":[{\"customer_group_id\":\"1\",\"approval\":\"0\",\"sort_order\":\"1\",\"language_id\":\"1\",\"name\":\"Default\",\"description\":\"test\",\"value\":\"1\",\"title\":\"Default\"}]},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":11,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":12,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":13,\"class\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":14,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":15,\"class\":\"country\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":16,\"class\":\"zone\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]},\"shipping_address\":{\"display\":1,\"value\":1,\"id\":\"shipping_address\",\"title\":\"My delivery and billing addresses are the same.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"error_step_payment_address_fields_shipping_address\"}],\"type\":\"checkbox\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":18,\"class\":\"\"},\"agree\":{\"display\":1,\"require\":1,\"value\":\"0\",\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=3\\\" class=\\\"agree\\\"><b>Privacy Policy<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Privacy Policy!\",\"information_id\":\"3\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":19,\"class\":\"\",\"information_id\":\"3\"},\"password\":{\"id\":\"password\",\"title\":\"Password\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":20,\"text\":\"Password must be between 4 and 20 characters!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":6,\"class\":\"\"},\"confirm\":{\"id\":\"confirm\",\"title\":\"Password Confirm\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_password\",\"text\":\"Password confirmation does not match password!\"},{\"min_length\":\"1\",\"text\":\"Password confirmation does not match password!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":7,\"class\":\"\"},\"newsletter\":{\"id\":\"newsletter\",\"title\":\"I wish to subscribe to the Your Store newsletter.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"You must subsribe to our newsletter to make the order\"}],\"type\":\"checkbox\",\"custom\":0,\"class\":\"\",\"refresh\":\"0\",\"sort_order\":17,\"value\":\"1\"}},\"id\":\"payment_address\",\"title\":\"Payment details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"2\",\"column\":1,\"row\":2,\"width\":\"50\"},\"shipping_address\":{\"display\":1,\"require\":0,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":6,\"class\":\"\",\"mask\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":7,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":8,\"class\":\"\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]}},\"id\":\"shipping_address\",\"title\":\"Delivery details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"3\",\"column\":1,\"row\":3,\"width\":\"30\"},\"shipping_method\":{\"id\":\"shipping_method\",\"title\":\"Shipping method\",\"description\":\"\",\"icon\":\"fa fa-truck\",\"sort_order\":4,\"column\":2,\"row\":1,\"display\":1,\"input_style\":\"radio\",\"display_title\":1,\"display_desciption\":1,\"display_options\":1,\"width\":\"30\",\"default_option\":\"\"},\"payment_method\":{\"id\":\"payment_method\",\"title\":\"Payment method\",\"description\":\"\",\"icon\":\"fa fa-credit-card\",\"sort_order\":5,\"column\":3,\"row\":1,\"display\":1,\"display_options\":1,\"display_images\":1,\"input_style\":\"radio\",\"display_logos\":1,\"width\":\"30\",\"default_option\":\"\"},\"cart\":{\"display\":1,\"option\":{\"voucher\":{\"display\":1,\"value\":\"\",\"id\":\"voucher\",\"title\":\"voucher\",\"tooltip\":\"voucher\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"coupon\":{\"display\":1,\"value\":\"\",\"id\":\"coupon\",\"title\":\"coupon\",\"tooltip\":\"coupon\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"reward\":{\"display\":1,\"value\":\"\",\"id\":\"reward\",\"title\":\"reward\",\"tooltip\":\"reward\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"}},\"columns\":{\"image\":1,\"name\":1,\"model\":0,\"quantity\":1,\"price\":1,\"total\":1},\"id\":\"cart\",\"title\":\"Shopping cart\",\"description\":\"\",\"icon\":\"fa fa-shopping-cart\",\"sort_order\":6,\"column\":4,\"row\":2,\"display_title\":1,\"display_description\":1,\"width\":\"50\"},\"confirm\":{\"display\":1,\"fields\":{\"comment\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"comment\",\"title\":\"Add Comments About Your Order\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please fill in the comment to the order\"}],\"type\":\"textarea\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":0},\"agree\":{\"display\":1,\"require\":1,\"value\":0,\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=5\\\" class=\\\"agree\\\"><b>Terms &amp; Conditions<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Terms &amp; Conditions!\",\"information_id\":\"5\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":1,\"information_id\":\"5\"}},\"id\":\"confirm\",\"icon\":\"\",\"display_confirm\":1,\"sort_order\":8,\"column\":4,\"row\":2,\"width\":\"50\"},\"payment\":{\"id\":\"payment\",\"title\":\"\",\"icon\":\"\",\"sort_order\":7,\"column\":4,\"row\":2,\"default_payment_popup\":0,\"payment_popups\":[],\"width\":\"50\"}},\"logged\":{\"login\":{\"id\":\"login\",\"icon\":\"fa fa-user\",\"description\":\"\",\"sort_order\":1,\"column\":1,\"row\":1,\"width\":\"50\",\"default_option\":\"guest\",\"option\":{\"register\":{\"title\":\"Register Account\",\"description\":\"By creating an account you will be able to shop faster, be up to date on an order\'s status, and keep track of the orders you have previously made.\",\"display\":1},\"guest\":{\"title\":\"Guest Checkout\",\"description\":\"Use guest checkout to buy without creating an account\",\"display\":1},\"login\":{\"title\":\"Login\",\"display\":1}}},\"payment_address\":{\"display\":1,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":0,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":34,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":11,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":12,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":13,\"class\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":14,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":15,\"class\":\"country\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"not_empty\":true,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":16,\"class\":\"zone\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]},\"shipping_address\":{\"display\":1,\"value\":1,\"id\":\"shipping_address\",\"title\":\"My delivery and billing addresses are the same.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"error_step_payment_address_fields_shipping_address\"}],\"type\":\"checkbox\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":18,\"class\":\"\"},\"address_id\":[],\"email\":{\"id\":\"email\",\"title\":\"E-Mail\",\"tooltip\":\"\",\"error\":[],\"type\":\"email\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"email_confirm\":{\"id\":\"email_confirm\",\"title\":\"Confirm E-mail\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_email\",\"text\":\"Email confirmation does not match email!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"telephone\":{\"id\":\"telephone\",\"title\":\"Telephone\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"},{\"telephone\":true,\"text\":\"Please enter a valid telephone number\"}],\"placeholder\":\"050 123 45 54\",\"type\":\"tel\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"fax\":{\"id\":\"fax\",\"title\":\"Fax:\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Telephone must be between 3 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"password\":{\"id\":\"password\",\"title\":\"Password\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":20,\"text\":\"Password must be between 4 and 20 characters!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":6,\"class\":\"\"},\"confirm\":{\"id\":\"confirm\",\"title\":\"Password Confirm\",\"tooltip\":\"\",\"error\":[{\"compare_to\":\"#payment_address_password\",\"text\":\"Password confirmation does not match password!\"},{\"min_length\":\"1\",\"text\":\"Password confirmation does not match password!\"}],\"type\":\"password\",\"refresh\":\"3\",\"custom\":0,\"sort_order\":7,\"class\":\"\"},\"heading\":{\"id\":\"heading\",\"title\":\"Your Address\",\"type\":\"heading\",\"sort_order\":8,\"class\":\"\"},\"customer_group_id\":{\"id\":\"customer_group_id\",\"title\":\"Buyer Group\",\"tooltip\":\"\",\"type\":\"radio\",\"refresh\":\"2\",\"custom\":0,\"sort_order\":10,\"class\":\"\",\"options\":[{\"customer_group_id\":\"1\",\"approval\":\"0\",\"sort_order\":\"1\",\"language_id\":\"1\",\"name\":\"Default\",\"description\":\"test\",\"value\":\"1\",\"title\":\"Default\"}]},\"newsletter\":{\"id\":\"newsletter\",\"title\":\"I wish to subscribe to the Your Store newsletter.\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"You must subsribe to our newsletter to make the order\"}],\"type\":\"checkbox\",\"custom\":0,\"class\":\"\",\"refresh\":\"0\",\"sort_order\":17,\"value\":\"1\"},\"agree\":{\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=3\\\" class=\\\"agree\\\"><b>Privacy Policy<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Privacy Policy!\",\"information_id\":\"3\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":19,\"class\":\"\",\"information_id\":\"3\"}},\"id\":\"payment_address\",\"title\":\"Payment details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"2\",\"column\":1,\"row\":2,\"width\":\"50\"},\"shipping_address\":{\"display\":1,\"require\":0,\"fields\":{\"firstname\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"firstname\",\"title\":\"First Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"First Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":1,\"class\":\"\",\"mask\":\"\"},\"lastname\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"lastname\",\"title\":\"Last Name\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"max_length\":32,\"text\":\"Last Name must be between 1 and 32 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":2,\"class\":\"\",\"mask\":\"\"},\"company\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"company\",\"title\":\"Company\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":32,\"text\":\"Company name required more the 3 and less the 128 characters\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":3,\"class\":\"\",\"mask\":\"\"},\"address_1\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"address_1\",\"title\":\"Address 1\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":4,\"class\":\"\",\"mask\":\"\"},\"address_2\":{\"display\":0,\"require\":0,\"value\":\"\",\"id\":\"address_2\",\"title\":\"Address 2\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"Address 1 must be between 3 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":5,\"class\":\"\",\"mask\":\"\"},\"city\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"city\",\"title\":\"City\",\"tooltip\":\"\",\"error\":[{\"min_length\":3,\"max_length\":128,\"text\":\"City must be between 2 and 128 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":6,\"class\":\"\",\"mask\":\"\"},\"postcode\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"postcode\",\"title\":\"Post Code\",\"tooltip\":\"\",\"error\":[{\"min_length\":2,\"max_length\":10,\"text\":\"Postcode must be between 2 and 10 characters!\"}],\"type\":\"text\",\"refresh\":\"0\",\"custom\":0,\"sort_order\":7,\"class\":\"\",\"mask\":\"\"},\"country_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"country_id\",\"title\":\"Country\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a country!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":8,\"class\":\"\",\"options\":[{\"name\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"postcode_required\":\"0\",\"status\":\"1\",\"value\":\"99\"}]},\"zone_id\":{\"display\":1,\"require\":1,\"value\":\"\",\"id\":\"zone_id\",\"title\":\"Region \\/ State\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please select a region \\/ state!\"}],\"type\":\"select\",\"refresh\":\"4\",\"custom\":0,\"sort_order\":9,\"class\":\"\",\"options\":[{\"country_id\":\"99\",\"name\":\"Andaman and Nicobar Islands\",\"code\":\"AN\",\"status\":\"1\",\"value\":\"1475\"},{\"country_id\":\"99\",\"name\":\"Andhra Pradesh\",\"code\":\"AP\",\"status\":\"1\",\"value\":\"1476\"},{\"country_id\":\"99\",\"name\":\"Arunachal Pradesh\",\"code\":\"AR\",\"status\":\"1\",\"value\":\"1477\"},{\"country_id\":\"99\",\"name\":\"Assam\",\"code\":\"AS\",\"status\":\"1\",\"value\":\"1478\"},{\"country_id\":\"99\",\"name\":\"Bihar\",\"code\":\"BI\",\"status\":\"1\",\"value\":\"1479\"},{\"country_id\":\"99\",\"name\":\"Chandigarh\",\"code\":\"CH\",\"status\":\"1\",\"value\":\"1480\"},{\"country_id\":\"99\",\"name\":\"Dadra and Nagar Haveli\",\"code\":\"DA\",\"status\":\"1\",\"value\":\"1481\"},{\"country_id\":\"99\",\"name\":\"Daman and Diu\",\"code\":\"DM\",\"status\":\"1\",\"value\":\"1482\"},{\"country_id\":\"99\",\"name\":\"Delhi\",\"code\":\"DE\",\"status\":\"1\",\"value\":\"1483\"},{\"country_id\":\"99\",\"name\":\"Goa\",\"code\":\"GO\",\"status\":\"1\",\"value\":\"1484\"},{\"country_id\":\"99\",\"name\":\"Gujarat\",\"code\":\"GU\",\"status\":\"1\",\"value\":\"1485\"},{\"country_id\":\"99\",\"name\":\"Haryana\",\"code\":\"HA\",\"status\":\"1\",\"value\":\"1486\"},{\"country_id\":\"99\",\"name\":\"Himachal Pradesh\",\"code\":\"HP\",\"status\":\"1\",\"value\":\"1487\"},{\"country_id\":\"99\",\"name\":\"Jammu and Kashmir\",\"code\":\"JA\",\"status\":\"1\",\"value\":\"1488\"},{\"country_id\":\"99\",\"name\":\"Karnataka\",\"code\":\"KA\",\"status\":\"1\",\"value\":\"1489\"},{\"country_id\":\"99\",\"name\":\"Kerala\",\"code\":\"KE\",\"status\":\"1\",\"value\":\"1490\"},{\"country_id\":\"99\",\"name\":\"Lakshadweep Islands\",\"code\":\"LI\",\"status\":\"1\",\"value\":\"1491\"},{\"country_id\":\"99\",\"name\":\"Madhya Pradesh\",\"code\":\"MP\",\"status\":\"1\",\"value\":\"1492\"},{\"country_id\":\"99\",\"name\":\"Maharashtra\",\"code\":\"MA\",\"status\":\"1\",\"value\":\"1493\"},{\"country_id\":\"99\",\"name\":\"Manipur\",\"code\":\"MN\",\"status\":\"1\",\"value\":\"1494\"},{\"country_id\":\"99\",\"name\":\"Meghalaya\",\"code\":\"ME\",\"status\":\"1\",\"value\":\"1495\"},{\"country_id\":\"99\",\"name\":\"Mizoram\",\"code\":\"MI\",\"status\":\"1\",\"value\":\"1496\"},{\"country_id\":\"99\",\"name\":\"Nagaland\",\"code\":\"NA\",\"status\":\"1\",\"value\":\"1497\"},{\"country_id\":\"99\",\"name\":\"Orissa\",\"code\":\"OR\",\"status\":\"1\",\"value\":\"1498\"},{\"country_id\":\"99\",\"name\":\"Puducherry\",\"code\":\"PO\",\"status\":\"1\",\"value\":\"1499\"},{\"country_id\":\"99\",\"name\":\"Punjab\",\"code\":\"PU\",\"status\":\"1\",\"value\":\"1500\"},{\"country_id\":\"99\",\"name\":\"Rajasthan\",\"code\":\"RA\",\"status\":\"1\",\"value\":\"1501\"},{\"country_id\":\"99\",\"name\":\"Sikkim\",\"code\":\"SI\",\"status\":\"1\",\"value\":\"1502\"},{\"country_id\":\"99\",\"name\":\"Tamil Nadu\",\"code\":\"TN\",\"status\":\"1\",\"value\":\"1503\"},{\"country_id\":\"99\",\"name\":\"Telangana\",\"code\":\"TS\",\"status\":\"1\",\"value\":\"4231\"},{\"country_id\":\"99\",\"name\":\"Tripura\",\"code\":\"TR\",\"status\":\"1\",\"value\":\"1504\"},{\"country_id\":\"99\",\"name\":\"Uttar Pradesh\",\"code\":\"UP\",\"status\":\"1\",\"value\":\"1505\"},{\"country_id\":\"99\",\"name\":\"West Bengal\",\"code\":\"WB\",\"status\":\"1\",\"value\":\"1506\"}]}},\"id\":\"shipping_address\",\"title\":\"Delivery details\",\"description\":\"\",\"icon\":\"fa fa-book\",\"sort_order\":\"3\",\"column\":1,\"row\":3,\"width\":\"30\"},\"shipping_method\":{\"id\":\"shipping_method\",\"title\":\"Shipping method\",\"description\":\"\",\"icon\":\"fa fa-truck\",\"sort_order\":4,\"column\":2,\"row\":1,\"display\":1,\"input_style\":\"radio\",\"display_title\":1,\"display_desciption\":1,\"display_options\":1,\"width\":\"30\",\"default_option\":\"\"},\"payment_method\":{\"id\":\"payment_method\",\"title\":\"Payment method\",\"description\":\"\",\"icon\":\"fa fa-credit-card\",\"sort_order\":5,\"column\":3,\"row\":1,\"display\":1,\"display_options\":1,\"display_images\":1,\"input_style\":\"radio\",\"display_logos\":1,\"width\":\"30\",\"default_option\":\"\"},\"cart\":{\"display\":1,\"option\":{\"voucher\":{\"display\":1,\"value\":\"\",\"id\":\"voucher\",\"title\":\"voucher\",\"tooltip\":\"voucher\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"coupon\":{\"display\":1,\"value\":\"\",\"id\":\"coupon\",\"title\":\"coupon\",\"tooltip\":\"coupon\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"},\"reward\":{\"display\":1,\"value\":\"\",\"id\":\"reward\",\"title\":\"reward\",\"tooltip\":\"reward\",\"type\":\"text\",\"refresh\":\"3\",\"custom\":0,\"class\":\"\"}},\"columns\":{\"image\":1,\"name\":1,\"model\":0,\"quantity\":1,\"price\":1,\"total\":1},\"id\":\"cart\",\"title\":\"Shopping cart\",\"description\":\"\",\"icon\":\"fa fa-shopping-cart\",\"sort_order\":6,\"column\":4,\"row\":2,\"display_title\":1,\"display_description\":1,\"width\":\"50\"},\"confirm\":{\"display\":1,\"fields\":{\"comment\":{\"display\":1,\"require\":0,\"value\":\"\",\"id\":\"comment\",\"title\":\"Add Comments About Your Order\",\"tooltip\":\"\",\"error\":[{\"min_length\":1,\"text\":\"Please fill in the comment to the order\"}],\"type\":\"textarea\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":0},\"agree\":{\"display\":1,\"require\":1,\"value\":0,\"id\":\"agree\",\"title\":\"I have read and agree to the <a href=\\\"http:\\/\\/localhost\\/opencart\\/index.php?route=information\\/information\\/agree&amp;information_id=5\\\" class=\\\"agree\\\"><b>Terms &amp; Conditions<\\/b><\\/a>\",\"tooltip\":\"\",\"error\":[{\"checked\":true,\"text\":\"Warning: You must agree to the Terms &amp; Conditions!\",\"information_id\":\"5\"}],\"type\":\"checkbox\",\"refresh\":\"0\",\"custom\":0,\"class\":\"\",\"sort_order\":1,\"information_id\":\"5\"}},\"id\":\"confirm\",\"icon\":\"\",\"display_confirm\":1,\"sort_order\":8,\"column\":4,\"row\":2,\"width\":\"50\"},\"payment\":{\"id\":\"payment\",\"title\":\"\",\"icon\":\"\",\"sort_order\":7,\"column\":4,\"row\":2,\"default_payment_popup\":0,\"payment_popups\":[],\"width\":\"50\"}}},\"trigger\":\"#button-confirm, .button, .btn, .button_oc, input[type=submit]\"},\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"krishna \",\"lastname\":\"kanth\",\"email\":\"\",\"password\":\"\",\"telephone\":\"\",\"fax\":\"\",\"custom_field\":[],\"shipping_address\":\"1\"},\"payment_address\":{\"firstname\":\"krishna \",\"lastname\":\"kanth\",\"email\":\"\",\"email_confirm\":\"\",\"telephone\":\"\",\"fax\":\"\",\"password\":\"\",\"confirm\":\"\",\"customer_group_id\":\"1\",\"company\":\"\",\"address_1\":\"1234\",\"address_2\":\"\",\"postcode\":\"534204\",\"city\":\"kkkkkk\",\"country_id\":\"99\",\"zone_id\":\"1476\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"{firstname} {lastname}{company}\\n{address_1}{address_2}\\n{city} {postcode}\\n{zone}\\n{country}\",\"custom_field\":[],\"zone\":\"Andhra Pradesh\",\"zone_code\":\"AP\",\"agree\":\"\",\"shipping_address\":\"1\",\"newsletter\":\"1\",\"address_id\":\"new\"},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\u20b95.00\\/-\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\u20b95.00\\/-\"},\"comment\":\"\",\"confirm\":{\"comment\":\"\",\"agree\":\"\"},\"total\":12005,\"totals\":[{\"title\":\"Sub-Total\",\"text\":\"\\u20b912,000.00\\/-\"},{\"title\":\"Flat Shipping Rate\",\"text\":\"\\u20b95.00\\/-\"},{\"title\":\"Total\",\"text\":\"\\u20b912,005.00\\/-\"}],\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\",\"image\":\"image\\/catalog\\/d_quickcheckout\\/payment\\/cod.png\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\",\"image\":\"image\\/catalog\\/d_quickcheckout\\/payment\\/cod.png\"},\"recreate_order\":false,\"order_id\":12,\"statistic\":{\"account\":\"logged\",\"field\":{\"guest\":{\"payment_address\":16,\"shipping_address\":7,\"confirm\":2},\"register\":{\"payment_address\":19,\"shipping_address\":7,\"confirm\":2},\"logged\":{\"payment_address\":9,\"shipping_address\":7,\"confirm\":2}},\"update\":{\"payment_address\":2}},\"statistic_id\":9}', '2020-01-21 12:12:18');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('f13d042e4d56a7c31902bad39f', '{\"api_id\":\"1\"}', '2020-01-16 19:45:15'),
('fe9a2847856e3381846e76e29d', '{\"api_id\":\"1\"}', '2019-10-25 17:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1440 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(1281, 0, 'config', 'config_seo_url', '0', 0),
(1282, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1406, 0, 'payment_pp_express', 'payment_pp_express_currency', 'USD', 0),
(1405, 0, 'payment_pp_express', 'payment_pp_express_status', '0', 0),
(1393, 0, 'module_pp_button', 'module_pp_button_status', '1', 0),
(1288, 0, 'config', 'config_file_max_size', '300000', 0),
(1289, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1290, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1291, 0, 'config', 'config_error_display', '1', 0),
(1292, 0, 'config', 'config_error_log', '1', 0),
(1293, 0, 'config', 'config_error_filename', 'error.log', 0),
(1404, 0, 'payment_pp_express', 'payment_pp_express_incontext_disable', '0', 0),
(1403, 0, 'payment_pp_express', 'payment_pp_express_voided_status_id', '16', 0),
(1402, 0, 'payment_pp_express', 'payment_pp_express_reversed_status_id', '12', 0),
(1400, 0, 'payment_pp_express', 'payment_pp_express_processed_status_id', '15', 0),
(1401, 0, 'payment_pp_express', 'payment_pp_express_refunded_status_id', '11', 0),
(1399, 0, 'payment_pp_express', 'payment_pp_express_pending_status_id', '1', 0),
(1398, 0, 'payment_pp_express', 'payment_pp_express_failed_status_id', '10', 0),
(1397, 0, 'payment_pp_express', 'payment_pp_express_expired_status_id', '14', 0),
(1396, 0, 'payment_pp_express', 'payment_pp_express_denied_status_id', '8', 0),
(1395, 0, 'payment_pp_express', 'payment_pp_express_completed_status_id', '5', 0),
(1394, 0, 'payment_pp_express', 'payment_pp_express_canceled_reversal_status_id', '9', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(1439, 0, 'total_shipping', 'total_shipping_sort_order', '', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(1425, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(1424, 0, 'total_voucher', 'total_voucher_status', '0', 0),
(1438, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(1437, 0, 'total_shipping', 'total_shipping_estimator', '0', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(586, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(585, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(584, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(583, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(582, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(581, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(580, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(579, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(578, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(577, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(576, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(575, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(574, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(573, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(572, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(571, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(570, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(569, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(568, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(567, 0, 'theme_default', 'theme_default_status', '0', 0),
(566, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(765, 0, 'developer', 'developer_sass', '0', 0),
(366, 0, 'mstoreapp', 'mstoreapp_productShadow', 'shadow', 0),
(365, 0, 'mstoreapp', 'mstoreapp_searchPerRow', '2', 0),
(364, 0, 'mstoreapp', 'mstoreapp_productsPerRow', '2', 0),
(363, 0, 'mstoreapp', 'mstoreapp_latestPerRow', '2', 0),
(362, 0, 'mstoreapp', 'mstoreapp_productPadding', '5', 0),
(360, 0, 'mstoreapp', 'mstoreapp_productSliderWidth', '42', 0),
(361, 0, 'mstoreapp', 'mstoreapp_productBorderRadius', '10', 0),
(359, 0, 'mstoreapp', 'mstoreapp_imageHeight', '100', 0),
(358, 0, 'mstoreapp', 'mstoreapp_themeButton', 'custom1', 0),
(357, 0, 'mstoreapp', 'mstoreapp_themetabBar', 'background', 0),
(356, 0, 'mstoreapp', 'mstoreapp_themeHeader', 'background', 0),
(353, 0, 'mstoreapp', 'mstoreapp_fb_url', '', 0),
(354, 0, 'mstoreapp', 'mstoreapp_twitter_url', '', 0),
(355, 0, 'mstoreapp', 'mstoreapp_gp_url', '', 0),
(352, 0, 'mstoreapp', 'mstoreapp_phone', '', 0),
(351, 0, 'mstoreapp', 'mstoreapp_web_link', '', 0),
(350, 0, 'mstoreapp', 'mstoreapp_chooser_title', '', 0),
(349, 0, 'mstoreapp', 'mstoreapp_google_sharing_', '', 0),
(348, 0, 'mstoreapp', 'mstoreapp_share_app_subject', '', 0),
(347, 0, 'mstoreapp', 'mstoreapp_share_app_message', '', 0),
(346, 0, 'mstoreapp', 'mstoreapp_app_rate_windows_id_', '', 0),
(345, 0, 'mstoreapp', 'mstoreapp_language', '', 0),
(344, 0, 'mstoreapp', 'mstoreapp_web_client_id', '', 0),
(342, 0, 'mstoreapp', 'mstoreapp_onesignal_app_id', '', 0),
(343, 0, 'mstoreapp', 'mstoreapp_google_project_id', '', 0),
(340, 0, 'mstoreapp', 'mstoreapp_share_app', '', 0),
(341, 0, 'mstoreapp', 'mstoreapp_support_email', '', 0),
(369, 0, 'module_mstoreapp_status', 'module_mstoreapp_status', '1', 0),
(338, 0, 'mstoreapp', 'mstoreapp_rate_app_android', '', 0),
(339, 0, 'mstoreapp', 'mstoreapp_rate_app_windows', '', 0),
(337, 0, 'mstoreapp', 'mstoreapp_rate_app_ios', '', 0),
(336, 0, 'mstoreapp', 'mstoreapp_License_key', 'MSTOREOC4', 0),
(335, 0, 'mstoreapp', 'mstoreapp_site_url', 'http://192.168.1.8/opencart', 0),
(334, 0, 'mstoreapp', 'mstoreapp_app_name', 'BOL', 0),
(367, 0, 'mstoreapp', 'mstoreapp_license_key', 'MSTOREOC4', 0),
(368, 0, 'mstoreapp', 'mstoreapp_demo_blocks', 'fashion', 0),
(1283, 0, 'config', 'config_compression', '0', 0),
(1284, 0, 'config', 'config_secure', '0', 0),
(1285, 0, 'config', 'config_password', '1', 0),
(1286, 0, 'config', 'config_shared', '0', 0),
(1287, 0, 'config', 'config_encryption', 'poX9lPw5GokK8eRKgF2QP2YBItpoCe2fFBkSAmS3SWcnjzyOtEM0JKrP2u818m7rCwyewG2Oo9K6HxRgfvyk5pyA6qvrMYsGw1PFlqfCmNSAXaXKHfJaSb4jGVkjMgWIcqpPwnFhP6MkicxQHEkjC4NrXZK6dnMbhQrnwmAdxr3XdRguRrA3z4YU8TvYmZ55FFpveqQWH210LIgVrE0QuX16GiwQ2SbLMXuXk0cDYgg0ibQoGdjAhU93KOA0ubau3PbyNBREeA7vJZ9Liyw9x24On5U2mCEh80ZH1uZ5gox9lnro2NWXsWFlHQr0kDpBwToQqw5pmvWGuGP2ITG3lVJlKVcM4i7rImzUXra7FElsD5UruNO2d283fMl5hnwwK3yKcCS158tZMEFVBnG5ha8dNnjTcUi7zxlPSwbFzPtP8pI1EXsC6eg6fthPduhdcvslnWQvHz85LU5G9OYgDeDPdChqsPAIgxJdPEAL4xaik6RezdjoNZ0ZT1aq5209GfRlIaWo1iWCBQNgQ7I0CSskWcxsPXu3R3J9Oiw6JIfWXXzjtPoVoSAtPjNvbBJ7bMVCJqrjA1FHuslgVA6hr9RPj8VBOPwP84jT8E0PSR6OIBQadgamZAxwYre5rGxxtO9zrgKDUCgmcn4IQNFQKWQVKubnj7bLWGnNCmLwtniQB3acRHRnkZq76vqiSvOAEkCXoiF58vJBtdvWsW9slYsUMtF5DD6CZcDJ6GoOKcoKHzTMM6Y8P98HOLub6dXFFZ6RiT38bQBbstTlnN488vcEMgozyuhTqiE0DjNJVNkqkbfw5wchNOFCjkd9ZxquHcQ11ab8v9tckDY2JbthmcHFRTMYHPw8KhwLOv16FEaG0zsUlp7UClRsX6YDEmVjLjWu6GzjdPvNuxYKhuQuDknHHuRmFyvFPhwCuRkbp05uUb1lRH5kVJtaY8oKHkejazLJWTNfCSDUueyrmlLB7jfk6ToTwCcAhZgWczmKl8FCGhnCGamqjGmB9O3fIlcw', 0),
(1280, 0, 'config', 'config_maintenance', '0', 0),
(1279, 0, 'config', 'config_mail_alert_email', '', 0),
(1278, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1277, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1276, 0, 'config', 'config_mail_smtp_port', '465', 0),
(1273, 0, 'config', 'config_mail_smtp_hostname', 'ssl://smtp.gmail.com', 0),
(1274, 0, 'config', 'config_mail_smtp_username', 'techhuntures', 0),
(1275, 0, 'config', 'config_mail_smtp_password', 'tech#123', 0),
(1271, 0, 'config', 'config_mail_engine', 'smtp', 0),
(1272, 0, 'config', 'config_mail_parameter', '', 0),
(1270, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1269, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(1268, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1266, 0, 'config', 'config_return_status_id', '2', 0),
(1267, 0, 'config', 'config_captcha', '', 0),
(1264, 0, 'config', 'config_affiliate_id', '4', 0),
(1265, 0, 'config', 'config_return_id', '0', 0),
(1263, 0, 'config', 'config_affiliate_commission', '5', 0),
(1262, 0, 'config', 'config_affiliate_auto', '0', 0),
(1261, 0, 'config', 'config_affiliate_approval', '0', 0),
(1260, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1259, 0, 'config', 'config_stock_checkout', '0', 0),
(1258, 0, 'config', 'config_stock_warning', '1', 0),
(1257, 0, 'config', 'config_stock_display', '0', 0),
(1256, 0, 'config', 'config_api_id', '1', 0),
(1255, 0, 'config', 'config_fraud_status_id', '7', 0),
(542, 0, 'theme_mintleaf', 'theme_mintleaf_directory', 'mintleaf', 0),
(543, 0, 'theme_mintleaf', 'theme_mintleaf_status', '1', 0),
(544, 0, 'theme_mintleaf', 'theme_mintleaf_product_limit', '15', 0),
(545, 0, 'theme_mintleaf', 'theme_mintleaf_product_description_length', '100', 0),
(546, 0, 'theme_mintleaf', 'theme_mintleaf_image_category_width', '80', 0),
(547, 0, 'theme_mintleaf', 'theme_mintleaf_image_category_height', '80', 0),
(548, 0, 'theme_mintleaf', 'theme_mintleaf_image_thumb_width', '228', 0),
(549, 0, 'theme_mintleaf', 'theme_mintleaf_image_thumb_height', '228', 0),
(550, 0, 'theme_mintleaf', 'theme_mintleaf_image_popup_width', '500', 0),
(551, 0, 'theme_mintleaf', 'theme_mintleaf_image_popup_height', '500', 0),
(552, 0, 'theme_mintleaf', 'theme_mintleaf_image_product_width', '228', 0),
(553, 0, 'theme_mintleaf', 'theme_mintleaf_image_product_height', '228', 0),
(554, 0, 'theme_mintleaf', 'theme_mintleaf_image_additional_width', '74', 0),
(555, 0, 'theme_mintleaf', 'theme_mintleaf_image_additional_height', '74', 0),
(556, 0, 'theme_mintleaf', 'theme_mintleaf_image_related_width', '80', 0),
(557, 0, 'theme_mintleaf', 'theme_mintleaf_image_related_height', '80', 0),
(558, 0, 'theme_mintleaf', 'theme_mintleaf_image_compare_width', '90', 0),
(559, 0, 'theme_mintleaf', 'theme_mintleaf_image_compare_height', '90', 0),
(560, 0, 'theme_mintleaf', 'theme_mintleaf_image_wishlist_width', '47', 0),
(561, 0, 'theme_mintleaf', 'theme_mintleaf_image_wishlist_height', '47', 0),
(562, 0, 'theme_mintleaf', 'theme_mintleaf_image_cart_width', '47', 0),
(563, 0, 'theme_mintleaf', 'theme_mintleaf_image_cart_height', '47', 0),
(564, 0, 'theme_mintleaf', 'theme_mintleaf_image_location_width', '268', 0),
(565, 0, 'theme_mintleaf', 'theme_mintleaf_image_location_height', '50', 0),
(587, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(588, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(589, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(1254, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(1253, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(1252, 0, 'config', 'config_order_status_id', '1', 0),
(1251, 0, 'config', 'config_checkout_id', '5', 0),
(1250, 0, 'config', 'config_checkout_guest', '1', 0),
(1249, 0, 'config', 'config_cart_weight', '1', 0),
(1248, 0, 'config', 'config_invoice_prefix', 'INV-2019-00', 0),
(1247, 0, 'config', 'config_account_id', '3', 0),
(1246, 0, 'config', 'config_login_attempts', '5', 0),
(1243, 0, 'config', 'config_customer_group_id', '1', 0),
(1244, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1245, 0, 'config', 'config_customer_price', '0', 0),
(1242, 0, 'config', 'config_customer_search', '0', 0),
(1241, 0, 'config', 'config_customer_activity', '0', 0),
(1240, 0, 'config', 'config_customer_online', '0', 0),
(764, 0, 'developer', 'developer_theme', '0', 0),
(1239, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1238, 0, 'config', 'config_tax_default', 'shipping', 0),
(1237, 0, 'config', 'config_tax', '1', 0),
(1236, 0, 'config', 'config_voucher_max', '1000', 0),
(1235, 0, 'config', 'config_voucher_min', '1', 0),
(1234, 0, 'config', 'config_review_guest', '0', 0),
(1233, 0, 'config', 'config_review_status', '1', 0),
(1232, 0, 'config', 'config_limit_admin', '20', 0),
(1231, 0, 'config', 'config_product_count', '1', 0),
(1230, 0, 'config', 'config_weight_class_id', '1', 0),
(1229, 0, 'config', 'config_length_class_id', '1', 0),
(1228, 0, 'config', 'config_currency_auto', '0', 0),
(1227, 0, 'config', 'config_currency', 'INR', 0),
(1226, 0, 'config', 'config_admin_language', 'en-gb', 0),
(1225, 0, 'config', 'config_language', 'en-gb', 0),
(1224, 0, 'config', 'config_zone_id', '1476', 0),
(1223, 0, 'config', 'config_country_id', '99', 0),
(1222, 0, 'config', 'config_comment', '', 0),
(1221, 0, 'config', 'config_open', '', 0),
(1220, 0, 'config', 'config_image', '', 0),
(1219, 0, 'config', 'config_fax', '', 0),
(1218, 0, 'config', 'config_telephone', '123456789', 0),
(1217, 0, 'config', 'config_email', 'admin@gmail.com', 0),
(1216, 0, 'config', 'config_geocode', '', 0),
(1215, 0, 'config', 'config_address', 'Address 1', 0),
(1214, 0, 'config', 'config_owner', 'Your Name', 0),
(1213, 0, 'config', 'config_name', 'Your Store', 0),
(1211, 0, 'config', 'config_theme', 'mintleaf', 0),
(1212, 0, 'config', 'config_layout_id', '4', 0),
(1210, 0, 'config', 'config_meta_keyword', '', 0),
(1209, 0, 'config', 'config_meta_description', 'My Store', 0),
(1208, 0, 'config', 'config_meta_title', 'Your Store', 0),
(938, 0, 'd_quickcheckout', 'd_quickcheckout_setting_cycle', '{\"1\":\"1\"}', 1),
(939, 0, 'd_quickcheckout', 'd_quickcheckout_status', '1', 0),
(940, 0, 'd_quickcheckout', 'd_quickcheckout_trigger', '#button-confirm, .button, .btn, .button_oc, input[type=submit]', 0),
(941, 0, 'd_quickcheckout', 'd_quickcheckout_debug', '0', 0),
(942, 0, 'd_quickcheckout', 'd_quickcheckout_setting', '{\"name\":\"01\\/16\\/2020 07:00:23 pm\",\"general\":{\"clear_session\":\"0\",\"login_refresh\":\"1\",\"analytics_event\":\"0\",\"update_mini_cart\":\"1\",\"compress\":\"1\",\"min_order\":{\"value\":\"0\",\"text\":{\"1\":\"You must have a sum more then %s to make an order     \"}},\"min_quantity\":{\"value\":\"0\",\"text\":{\"1\":\"You must have a quantity more then %s to make an order   \"}},\"config\":\"d_quickcheckout\"}}', 1),
(943, 0, 'd_quickcheckout', 'd_quickcheckout_debug_file', 'd_quickcheckout.log', 0),
(944, 0, 'module_d_quickcheckout', 'module_d_quickcheckout_setting_cycle', '{\"1\":\"1\"}', 1),
(945, 0, 'module_d_quickcheckout', 'module_d_quickcheckout_status', '1', 0),
(946, 0, 'module_d_quickcheckout', 'module_d_quickcheckout_trigger', '#button-confirm, .button, .btn, .button_oc, input[type=submit]', 0),
(947, 0, 'module_d_quickcheckout', 'module_d_quickcheckout_debug', '0', 0),
(948, 0, 'module_d_quickcheckout', 'module_d_quickcheckout_setting', '{\"name\":\"01\\/16\\/2020 07:00:23 pm\",\"general\":{\"clear_session\":\"0\",\"login_refresh\":\"1\",\"analytics_event\":\"0\",\"update_mini_cart\":\"1\",\"compress\":\"1\",\"min_order\":{\"value\":\"0\",\"text\":{\"1\":\"You must have a sum more then %s to make an order     \"}},\"min_quantity\":{\"value\":\"0\",\"text\":{\"1\":\"You must have a quantity more then %s to make an order   \"}},\"config\":\"d_quickcheckout\"}}', 1),
(949, 0, 'module_d_quickcheckout', 'module_d_quickcheckout_debug_file', 'd_quickcheckout.log', 0),
(1407, 0, 'payment_payu', 'payment_payu_title', 'PayUMoney', 0),
(1408, 0, 'payment_payu', 'payment_payu_merchant', 'zpuEqvuk', 0),
(1409, 0, 'payment_payu', 'payment_payu_salt', 'CXQBM8wxxy', 0),
(1410, 0, 'payment_payu', 'payment_payu_live', '0', 0),
(1411, 0, 'payment_payu', 'payment_payu_total', '1', 0),
(1412, 0, 'payment_payu', 'payment_payu_geo_zone_id', '0', 0),
(1413, 0, 'payment_payu', 'payment_payu_currency', 'INR', 0),
(1414, 0, 'payment_payu', 'payment_payu_completed_status_id', '5', 0),
(1415, 0, 'payment_payu', 'payment_payu_failed_status_id', '10', 0),
(1416, 0, 'payment_payu', 'payment_payu_sort_order', '', 0),
(1417, 0, 'payment_payu', 'payment_payu_status', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

DROP TABLE IF EXISTS `oc_shipping_courier`;
CREATE TABLE IF NOT EXISTS `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

DROP TABLE IF EXISTS `oc_statistics`;
CREATE TABLE IF NOT EXISTS `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '5375.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '1.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '2.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
CREATE TABLE IF NOT EXISTS `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_theme`
--

INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(127, 0, 'mintleaf', 'product/manufacturer_info', '{{ header }}\n&lt;div id=&quot;product-manufacturer&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h4 class=&quot;page-heading-1 alt&quot;&gt;{{ heading_title }}&lt;/h4&gt;\n      {% if products %}\n        &lt;div class=&quot;product-sort-wrap rounded-3&quot;&gt;\n          &lt;div class=&quot;row&quot;&gt;\n            &lt;div class=&quot;col-md-2 col-xs-4&quot;&gt;\n              &lt;div class=&quot;btn-group&quot;&gt;\n                &lt;button type=&quot;button&quot; id=&quot;list-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_list }}&quot;&gt;&lt;i class=&quot;fa fa-th-list&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;button type=&quot;button&quot; id=&quot;grid-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_grid }}&quot;&gt;&lt;i class=&quot;fa fa-th&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-3 col-xs-8 text-right-sm text-right-xs&quot;&gt;\n              &lt;div class=&quot;form-group&quot;&gt;&lt;a href=&quot;{{ compare }}&quot; id=&quot;compare-total&quot; class=&quot;btn btn-link&quot;&gt;{{ text_compare }}&lt;/a&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-4 col-xs-6&quot;&gt;\n              &lt;div class=&quot;form-group input-group&quot;&gt;\n                &lt;label class=&quot;input-group-addon&quot; for=&quot;input-sort&quot;&gt;{{ text_sort }}&lt;/label&gt;\n                &lt;select id=&quot;input-sort&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n                  {% for sorts in sorts %}\n                    {% if sorts.value == \'%s-%s\'|format(sort, order) %}\n                      &lt;option value=&quot;{{ sorts.href }}&quot; selected=&quot;selected&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n                    {% else %}\n                      &lt;option value=&quot;{{ sorts.href }}&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n                    {% endif %}\n                  {% endfor %}\n                &lt;/select&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-3 col-xs-6&quot;&gt;\n              &lt;div class=&quot;form-group input-group&quot;&gt;\n                &lt;label class=&quot;input-group-addon&quot; for=&quot;input-limit&quot;&gt;{{ text_limit }}&lt;/label&gt;\n                &lt;select id=&quot;input-limit&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n                  {% for limits in limits %}\n                    {% if limits.value == limit %}\n                      &lt;option value=&quot;{{ limits.href }}&quot; selected=&quot;selected&quot;&gt;{{ limits.text }}&lt;/option&gt;\n                    {% else %}\n                      &lt;option value=&quot;{{ limits.href }}&quot;&gt;{{ limits.text }}&lt;/option&gt;\n                    {% endif %}\n                  {% endfor %}\n                &lt;/select&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt; {% for product in products %}\n      &lt;!-- Product Col Starts --&gt;\n        &lt;div class=&quot;product-layout product-list col-xs-12&quot;&gt;\n        &lt;!-- Product Module Starts --&gt;\n          &lt;div class=&quot;product-thumb module-product animation&quot;&gt;\n          &lt;!-- Product Image Starts --&gt;\n            &lt;div class=&quot;module-product-image&quot;&gt;\n              &lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;\n            &lt;/div&gt;\n          &lt;!-- Product Image Ends --&gt;\n          &lt;!-- Product Caption Starts --&gt;\n            &lt;div class=&quot;module-product-caption&quot;&gt;\n            &lt;!-- Product Name Starts --&gt;\n              &lt;h6 class=&quot;module-product-title&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h6&gt;\n            &lt;!-- Product Name Ends --&gt;\n            &lt;!-- Product Description Starts --&gt;\n              &lt;div class=&quot;module-product-description&quot;&gt;\n                {{ product.description }}\n              &lt;/div&gt;\n            &lt;!-- Product Description Ends --&gt;\n            {% if product.rating %}\n            &lt;!-- Product Ratings Starts --&gt;\n              &lt;div class=&quot;module-product-ratings&quot;&gt;\n                {% for i in 1..5 %}\n                  {% if product.rating &lt; i %}\n                    &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                  {% else %}\n                    &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                  {% endif %}\n                {% endfor %}\n              &lt;/div&gt;\n            &lt;!-- Product Ratings Ends --&gt;\n            {% endif %}\n             {% if product.price %}\n              &lt;!-- Product Price Starts --&gt;\n                &lt;div class=&quot;module-product-price&quot;&gt;\n                  {% if not product.special %}\n                    {{ product.price }}\n                  {% else %}\n                    &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt;\n                  {% endif %}\n                  {% if product.tax %}\n                  &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt;\n                  {% endif %}\n                &lt;/div&gt;\n              &lt;!-- Product Price Ends --&gt;\n              {% endif %}\n              &lt;!-- Add To Cart Button Starts --&gt;\n              {% if logged %}\n                &lt;button type=&quot;button&quot; class=&quot;btn module-product-btn-cart animation&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; {{ button_cart }}&lt;/button&gt;\n              {% else %}\n              &lt;h5&gt;Login To Buy&lt;/h5&gt;\n              {% endif %}\n              &lt;!-- Add To Cart Button Ends --&gt;\n            &lt;/div&gt;\n          &lt;!-- Product Caption Ends --&gt;\n          &lt;/div&gt;\n        &lt;!-- Product Module Ends --&gt;\n        &lt;/div&gt;\n      &lt;!-- Product Col Ends --&gt;\n        {% endfor %} &lt;/div&gt;\n        &lt;div class=&quot;pagination-wrap&quot;&gt;\n          &lt;div class=&quot;row&quot;&gt;\n            &lt;div class=&quot;col-sm-6 text-left-lg text-left-md text-left-sm results&quot;&gt;{{ results }}&lt;/div&gt;\n            &lt;div class=&quot;col-sm-6 text-right-lg text-right-md text-right-sm&quot;&gt;{{ pagination }}&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      {% else %}\n      &lt;p&gt;{{ text_empty }}&lt;/p&gt;\n      &lt;div class=&quot;buttons clearfix&quot;&gt;\n        &lt;div class=&quot;pull-right&quot;&gt;&lt;a href=&quot;{{ continue }}&quot; class=&quot;btn btn-primary&quot;&gt;{{ button_continue }}&lt;/a&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }}', '2020-01-17 23:32:23'),
(131, 0, 'mintleaf', 'product/search', '{{ header }}\n&lt;div id=&quot;product-search&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h4 class=&quot;page-heading-1&quot;&gt;{{ heading_title }}&lt;/h4&gt;\n      &lt;label class=&quot;control-label&quot; for=&quot;input-search&quot;&gt;{{ entry_search }}&lt;/label&gt;\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-sm-4&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;search&quot; value=&quot;{{ search }}&quot; placeholder=&quot;{{ text_keyword }}&quot; id=&quot;input-search&quot; class=&quot;form-control&quot; /&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-sm-3&quot;&gt;\n          &lt;select name=&quot;category_id&quot; class=&quot;form-control&quot;&gt;\n            &lt;option value=&quot;0&quot;&gt;{{ text_category }}&lt;/option&gt;\n            {% for category_1 in categories %}\n            {% if category_1.category_id == category_id %}\n            &lt;option value=&quot;{{ category_1.category_id }}&quot; selected=&quot;selected&quot;&gt;{{ category_1.name }}&lt;/option&gt;\n            {% else %}\n            &lt;option value=&quot;{{ category_1.category_id }}&quot;&gt;{{ category_1.name }}&lt;/option&gt;\n            {% endif %}\n            {% for category_2 in category_1.children %}\n            {% if category_2.category_id == category_id %}\n            &lt;option value=&quot;{{ category_2.category_id }}&quot; selected=&quot;selected&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{{ category_2.name }}&lt;/option&gt;\n            {% else %}\n            &lt;option value=&quot;{{ category_2.category_id }}&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{{ category_2.name }}&lt;/option&gt;\n            {% endif %}\n            {% for category_3 in category_2.children %}\n            {% if category_3.category_id == category_id %}\n            &lt;option value=&quot;{{ category_3.category_id }}&quot; selected=&quot;selected&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{{ category_3.name }}&lt;/option&gt;\n            {% else %}\n            &lt;option value=&quot;{{ category_3.category_id }}&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{{ category_3.name }}&lt;/option&gt;\n            {% endif %}\n            {% endfor %}\n            {% endfor %}\n            {% endfor %}\n          &lt;/select&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-sm-3&quot;&gt;\n          &lt;label class=&quot;checkbox-inline&quot;&gt;\n            {% if sub_category %}\n            &lt;input type=&quot;checkbox&quot; name=&quot;sub_category&quot; value=&quot;1&quot; checked=&quot;checked&quot; /&gt;\n            {% else %}\n            &lt;input type=&quot;checkbox&quot; name=&quot;sub_category&quot; value=&quot;1&quot; /&gt;\n            {% endif %}\n            {{ text_sub_category }}&lt;/label&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;p&gt;\n        &lt;label class=&quot;checkbox-inline&quot;&gt;\n          {% if description %}\n          &lt;input type=&quot;checkbox&quot; name=&quot;description&quot; value=&quot;1&quot; id=&quot;description&quot; checked=&quot;checked&quot; /&gt;\n          {% else %}\n          &lt;input type=&quot;checkbox&quot; name=&quot;description&quot; value=&quot;1&quot; id=&quot;description&quot; /&gt;\n          {% endif %}\n          {{ entry_description }}&lt;/label&gt;\n      &lt;/p&gt;\n      &lt;input type=&quot;button&quot; value=&quot;{{ button_search }}&quot; id=&quot;button-search&quot; class=&quot;btn btn-primary&quot; /&gt;\n      &lt;hr class=&quot;hr-1&quot;&gt;\n      &lt;h5 class=&quot;page-sub-heading-1 alt&quot;&gt;{{ text_search }}&lt;/h5&gt;\n      {% if products %}\n        &lt;div class=&quot;product-sort-wrap rounded-3&quot;&gt;\n          &lt;div class=&quot;row&quot;&gt;\n            &lt;div class=&quot;col-md-2 col-xs-4&quot;&gt;\n              &lt;div class=&quot;btn-group&quot;&gt;\n                &lt;button type=&quot;button&quot; id=&quot;list-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_list }}&quot;&gt;&lt;i class=&quot;fa fa-th-list&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;button type=&quot;button&quot; id=&quot;grid-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_grid }}&quot;&gt;&lt;i class=&quot;fa fa-th&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-3 col-xs-8 text-right-sm text-right-xs&quot;&gt;\n              &lt;div class=&quot;form-group&quot;&gt;&lt;a href=&quot;{{ compare }}&quot; id=&quot;compare-total&quot; class=&quot;btn btn-link&quot;&gt;{{ text_compare }}&lt;/a&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-4 col-xs-6&quot;&gt;\n              &lt;div class=&quot;form-group input-group&quot;&gt;\n                &lt;label class=&quot;input-group-addon&quot; for=&quot;input-sort&quot;&gt;{{ text_sort }}&lt;/label&gt;\n                &lt;select id=&quot;input-sort&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n                  {% for sorts in sorts %}\n                    {% if sorts.value == \'%s-%s\'|format(sort, order) %}\n                      &lt;option value=&quot;{{ sorts.href }}&quot; selected=&quot;selected&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n                    {% else %}\n                      &lt;option value=&quot;{{ sorts.href }}&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n                    {% endif %}\n                  {% endfor %}\n                &lt;/select&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-3 col-xs-6&quot;&gt;\n              &lt;div class=&quot;form-group input-group&quot;&gt;\n                &lt;label class=&quot;input-group-addon&quot; for=&quot;input-limit&quot;&gt;{{ text_limit }}&lt;/label&gt;\n                &lt;select id=&quot;input-limit&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n                  {% for limits in limits %}\n                    {% if limits.value == limit %}\n                      &lt;option value=&quot;{{ limits.href }}&quot; selected=&quot;selected&quot;&gt;{{ limits.text }}&lt;/option&gt;\n                    {% else %}\n                      &lt;option value=&quot;{{ limits.href }}&quot;&gt;{{ limits.text }}&lt;/option&gt;\n                    {% endif %}\n                  {% endfor %}\n                &lt;/select&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt; {% for product in products %}\n      &lt;!-- Product Col Starts --&gt;\n        &lt;div class=&quot;product-layout product-list col-xs-12&quot;&gt;\n        &lt;!-- Product Module Starts --&gt;\n          &lt;div class=&quot;product-thumb module-product animation&quot;&gt;\n          &lt;!-- Product Image Starts --&gt;\n            &lt;div class=&quot;module-product-image&quot;&gt;\n              &lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;\n            &lt;/div&gt;\n          &lt;!-- Product Image Ends --&gt;\n          &lt;!-- Product Caption Starts --&gt;\n            &lt;div class=&quot;module-product-caption&quot;&gt;\n            &lt;!-- Product Name Starts --&gt;\n              &lt;h6 class=&quot;module-product-title&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h6&gt;\n            &lt;!-- Product Name Ends --&gt;\n            &lt;!-- Product Description Starts --&gt;\n              &lt;div class=&quot;module-product-description&quot;&gt;\n                {{ product.description }}\n              &lt;/div&gt;\n            &lt;!-- Product Description Ends --&gt;\n            {% if product.rating %}\n            &lt;!-- Product Ratings Starts --&gt;\n              &lt;div class=&quot;module-product-ratings&quot;&gt;\n                {% for i in 1..5 %}\n                  {% if product.rating &lt; i %}\n                    &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                  {% else %}\n                    &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                  {% endif %}\n                {% endfor %}\n              &lt;/div&gt;\n            &lt;!-- Product Ratings Ends --&gt;\n            {% endif %}\n             {% if product.price %}\n              &lt;!-- Product Price Starts --&gt;\n                &lt;div class=&quot;module-product-price&quot;&gt;\n                  {% if not product.special %}\n                    {{ product.price }}\n                  {% else %}\n                    &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt;\n                  {% endif %}\n                  {% if product.tax %}\n                  &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt;\n                  {% endif %}\n                &lt;/div&gt;\n              &lt;!-- Product Price Ends --&gt;\n              {% endif %}\n              &lt;!-- Add To Cart Button Starts --&gt;\n              {% if logged %}\n                &lt;button type=&quot;button&quot; class=&quot;btn module-product-btn-cart animation&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; {{ button_cart }}&lt;/button&gt;\n             {% else %}\n              &lt;h5&gt;&lt;a href=\'index.php?route=account/login\'&gt;&lt;button class=&quot;btn module-product-btn-cart animation&quot;&gt;LogIn To Buy&lt;/button&gt;&lt;/a&gt;&lt;/h5&gt;\n              {% endif %}\n              &lt;!-- Add To Cart Button Ends --&gt;\n            &lt;/div&gt;\n          &lt;!-- Product Caption Ends --&gt;\n          &lt;/div&gt;\n        &lt;!-- Product Module Ends --&gt;\n        &lt;/div&gt;\n      &lt;!-- Product Col Ends --&gt;\n        {% endfor %} &lt;/div&gt;\n        &lt;div class=&quot;pagination-wrap&quot;&gt;\n          &lt;div class=&quot;row&quot;&gt;\n            &lt;div class=&quot;col-sm-6 text-left-lg text-left-md text-left-sm results&quot;&gt;{{ results }}&lt;/div&gt;\n            &lt;div class=&quot;col-sm-6 text-right-lg text-right-md text-right-sm&quot;&gt;{{ pagination }}&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      {% else %}\n      &lt;p&gt;{{ text_empty }}&lt;/p&gt;\n      {% endif %}\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#button-search\').bind(\'click\', function() {\n	url = \'index.php?route=product/search\';\n\n	var search = $(\'#content input[name=\\\'search\\\']\').prop(\'value\');\n\n	if (search) {\n		url += \'&amp;search=\' + encodeURIComponent(search);\n	}\n\n	var category_id = $(\'#content select[name=\\\'category_id\\\']\').prop(\'value\');\n\n	if (category_id &gt; 0) {\n		url += \'&amp;category_id=\' + encodeURIComponent(category_id);\n	}\n\n	var sub_category = $(\'#content input[name=\\\'sub_category\\\']:checked\').prop(\'value\');\n\n	if (sub_category) {\n		url += \'&amp;sub_category=true\';\n	}\n\n	var filter_description = $(\'#content input[name=\\\'description\\\']:checked\').prop(\'value\');\n\n	if (filter_description) {\n		url += \'&amp;description=true\';\n	}\n\n	location = url;\n});\n\n$(\'#content input[name=\\\'search\\\']\').bind(\'keydown\', function(e) {\n	if (e.keyCode == 13) {\n		$(\'#button-search\').trigger(\'click\');\n	}\n});\n\n$(\'select[name=\\\'category_id\\\']\').on(\'change\', function() {\n	if (this.value == \'0\') {\n		$(\'input[name=\\\'sub_category\\\']\').prop(\'disabled\', true);\n	} else {\n		$(\'input[name=\\\'sub_category\\\']\').prop(\'disabled\', false);\n	}\n});\n\n$(\'select[name=\\\'category_id\\\']\').trigger(\'change\');\n--&gt;&lt;/script&gt;\n{{ footer }}', '2020-01-17 23:36:32'),
(132, 0, 'mintleaf', 'product/special', '{{ header }}\n&lt;div id=&quot;product-search&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h4 class=&quot;page-heading-1 alt&quot;&gt;{{ heading_title }}&lt;/h4&gt;\n      {% if products %}\n        &lt;div class=&quot;product-sort-wrap rounded-3&quot;&gt;\n          &lt;div class=&quot;row&quot;&gt;\n            &lt;div class=&quot;col-md-2 col-xs-4&quot;&gt;\n              &lt;div class=&quot;btn-group&quot;&gt;\n                &lt;button type=&quot;button&quot; id=&quot;list-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_list }}&quot;&gt;&lt;i class=&quot;fa fa-th-list&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;button type=&quot;button&quot; id=&quot;grid-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_grid }}&quot;&gt;&lt;i class=&quot;fa fa-th&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-3 col-xs-8 text-right-sm text-right-xs&quot;&gt;\n              &lt;div class=&quot;form-group&quot;&gt;&lt;a href=&quot;{{ compare }}&quot; id=&quot;compare-total&quot; class=&quot;btn btn-link&quot;&gt;{{ text_compare }}&lt;/a&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-4 col-xs-6&quot;&gt;\n              &lt;div class=&quot;form-group input-group&quot;&gt;\n                &lt;label class=&quot;input-group-addon&quot; for=&quot;input-sort&quot;&gt;{{ text_sort }}&lt;/label&gt;\n                &lt;select id=&quot;input-sort&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n                  {% for sorts in sorts %}\n                    {% if sorts.value == \'%s-%s\'|format(sort, order) %}\n                      &lt;option value=&quot;{{ sorts.href }}&quot; selected=&quot;selected&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n                    {% else %}\n                      &lt;option value=&quot;{{ sorts.href }}&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n                    {% endif %}\n                  {% endfor %}\n                &lt;/select&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-3 col-xs-6&quot;&gt;\n              &lt;div class=&quot;form-group input-group&quot;&gt;\n                &lt;label class=&quot;input-group-addon&quot; for=&quot;input-limit&quot;&gt;{{ text_limit }}&lt;/label&gt;\n                &lt;select id=&quot;input-limit&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n                  {% for limits in limits %}\n                    {% if limits.value == limit %}\n                      &lt;option value=&quot;{{ limits.href }}&quot; selected=&quot;selected&quot;&gt;{{ limits.text }}&lt;/option&gt;\n                    {% else %}\n                      &lt;option value=&quot;{{ limits.href }}&quot;&gt;{{ limits.text }}&lt;/option&gt;\n                    {% endif %}\n                  {% endfor %}\n                &lt;/select&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt; {% for product in products %}\n      &lt;!-- Product Col Starts --&gt;\n        &lt;div class=&quot;product-layout product-list col-xs-12&quot;&gt;\n        &lt;!-- Product Module Starts --&gt;\n          &lt;div class=&quot;product-thumb module-product animation&quot;&gt;\n          &lt;!-- Product Image Starts --&gt;\n            &lt;div class=&quot;module-product-image&quot;&gt;\n              &lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;\n            &lt;/div&gt;\n          &lt;!-- Product Image Ends --&gt;\n          &lt;!-- Product Caption Starts --&gt;\n            &lt;div class=&quot;module-product-caption&quot;&gt;\n            &lt;!-- Product Name Starts --&gt;\n              &lt;h6 class=&quot;module-product-title&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h6&gt;\n            &lt;!-- Product Name Ends --&gt;\n            &lt;!-- Product Description Starts --&gt;\n              &lt;div class=&quot;module-product-description&quot;&gt;\n                {{ product.description }}\n              &lt;/div&gt;\n            &lt;!-- Product Description Ends --&gt;\n            {% if product.rating %}\n            &lt;!-- Product Ratings Starts --&gt;\n              &lt;div class=&quot;module-product-ratings&quot;&gt;\n                {% for i in 1..5 %}\n                  {% if product.rating &lt; i %}\n                    &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                  {% else %}\n                    &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                  {% endif %}\n                {% endfor %}\n              &lt;/div&gt;\n            &lt;!-- Product Ratings Ends --&gt;\n            {% endif %}\n             {% if product.price %}\n              &lt;!-- Product Price Starts --&gt;\n                &lt;div class=&quot;module-product-price&quot;&gt;\n                  {% if not product.special %}\n                    {{ product.price }}\n                  {% else %}\n                    &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt;\n                  {% endif %}\n                  {% if product.tax %}\n                  &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt;\n                  {% endif %}\n                &lt;/div&gt;\n              &lt;!-- Product Price Ends --&gt;\n              {% endif %}\n              &lt;!-- Add To Cart Button Starts --&gt;\n              {% if logged %}\n                &lt;button type=&quot;button&quot; class=&quot;btn module-product-btn-cart animation&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; {{ button_cart }}&lt;/button&gt;\n              {% else %}\n              &lt;h5&gt;&lt;a href=\'index.php?route=account/login\'&gt;&lt;button class=&quot;btn module-product-btn-cart animation&quot;&gt;LogIn To Buy&lt;/button&gt;&lt;/a&gt;&lt;/h5&gt;\n              {% endif %}\n              &lt;!-- Add To Cart Button Ends --&gt;\n            &lt;/div&gt;\n          &lt;!-- Product Caption Ends --&gt;\n          &lt;/div&gt;\n        &lt;!-- Product Module Ends --&gt;\n        &lt;/div&gt;\n      &lt;!-- Product Col Ends --&gt;\n        {% endfor %} &lt;/div&gt;\n        &lt;div class=&quot;pagination-wrap&quot;&gt;\n          &lt;div class=&quot;row&quot;&gt;\n            &lt;div class=&quot;col-sm-6 text-left-lg text-left-md text-left-sm results&quot;&gt;{{ results }}&lt;/div&gt;\n            &lt;div class=&quot;col-sm-6 text-right-lg text-right-md text-right-sm&quot;&gt;{{ pagination }}&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      {% endif %}\n      {% if not categories and not products %}\n      &lt;p&gt;{{ text_empty }}&lt;/p&gt;\n      &lt;div class=&quot;buttons clearfix&quot;&gt;\n        &lt;div class=&quot;pull-right&quot;&gt;&lt;a href=&quot;{{ continue }}&quot; class=&quot;btn btn-primary&quot;&gt;{{ button_continue }}&lt;/a&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }}', '2020-01-17 23:37:45');
INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(164, 0, 'mintleaf', 'product/product', '{{ header }}\n&lt;!-- Product Container Starts --&gt;\n&lt;div id=&quot;product-product&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n&lt;!-- Row Starts --&gt;  \n  &lt;div class=&quot;row&quot;&gt;\n    {{ column_left }}\n    {% if column_left and column_right %}\n      {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n      {% set class = \'col-sm-9\' %}\n    {% else %}\n      {% set class = \'col-sm-12\' %}\n    {% endif %}\n  &lt;!-- Content Area Starts --&gt;\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;\n      {{ content_top }}\n    &lt;!-- Nested Row Starts --&gt;\n      &lt;div class=&quot;row&quot;&gt; \n        {% if column_left or column_right %}\n          {% set class = \'col-sm-5\' %}\n        {% else %}\n          {% set class = \'col-sm-5\' %}\n        {% endif %}\n      {% if thumb or images %}\n      &lt;!-- Product Image Area Starts --&gt;\n        &lt;div class=&quot;{{ class }} product-image-wrap&quot;&gt;        \n        {% if thumb %}\n        &lt;!-- Product Image Starts --&gt;\n          &lt;div class=&quot;product-image&quot;&gt;\n            &lt;a href=&quot;{{ popup }}&quot; title=&quot;{{ heading_title }}&quot;&gt;&lt;img src=&quot;{{ thumb }}&quot; title=&quot;{{ heading_title }}&quot; alt=&quot;{{ heading_title }}&quot; class=&quot;img-responsive img-center&quot; /&gt;&lt;/a&gt;\n          &lt;/div&gt;\n        &lt;!-- Product Image Ends --&gt;\n        {% endif %}\n        {% if images %}\n        &lt;!-- Additional Images Starts --&gt;\n          &lt;ul class=&quot;list-unstyled list-inline product-image-additional&quot;&gt;            \n          {% for image in images %}          \n            &lt;li&gt;&lt;a href=&quot;{{ image.popup }}&quot; title=&quot;{{ heading_title }}&quot;&gt; &lt;img src=&quot;{{ image.thumb }}&quot; title=&quot;{{ heading_title }}&quot; alt=&quot;{{ heading_title }}&quot; class=&quot;img-responsive img-center&quot; /&gt;&lt;/a&gt;&lt;/li&gt;\n          {% endfor %}            \n          &lt;/ul&gt;\n        &lt;!-- Additional Images Ends --&gt;          \n        {% endif %}\n        &lt;/div&gt;\n      &lt;!-- Product Image Area Ends --&gt;   \n      {% endif %}\n      {% if column_left or column_right %}\n        {% set class = \'col-sm-7\' %}\n      {% else %}\n        {% set class = \'col-sm-7\' %}\n      {% endif %}\n      &lt;!-- Product Info Starts --&gt;  \n        &lt;div id=&quot;product&quot; class=&quot;{{ class }} product-info&quot;&gt;\n        &lt;!-- Product Title Starts --&gt;\n          &lt;h4 class=&quot;product-info-title&quot;&gt;{{ heading_title }}&lt;/h4&gt;\n        &lt;!-- Product Title Ends --&gt;\n        &lt;!-- Product Details Starts --&gt;\n          &lt;ul class=&quot;list-unstyled product-info-details&quot;&gt;\n            {% if manufacturer %}\n            &lt;li&gt;{{ text_manufacturer }}&amp;nbsp; &lt;a href=&quot;{{ manufacturers }}&quot;&gt;{{ manufacturer }}&lt;/a&gt;&lt;/li&gt;\n            {% endif %}\n            &lt;li&gt;{{ text_model }}&amp;nbsp; &lt;span&gt;{{ model }}&lt;/span&gt;&lt;/li&gt;\n            {% if reward %}\n            &lt;li&gt;{{ text_reward }}&amp;nbsp; &lt;span&gt;{{ reward }}&lt;/span&gt;&lt;/li&gt;\n            {% endif %}\n            &lt;li&gt;{{ text_stock }}&amp;nbsp; &lt;span&gt;{{ stock }}&lt;/span&gt;&lt;/li&gt;\n          &lt;/ul&gt;\n        &lt;!-- Product Details Ends --&gt;\n        {% if options %}\n        &lt;!-- Product Options Starts --&gt;\n          &lt;div class=&quot;product-info-options&quot;&gt;\n            &lt;h5 class=&quot;product-info-options-title&quot;&gt;{{ text_option }}&lt;/h5&gt;\n            {% for option in options %}\n            {% if option.type == \'select\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;select name=&quot;option[{{ option.product_option_id }}]&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot;&gt;\n                &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n                {% for option_value in option.product_option_value %}\n                &lt;option value=&quot;{{ option_value.product_option_value_id }}&quot;&gt;{{ option_value.name }}\n                {% if option_value.price %}\n                ({{ option_value.price_prefix }}{{ option_value.price }})\n                {% endif %} &lt;/option&gt;\n                {% endfor %}\n              &lt;/select&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'radio\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;div id=&quot;input-option{{ option.product_option_id }}&quot;&gt; {% for option_value in option.product_option_value %}\n                &lt;div class=&quot;radio&quot;&gt;\n                  &lt;label&gt;\n                    &lt;input type=&quot;radio&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;{{ option_value.product_option_value_id }}&quot; /&gt;\n                    {% if option_value.image %} &lt;img src=&quot;{{ option_value.image }}&quot; alt=&quot;{{ option_value.name }} {% if option_value.price %} {{ option_value.price_prefix }} {{ option_value.price }} {% endif %}&quot; class=&quot;img-thumbnail&quot; /&gt; {% endif %}                  \n                    {{ option_value.name }}\n                    {% if option_value.price %}\n                    ({{ option_value.price_prefix }}{{ option_value.price }})\n                    {% endif %} &lt;/label&gt;\n                &lt;/div&gt;\n                {% endfor %} &lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'checkbox\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;div id=&quot;input-option{{ option.product_option_id }}&quot;&gt; {% for option_value in option.product_option_value %}\n                &lt;div class=&quot;checkbox&quot;&gt;\n                  &lt;label&gt;\n                    &lt;input type=&quot;checkbox&quot; name=&quot;option[{{ option.product_option_id }}][]&quot; value=&quot;{{ option_value.product_option_value_id }}&quot; /&gt;\n                    {% if option_value.image %} &lt;img src=&quot;{{ option_value.image }}&quot; alt=&quot;{{ option_value.name }} {% if option_value.price %} {{ option_value.price_prefix }} {{ option_value.price }} {% endif %}&quot; class=&quot;img-thumbnail&quot; /&gt; {% endif %}\n                    {{ option_value.name }}\n                    {% if option_value.price %}\n                    ({{ option_value.price_prefix }}{{ option_value.price }})\n                    {% endif %} &lt;/label&gt;\n                &lt;/div&gt;\n                {% endfor %} &lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'text\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;input type=&quot;text&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;{{ option.value }}&quot; placeholder=&quot;{{ option.name }}&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot; /&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'textarea\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;textarea name=&quot;option[{{ option.product_option_id }}]&quot; rows=&quot;5&quot; placeholder=&quot;{{ option.name }}&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot;&gt;{{ option.value }}&lt;/textarea&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'file\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;button type=&quot;button&quot; id=&quot;button-upload{{ option.product_option_id }}&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-outline-1 btn-block animation&quot;&gt;&lt;i class=&quot;fa fa-upload&quot;&gt;&lt;/i&gt; {{ button_upload }}&lt;/button&gt;\n              &lt;input type=&quot;hidden&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;&quot; id=&quot;input-option{{ option.product_option_id }}&quot; /&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'date\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;div class=&quot;input-group date&quot;&gt;\n                &lt;input type=&quot;text&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;{{ option.value }}&quot; data-date-format=&quot;YYYY-MM-DD&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot; /&gt;\n                &lt;span class=&quot;input-group-btn&quot;&gt;\n                &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;/span&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'datetime\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;div class=&quot;input-group datetime&quot;&gt;\n                &lt;input type=&quot;text&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;{{ option.value }}&quot; data-date-format=&quot;YYYY-MM-DD HH:mm&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot; /&gt;\n                &lt;span class=&quot;input-group-btn&quot;&gt;\n                &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;/span&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'time\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;div class=&quot;input-group time&quot;&gt;\n                &lt;input type=&quot;text&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;{{ option.value }}&quot; data-date-format=&quot;HH:mm&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot; /&gt;\n                &lt;span class=&quot;input-group-btn&quot;&gt;\n                &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;/span&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% endfor %}\n            {% if recurrings %}\n            &lt;hr&gt;\n            &lt;h3&gt;{{ text_payment_recurring }}&lt;/h3&gt;\n            &lt;div class=&quot;form-group required&quot;&gt;\n              &lt;select name=&quot;recurring_id&quot; class=&quot;form-control&quot;&gt;\n                &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n                {% for recurring in recurrings %}\n                &lt;option value=&quot;{{ recurring.recurring_id }}&quot;&gt;{{ recurring.name }}&lt;/option&gt;\n                {% endfor %}\n              &lt;/select&gt;\n              &lt;div class=&quot;help-block&quot; id=&quot;recurring-description&quot;&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n          &lt;/div&gt;\n        &lt;!-- Product Options Ends --&gt;\n        {% endif %}\n        {% if price %}\n        &lt;!-- Price Starts --&gt;\n          &lt;div class=&quot;product-info-price clearfix&quot;&gt;\n          {% if not special %}\n            &lt;span class=&quot;price-new&quot;&gt;{{ price }}&lt;/span&gt;\n          {% else %}\n            &lt;span class=&quot;price-new&quot;&gt;{{ special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ price }}&lt;/span&gt;\n          {% endif %}\n          {% if tax %}\n            &lt;p class=&quot;product-info-price-tax&quot;&gt;{{ text_tax }} {{ tax }}&lt;/p&gt;\n          {% endif %}\n          {% if points %}\n            &lt;p class=&quot;product-info-price-rewards&quot;&gt;{{ text_points }} {{ points }}&lt;/p&gt;\n          {% endif %}\n          {% if discounts %}\n          &lt;div class=&quot;table-responsive&quot;&gt; \n            &lt;table class=&quot;table table-dark table-bordered table-striped&quot;&gt;\n              &lt;tbody&gt;\n              {% for discount in discounts %}\n                &lt;tr&gt;&lt;td&gt;{{ discount.quantity }}{{ text_discount }}{{ discount.price }}&lt;/td&gt;&lt;/tr&gt;\n              {% endfor %}\n              &lt;/tbody&gt;\n            &lt;/table&gt;\n          &lt;/div&gt;\n          {% endif %}\n          &lt;/div&gt;\n        &lt;!-- Price Ends --&gt;\n        {% endif %}        \n        &lt;!-- Reviews Starts --&gt;\n        {% if review_status %}\n          &lt;div class=&quot;product-info-rating&quot;&gt;\n            &lt;ul class=&quot;list-unstyled list-inline product-info-rating-list&quot;&gt;\n            {% for i in 1..5 %}\n               {% if rating &lt; i %}\n                  &lt;li class=&quot;product-info-rating-list-star&quot;&gt;&lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-1x&quot;&gt;&lt;/i&gt;&lt;/span&gt;&lt;/li&gt;\n                  {% else %}\n                  &lt;li class=&quot;product-info-rating-list-star&quot;&gt;&lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-1x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-1x&quot;&gt;&lt;/i&gt;&lt;/span&gt;&lt;/li&gt;\n               {% endif %}\n            {% endfor %}\n              &lt;li class=&quot;product-info-rating-list-review&quot;&gt;\n                &lt;a href=&quot;&quot; onclick=&quot;$(\'a[href=\\\'#tab-review\\\']\').trigger(\'click\'); return false;&quot;&gt;\n                  {{ reviews }}\n                &lt;/a&gt;\n              &lt;/li&gt;\n              &lt;li class=&quot;product-info-rating-list-review&quot;&gt;\n                &lt;a href=&quot;&quot; onclick=&quot;$(\'a[href=\\\'#tab-review\\\']\').trigger(\'click\'); return false;&quot;&gt;\n                 &lt;i class=&quot;fa fa-edit&quot;&gt;&lt;/i&gt;{{ text_write }}\n                &lt;/a&gt;\n              &lt;/li&gt;\n            &lt;/ul&gt;\n          &lt;/div&gt;\n        {% endif %} \n        &lt;!-- Reviews Ends --&gt;\n        &lt;!-- Qty &amp; Product Add Buttons Starts --&gt;\n          &lt;div class=&quot;product-info-cart&quot;&gt;\n            &lt;div class=&quot;clearfix&quot;&gt;\n              &lt;div class=&quot;form-inline&quot;&gt;\n                &lt;div class=&quot;form-group pull-left-lg pull-left-md pull-left-sm&quot;&gt;\n                  &lt;!--&lt;label class=&quot;control-label&quot; for=&quot;input-quantity&quot;&gt;{{ entry_qty }}&lt;/label&gt;--&gt;\n                  &lt;input type=&quot;hidden&quot; name=&quot;quantity&quot; value=&quot;{{ minimum }}&quot; size=&quot;2&quot; id=&quot;input-quantity&quot; class=&quot;form-control&quot; /&gt;\n                  &lt;input type=&quot;hidden&quot; name=&quot;product_id&quot; value=&quot;{{ product_id }}&quot; id=\'pr_id\'/&gt;\n                &lt;/div&gt;\n              &lt;/div&gt;            \n              &lt;div class=&quot;button-group product-info-cart-btns-wrap pull-left-lg pull-left-md pull-left-sm&quot;&gt;\n                {% if customer_name %}\n                &lt;button type=&quot;button&quot; id=&quot;button-cart&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-cart animation&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; {{ button_cart }}&lt;/button&gt;\n                &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-wishlist animation&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                {% else %}\n              	&lt;a href=\'index.php?route=account/login\'&gt;&lt;button class=&quot;btn btn-cart animation&quot;&gt;LogIn To Buy&lt;/button&gt;&lt;/a&gt;\n              {% endif %}\n                &lt;button type=&quot;button&quot; id=&quot;enquiry&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-cart animation&quot; data-target=&quot;#exampleModalCenter&quot; data-toggle=&quot;modal&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; Enquiry &lt;/button&gt;\n                &lt;!--&lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-compare animation&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;--&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n            {% if minimum &gt; 1 %}\n              &lt;div class=&quot;alert alert-info&quot;&gt;&lt;i class=&quot;fa fa-info-circle&quot;&gt;&lt;/i&gt; {{ text_minimum }}&lt;/div&gt;\n            {% endif %}\n          &lt;/div&gt;\n        &lt;!-- Qty &amp; Product Add Buttons Ends --&gt;\n        &lt;!-- AddThis Button BEGIN --&gt;\n        &lt;!--  &lt;div class=&quot;addthis_toolbox addthis_default_style&quot; data-url=&quot;{{ share }}&quot;&gt;&lt;a class=&quot;addthis_button_facebook_like&quot; fb:like:layout=&quot;button_count&quot;&gt;&lt;/a&gt; &lt;a class=&quot;addthis_button_tweet&quot;&gt;&lt;/a&gt; &lt;a class=&quot;addthis_button_pinterest_pinit&quot;&gt;&lt;/a&gt; &lt;a class=&quot;addthis_counter addthis_pill_style&quot;&gt;&lt;/a&gt;&lt;/div&gt;--&gt;\n         &lt;!-- &lt;script type=&quot;text/javascript&quot; src=&quot;//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e&quot;&gt;&lt;/script&gt; --&gt;\n        &lt;!-- AddThis Button END --&gt; \n        &lt;/div&gt;\n      &lt;!-- Product Info Ends --&gt;   \n      &lt;/div&gt;\n    &lt;!-- Nested Row Ends --&gt;\n    &lt;!-- Product Tabs Wrap Starts --&gt;\n      &lt;div class=&quot;product-tabs-wrap&quot;&gt;\n      &lt;!-- Product Tabs Starts --&gt;\n        &lt;ul class=&quot;nav nav-tabs&quot;&gt;\n          &lt;!--&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#tab-description&quot; data-toggle=&quot;tab&quot;&gt;{{ tab_description }}&lt;/a&gt;&lt;/li&gt;\n          {% if attribute_groups %}\n          &lt;li&gt;&lt;a href=&quot;#tab-specification&quot; data-toggle=&quot;tab&quot;&gt;{{ tab_attribute }}&lt;/a&gt;&lt;/li&gt;\n          {% endif %}--&gt;\n          {% if review_status %}\n          &lt;li class=\'active\'&gt;&lt;a href=&quot;#tab-review &quot; data-toggle=&quot;tab&quot;&gt;{{ tab_review }}&lt;/a&gt;&lt;/li&gt;\n          {% endif %}\n        &lt;/ul&gt;\n      &lt;!-- Product Tabs Ends --&gt;\n      &lt;!-- Product Tab Content Starts --&gt;\n        &lt;div class=&quot;tab-content&quot;&gt;\n        &lt;!-- Product Description Starts --&gt;\n        &lt;!--  &lt;div class=&quot;tab-pane active&quot; id=&quot;tab-description&quot;&gt;\n            {{ description }}\n          &lt;/div&gt;\n		--&gt;\n        &lt;!-- Product Description Ends --&gt;\n        {% if attribute_groups %}\n        &lt;!-- Product Attribute Starts --&gt;\n          &lt;div class=&quot;tab-pane&quot; id=&quot;tab-specification&quot;&gt;\n            &lt;table class=&quot;table table-dark table-striped table-bordered&quot;&gt;\n              {% for attribute_group in attribute_groups %}\n              &lt;thead&gt;\n                &lt;tr&gt;\n                  &lt;td colspan=&quot;2&quot;&gt;&lt;strong&gt;{{ attribute_group.name }}&lt;/strong&gt;&lt;/td&gt;\n                &lt;/tr&gt;\n              &lt;/thead&gt;\n              &lt;tbody&gt;\n              {% for attribute in attribute_group.attribute %}\n              &lt;tr&gt;\n                &lt;td&gt;{{ attribute.name }}&lt;/td&gt;\n                &lt;td&gt;{{ attribute.text }}&lt;/td&gt;\n              &lt;/tr&gt;\n              {% endfor %}\n                &lt;/tbody&gt;\n              {% endfor %}\n            &lt;/table&gt;\n          &lt;/div&gt;\n        &lt;!-- Product Attribute Ends --&gt;\n        {% endif %}\n        {% if review_status %}\n        &lt;!-- Product Review Starts --&gt;\n          &lt;div class=&quot;tab-pane active&quot; id=&quot;tab-review&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; id=&quot;form-review&quot;&gt;\n              &lt;div id=&quot;review&quot;&gt;&lt;/div&gt;&lt;br&gt;\n              &lt;h4&gt;{{ text_write }}&lt;/h4&gt;&lt;hr&gt;\n              {% if review_guest %}\n              &lt;div class=&quot;form-group required&quot;&gt;\n                &lt;div class=&quot;col-sm-12&quot;&gt;\n                  &lt;label class=&quot;control-label&quot; for=&quot;input-name&quot;&gt;{{ entry_name }}&lt;/label&gt;\n                  &lt;input type=&quot;text&quot; name=&quot;name&quot; value=&quot;{{ customer_name }}&quot; id=&quot;input-name&quot; class=&quot;form-control&quot; /&gt;\n                &lt;/div&gt;\n              &lt;/div&gt;\n              &lt;div class=&quot;form-group required&quot;&gt;\n                &lt;div class=&quot;col-sm-12&quot;&gt;\n                  &lt;label class=&quot;control-label&quot; for=&quot;input-review&quot;&gt;{{ entry_review }}&lt;/label&gt;\n                  &lt;textarea name=&quot;text&quot; rows=&quot;5&quot; id=&quot;input-review&quot; class=&quot;form-control&quot;&gt;&lt;/textarea&gt;\n                  &lt;div class=&quot;help-block&quot;&gt;{{ text_note }}&lt;/div&gt;\n                &lt;/div&gt;\n              &lt;/div&gt;\n              &lt;div class=&quot;form-group required&quot;&gt;\n                &lt;div class=&quot;col-sm-12&quot;&gt;\n                  &lt;label class=&quot;control-label&quot;&gt;{{ entry_rating }}&lt;/label&gt;\n                  &amp;nbsp;&amp;nbsp;&amp;nbsp; {{ entry_bad }}&amp;nbsp;\n                  &lt;input type=&quot;radio&quot; name=&quot;rating&quot; value=&quot;1&quot; /&gt;\n                  &amp;nbsp;\n                  &lt;input type=&quot;radio&quot; name=&quot;rating&quot; value=&quot;2&quot; /&gt;\n                  &amp;nbsp;\n                  &lt;input type=&quot;radio&quot; name=&quot;rating&quot; value=&quot;3&quot; /&gt;\n                  &amp;nbsp;\n                  &lt;input type=&quot;radio&quot; name=&quot;rating&quot; value=&quot;4&quot; /&gt;\n                  &amp;nbsp;\n                  &lt;input type=&quot;radio&quot; name=&quot;rating&quot; value=&quot;5&quot; /&gt;\n                  &amp;nbsp;{{ entry_good }}&lt;/div&gt;\n              &lt;/div&gt;\n              {{ captcha }}\n              &lt;div class=&quot;buttons clearfix&quot;&gt;\n                &lt;div class=&quot;pull-right&quot;&gt;\n                  &lt;button type=&quot;button&quot; id=&quot;button-review&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-primary&quot;&gt;{{ button_continue }}&lt;/button&gt;\n                &lt;/div&gt;\n              &lt;/div&gt;\n              {% else %}\n              {{ text_login }}\n              {% endif %}\n            &lt;/form&gt;\n          &lt;/div&gt;\n        &lt;!-- Product Review Ends --&gt;\n        {% endif %}\n        &lt;/div&gt;\n      &lt;!-- Product Tab Content Ends --&gt;\n      &lt;/div&gt;\n    &lt;!-- Product Tabs Wrap Ends --&gt;\n    {% if products %}\n      &lt;p&gt;&amp;nbsp;&lt;/p&gt;\n    &lt;!-- Related Products Starts --&gt;\n      &lt;div class=&quot;module-product-wrap&quot;&gt;\n      &lt;!-- Module Heading Starts --&gt;\n        &lt;h4 class=&quot;module-product-heading&quot;&gt;{{ text_related }}&lt;/h4&gt;\n      &lt;!-- Module Heading Ends --&gt;\n      &lt;!-- Nested Row Starts --&gt;\n        &lt;div class=&quot;row&quot;&gt;\n        {% set i = 0 %}\n        {% for product in products %}\n          {% if column_left and column_right %}\n            {% set class = \'col-sm-6 col-xs-12\' %}\n          {% elseif column_left or column_right %}\n            {% set class = \'col-md-4 col-sm-6 col-xs-12\' %}\n          {% else %}\n            {% set class = \'col-lg-3 col-md-4 col-sm-6 col-xs-12\' %}\n          {% endif %}\n        &lt;!-- Product Col Starts --&gt;\n          &lt;div class=&quot;product-layout {{ class }}&quot;&gt;\n          &lt;!-- Product Module Starts --&gt;\n            &lt;div class=&quot;product-thumb module-product animation rounded-3&quot;&gt;\n            &lt;!-- Product Image Starts --&gt;\n              &lt;div class=&quot;module-product-image&quot;&gt;\n                &lt;a href=&quot;{{ product.href }}&quot;&gt;\n                  &lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive img-center&quot; /&gt;\n                &lt;/a&gt;\n              &lt;/div&gt;\n            &lt;!-- Product Image Ends --&gt;\n            &lt;!-- Product Caption Starts --&gt;\n              &lt;div class=&quot;module-product-caption&quot;&gt;\n              &lt;!-- Product Name Starts --&gt;\n                &lt;h6 class=&quot;module-product-title&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h6&gt;\n              &lt;!-- Product Name Ends --&gt;\n              &lt;!-- Product Description Starts --&gt;\n                &lt;div class=&quot;module-product-description hidden&quot;&gt;\n                  {{ product.description }}\n                &lt;/div&gt;\n              &lt;!-- Product Description Ends --&gt;\n              {% if product.rating %}\n              &lt;!-- Product Ratings Starts --&gt;\n                &lt;div class=&quot;module-product-ratings&quot;&gt;\n                  {% for i in 1..5 %}\n                    {% if product.rating &lt; i %}\n                      &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                    {% else %}\n                      &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                    {% endif %}\n                  {% endfor %}\n                &lt;/div&gt;\n              &lt;!-- Product Ratings Ends --&gt;\n              {% endif %}\n              {% if product.price %}\n              &lt;!-- Product Price Starts --&gt;\n                &lt;div class=&quot;module-product-price&quot;&gt;\n                  {% if not product.special %}\n                    {{ product.price }}\n                  {% else %}\n                    &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt;\n                  {% endif %}\n                &lt;/div&gt;\n              &lt;!-- Product Price Ends --&gt;\n              {% endif %}\n              &lt;!-- Add To Cart Button Starts --&gt;\n                {% if logged %}\n                &lt;button type=&quot;button&quot; class=&quot;btn module-product-btn-cart animation rounded-3&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; {{ button_cart }}&lt;/button&gt;\n              	{% else %}\n              &lt;h5&gt;&lt;a href=\'index.php?route=account/login\'&gt;&lt;button class=&quot;btn module-product-btn-cart animation&quot;&gt;LogIn To Buy&lt;/button&gt;&lt;/a&gt;&lt;/h5&gt;\n              {% endif %}\n              &lt;!-- Add To Cart Button Ends --&gt;\n              &lt;/div&gt;\n            &lt;!-- Product Caption Ends --&gt;\n            &lt;/div&gt;\n          &lt;!-- Product Module Ends --&gt;\n          &lt;/div&gt;\n        &lt;!-- Product Col Ends --&gt;\n          {% if column_left and column_right and (i + 1) % 2 == 0 %}\n            &lt;div class=&quot;clearfix visible-md visible-sm&quot;&gt;&lt;/div&gt;\n          {% elseif column_left or column_right and (i + 1) % 3 == 0 %}\n            &lt;div class=&quot;clearfix visible-md&quot;&gt;&lt;/div&gt;\n          {% elseif (i + 1) % 4 == 0 %}\n            &lt;div class=&quot;clearfix visible-md&quot;&gt;&lt;/div&gt;\n          {% endif %}\n            {% set i = i + 1 %}\n        {% endfor %}  \n        &lt;/div&gt;\n      &lt;!-- Nested Row Ends --&gt;\n      &lt;/div&gt;\n    &lt;!-- Related Products Ends --&gt;\n    {% endif %}\n    {% if tags %}    \n    &lt;!-- Tags Starts --&gt;\n      &lt;p&gt;\n        {{ text_tags }}\n        {% for i in 0..tags|length %}\n          {% if i &lt; (tags|length - 1) %} &lt;a href=&quot;{{ tags[i].href }}&quot;&gt;{{ tags[i].tag }}&lt;/a&gt;,\n          {% else %} &lt;a href=&quot;{{ tags[i].href }}&quot;&gt;{{ tags[i].tag }}&lt;/a&gt; {% endif %}\n        {% endfor %} \n      &lt;/p&gt;\n    &lt;!-- Tags Ends --&gt;\n    {% endif %}\n    {{ content_bottom }}\n    &lt;/div&gt;\n  &lt;!-- Content Area Ends --&gt;    \n    {{ column_right }}\n  &lt;/div&gt;\n&lt;!-- Row Ends --&gt;  \n&lt;/div&gt;\n\n&lt;!-- Popup Model Bootstarp Enquiry Start--&gt;\n&lt;div class=&quot;modal fade&quot; id=&quot;exampleModalCenter&quot; tabindex=&quot;-1&quot; role=&quot;dialog&quot; aria-labelledby=&quot;exampleModalCenterTitle&quot; aria-hidden=&quot;true&quot;&gt;\n  &lt;div class=&quot;modal-dialog modal-dialog-centered&quot; role=&quot;document&quot;&gt;\n    &lt;div class=&quot;modal-content&quot;&gt;\n      &lt;div class=&quot;modal-header&quot;&gt;\n        &lt;h5 class=&quot;modal-title&quot; id=&quot;exampleModalLongTitle&quot;&gt;Enquiry Form&lt;/h5&gt;\n        &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;modal&quot; aria-label=&quot;Close&quot;&gt;\n          &lt;span aria-hidden=&quot;true&quot;&gt;&amp;times;&lt;/span&gt;\n        &lt;/button&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;modal-body&quot;&gt;\n        &lt;div class=&quot;form-group&quot;&gt;\n          &lt;label for=&quot;passwd&quot;&gt;Name&lt;/label&gt;\n          &lt;input type=&quot;text&quot; class=&quot;form-control&quot; id=&quot;enq_name&quot; placeholder=&quot;Name&quot;&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;form-group&quot;&gt;\n          &lt;label for=&quot;passwd&quot;&gt;Phone Number&lt;/label&gt;\n          &lt;input type=&quot;text&quot; class=&quot;form-control&quot; id=&quot;enq_phnum&quot; placeholder=&quot;Phone Number&quot;&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;modal-footer&quot;&gt;\n        &lt;button type=&quot;button&quot; class=&quot;btn btn-secondary&quot; data-dismiss=&quot;modal&quot;&gt;Close&lt;/button&gt;\n        &lt;button type=&quot;button&quot; class=&quot;btn btn-primary&quot; data-dismiss=&quot;modal&quot; id=&quot;enq_form&quot;&gt;Save changes&lt;/button&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- Popup Model Bootstrap Enquiry Ends --&gt;\n\n&lt;!-- Product Container Ends --&gt;\n\n&lt;script&gt;\n\n    $(&quot;#enq_form&quot;).click(function(){\n        var name= $(\'#enq_name\').val();\n        var phnum= $(\'#enq_phnum\').val();\n  		var pr_id=$(\'#pr_id\').val();\n        $.ajax({\n            url : \'/opencart/custom/enquiry.php\',\n            type: \'POST\',\n            dataType: &quot;text&quot;,\n            data :{\n                name: name,\n                phnum:phnum,\n  				pr_id:pr_id\n            },\n            success:function(data){\n                alert(data);\n            }\n        });\n    });\n\n&lt;/script&gt;\n\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'select[name=\\\'recurring_id\\\'], input[name=&quot;quantity&quot;]\').change(function(){\n	$.ajax({\n		url: \'index.php?route=product/product/getRecurringDescription\',\n		type: \'post\',\n		data: $(\'input[name=\\\'product_id\\\'], input[name=\\\'quantity\\\'], select[name=\\\'recurring_id\\\']\'),\n		dataType: \'json\',\n		beforeSend: function() {\n			$(\'#recurring-description\').html(\'\');\n		},\n		success: function(json) {\n			$(\'.alert-dismissible, .text-danger\').remove();\n\n			if (json[\'success\']) {\n				$(\'#recurring-description\').html(json[\'success\']);\n			}\n		}\n	});\n});\n//--&gt;&lt;/script&gt; \n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#button-cart\').on(\'click\', function() {\n	$.ajax({\n		url: \'index.php?route=checkout/cart/add\',\n		type: \'post\',\n		data: $(\'#product input[type=\\\'text\\\'], #product input[type=\\\'hidden\\\'], #product input[type=\\\'radio\\\']:checked, #product input[type=\\\'checkbox\\\']:checked, #product select, #product textarea\'),\n		dataType: \'json\',\n		beforeSend: function() {\n			$(\'#button-cart\').button(\'loading\');\n		},\n		complete: function() {\n			$(\'#button-cart\').button(\'reset\');\n		},\n		success: function(json) {\n			$(\'.alert-dismissible, .text-danger\').remove();\n			$(\'.form-group\').removeClass(\'has-error\');\n\n			if (json[\'error\']) {\n				if (json[\'error\'][\'option\']) {\n					for (i in json[\'error\'][\'option\']) {\n						var element = $(\'#input-option\' + i.replace(\'_\', \'-\'));\n\n						if (element.parent().hasClass(\'input-group\')) {\n							element.parent().after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][\'option\'][i] + \'&lt;/div&gt;\');\n						} else {\n							element.after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][\'option\'][i] + \'&lt;/div&gt;\');\n						}\n					}\n				}\n\n				if (json[\'error\'][\'recurring\']) {\n					$(\'select[name=\\\'recurring_id\\\']\').after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][\'recurring\'] + \'&lt;/div&gt;\');\n				}\n\n				// Highlight any found errors\n				$(\'.text-danger\').parent().addClass(\'has-error\');\n			}\n\n			if (json[\'success\']) {\n				$(\'.breadcrumb\').after(\'&lt;div class=&quot;alert alert-success alert-dismissible&quot;&gt;\' + json[\'success\'] + \'&lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;/div&gt;\');\n\n        $(\'#cart &gt; button\').html(\'&lt;img src=&quot;catalog/view/theme/mintleaf/image/icon/shopping-bag.png&quot; alt=&quot;Search&quot;&gt;&lt;span id=&quot;cart-total&quot; class=&quot;rounded-circle&quot;&gt;\' + json[\'total\'][0] + json[\'total\'][1] + \'&lt;/span&gt;\');\n\n				$(\'html, body\').animate({ scrollTop: 0 }, \'slow\');\n\n				$(\'#cart &gt; ul\').load(\'index.php?route=common/cart/info ul li\');\n			}\n		},\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n	});\n});\n//--&gt;&lt;/script&gt; \n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'.date\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickTime: false\n});\n\n$(\'.datetime\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickDate: true,\n	pickTime: true\n});\n\n$(\'.time\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickDate: false\n});\n\n$(\'button[id^=\\\'button-upload\\\']\').on(\'click\', function() {\n	var node = this;\n\n	$(\'#form-upload\').remove();\n\n	$(\'body\').prepend(\'&lt;form enctype=&quot;multipart/form-data&quot; id=&quot;form-upload&quot; style=&quot;display: none;&quot;&gt;&lt;input type=&quot;file&quot; name=&quot;file&quot; /&gt;&lt;/form&gt;\');\n\n	$(\'#form-upload input[name=\\\'file\\\']\').trigger(\'click\');\n\n	if (typeof timer != \'undefined\') {\n    	clearInterval(timer);\n	}\n\n	timer = setInterval(function() {\n		if ($(\'#form-upload input[name=\\\'file\\\']\').val() != \'\') {\n			clearInterval(timer);\n\n			$.ajax({\n				url: \'index.php?route=tool/upload\',\n				type: \'post\',\n				dataType: \'json\',\n				data: new FormData($(\'#form-upload\')[0]),\n				cache: false,\n				contentType: false,\n				processData: false,\n				beforeSend: function() {\n					$(node).button(\'loading\');\n				},\n				complete: function() {\n					$(node).button(\'reset\');\n				},\n				success: function(json) {\n					$(\'.text-danger\').remove();\n\n					if (json[\'error\']) {\n						$(node).parent().find(\'input\').after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'] + \'&lt;/div&gt;\');\n					}\n\n					if (json[\'success\']) {\n						alert(json[\'success\']);\n\n						$(node).parent().find(\'input\').val(json[\'code\']);\n					}\n				},\n				error: function(xhr, ajaxOptions, thrownError) {\n					alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n				}\n			});\n		}\n	}, 500);\n});\n//--&gt;&lt;/script&gt; \n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#review\').delegate(\'.pagination a\', \'click\', function(e) {\n    e.preventDefault();\n\n    $(\'#review\').fadeOut(\'slow\');\n\n    $(\'#review\').load(this.href);\n\n    $(\'#review\').fadeIn(\'slow\');\n});\n\n$(\'#review\').load(\'index.php?route=product/product/review&amp;product_id={{ product_id }}\');\n\n$(\'#button-review\').on(\'click\', function() {\n	$.ajax({\n		url: \'index.php?route=product/product/write&amp;product_id={{ product_id }}\',\n		type: \'post\',\n		dataType: \'json\',\n		data: $(&quot;#form-review&quot;).serialize(),\n		beforeSend: function() {\n			$(\'#button-review\').button(\'loading\');\n		},\n		complete: function() {\n			$(\'#button-review\').button(\'reset\');\n		},\n		success: function(json) {\n			$(\'.alert-dismissible\').remove();\n\n			if (json[\'error\']) {\n				$(\'#review\').after(\'&lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-exclamation-circle&quot;&gt;&lt;/i&gt; \' + json[\'error\'] + \'&lt;/div&gt;\');\n			}\n\n			if (json[\'success\']) {\n				$(\'#review\').after(\'&lt;div class=&quot;alert alert-success alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-check-circle&quot;&gt;&lt;/i&gt; \' + json[\'success\'] + \'&lt;/div&gt;\');\n\n				$(\'input[name=\\\'name\\\']\').val(\'\');\n				$(\'textarea[name=\\\'text\\\']\').val(\'\');\n				$(\'input[name=\\\'rating\\\']:checked\').prop(\'checked\', false);\n			}\n		}\n	});\n});\n\n$(document).ready(function() {\n	$(\'.product-image-wrap\').magnificPopup({\n		type:\'image\',\n		delegate: \'a\',\n		gallery: {\n			enabled: true\n		}\n	});\n});\n//--&gt;&lt;/script&gt; \n{{ footer }} \n', '2020-01-21 22:07:08'),
(175, 0, 'mintleaf', 'common/header', '&lt;!DOCTYPE html&gt;\n&lt;!--[if IE]&gt;&lt;![endif]--&gt;\n&lt;!--[if IE 8 ]&gt;&lt;html dir=&quot;{{ direction }}&quot; lang=&quot;{{ lang }}&quot; class=&quot;ie8&quot;&gt;&lt;![endif]--&gt;\n&lt;!--[if IE 9 ]&gt;&lt;html dir=&quot;{{ direction }}&quot; lang=&quot;{{ lang }}&quot; class=&quot;ie9&quot;&gt;&lt;![endif]--&gt;\n&lt;!--[if (gt IE 9)|!(IE)]&gt;&lt;!--&gt;\n&lt;html dir=&quot;{{ direction }}&quot; lang=&quot;{{ lang }}&quot;&gt;\n&lt;!--&lt;![endif]--&gt;\n&lt;head&gt;\n\n  &lt;meta charset=&quot;UTF-8&quot; /&gt;\n  &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1&quot;&gt;\n  &lt;meta http-equiv=&quot;X-UA-Compatible&quot; content=&quot;IE=edge&quot;&gt;\n  &lt;title&gt;{{ title }}&lt;/title&gt;\n  &lt;base href=&quot;{{ base }}&quot; /&gt;\n  {% if description %}\n  &lt;meta name=&quot;description&quot; content=&quot;{{ description }}&quot; /&gt;\n  {% endif %}\n  {% if keywords %}\n  &lt;meta name=&quot;keywords&quot; content=&quot;{{ keywords }}&quot; /&gt;\n  {% endif %}\n\n  &lt;!-- jQuery --&gt;\n  &lt;script src=&quot;catalog/view/javascript/jquery/jquery-2.1.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n\n  &lt;!-- Bootstrap --&gt;\n  &lt;link href=&quot;catalog/view/javascript/bootstrap/css/bootstrap.min.css&quot; rel=&quot;stylesheet&quot; media=&quot;screen&quot; /&gt;\n  &lt;script src=&quot;catalog/view/javascript/bootstrap/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n\n  &lt;!-- Font Awesome --&gt;\n  &lt;link href=&quot;catalog/view/javascript/font-awesome/css/font-awesome.min.css&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot; /&gt;\n\n  &lt;!-- Google Web Fonts --&gt;\n  &lt;link href=&quot;https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700&quot; rel=&quot;stylesheet&quot;&gt; \n\n  &lt;!-- CSS  --&gt;\n  &lt;link href=&quot;catalog/view/theme/mintleaf/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\n  &lt;link href=&quot;catalog/view/theme/mintleaf/stylesheet/stylesheet-responsive.css&quot; rel=&quot;stylesheet&quot;&gt;\n  {% for style in styles %}\n  &lt;link href=&quot;{{ style.href }}&quot; type=&quot;text/css&quot; rel=&quot;{{ style.rel }}&quot; media=&quot;{{ style.media }}&quot; /&gt;\n  {% endfor %}\n  {% for script in scripts %}\n  &lt;script src=&quot;{{ script }}&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n  {% endfor %}\n\n  &lt;!-- JavaScript  --&gt;\n  &lt;script src=&quot;catalog/view/theme/mintleaf/js/custom.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n  &lt;script src=&quot;catalog/view/theme/mintleaf/js/common.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n  {% for link in links %}\n  &lt;link href=&quot;{{ link.href }}&quot; rel=&quot;{{ link.rel }}&quot; /&gt;\n  {% endfor %}\n  \n  {% for analytic in analytics %}\n  {{ analytic }}\n  {% endfor %}\n\n&lt;/head&gt;\n&lt;body&gt;\n&lt;!-- Main Header Starts --&gt;\n  &lt;header class=&quot;main-header&quot;&gt;\n  &lt;!-- Nested Container Starts --&gt;\n    &lt;div class=&quot;container&quot;&gt;\n    &lt;!-- Top Bar Starts --&gt;\n      &lt;div class=&quot;topbar clearfix text-center-xs font-weight-medium&quot;&gt;\n      &lt;!-- Welcome Text Starts --&gt;\n        &lt;div class=&quot;pull-left-lg pull-left-md pull-left-sm&quot;&gt;\n          &lt;p class=&quot;mb-lg-0 mb-md-0&quot;&gt;&lt;a href=\'/opencart\'&gt;KISAN CART&lt;/a&gt;&lt;/p&gt;\n        &lt;/div&gt;\n      &lt;!-- Welcome Text Ends --&gt;\n      &lt;!-- Top Links Starts --&gt;\n        &lt;div class=&quot;pull-right-lg pull-right-md pull-right-sm&quot;&gt;\n          &lt;ul class=&quot;list-unstyled list-inline top-links mb-0 text-right-lg text-right-md text-right-sm&quot;&gt;\n            &lt;li class=&quot;dropdown&quot;&gt;&lt;a href=&quot;{{ account }}&quot; title=&quot;{{ text_account }}&quot; class=&quot;dropdown-toggle animation&quot; data-toggle=&quot;dropdown&quot;&gt;{{ text_account }} &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/a&gt;\n              &lt;ul class=&quot;dropdown-menu dropdown-menu-right rounded-0&quot;&gt;\n                {% if logged %}\n                  &lt;li&gt;&lt;a href=&quot;{{ account }}&quot;&gt;{{ text_account }}&lt;/a&gt;&lt;/li&gt;\n                  &lt;li&gt;&lt;a href=&quot;{{ order }}&quot;&gt;{{ text_order }}&lt;/a&gt;&lt;/li&gt;\n                  &lt;!--&lt;li&gt;&lt;a href=&quot;{{ transaction }}&quot;&gt;{{ text_transaction }}&lt;/a&gt;&lt;/li&gt;\n                  &lt;li&gt;&lt;a href=&quot;{{ download }}&quot;&gt;{{ text_download }}&lt;/a&gt;&lt;/li&gt;--&gt;\n                  &lt;li&gt;&lt;a href=&quot;{{ logout }}&quot;&gt;{{ text_logout }}&lt;/a&gt;&lt;/li&gt;\n                {% else %}\n                  &lt;li&gt;&lt;a href=&quot;{{ register }}&quot;&gt;{{ text_register }}&lt;/a&gt;&lt;/li&gt;\n                  &lt;li&gt;&lt;a href=&quot;{{ login }}&quot;&gt;{{ text_login }}&lt;/a&gt;&lt;/li&gt;\n                {% endif %}\n              &lt;/ul&gt;\n            &lt;/li&gt;\n            &lt;li class=&quot;animation&quot;&gt;&lt;a href=&quot;{{ wishlist }}&quot; id=&quot;wishlist-total&quot; title=&quot;{{ text_wishlist }}&quot;&gt;{{ text_wishlist }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li class=&quot;animation&quot;&gt;&lt;a href=&quot;{{ shopping_cart }}&quot; title=&quot;{{ text_shopping_cart }}&quot;&gt;{{ text_shopping_cart }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li class=&quot;animation&quot;&gt;&lt;a href=&quot;{{ checkout }}&quot; title=&quot;{{ text_checkout }}&quot;&gt;{{ text_checkout }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li class=&quot;animation&quot;&gt;&lt;a href=&quot;/opencart/farmers/&quot;&gt;Farmers Login&lt;/a&gt;&lt;/li&gt;\n          &lt;/ul&gt;\n        &lt;/div&gt;\n      &lt;!-- Top Links Ends --&gt;\n      &lt;/div&gt;\n    &lt;!-- Top Bar Ends --&gt;\n    &lt;!-- Main Menu Starts --&gt;\n      {{ menu }}\n    &lt;!-- Main Menu Ends --&gt;\n    &lt;/div&gt;\n  &lt;!-- Nested Container Ends --&gt;\n  &lt;/header&gt;\n&lt;!-- Main Header Ends --&gt;', '2020-01-21 23:44:15'),
(111, 0, 'mintleaf', 'common/footer', '&lt;div&gt;&lt;/div&gt;', '2020-01-16 18:49:57');
INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(124, 0, 'mintleaf', 'account/account', '{{ header }}\n&lt;div id=&quot;account-account&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  {% if success %}\n  &lt;div class=&quot;alert alert-success alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-check-circle&quot;&gt;&lt;/i&gt; {{ success }}&lt;/div&gt;\n  {% endif %}\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;div class=&quot;sblock-1&quot;&gt;\n        &lt;h5 class=&quot;sblock-1-heading&quot;&gt;{{ text_my_account }}&lt;/h5&gt;\n        &lt;div class=&quot;sblock-1-content&quot;&gt;\n          &lt;ul class=&quot;list-unstyled list-style-1&quot;&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ edit }}&quot;&gt;{{ text_edit }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ password }}&quot;&gt;{{ text_password }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ address }}&quot;&gt;{{ text_address }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ wishlist }}&quot;&gt;{{ text_wishlist }}&lt;/a&gt;&lt;/li&gt;\n          &lt;/ul&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      {% if credit_cards %}\n      &lt;h2&gt;{{ text_credit_card }}&lt;/h2&gt;\n      &lt;ul class=&quot;list-unstyled&quot;&gt;\n        {% for credit_card in credit_cards %}\n        &lt;li&gt;&lt;a href=&quot;{{ credit_card.href }}&quot;&gt;{{ credit_card.name }}&lt;/a&gt;&lt;/li&gt;\n        {% endfor %}\n      &lt;/ul&gt;\n      {% endif %}\n      &lt;div class=&quot;sblock-1&quot;&gt;\n        &lt;h5 class=&quot;sblock-1-heading&quot;&gt;{{ text_my_orders }}&lt;/h5&gt;\n        &lt;div class=&quot;sblock-1-content&quot;&gt;\n          &lt;ul class=&quot;list-unstyled list-style-1&quot;&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ order }}&quot;&gt;{{ text_order }}&lt;/a&gt;&lt;/li&gt;\n            &lt;!--&lt;li&gt;&lt;a href=&quot;{{ download }}&quot;&gt;{{ text_download }}&lt;/a&gt;&lt;/li&gt;\n            {% if reward %}\n            &lt;li&gt;&lt;a href=&quot;{{ reward }}&quot;&gt;{{ text_reward }}&lt;/a&gt;&lt;/li&gt;\n            {% endif %}\n            &lt;li&gt;&lt;a href=&quot;{{ return }}&quot;&gt;{{ text_return }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ transaction }}&quot;&gt;{{ text_transaction }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ recurring }}&quot;&gt;{{ text_recurring }}&lt;/a&gt;&lt;/li&gt;--&gt;\n          &lt;/ul&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;!--&lt;div class=&quot;sblock-1&quot;&gt;\n        &lt;h5 class=&quot;sblock-1-heading&quot;&gt;{{ text_my_affiliate }}&lt;/h5&gt;\n        &lt;div class=&quot;sblock-1-content&quot;&gt;\n          &lt;ul class=&quot;list-unstyled list-style-1&quot;&gt;\n            {% if not tracking %}\n            &lt;li&gt;&lt;a href=&quot;{{ affiliate }}&quot;&gt;{{ text_affiliate_add }}&lt;/a&gt;&lt;/li&gt;\n            {% else %}\n            &lt;li&gt;&lt;a href=&quot;{{ affiliate }}&quot;&gt;{{ text_affiliate_edit }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ tracking }}&quot;&gt;{{ text_tracking }}&lt;/a&gt;&lt;/li&gt;\n            {% endif %}\n          &lt;/ul&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;sblock-1&quot;&gt;\n        &lt;h5 class=&quot;sblock-1-heading&quot;&gt;{{ text_my_newsletter }}&lt;/h5&gt;\n        &lt;div class=&quot;sblock-1-content&quot;&gt;\n          &lt;ul class=&quot;list-unstyled list-style-1&quot;&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ newsletter }}&quot;&gt;{{ text_newsletter }}&lt;/a&gt;&lt;/li&gt;\n          &lt;/ul&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;--&gt;\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }}', '2020-01-17 01:43:10'),
(134, 0, 'mintleaf', 'product/category', '{{ header }}\n&lt;div id=&quot;product-category&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;div class=&quot;row cat-desc-wrap&quot;&gt;\n        &lt;div class=&quot;col-xs-2&quot;&gt;\n        {% if thumb %}\n          &lt;p&gt;&lt;img src=&quot;{{ thumb }}&quot; alt=&quot;{{ heading_title }}&quot; title=&quot;{{ heading_title }}&quot; class=&quot;img-responsive img-style-1 rounded-3&quot; /&gt;&lt;/p&gt;\n        {% endif %}\n        &lt;/div&gt;\n        &lt;div class=&quot;col-xs-10&quot;&gt;\n          &lt;h4 class=&quot;page-heading-1&quot;&gt;{{ heading_title }}&lt;/h4&gt;\n          {% if description %}\n          &lt;div&gt;{{ description }}&lt;/div&gt;\n          {% endif %}\n        &lt;/div&gt;\n      &lt;/div&gt;\n      {% if categories %}\n        &lt;h5 class=&quot;page-sub-heading-1&quot;&gt;{{ text_refine }}&lt;/h5&gt;\n        &lt;ul class=&quot;list-unstyled list-inline list-cat-1 animation&quot;&gt;\n        {% if categories|length &lt;= 5 %}          \n          {% for category in categories %}\n            &lt;li&gt;&lt;a href=&quot;{{ category.href }}&quot;&gt;{{ category.name }}&lt;/a&gt;&lt;/li&gt;\n          {% endfor %}\n        {% else %}\n          {% for category in categories|batch((categories|length / 4)|round(1, \'ceil\')) %}\n            {% for child in category %}\n              &lt;li&gt;&lt;a href=&quot;{{ child.href }}&quot;&gt;{{ child.name }}&lt;/a&gt;&lt;/li&gt;\n            {% endfor %}            \n          {% endfor %}\n        {% endif %}\n        &lt;/ul&gt;\n      {% endif %}\n      {% if products %}\n        &lt;div class=&quot;product-sort-wrap rounded-3&quot;&gt;\n          &lt;div class=&quot;row&quot;&gt;\n            &lt;div class=&quot;col-md-2 col-xs-4&quot;&gt;\n              &lt;div class=&quot;btn-group&quot;&gt;\n                &lt;button type=&quot;button&quot; id=&quot;list-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_list }}&quot;&gt;&lt;i class=&quot;fa fa-th-list&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;button type=&quot;button&quot; id=&quot;grid-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_grid }}&quot;&gt;&lt;i class=&quot;fa fa-th&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-3 col-xs-8 text-right-sm text-right-xs&quot;&gt;\n              &lt;!--&lt;div class=&quot;form-group&quot;&gt;&lt;a href=&quot;{{ compare }}&quot; id=&quot;compare-total&quot; class=&quot;btn btn-link&quot;&gt;{{ text_compare }}&lt;/a&gt;&lt;/div&gt;--&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-4 col-xs-6&quot;&gt;\n              &lt;div class=&quot;form-group input-group&quot;&gt;\n                &lt;label class=&quot;input-group-addon&quot; for=&quot;input-sort&quot;&gt;{{ text_sort }}&lt;/label&gt;\n                &lt;select id=&quot;input-sort&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n                  {% for sorts in sorts %}\n                    {% if sorts.value == \'%s-%s\'|format(sort, order) %}\n                      &lt;option value=&quot;{{ sorts.href }}&quot; selected=&quot;selected&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n                    {% else %}\n                      &lt;option value=&quot;{{ sorts.href }}&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n                    {% endif %}\n                  {% endfor %}\n                &lt;/select&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-md-3 col-xs-6&quot;&gt;\n              &lt;div class=&quot;form-group input-group&quot;&gt;\n                &lt;label class=&quot;input-group-addon&quot; for=&quot;input-limit&quot;&gt;{{ text_limit }}&lt;/label&gt;\n                &lt;select id=&quot;input-limit&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n                  {% for limits in limits %}\n                    {% if limits.value == limit %}\n                      &lt;option value=&quot;{{ limits.href }}&quot; selected=&quot;selected&quot;&gt;{{ limits.text }}&lt;/option&gt;\n                    {% else %}\n                      &lt;option value=&quot;{{ limits.href }}&quot;&gt;{{ limits.text }}&lt;/option&gt;\n                    {% endif %}\n                  {% endfor %}\n                &lt;/select&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt; {% for product in products %}\n      &lt;!-- Product Col Starts --&gt;\n        &lt;div class=&quot;product-layout product-list col-xs-12&quot;&gt;\n        &lt;!-- Product Module Starts --&gt;\n          &lt;div class=&quot;product-thumb module-product animation&quot;&gt;\n          &lt;!-- Product Image Starts --&gt;\n            &lt;div class=&quot;module-product-image&quot;&gt;\n              &lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;\n            &lt;/div&gt;\n          &lt;!-- Product Image Ends --&gt;\n          &lt;!-- Product Caption Starts --&gt;\n            &lt;div class=&quot;module-product-caption&quot;&gt;\n            &lt;!-- Product Name Starts --&gt;\n              &lt;h6 class=&quot;module-product-title&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h6&gt;\n            &lt;!-- Product Name Ends --&gt;\n            &lt;!-- Product Description Starts --&gt;\n              &lt;div class=&quot;module-product-description&quot;&gt;\n                {{ product.description }}\n              &lt;/div&gt;\n            &lt;!-- Product Description Ends --&gt;\n            {% if product.rating %}\n            &lt;!-- Product Ratings Starts --&gt;\n              &lt;div class=&quot;module-product-ratings&quot;&gt;\n                {% for i in 1..5 %}\n                  {% if product.rating &lt; i %}\n                    &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                  {% else %}\n                    &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                  {% endif %}\n                {% endfor %}\n              &lt;/div&gt;\n            &lt;!-- Product Ratings Ends --&gt;\n            {% endif %}\n             {% if product.price %}\n              &lt;!-- Product Price Starts --&gt;\n                &lt;div class=&quot;module-product-price&quot;&gt;\n                  {% if not product.special %}\n                    {{ product.price }}\n                  {% else %}\n                    &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt;\n                  {% endif %}\n                  {% if product.tax %}\n                  &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt;\n                  {% endif %}\n                &lt;/div&gt;\n              &lt;!-- Product Price Ends --&gt;\n              {% endif %}\n              &lt;!-- Add To Cart Button Starts --&gt;\n              {% if logged %}\n                &lt;button type=&quot;button&quot; class=&quot;btn module-product-btn-cart animation&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; {{ button_cart }}&lt;/button&gt;\n              {% else %}\n              &lt;h5&gt;&lt;a href=\'index.php?route=account/login\'&gt;&lt;button class=&quot;btn module-product-btn-cart animation&quot;&gt;LogIn To Buy&lt;/button&gt;&lt;/a&gt;&lt;/h5&gt;\n              {% endif %}\n                \n              &lt;!-- Add To Cart Button Ends --&gt;\n            &lt;/div&gt;\n          &lt;!-- Product Caption Ends --&gt;\n          &lt;/div&gt;\n        &lt;!-- Product Module Ends --&gt;\n        &lt;/div&gt;\n      &lt;!-- Product Col Ends --&gt;\n        {% endfor %} &lt;/div&gt;\n        &lt;div class=&quot;pagination-wrap&quot;&gt;\n          &lt;div class=&quot;row&quot;&gt;\n            &lt;div class=&quot;col-sm-6 text-left-lg text-left-md text-left-sm results&quot;&gt;{{ results }}&lt;/div&gt;\n            &lt;div class=&quot;col-sm-6 text-right-lg text-right-md text-right-sm&quot;&gt;{{ pagination }}&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      {% endif %}\n      {% if not categories and not products %}\n      &lt;p&gt;{{ text_empty }}&lt;/p&gt;\n      &lt;div class=&quot;buttons clearfix&quot;&gt;\n        &lt;div class=&quot;pull-right&quot;&gt;&lt;a href=&quot;{{ continue }}&quot; class=&quot;btn btn-primary&quot;&gt;{{ button_continue }}&lt;/a&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n\n\n{{ footer }} \n', '2020-01-18 10:25:14'),
(155, 0, 'mintleaf', 'product/details', '{{ header }}\n&lt;!-- Details Container Starts --&gt;\n&lt;div id=&quot;product-product&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n&lt;!-- Row Starts --&gt;  \n  &lt;div class=&quot;row&quot;&gt;\n    {{ column_left }}\n    {% if column_left and column_right %}\n      {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n      {% set class = \'col-sm-9\' %}\n    {% else %}\n      {% set class = \'col-sm-12\' %}\n    {% endif %}\n  &lt;!-- Content Area Starts --&gt;\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;\n      {{ content_top }}\n    &lt;!-- Nested Row Starts --&gt;\n      &lt;div class=&quot;row&quot;&gt; \n		{% if column_left or column_right %}\n          {% set class = \'col-sm-5\' %}\n        {% else %}\n          {% set class = \'col-sm-5\' %}\n        {% endif %}\n		\n	  &lt;/div&gt;\n	&lt;/div&gt;\n  &lt;!-- Content Area Ends --&gt;    \n    {{ column_right }}\n  &lt;/div&gt;\n&lt;!-- Row Ends --&gt;  \n&lt;/div&gt;\n \n{{ footer }} \n', '2020-01-21 19:17:11'),
(159, 0, 'mintleaf', 'extension/module/latest', '&lt;div class=&quot;module-product-wrap&quot;&gt;\n&lt;!-- Module Heading Starts --&gt;\n  &lt;h3 class=&quot;module-product-heading&quot;&gt;{{ heading_title }}&lt;/h3&gt;\n&lt;!-- Module Heading Ends --&gt;\n&lt;!-- Nested Row Starts --&gt;\n  &lt;div class=&quot;row&quot;&gt;\n  {% for product in products %}\n  &lt;!-- Product Col Starts --&gt;\n    &lt;div class=&quot;product-layout col-lg-3 col-md-4 col-sm-6 col-xs-12&quot;&gt;\n    &lt;!-- Product Module Starts --&gt;\n      &lt;div class=&quot;product-thumb module-product animation rounded-3&quot;&gt;\n      &lt;!-- Product Image Starts --&gt;\n        &lt;div class=&quot;module-product-image&quot;&gt;\n          &lt;a href=&quot;{{ product.href }}&quot;&gt;\n            &lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive img-center&quot; /&gt;\n          &lt;/a&gt;\n        &lt;/div&gt;\n      &lt;!-- Product Image Ends --&gt;\n      &lt;!-- Product Caption Starts --&gt;\n        &lt;div class=&quot;module-product-caption&quot;&gt;\n        &lt;!-- Product Name Starts --&gt;\n          &lt;h6 class=&quot;module-product-title&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h6&gt;\n        &lt;!-- Product Name Ends --&gt;\n        &lt;!-- Product Description Starts --&gt;\n          &lt;div class=&quot;module-product-description hidden&quot;&gt;\n            {{ product.description }}\n          &lt;/div&gt;\n        &lt;!-- Product Description Ends --&gt;\n        {% if product.rating %}\n        &lt;!-- Product Ratings Starts --&gt;\n          &lt;div class=&quot;module-product-ratings&quot;&gt;\n            {% for i in 1..5 %}\n              {% if product.rating &lt; i %}\n                &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n              {% else %}\n                &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n              {% endif %}\n            {% endfor %}\n          &lt;/div&gt;\n        &lt;!-- Product Ratings Ends --&gt;\n        {% endif %}\n        {% if product.price %}\n        &lt;!-- Product Price Starts --&gt;\n          &lt;div class=&quot;module-product-price&quot;&gt;\n            {% if not product.special %}\n              {{ product.price }}\n            {% else %}\n              &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt;\n            {% endif %}\n          &lt;/div&gt;\n        &lt;!-- Product Price Ends --&gt;\n        {% endif %}\n        &lt;!-- Add To Cart Button Starts --&gt;\n          {% if logged %}\n          &lt;button type=&quot;button&quot; class=&quot;btn module-product-btn-cart animation rounded-3&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; {{ button_cart }}&lt;/button&gt;\n          {% else %}\n          &lt;a href=\'index.php?route=account/login\'&gt;&lt;button type=&quot;button&quot; class=&quot;btn module-product-btn-cart animation rounded-3&quot;&gt;Login To Buy &lt;/button&gt;&lt;/a&gt;\n          {% endif %}\n        &lt;!-- Add To Cart Button Ends --&gt;\n        &lt;/div&gt;\n      &lt;!-- Product Caption Ends --&gt;\n      &lt;/div&gt;\n    &lt;!-- Product Module Ends --&gt;\n    &lt;/div&gt;\n  &lt;!-- Product Col Ends --&gt;\n  {% endfor %}  \n  &lt;/div&gt;\n&lt;!-- Nested Row Ends --&gt;\n&lt;/div&gt;', '2020-01-21 22:00:49'),
(190, 0, 'mintleaf', 'common/menu', '{% if categories %}\n&lt;nav id=&quot;menu&quot; class=&quot;navbar&quot;&gt;\n  &lt;div class=&quot;navbar-header&quot;&gt;\n    &lt;a class=&quot;navbar-brand&quot; href=&quot;{{ home }}&quot;&gt;\n    {% if logo %}\n      &lt;img src=&quot;{{ logo }}&quot; title=&quot;{{ name }}&quot; alt=&quot;{{ name }}&quot; class=&quot;img-responsive&quot; /&gt;\n    {% else %}\n      &lt;!--{{ name }}--&gt;\n      \n    {% endif %}\n    &lt;/a&gt;\n    &lt;button type=&quot;button&quot; class=&quot;btn btn-navbar navbar-toggle rounded-0&quot; data-toggle=&quot;collapse&quot; data-target=&quot;.navbar-ex1-collapse&quot;&gt;&lt;i class=&quot;fa fa-bars&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n    &lt;span class=&quot;hidden visible-xs visible-sm pull-right&quot;&gt;{{ cart }}&lt;/span&gt;\n    &lt;span class=&quot;hidden visible-xs visible-sm pull-right&quot;&gt;{{ search }}&lt;/span&gt;\n  &lt;/div&gt;\n  &lt;div class=&quot;collapse navbar-collapse navbar-ex1-collapse&quot;&gt;\n    &lt;ul class=&quot;nav navbar-nav menu-links&quot;&gt;\n      {% for category in categories %}\n      {% if category.children %}\n      &lt;li class=&quot;dropdown&quot;&gt;&lt;a href=&quot;{{ category.href }}&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;{{ category.name }}&lt;/a&gt;\n        &lt;div class=&quot;dropdown-menu&quot;&gt;\n          &lt;div class=&quot;dropdown-inner&quot;&gt; {% for children in category.children|batch(category.children|length / category.column|round(1, \'ceil\')) %}\n            &lt;ul class=&quot;list-unstyled&quot;&gt;\n              {% for child in children %}\n              &lt;li&gt;&lt;a href=&quot;{{ child.href }}&quot;&gt;{{ child.name }}&lt;/a&gt;&lt;/li&gt;\n              {% endfor %}\n            &lt;/ul&gt;\n            {% endfor %}&lt;/div&gt;\n          &lt;a href=&quot;{{ category.href }}&quot; class=&quot;see-all&quot;&gt;{{ text_all }} {{ category.name }}&lt;/a&gt; &lt;/div&gt;\n      &lt;/li&gt;\n      {% else %}\n      &lt;li&gt;&lt;a href=&quot;{{ category.href }}&quot;&gt;{{ category.name }}&lt;/a&gt;&lt;/li&gt;\n      {% endif %}\n      {% endfor %}\n      &lt;li&gt;&lt;a href=&quot;index.php?route=product/details&quot; border=1&gt;Information&lt;/a&gt;&lt;/li&gt;\n    &lt;/ul&gt;\n    &lt;ul class=&quot;nav navbar-nav navbar-right hidden visible-lg visible-md&quot;&gt;\n      &lt;li&gt;{{ search }}&lt;/li&gt;\n      &lt;li&gt;{{ cart }}&lt;/li&gt;\n    &lt;/ul&gt;\n  &lt;/div&gt;\n&lt;/nav&gt;\n{% endif %} ', '2020-01-21 23:53:48'),
(174, 0, 'mintleaf', 'checkout/cart', '{{ header }}\n&lt;div id=&quot;checkout-cart&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  {% if attention %}\n  &lt;div class=&quot;alert alert-info&quot;&gt;&lt;i class=&quot;fa fa-info-circle&quot;&gt;&lt;/i&gt; {{ attention }}\n    &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if success %}\n  &lt;div class=&quot;alert alert-success alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-check-circle&quot;&gt;&lt;/i&gt; {{ success }}\n    &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if error_warning %}\n  &lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-exclamation-circle&quot;&gt;&lt;/i&gt; {{ error_warning }}\n    &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;\n  &lt;/div&gt;\n  {% endif %}\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h4 class=&quot;page-heading-1 alt&quot;&gt;Items In Cart&lt;/h4&gt;\n      &lt;form action=&quot;{{ action }}&quot; method=&quot;post&quot; enctype=&quot;multipart/form-data&quot;&gt;\n        &lt;div class=&quot;table-responsive&quot;&gt;\n          &lt;table class=&quot;table table-striped table-bordered&quot;&gt;\n            &lt;thead&gt;\n              &lt;tr&gt;\n                &lt;th class=&quot;text-center&quot;&gt;{{ column_image }}&lt;/th&gt;\n                &lt;th class=&quot;text-left&quot;&gt;{{ column_name }}&lt;/th&gt;\n                &lt;th class=&quot;text-left&quot;&gt;{{ column_model }}&lt;/th&gt;\n                &lt;th class=&quot;text-left&quot;&gt;{{ column_quantity }}&lt;/th&gt;\n                &lt;th class=&quot;text-right&quot;&gt;{{ column_price }}&lt;/th&gt;\n                &lt;th class=&quot;text-right&quot;&gt;{{ column_total }}&lt;/th&gt;\n              &lt;/tr&gt;\n            &lt;/thead&gt;\n            &lt;tbody&gt;\n            \n            {% for product in products %}\n            &lt;tr&gt;\n              &lt;td class=&quot;text-center&quot;&gt;{% if product.thumb %} &lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive img-center&quot; /&gt;&lt;/a&gt; {% endif %}&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt; {% if not product.stock %} &lt;span class=&quot;text-danger&quot;&gt;***&lt;/span&gt; {% endif %}\n                {% if product.option %}\n                {% for option in product.option %} &lt;br /&gt;\n                &lt;small&gt;{{ option.name }}: {{ option.value }}&lt;/small&gt; {% endfor %}\n                {% endif %}\n                {% if product.reward %} &lt;br /&gt;\n                &lt;small&gt;{{ product.reward }}&lt;/small&gt; {% endif %}\n                {% if product.recurring %} &lt;br /&gt;\n                &lt;span class=&quot;label label-info&quot;&gt;{{ text_recurring_item }}&lt;/span&gt; &lt;small&gt;{{ product.recurring }}&lt;/small&gt; {% endif %}&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;{{ product.model }}&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;&lt;div class=&quot;input-group btn-block&quot; style=&quot;max-width: 200px;&quot;&gt;\n                  &lt;input type=&quot;text&quot; name=&quot;quantity[{{ product.cart_id }}]&quot; value=&quot;{{ product.quantity }}&quot; size=&quot;1&quot; class=&quot;form-control&quot; /&gt;\n                  &lt;span class=&quot;input-group-btn&quot;&gt;\n                  &lt;button type=&quot;submit&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_update }}&quot; class=&quot;btn btn-main alt&quot;&gt;&lt;i class=&quot;fa fa-refresh&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                  &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_remove }}&quot; class=&quot;btn btn-main danger&quot; onclick=&quot;cart.remove(\'{{ product.cart_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-times-circle&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                  &lt;/span&gt;&lt;/div&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-right&quot;&gt;{{ product.price }}&lt;/td&gt;\n              &lt;td class=&quot;text-right&quot;&gt;{{ product.total }}&lt;/td&gt;\n            &lt;/tr&gt;\n            {% endfor %}\n            {% for voucher in vouchers %}\n            &lt;tr&gt;\n              &lt;td&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;{{ voucher.description }}&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;&lt;div class=&quot;input-group btn-block&quot; style=&quot;max-width: 200px;&quot;&gt;\n                  &lt;input type=&quot;text&quot; name=&quot;&quot; value=&quot;1&quot; size=&quot;1&quot; disabled=&quot;disabled&quot; class=&quot;form-control&quot; /&gt;\n                  &lt;span class=&quot;input-group-btn&quot;&gt;\n                  &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_remove }}&quot; class=&quot;btn btn-danger&quot; onclick=&quot;voucher.remove(\'{{ voucher.key }}\');&quot;&gt;&lt;i class=&quot;fa fa-times-circle&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                  &lt;/span&gt;&lt;/div&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-right&quot;&gt;{{ voucher.amount }}&lt;/td&gt;\n              &lt;td class=&quot;text-right&quot;&gt;{{ voucher.amount }}&lt;/td&gt;\n            &lt;/tr&gt;\n            {% endfor %}\n              &lt;/tbody&gt;\n          &lt;/table&gt;\n        &lt;/div&gt;\n      &lt;/form&gt;\n      {% if modules %}\n      &lt;h5 class=&quot;page-sub-heading-1&quot;&gt;{{ text_next }}&lt;/h5&gt;\n      &lt;hr&gt;\n      &lt;p&gt;{{ text_next_choice }}&lt;/p&gt;\n      &lt;div class=&quot;panel-group&quot; id=&quot;accordion&quot;&gt; {% for module in modules %}\n        {{ module }}\n        {% endfor %} &lt;/div&gt;\n      {% endif %} &lt;br /&gt;\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-sm-4 col-sm-offset-8&quot;&gt;\n          &lt;table class=&quot;table table-dark table-striped table-bordered&quot;&gt;\n            {% for total in totals %}\n            &lt;tr&gt;\n              &lt;td class=&quot;text-right&quot;&gt;&lt;strong&gt;{{ total.title }}:&lt;/strong&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-right&quot;&gt;{{ total.text }}&lt;/td&gt;\n            &lt;/tr&gt;\n            {% endfor %}\n          &lt;/table&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;buttons clearfix&quot;&gt;\n        &lt;div class=&quot;pull-left&quot;&gt;&lt;a href=&quot;{{ continue }}&quot; class=&quot;btn btn-outline-1&quot;&gt;{{ button_shopping }}&lt;/a&gt;&lt;/div&gt;\n        &lt;div class=&quot;pull-right&quot;&gt;&lt;a href=&quot;{{ checkout }}&quot; class=&quot;btn btn-main&quot;&gt;{{ button_checkout }}&lt;/a&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }} ', '2020-01-21 23:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
CREATE TABLE IF NOT EXISTS `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '89e86f0db893cd84cf39080d0f3498bc298e71b2', 'v23dI4SBE', 'John', 'Doe', 'admin@gmail.com', '', '', '::1', 1, '2019-10-25 21:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"error\",\"event\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\",\"extension\\/analytics\",\"extension\\/analytics\\/google\",\"extension\\/captcha\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bannergrid\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/d_quickcheckout\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/mstoreapp\",\"extension\\/module\\/mstoreapp_blocks\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/module\\/topcategory\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\",\"extension\\/theme\\/default\",\"extension\\/theme\\/mintleaf\",\"extension\\/total\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"farmer\",\"farmer\\/approval\",\"localisation\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\",\"setting\\/setting\",\"setting\\/store\",\"startup\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/analytics\\/google\",\"analytics\\/google\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/pp_standard\",\"extension\\/module\\/pp_button\",\"extension\\/payment\\/pp_express\",\"extension\\/module\\/latest\",\"extension\\/payment\\/payu\",\"extension\\/total\\/voucher\",\"extension\\/total\\/tax\",\"extension\\/total\\/shipping\"],\"modify\":[\"catalog\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"error\",\"event\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\",\"extension\\/analytics\",\"extension\\/analytics\\/google\",\"extension\\/captcha\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bannergrid\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/d_quickcheckout\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/mstoreapp\",\"extension\\/module\\/mstoreapp_blocks\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/module\\/topcategory\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\",\"extension\\/theme\\/default\",\"extension\\/theme\\/mintleaf\",\"extension\\/total\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"farmer\",\"farmer\\/approval\",\"localisation\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\",\"setting\\/setting\",\"setting\\/store\",\"startup\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/analytics\\/google\",\"analytics\\/google\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/pp_standard\",\"extension\\/module\\/pp_button\",\"extension\\/payment\\/pp_express\",\"extension\\/module\\/latest\",\"extension\\/payment\\/payu\",\"extension\\/total\\/voucher\",\"extension\\/total\\/tax\",\"extension\\/total\\/shipping\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4239 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 0),
(2, 1, 'Badghis', 'BDG', 0),
(3, 1, 'Baghlan', 'BGL', 0),
(4, 1, 'Balkh', 'BAL', 0),
(5, 1, 'Bamian', 'BAM', 0),
(6, 1, 'Farah', 'FRA', 0),
(7, 1, 'Faryab', 'FYB', 0),
(8, 1, 'Ghazni', 'GHA', 0),
(9, 1, 'Ghowr', 'GHO', 0),
(10, 1, 'Helmand', 'HEL', 0),
(11, 1, 'Herat', 'HER', 0),
(12, 1, 'Jowzjan', 'JOW', 0),
(13, 1, 'Kabul', 'KAB', 0),
(14, 1, 'Kandahar', 'KAN', 0),
(15, 1, 'Kapisa', 'KAP', 0),
(16, 1, 'Khost', 'KHO', 0),
(17, 1, 'Konar', 'KNR', 0),
(18, 1, 'Kondoz', 'KDZ', 0),
(19, 1, 'Laghman', 'LAG', 0),
(20, 1, 'Lowgar', 'LOW', 0),
(21, 1, 'Nangrahar', 'NAN', 0),
(22, 1, 'Nimruz', 'NIM', 0),
(23, 1, 'Nurestan', 'NUR', 0),
(24, 1, 'Oruzgan', 'ORU', 0),
(25, 1, 'Paktia', 'PIA', 0),
(26, 1, 'Paktika', 'PKA', 0),
(27, 1, 'Parwan', 'PAR', 0),
(28, 1, 'Samangan', 'SAM', 0),
(29, 1, 'Sar-e Pol', 'SAR', 0),
(30, 1, 'Takhar', 'TAK', 0),
(31, 1, 'Wardak', 'WAR', 0),
(32, 1, 'Zabol', 'ZAB', 0),
(33, 2, 'Berat', 'BR', 0),
(34, 2, 'Bulqize', 'BU', 0),
(35, 2, 'Delvine', 'DL', 0),
(36, 2, 'Devoll', 'DV', 0),
(37, 2, 'Diber', 'DI', 0),
(38, 2, 'Durres', 'DR', 0),
(39, 2, 'Elbasan', 'EL', 0),
(40, 2, 'Kolonje', 'ER', 0),
(41, 2, 'Fier', 'FR', 0),
(42, 2, 'Gjirokaster', 'GJ', 0),
(43, 2, 'Gramsh', 'GR', 0),
(44, 2, 'Has', 'HA', 0),
(45, 2, 'Kavaje', 'KA', 0),
(46, 2, 'Kurbin', 'KB', 0),
(47, 2, 'Kucove', 'KC', 0),
(48, 2, 'Korce', 'KO', 0),
(49, 2, 'Kruje', 'KR', 0),
(50, 2, 'Kukes', 'KU', 0),
(51, 2, 'Librazhd', 'LB', 0),
(52, 2, 'Lezhe', 'LE', 0),
(53, 2, 'Lushnje', 'LU', 0),
(54, 2, 'Malesi e Madhe', 'MM', 0),
(55, 2, 'Mallakaster', 'MK', 0),
(56, 2, 'Mat', 'MT', 0),
(57, 2, 'Mirdite', 'MR', 0),
(58, 2, 'Peqin', 'PQ', 0),
(59, 2, 'Permet', 'PR', 0),
(60, 2, 'Pogradec', 'PG', 0),
(61, 2, 'Puke', 'PU', 0),
(62, 2, 'Shkoder', 'SH', 0),
(63, 2, 'Skrapar', 'SK', 0),
(64, 2, 'Sarande', 'SR', 0),
(65, 2, 'Tepelene', 'TE', 0),
(66, 2, 'Tropoje', 'TP', 0),
(67, 2, 'Tirane', 'TR', 0),
(68, 2, 'Vlore', 'VL', 0),
(69, 3, 'Adrar', 'ADR', 0),
(70, 3, 'Ain Defla', 'ADE', 0),
(71, 3, 'Ain Temouchent', 'ATE', 0),
(72, 3, 'Alger', 'ALG', 0),
(73, 3, 'Annaba', 'ANN', 0),
(74, 3, 'Batna', 'BAT', 0),
(75, 3, 'Bechar', 'BEC', 0),
(76, 3, 'Bejaia', 'BEJ', 0),
(77, 3, 'Biskra', 'BIS', 0),
(78, 3, 'Blida', 'BLI', 0),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 0),
(80, 3, 'Bouira', 'BOA', 0),
(81, 3, 'Boumerdes', 'BMD', 0),
(82, 3, 'Chlef', 'CHL', 0),
(83, 3, 'Constantine', 'CON', 0),
(84, 3, 'Djelfa', 'DJE', 0),
(85, 3, 'El Bayadh', 'EBA', 0),
(86, 3, 'El Oued', 'EOU', 0),
(87, 3, 'El Tarf', 'ETA', 0),
(88, 3, 'Ghardaia', 'GHA', 0),
(89, 3, 'Guelma', 'GUE', 0),
(90, 3, 'Illizi', 'ILL', 0),
(91, 3, 'Jijel', 'JIJ', 0),
(92, 3, 'Khenchela', 'KHE', 0),
(93, 3, 'Laghouat', 'LAG', 0),
(94, 3, 'Muaskar', 'MUA', 0),
(95, 3, 'Medea', 'MED', 0),
(96, 3, 'Mila', 'MIL', 0),
(97, 3, 'Mostaganem', 'MOS', 0),
(98, 3, 'M\'Sila', 'MSI', 0),
(99, 3, 'Naama', 'NAA', 0),
(100, 3, 'Oran', 'ORA', 0),
(101, 3, 'Ouargla', 'OUA', 0),
(102, 3, 'Oum el-Bouaghi', 'OEB', 0),
(103, 3, 'Relizane', 'REL', 0),
(104, 3, 'Saida', 'SAI', 0),
(105, 3, 'Setif', 'SET', 0),
(106, 3, 'Sidi Bel Abbes', 'SBA', 0),
(107, 3, 'Skikda', 'SKI', 0),
(108, 3, 'Souk Ahras', 'SAH', 0),
(109, 3, 'Tamanghasset', 'TAM', 0),
(110, 3, 'Tebessa', 'TEB', 0),
(111, 3, 'Tiaret', 'TIA', 0),
(112, 3, 'Tindouf', 'TIN', 0),
(113, 3, 'Tipaza', 'TIP', 0),
(114, 3, 'Tissemsilt', 'TIS', 0),
(115, 3, 'Tizi Ouzou', 'TOU', 0),
(116, 3, 'Tlemcen', 'TLE', 0),
(117, 4, 'Eastern', 'E', 0),
(118, 4, 'Manu\'a', 'M', 0),
(119, 4, 'Rose Island', 'R', 0),
(120, 4, 'Swains Island', 'S', 0),
(121, 4, 'Western', 'W', 0),
(122, 5, 'Andorra la Vella', 'ALV', 0),
(123, 5, 'Canillo', 'CAN', 0),
(124, 5, 'Encamp', 'ENC', 0),
(125, 5, 'Escaldes-Engordany', 'ESE', 0),
(126, 5, 'La Massana', 'LMA', 0),
(127, 5, 'Ordino', 'ORD', 0),
(128, 5, 'Sant Julia de Loria', 'SJL', 0),
(129, 6, 'Bengo', 'BGO', 0),
(130, 6, 'Benguela', 'BGU', 0),
(131, 6, 'Bie', 'BIE', 0),
(132, 6, 'Cabinda', 'CAB', 0),
(133, 6, 'Cuando-Cubango', 'CCU', 0),
(134, 6, 'Cuanza Norte', 'CNO', 0),
(135, 6, 'Cuanza Sul', 'CUS', 0),
(136, 6, 'Cunene', 'CNN', 0),
(137, 6, 'Huambo', 'HUA', 0),
(138, 6, 'Huila', 'HUI', 0),
(139, 6, 'Luanda', 'LUA', 0),
(140, 6, 'Lunda Norte', 'LNO', 0),
(141, 6, 'Lunda Sul', 'LSU', 0),
(142, 6, 'Malange', 'MAL', 0),
(143, 6, 'Moxico', 'MOX', 0),
(144, 6, 'Namibe', 'NAM', 0),
(145, 6, 'Uige', 'UIG', 0),
(146, 6, 'Zaire', 'ZAI', 0),
(147, 9, 'Saint George', 'ASG', 0),
(148, 9, 'Saint John', 'ASJ', 0),
(149, 9, 'Saint Mary', 'ASM', 0),
(150, 9, 'Saint Paul', 'ASL', 0),
(151, 9, 'Saint Peter', 'ASR', 0),
(152, 9, 'Saint Philip', 'ASH', 0),
(153, 9, 'Barbuda', 'BAR', 0),
(154, 9, 'Redonda', 'RED', 0),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 0),
(156, 10, 'Buenos Aires', 'BA', 0),
(157, 10, 'Catamarca', 'CA', 0),
(158, 10, 'Chaco', 'CH', 0),
(159, 10, 'Chubut', 'CU', 0),
(160, 10, 'Cordoba', 'CO', 0),
(161, 10, 'Corrientes', 'CR', 0),
(162, 10, 'Distrito Federal', 'DF', 0),
(163, 10, 'Entre Rios', 'ER', 0),
(164, 10, 'Formosa', 'FO', 0),
(165, 10, 'Jujuy', 'JU', 0),
(166, 10, 'La Pampa', 'LP', 0),
(167, 10, 'La Rioja', 'LR', 0),
(168, 10, 'Mendoza', 'ME', 0),
(169, 10, 'Misiones', 'MI', 0),
(170, 10, 'Neuquen', 'NE', 0),
(171, 10, 'Rio Negro', 'RN', 0),
(172, 10, 'Salta', 'SA', 0),
(173, 10, 'San Juan', 'SJ', 0),
(174, 10, 'San Luis', 'SL', 0),
(175, 10, 'Santa Cruz', 'SC', 0),
(176, 10, 'Santa Fe', 'SF', 0),
(177, 10, 'Santiago del Estero', 'SD', 0),
(178, 10, 'Tierra del Fuego', 'TF', 0),
(179, 10, 'Tucuman', 'TU', 0),
(180, 11, 'Aragatsotn', 'AGT', 0),
(181, 11, 'Ararat', 'ARR', 0),
(182, 11, 'Armavir', 'ARM', 0),
(183, 11, 'Geghark\'unik\'', 'GEG', 0),
(184, 11, 'Kotayk\'', 'KOT', 0),
(185, 11, 'Lorri', 'LOR', 0),
(186, 11, 'Shirak', 'SHI', 0),
(187, 11, 'Syunik\'', 'SYU', 0),
(188, 11, 'Tavush', 'TAV', 0),
(189, 11, 'Vayots\' Dzor', 'VAY', 0),
(190, 11, 'Yerevan', 'YER', 0),
(191, 13, 'Australian Capital Territory', 'ACT', 0),
(192, 13, 'New South Wales', 'NSW', 0),
(193, 13, 'Northern Territory', 'NT', 0),
(194, 13, 'Queensland', 'QLD', 0),
(195, 13, 'South Australia', 'SA', 0),
(196, 13, 'Tasmania', 'TAS', 0),
(197, 13, 'Victoria', 'VIC', 0),
(198, 13, 'Western Australia', 'WA', 0),
(199, 14, 'Burgenland', 'BUR', 0),
(200, 14, 'Kärnten', 'KAR', 0),
(201, 14, 'Niederösterreich', 'NOS', 0),
(202, 14, 'Oberösterreich', 'OOS', 0),
(203, 14, 'Salzburg', 'SAL', 0),
(204, 14, 'Steiermark', 'STE', 0),
(205, 14, 'Tirol', 'TIR', 0),
(206, 14, 'Vorarlberg', 'VOR', 0),
(207, 14, 'Wien', 'WIE', 0),
(208, 15, 'Ali Bayramli', 'AB', 0),
(209, 15, 'Abseron', 'ABS', 0),
(210, 15, 'AgcabAdi', 'AGC', 0),
(211, 15, 'Agdam', 'AGM', 0),
(212, 15, 'Agdas', 'AGS', 0),
(213, 15, 'Agstafa', 'AGA', 0),
(214, 15, 'Agsu', 'AGU', 0),
(215, 15, 'Astara', 'AST', 0),
(216, 15, 'Baki', 'BA', 0),
(217, 15, 'BabAk', 'BAB', 0),
(218, 15, 'BalakAn', 'BAL', 0),
(219, 15, 'BArdA', 'BAR', 0),
(220, 15, 'Beylaqan', 'BEY', 0),
(221, 15, 'Bilasuvar', 'BIL', 0),
(222, 15, 'Cabrayil', 'CAB', 0),
(223, 15, 'Calilabab', 'CAL', 0),
(224, 15, 'Culfa', 'CUL', 0),
(225, 15, 'Daskasan', 'DAS', 0),
(226, 15, 'Davaci', 'DAV', 0),
(227, 15, 'Fuzuli', 'FUZ', 0),
(228, 15, 'Ganca', 'GA', 0),
(229, 15, 'Gadabay', 'GAD', 0),
(230, 15, 'Goranboy', 'GOR', 0),
(231, 15, 'Goycay', 'GOY', 0),
(232, 15, 'Haciqabul', 'HAC', 0),
(233, 15, 'Imisli', 'IMI', 0),
(234, 15, 'Ismayilli', 'ISM', 0),
(235, 15, 'Kalbacar', 'KAL', 0),
(236, 15, 'Kurdamir', 'KUR', 0),
(237, 15, 'Lankaran', 'LA', 0),
(238, 15, 'Lacin', 'LAC', 0),
(239, 15, 'Lankaran', 'LAN', 0),
(240, 15, 'Lerik', 'LER', 0),
(241, 15, 'Masalli', 'MAS', 0),
(242, 15, 'Mingacevir', 'MI', 0),
(243, 15, 'Naftalan', 'NA', 0),
(244, 15, 'Neftcala', 'NEF', 0),
(245, 15, 'Oguz', 'OGU', 0),
(246, 15, 'Ordubad', 'ORD', 0),
(247, 15, 'Qabala', 'QAB', 0),
(248, 15, 'Qax', 'QAX', 0),
(249, 15, 'Qazax', 'QAZ', 0),
(250, 15, 'Qobustan', 'QOB', 0),
(251, 15, 'Quba', 'QBA', 0),
(252, 15, 'Qubadli', 'QBI', 0),
(253, 15, 'Qusar', 'QUS', 0),
(254, 15, 'Saki', 'SA', 0),
(255, 15, 'Saatli', 'SAT', 0),
(256, 15, 'Sabirabad', 'SAB', 0),
(257, 15, 'Sadarak', 'SAD', 0),
(258, 15, 'Sahbuz', 'SAH', 0),
(259, 15, 'Saki', 'SAK', 0),
(260, 15, 'Salyan', 'SAL', 0),
(261, 15, 'Sumqayit', 'SM', 0),
(262, 15, 'Samaxi', 'SMI', 0),
(263, 15, 'Samkir', 'SKR', 0),
(264, 15, 'Samux', 'SMX', 0),
(265, 15, 'Sarur', 'SAR', 0),
(266, 15, 'Siyazan', 'SIY', 0),
(267, 15, 'Susa', 'SS', 0),
(268, 15, 'Susa', 'SUS', 0),
(269, 15, 'Tartar', 'TAR', 0),
(270, 15, 'Tovuz', 'TOV', 0),
(271, 15, 'Ucar', 'UCA', 0),
(272, 15, 'Xankandi', 'XA', 0),
(273, 15, 'Xacmaz', 'XAC', 0),
(274, 15, 'Xanlar', 'XAN', 0),
(275, 15, 'Xizi', 'XIZ', 0),
(276, 15, 'Xocali', 'XCI', 0),
(277, 15, 'Xocavand', 'XVD', 0),
(278, 15, 'Yardimli', 'YAR', 0),
(279, 15, 'Yevlax', 'YEV', 0),
(280, 15, 'Zangilan', 'ZAN', 0),
(281, 15, 'Zaqatala', 'ZAQ', 0),
(282, 15, 'Zardab', 'ZAR', 0),
(283, 15, 'Naxcivan', 'NX', 0),
(284, 16, 'Acklins', 'ACK', 0),
(285, 16, 'Berry Islands', 'BER', 0),
(286, 16, 'Bimini', 'BIM', 0),
(287, 16, 'Black Point', 'BLK', 0),
(288, 16, 'Cat Island', 'CAT', 0),
(289, 16, 'Central Abaco', 'CAB', 0),
(290, 16, 'Central Andros', 'CAN', 0),
(291, 16, 'Central Eleuthera', 'CEL', 0),
(292, 16, 'City of Freeport', 'FRE', 0),
(293, 16, 'Crooked Island', 'CRO', 0),
(294, 16, 'East Grand Bahama', 'EGB', 0),
(295, 16, 'Exuma', 'EXU', 0),
(296, 16, 'Grand Cay', 'GRD', 0),
(297, 16, 'Harbour Island', 'HAR', 0),
(298, 16, 'Hope Town', 'HOP', 0),
(299, 16, 'Inagua', 'INA', 0),
(300, 16, 'Long Island', 'LNG', 0),
(301, 16, 'Mangrove Cay', 'MAN', 0),
(302, 16, 'Mayaguana', 'MAY', 0),
(303, 16, 'Moore\'s Island', 'MOO', 0),
(304, 16, 'North Abaco', 'NAB', 0),
(305, 16, 'North Andros', 'NAN', 0),
(306, 16, 'North Eleuthera', 'NEL', 0),
(307, 16, 'Ragged Island', 'RAG', 0),
(308, 16, 'Rum Cay', 'RUM', 0),
(309, 16, 'San Salvador', 'SAL', 0),
(310, 16, 'South Abaco', 'SAB', 0),
(311, 16, 'South Andros', 'SAN', 0),
(312, 16, 'South Eleuthera', 'SEL', 0),
(313, 16, 'Spanish Wells', 'SWE', 0),
(314, 16, 'West Grand Bahama', 'WGB', 0),
(315, 17, 'Capital', 'CAP', 0),
(316, 17, 'Central', 'CEN', 0),
(317, 17, 'Muharraq', 'MUH', 0),
(318, 17, 'Northern', 'NOR', 0),
(319, 17, 'Southern', 'SOU', 0),
(320, 18, 'Barisal', 'BAR', 0),
(321, 18, 'Chittagong', 'CHI', 0),
(322, 18, 'Dhaka', 'DHA', 0),
(323, 18, 'Khulna', 'KHU', 0),
(324, 18, 'Rajshahi', 'RAJ', 0),
(325, 18, 'Sylhet', 'SYL', 0),
(326, 19, 'Christ Church', 'CC', 0),
(327, 19, 'Saint Andrew', 'AND', 0),
(328, 19, 'Saint George', 'GEO', 0),
(329, 19, 'Saint James', 'JAM', 0),
(330, 19, 'Saint John', 'JOH', 0),
(331, 19, 'Saint Joseph', 'JOS', 0),
(332, 19, 'Saint Lucy', 'LUC', 0),
(333, 19, 'Saint Michael', 'MIC', 0),
(334, 19, 'Saint Peter', 'PET', 0),
(335, 19, 'Saint Philip', 'PHI', 0),
(336, 19, 'Saint Thomas', 'THO', 0),
(337, 20, 'Brestskaya (Brest)', 'BR', 0),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 0),
(339, 20, 'Horad Minsk', 'HM', 0),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 0),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 0),
(342, 20, 'Minskaya', 'MI', 0),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 0),
(344, 21, 'Antwerpen', 'VAN', 0),
(345, 21, 'Brabant Wallon', 'WBR', 0),
(346, 21, 'Hainaut', 'WHT', 0),
(347, 21, 'Liège', 'WLG', 0),
(348, 21, 'Limburg', 'VLI', 0),
(349, 21, 'Luxembourg', 'WLX', 0),
(350, 21, 'Namur', 'WNA', 0),
(351, 21, 'Oost-Vlaanderen', 'VOV', 0),
(352, 21, 'Vlaams Brabant', 'VBR', 0),
(353, 21, 'West-Vlaanderen', 'VWV', 0),
(354, 22, 'Belize', 'BZ', 0),
(355, 22, 'Cayo', 'CY', 0),
(356, 22, 'Corozal', 'CR', 0),
(357, 22, 'Orange Walk', 'OW', 0),
(358, 22, 'Stann Creek', 'SC', 0),
(359, 22, 'Toledo', 'TO', 0),
(360, 23, 'Alibori', 'AL', 0),
(361, 23, 'Atakora', 'AK', 0),
(362, 23, 'Atlantique', 'AQ', 0),
(363, 23, 'Borgou', 'BO', 0),
(364, 23, 'Collines', 'CO', 0),
(365, 23, 'Donga', 'DO', 0),
(366, 23, 'Kouffo', 'KO', 0),
(367, 23, 'Littoral', 'LI', 0),
(368, 23, 'Mono', 'MO', 0),
(369, 23, 'Oueme', 'OU', 0),
(370, 23, 'Plateau', 'PL', 0),
(371, 23, 'Zou', 'ZO', 0),
(372, 24, 'Devonshire', 'DS', 0),
(373, 24, 'Hamilton City', 'HC', 0),
(374, 24, 'Hamilton', 'HA', 0),
(375, 24, 'Paget', 'PG', 0),
(376, 24, 'Pembroke', 'PB', 0),
(377, 24, 'Saint George City', 'GC', 0),
(378, 24, 'Saint George\'s', 'SG', 0),
(379, 24, 'Sandys', 'SA', 0),
(380, 24, 'Smith\'s', 'SM', 0),
(381, 24, 'Southampton', 'SH', 0),
(382, 24, 'Warwick', 'WA', 0),
(383, 25, 'Bumthang', 'BUM', 0),
(384, 25, 'Chukha', 'CHU', 0),
(385, 25, 'Dagana', 'DAG', 0),
(386, 25, 'Gasa', 'GAS', 0),
(387, 25, 'Haa', 'HAA', 0),
(388, 25, 'Lhuntse', 'LHU', 0),
(389, 25, 'Mongar', 'MON', 0),
(390, 25, 'Paro', 'PAR', 0),
(391, 25, 'Pemagatshel', 'PEM', 0),
(392, 25, 'Punakha', 'PUN', 0),
(393, 25, 'Samdrup Jongkhar', 'SJO', 0),
(394, 25, 'Samtse', 'SAT', 0),
(395, 25, 'Sarpang', 'SAR', 0),
(396, 25, 'Thimphu', 'THI', 0),
(397, 25, 'Trashigang', 'TRG', 0),
(398, 25, 'Trashiyangste', 'TRY', 0),
(399, 25, 'Trongsa', 'TRO', 0),
(400, 25, 'Tsirang', 'TSI', 0),
(401, 25, 'Wangdue Phodrang', 'WPH', 0),
(402, 25, 'Zhemgang', 'ZHE', 0),
(403, 26, 'Beni', 'BEN', 0),
(404, 26, 'Chuquisaca', 'CHU', 0),
(405, 26, 'Cochabamba', 'COC', 0),
(406, 26, 'La Paz', 'LPZ', 0),
(407, 26, 'Oruro', 'ORU', 0),
(408, 26, 'Pando', 'PAN', 0),
(409, 26, 'Potosi', 'POT', 0),
(410, 26, 'Santa Cruz', 'SCZ', 0),
(411, 26, 'Tarija', 'TAR', 0),
(412, 27, 'Brcko district', 'BRO', 0),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 0),
(414, 27, 'Posavski Kanton', 'FPO', 0),
(415, 27, 'Tuzlanski Kanton', 'FTU', 0),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 0),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 0),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 0),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 0),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 0),
(421, 27, 'Kanton Sarajevo', 'FSA', 0),
(422, 27, 'Zapadnobosanska', 'FZA', 0),
(423, 27, 'Banja Luka', 'SBL', 0),
(424, 27, 'Doboj', 'SDO', 0),
(425, 27, 'Bijeljina', 'SBI', 0),
(426, 27, 'Vlasenica', 'SVL', 0),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 0),
(428, 27, 'Foca', 'SFO', 0),
(429, 27, 'Trebinje', 'STR', 0),
(430, 28, 'Central', 'CE', 0),
(431, 28, 'Ghanzi', 'GH', 0),
(432, 28, 'Kgalagadi', 'KD', 0),
(433, 28, 'Kgatleng', 'KT', 0),
(434, 28, 'Kweneng', 'KW', 0),
(435, 28, 'Ngamiland', 'NG', 0),
(436, 28, 'North East', 'NE', 0),
(437, 28, 'North West', 'NW', 0),
(438, 28, 'South East', 'SE', 0),
(439, 28, 'Southern', 'SO', 0),
(440, 30, 'Acre', 'AC', 0),
(441, 30, 'Alagoas', 'AL', 0),
(442, 30, 'Amapá', 'AP', 0),
(443, 30, 'Amazonas', 'AM', 0),
(444, 30, 'Bahia', 'BA', 0),
(445, 30, 'Ceará', 'CE', 0),
(446, 30, 'Distrito Federal', 'DF', 0),
(447, 30, 'Espírito Santo', 'ES', 0),
(448, 30, 'Goiás', 'GO', 0),
(449, 30, 'Maranhão', 'MA', 0),
(450, 30, 'Mato Grosso', 'MT', 0),
(451, 30, 'Mato Grosso do Sul', 'MS', 0),
(452, 30, 'Minas Gerais', 'MG', 0),
(453, 30, 'Pará', 'PA', 0),
(454, 30, 'Paraíba', 'PB', 0),
(455, 30, 'Paraná', 'PR', 0),
(456, 30, 'Pernambuco', 'PE', 0),
(457, 30, 'Piauí', 'PI', 0),
(458, 30, 'Rio de Janeiro', 'RJ', 0),
(459, 30, 'Rio Grande do Norte', 'RN', 0),
(460, 30, 'Rio Grande do Sul', 'RS', 0),
(461, 30, 'Rondônia', 'RO', 0),
(462, 30, 'Roraima', 'RR', 0),
(463, 30, 'Santa Catarina', 'SC', 0),
(464, 30, 'São Paulo', 'SP', 0),
(465, 30, 'Sergipe', 'SE', 0),
(466, 30, 'Tocantins', 'TO', 0),
(467, 31, 'Peros Banhos', 'PB', 0),
(468, 31, 'Salomon Islands', 'SI', 0),
(469, 31, 'Nelsons Island', 'NI', 0),
(470, 31, 'Three Brothers', 'TB', 0),
(471, 31, 'Eagle Islands', 'EA', 0),
(472, 31, 'Danger Island', 'DI', 0),
(473, 31, 'Egmont Islands', 'EG', 0),
(474, 31, 'Diego Garcia', 'DG', 0),
(475, 32, 'Belait', 'BEL', 0),
(476, 32, 'Brunei and Muara', 'BRM', 0),
(477, 32, 'Temburong', 'TEM', 0),
(478, 32, 'Tutong', 'TUT', 0),
(479, 33, 'Blagoevgrad', '', 0),
(480, 33, 'Burgas', '', 0),
(481, 33, 'Dobrich', '', 0),
(482, 33, 'Gabrovo', '', 0),
(483, 33, 'Haskovo', '', 0),
(484, 33, 'Kardjali', '', 0),
(485, 33, 'Kyustendil', '', 0),
(486, 33, 'Lovech', '', 0),
(487, 33, 'Montana', '', 0),
(488, 33, 'Pazardjik', '', 0),
(489, 33, 'Pernik', '', 0),
(490, 33, 'Pleven', '', 0),
(491, 33, 'Plovdiv', '', 0),
(492, 33, 'Razgrad', '', 0),
(493, 33, 'Shumen', '', 0),
(494, 33, 'Silistra', '', 0),
(495, 33, 'Sliven', '', 0),
(496, 33, 'Smolyan', '', 0),
(497, 33, 'Sofia', '', 0),
(498, 33, 'Sofia - town', '', 0),
(499, 33, 'Stara Zagora', '', 0),
(500, 33, 'Targovishte', '', 0),
(501, 33, 'Varna', '', 0),
(502, 33, 'Veliko Tarnovo', '', 0),
(503, 33, 'Vidin', '', 0),
(504, 33, 'Vratza', '', 0),
(505, 33, 'Yambol', '', 0),
(506, 34, 'Bale', 'BAL', 0),
(507, 34, 'Bam', 'BAM', 0),
(508, 34, 'Banwa', 'BAN', 0),
(509, 34, 'Bazega', 'BAZ', 0),
(510, 34, 'Bougouriba', 'BOR', 0),
(511, 34, 'Boulgou', 'BLG', 0),
(512, 34, 'Boulkiemde', 'BOK', 0),
(513, 34, 'Comoe', 'COM', 0),
(514, 34, 'Ganzourgou', 'GAN', 0),
(515, 34, 'Gnagna', 'GNA', 0),
(516, 34, 'Gourma', 'GOU', 0),
(517, 34, 'Houet', 'HOU', 0),
(518, 34, 'Ioba', 'IOA', 0),
(519, 34, 'Kadiogo', 'KAD', 0),
(520, 34, 'Kenedougou', 'KEN', 0),
(521, 34, 'Komondjari', 'KOD', 0),
(522, 34, 'Kompienga', 'KOP', 0),
(523, 34, 'Kossi', 'KOS', 0),
(524, 34, 'Koulpelogo', 'KOL', 0),
(525, 34, 'Kouritenga', 'KOT', 0),
(526, 34, 'Kourweogo', 'KOW', 0),
(527, 34, 'Leraba', 'LER', 0),
(528, 34, 'Loroum', 'LOR', 0),
(529, 34, 'Mouhoun', 'MOU', 0),
(530, 34, 'Nahouri', 'NAH', 0),
(531, 34, 'Namentenga', 'NAM', 0),
(532, 34, 'Nayala', 'NAY', 0),
(533, 34, 'Noumbiel', 'NOU', 0),
(534, 34, 'Oubritenga', 'OUB', 0),
(535, 34, 'Oudalan', 'OUD', 0),
(536, 34, 'Passore', 'PAS', 0),
(537, 34, 'Poni', 'PON', 0),
(538, 34, 'Sanguie', 'SAG', 0),
(539, 34, 'Sanmatenga', 'SAM', 0),
(540, 34, 'Seno', 'SEN', 0),
(541, 34, 'Sissili', 'SIS', 0),
(542, 34, 'Soum', 'SOM', 0),
(543, 34, 'Sourou', 'SOR', 0),
(544, 34, 'Tapoa', 'TAP', 0),
(545, 34, 'Tuy', 'TUY', 0),
(546, 34, 'Yagha', 'YAG', 0),
(547, 34, 'Yatenga', 'YAT', 0),
(548, 34, 'Ziro', 'ZIR', 0),
(549, 34, 'Zondoma', 'ZOD', 0),
(550, 34, 'Zoundweogo', 'ZOW', 0),
(551, 35, 'Bubanza', 'BB', 0),
(552, 35, 'Bujumbura', 'BJ', 0),
(553, 35, 'Bururi', 'BR', 0),
(554, 35, 'Cankuzo', 'CA', 0),
(555, 35, 'Cibitoke', 'CI', 0),
(556, 35, 'Gitega', 'GI', 0),
(557, 35, 'Karuzi', 'KR', 0),
(558, 35, 'Kayanza', 'KY', 0),
(559, 35, 'Kirundo', 'KI', 0),
(560, 35, 'Makamba', 'MA', 0),
(561, 35, 'Muramvya', 'MU', 0),
(562, 35, 'Muyinga', 'MY', 0),
(563, 35, 'Mwaro', 'MW', 0),
(564, 35, 'Ngozi', 'NG', 0),
(565, 35, 'Rutana', 'RT', 0),
(566, 35, 'Ruyigi', 'RY', 0),
(567, 36, 'Phnom Penh', 'PP', 0),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 0),
(569, 36, 'Pailin', 'PA', 0),
(570, 36, 'Keb', 'KB', 0),
(571, 36, 'Banteay Meanchey', 'BM', 0),
(572, 36, 'Battambang', 'BA', 0),
(573, 36, 'Kampong Cham', 'KM', 0),
(574, 36, 'Kampong Chhnang', 'KN', 0),
(575, 36, 'Kampong Speu', 'KU', 0),
(576, 36, 'Kampong Som', 'KO', 0),
(577, 36, 'Kampong Thom', 'KT', 0),
(578, 36, 'Kampot', 'KP', 0),
(579, 36, 'Kandal', 'KL', 0),
(580, 36, 'Kaoh Kong', 'KK', 0),
(581, 36, 'Kratie', 'KR', 0),
(582, 36, 'Mondul Kiri', 'MK', 0),
(583, 36, 'Oddar Meancheay', 'OM', 0),
(584, 36, 'Pursat', 'PU', 0),
(585, 36, 'Preah Vihear', 'PR', 0),
(586, 36, 'Prey Veng', 'PG', 0),
(587, 36, 'Ratanak Kiri', 'RK', 0),
(588, 36, 'Siemreap', 'SI', 0),
(589, 36, 'Stung Treng', 'ST', 0),
(590, 36, 'Svay Rieng', 'SR', 0),
(591, 36, 'Takeo', 'TK', 0),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 0),
(593, 37, 'Centre', 'CEN', 0),
(594, 37, 'East (Est)', 'EST', 0),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 0),
(596, 37, 'Littoral', 'LIT', 0),
(597, 37, 'North (Nord)', 'NOR', 0),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 0),
(599, 37, 'West (Ouest)', 'OUE', 0),
(600, 37, 'South (Sud)', 'SUD', 0),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 0),
(602, 38, 'Alberta', 'AB', 0),
(603, 38, 'British Columbia', 'BC', 0),
(604, 38, 'Manitoba', 'MB', 0),
(605, 38, 'New Brunswick', 'NB', 0),
(606, 38, 'Newfoundland and Labrador', 'NL', 0),
(607, 38, 'Northwest Territories', 'NT', 0),
(608, 38, 'Nova Scotia', 'NS', 0),
(609, 38, 'Nunavut', 'NU', 0),
(610, 38, 'Ontario', 'ON', 0),
(611, 38, 'Prince Edward Island', 'PE', 0),
(612, 38, 'Qu&eacute;bec', 'QC', 0),
(613, 38, 'Saskatchewan', 'SK', 0),
(614, 38, 'Yukon Territory', 'YT', 0),
(615, 39, 'Boa Vista', 'BV', 0),
(616, 39, 'Brava', 'BR', 0),
(617, 39, 'Calheta de Sao Miguel', 'CS', 0),
(618, 39, 'Maio', 'MA', 0),
(619, 39, 'Mosteiros', 'MO', 0),
(620, 39, 'Paul', 'PA', 0),
(621, 39, 'Porto Novo', 'PN', 0),
(622, 39, 'Praia', 'PR', 0),
(623, 39, 'Ribeira Grande', 'RG', 0),
(624, 39, 'Sal', 'SL', 0),
(625, 39, 'Santa Catarina', 'CA', 0),
(626, 39, 'Santa Cruz', 'CR', 0),
(627, 39, 'Sao Domingos', 'SD', 0),
(628, 39, 'Sao Filipe', 'SF', 0),
(629, 39, 'Sao Nicolau', 'SN', 0),
(630, 39, 'Sao Vicente', 'SV', 0),
(631, 39, 'Tarrafal', 'TA', 0),
(632, 40, 'Creek', 'CR', 0),
(633, 40, 'Eastern', 'EA', 0),
(634, 40, 'Midland', 'ML', 0),
(635, 40, 'South Town', 'ST', 0),
(636, 40, 'Spot Bay', 'SP', 0),
(637, 40, 'Stake Bay', 'SK', 0),
(638, 40, 'West End', 'WD', 0),
(639, 40, 'Western', 'WN', 0),
(640, 41, 'Bamingui-Bangoran', 'BBA', 0),
(641, 41, 'Basse-Kotto', 'BKO', 0),
(642, 41, 'Haute-Kotto', 'HKO', 0),
(643, 41, 'Haut-Mbomou', 'HMB', 0),
(644, 41, 'Kemo', 'KEM', 0),
(645, 41, 'Lobaye', 'LOB', 0),
(646, 41, 'Mambere-KadeÔ', 'MKD', 0),
(647, 41, 'Mbomou', 'MBO', 0),
(648, 41, 'Nana-Mambere', 'NMM', 0),
(649, 41, 'Ombella-M\'Poko', 'OMP', 0),
(650, 41, 'Ouaka', 'OUK', 0),
(651, 41, 'Ouham', 'OUH', 0),
(652, 41, 'Ouham-Pende', 'OPE', 0),
(653, 41, 'Vakaga', 'VAK', 0),
(654, 41, 'Nana-Grebizi', 'NGR', 0),
(655, 41, 'Sangha-Mbaere', 'SMB', 0),
(656, 41, 'Bangui', 'BAN', 0),
(657, 42, 'Batha', 'BA', 0),
(658, 42, 'Biltine', 'BI', 0),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 0),
(660, 42, 'Chari-Baguirmi', 'CB', 0),
(661, 42, 'Guera', 'GU', 0),
(662, 42, 'Kanem', 'KA', 0),
(663, 42, 'Lac', 'LA', 0),
(664, 42, 'Logone Occidental', 'LC', 0),
(665, 42, 'Logone Oriental', 'LR', 0),
(666, 42, 'Mayo-Kebbi', 'MK', 0),
(667, 42, 'Moyen-Chari', 'MC', 0),
(668, 42, 'Ouaddai', 'OU', 0),
(669, 42, 'Salamat', 'SA', 0),
(670, 42, 'Tandjile', 'TA', 0),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 0),
(672, 43, 'Antofagasta', 'AN', 0),
(673, 43, 'Araucania', 'AR', 0),
(674, 43, 'Atacama', 'AT', 0),
(675, 43, 'Bio-Bio', 'BI', 0),
(676, 43, 'Coquimbo', 'CO', 0),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 0),
(678, 43, 'Los Lagos', 'LL', 0),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 0),
(680, 43, 'Maule', 'ML', 0),
(681, 43, 'Region Metropolitana', 'RM', 0),
(682, 43, 'Tarapaca', 'TA', 0),
(683, 43, 'Valparaiso', 'VS', 0),
(684, 44, 'Anhui', 'AN', 0),
(685, 44, 'Beijing', 'BE', 0),
(686, 44, 'Chongqing', 'CH', 0),
(687, 44, 'Fujian', 'FU', 0),
(688, 44, 'Gansu', 'GA', 0),
(689, 44, 'Guangdong', 'GU', 0),
(690, 44, 'Guangxi', 'GX', 0),
(691, 44, 'Guizhou', 'GZ', 0),
(692, 44, 'Hainan', 'HA', 0),
(693, 44, 'Hebei', 'HB', 0),
(694, 44, 'Heilongjiang', 'HL', 0),
(695, 44, 'Henan', 'HE', 0),
(696, 44, 'Hong Kong', 'HK', 0),
(697, 44, 'Hubei', 'HU', 0),
(698, 44, 'Hunan', 'HN', 0),
(699, 44, 'Inner Mongolia', 'IM', 0),
(700, 44, 'Jiangsu', 'JI', 0),
(701, 44, 'Jiangxi', 'JX', 0),
(702, 44, 'Jilin', 'JL', 0),
(703, 44, 'Liaoning', 'LI', 0),
(704, 44, 'Macau', 'MA', 0),
(705, 44, 'Ningxia', 'NI', 0),
(706, 44, 'Shaanxi', 'SH', 0),
(707, 44, 'Shandong', 'SA', 0),
(708, 44, 'Shanghai', 'SG', 0),
(709, 44, 'Shanxi', 'SX', 0),
(710, 44, 'Sichuan', 'SI', 0),
(711, 44, 'Tianjin', 'TI', 0),
(712, 44, 'Xinjiang', 'XI', 0),
(713, 44, 'Yunnan', 'YU', 0),
(714, 44, 'Zhejiang', 'ZH', 0),
(715, 46, 'Direction Island', 'D', 0),
(716, 46, 'Home Island', 'H', 0),
(717, 46, 'Horsburgh Island', 'O', 0),
(718, 46, 'South Island', 'S', 0),
(719, 46, 'West Island', 'W', 0),
(720, 47, 'Amazonas', 'AMZ', 0),
(721, 47, 'Antioquia', 'ANT', 0),
(722, 47, 'Arauca', 'ARA', 0),
(723, 47, 'Atlantico', 'ATL', 0),
(724, 47, 'Bogota D.C.', 'BDC', 0),
(725, 47, 'Bolivar', 'BOL', 0),
(726, 47, 'Boyaca', 'BOY', 0),
(727, 47, 'Caldas', 'CAL', 0),
(728, 47, 'Caqueta', 'CAQ', 0),
(729, 47, 'Casanare', 'CAS', 0),
(730, 47, 'Cauca', 'CAU', 0),
(731, 47, 'Cesar', 'CES', 0),
(732, 47, 'Choco', 'CHO', 0),
(733, 47, 'Cordoba', 'COR', 0),
(734, 47, 'Cundinamarca', 'CAM', 0),
(735, 47, 'Guainia', 'GNA', 0),
(736, 47, 'Guajira', 'GJR', 0),
(737, 47, 'Guaviare', 'GVR', 0),
(738, 47, 'Huila', 'HUI', 0),
(739, 47, 'Magdalena', 'MAG', 0),
(740, 47, 'Meta', 'MET', 0),
(741, 47, 'Narino', 'NAR', 0),
(742, 47, 'Norte de Santander', 'NDS', 0),
(743, 47, 'Putumayo', 'PUT', 0),
(744, 47, 'Quindio', 'QUI', 0),
(745, 47, 'Risaralda', 'RIS', 0),
(746, 47, 'San Andres y Providencia', 'SAP', 0),
(747, 47, 'Santander', 'SAN', 0),
(748, 47, 'Sucre', 'SUC', 0),
(749, 47, 'Tolima', 'TOL', 0),
(750, 47, 'Valle del Cauca', 'VDC', 0),
(751, 47, 'Vaupes', 'VAU', 0),
(752, 47, 'Vichada', 'VIC', 0),
(753, 48, 'Grande Comore', 'G', 0),
(754, 48, 'Anjouan', 'A', 0),
(755, 48, 'Moheli', 'M', 0),
(756, 49, 'Bouenza', 'BO', 0),
(757, 49, 'Brazzaville', 'BR', 0),
(758, 49, 'Cuvette', 'CU', 0),
(759, 49, 'Cuvette-Ouest', 'CO', 0),
(760, 49, 'Kouilou', 'KO', 0),
(761, 49, 'Lekoumou', 'LE', 0),
(762, 49, 'Likouala', 'LI', 0),
(763, 49, 'Niari', 'NI', 0),
(764, 49, 'Plateaux', 'PL', 0),
(765, 49, 'Pool', 'PO', 0),
(766, 49, 'Sangha', 'SA', 0),
(767, 50, 'Pukapuka', 'PU', 0),
(768, 50, 'Rakahanga', 'RK', 0),
(769, 50, 'Manihiki', 'MK', 0),
(770, 50, 'Penrhyn', 'PE', 0),
(771, 50, 'Nassau Island', 'NI', 0),
(772, 50, 'Surwarrow', 'SU', 0),
(773, 50, 'Palmerston', 'PA', 0),
(774, 50, 'Aitutaki', 'AI', 0),
(775, 50, 'Manuae', 'MA', 0),
(776, 50, 'Takutea', 'TA', 0),
(777, 50, 'Mitiaro', 'MT', 0),
(778, 50, 'Atiu', 'AT', 0),
(779, 50, 'Mauke', 'MU', 0),
(780, 50, 'Rarotonga', 'RR', 0),
(781, 50, 'Mangaia', 'MG', 0),
(782, 51, 'Alajuela', 'AL', 0),
(783, 51, 'Cartago', 'CA', 0),
(784, 51, 'Guanacaste', 'GU', 0),
(785, 51, 'Heredia', 'HE', 0),
(786, 51, 'Limon', 'LI', 0),
(787, 51, 'Puntarenas', 'PU', 0),
(788, 51, 'San Jose', 'SJ', 0),
(789, 52, 'Abengourou', 'ABE', 0),
(790, 52, 'Abidjan', 'ABI', 0),
(791, 52, 'Aboisso', 'ABO', 0),
(792, 52, 'Adiake', 'ADI', 0),
(793, 52, 'Adzope', 'ADZ', 0),
(794, 52, 'Agboville', 'AGB', 0),
(795, 52, 'Agnibilekrou', 'AGN', 0),
(796, 52, 'Alepe', 'ALE', 0),
(797, 52, 'Bocanda', 'BOC', 0),
(798, 52, 'Bangolo', 'BAN', 0),
(799, 52, 'Beoumi', 'BEO', 0),
(800, 52, 'Biankouma', 'BIA', 0),
(801, 52, 'Bondoukou', 'BDK', 0),
(802, 52, 'Bongouanou', 'BGN', 0),
(803, 52, 'Bouafle', 'BFL', 0),
(804, 52, 'Bouake', 'BKE', 0),
(805, 52, 'Bouna', 'BNA', 0),
(806, 52, 'Boundiali', 'BDL', 0),
(807, 52, 'Dabakala', 'DKL', 0),
(808, 52, 'Dabou', 'DBU', 0),
(809, 52, 'Daloa', 'DAL', 0),
(810, 52, 'Danane', 'DAN', 0),
(811, 52, 'Daoukro', 'DAO', 0),
(812, 52, 'Dimbokro', 'DIM', 0),
(813, 52, 'Divo', 'DIV', 0),
(814, 52, 'Duekoue', 'DUE', 0),
(815, 52, 'Ferkessedougou', 'FER', 0),
(816, 52, 'Gagnoa', 'GAG', 0),
(817, 52, 'Grand-Bassam', 'GBA', 0),
(818, 52, 'Grand-Lahou', 'GLA', 0),
(819, 52, 'Guiglo', 'GUI', 0),
(820, 52, 'Issia', 'ISS', 0),
(821, 52, 'Jacqueville', 'JAC', 0),
(822, 52, 'Katiola', 'KAT', 0),
(823, 52, 'Korhogo', 'KOR', 0),
(824, 52, 'Lakota', 'LAK', 0),
(825, 52, 'Man', 'MAN', 0),
(826, 52, 'Mankono', 'MKN', 0),
(827, 52, 'Mbahiakro', 'MBA', 0),
(828, 52, 'Odienne', 'ODI', 0),
(829, 52, 'Oume', 'OUM', 0),
(830, 52, 'Sakassou', 'SAK', 0),
(831, 52, 'San-Pedro', 'SPE', 0),
(832, 52, 'Sassandra', 'SAS', 0),
(833, 52, 'Seguela', 'SEG', 0),
(834, 52, 'Sinfra', 'SIN', 0),
(835, 52, 'Soubre', 'SOU', 0),
(836, 52, 'Tabou', 'TAB', 0),
(837, 52, 'Tanda', 'TAN', 0),
(838, 52, 'Tiebissou', 'TIE', 0),
(839, 52, 'Tingrela', 'TIN', 0),
(840, 52, 'Tiassale', 'TIA', 0),
(841, 52, 'Touba', 'TBA', 0),
(842, 52, 'Toulepleu', 'TLP', 0),
(843, 52, 'Toumodi', 'TMD', 0),
(844, 52, 'Vavoua', 'VAV', 0),
(845, 52, 'Yamoussoukro', 'YAM', 0),
(846, 52, 'Zuenoula', 'ZUE', 0),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 0),
(848, 53, 'Grad Zagreb', 'GZ', 0),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 0),
(850, 53, 'Istarska', 'IS', 0),
(851, 53, 'Karlovačka', 'KA', 0),
(852, 53, 'Koprivničko-križevačka', 'KK', 0),
(853, 53, 'Krapinsko-zagorska', 'KZ', 0),
(854, 53, 'Ličko-senjska', 'LS', 0),
(855, 53, 'Međimurska', 'ME', 0),
(856, 53, 'Osječko-baranjska', 'OB', 0),
(857, 53, 'Požeško-slavonska', 'PS', 0),
(858, 53, 'Primorsko-goranska', 'PG', 0),
(859, 53, 'Šibensko-kninska', 'SK', 0),
(860, 53, 'Sisačko-moslavačka', 'SM', 0),
(861, 53, 'Brodsko-posavska', 'BP', 0),
(862, 53, 'Splitsko-dalmatinska', 'SD', 0),
(863, 53, 'Varaždinska', 'VA', 0),
(864, 53, 'Virovitičko-podravska', 'VP', 0),
(865, 53, 'Vukovarsko-srijemska', 'VS', 0),
(866, 53, 'Zadarska', 'ZA', 0),
(867, 53, 'Zagrebačka', 'ZG', 0),
(868, 54, 'Camaguey', 'CA', 0),
(869, 54, 'Ciego de Avila', 'CD', 0),
(870, 54, 'Cienfuegos', 'CI', 0),
(871, 54, 'Ciudad de La Habana', 'CH', 0),
(872, 54, 'Granma', 'GR', 0),
(873, 54, 'Guantanamo', 'GU', 0),
(874, 54, 'Holguin', 'HO', 0),
(875, 54, 'Isla de la Juventud', 'IJ', 0),
(876, 54, 'La Habana', 'LH', 0),
(877, 54, 'Las Tunas', 'LT', 0),
(878, 54, 'Matanzas', 'MA', 0),
(879, 54, 'Pinar del Rio', 'PR', 0),
(880, 54, 'Sancti Spiritus', 'SS', 0),
(881, 54, 'Santiago de Cuba', 'SC', 0),
(882, 54, 'Villa Clara', 'VC', 0),
(883, 55, 'Famagusta', 'F', 0),
(884, 55, 'Kyrenia', 'K', 0),
(885, 55, 'Larnaca', 'A', 0),
(886, 55, 'Limassol', 'I', 0),
(887, 55, 'Nicosia', 'N', 0),
(888, 55, 'Paphos', 'P', 0),
(889, 56, 'Ústecký', 'U', 0),
(890, 56, 'Jihočeský', 'C', 0),
(891, 56, 'Jihomoravský', 'B', 0),
(892, 56, 'Karlovarský', 'K', 0),
(893, 56, 'Královehradecký', 'H', 0),
(894, 56, 'Liberecký', 'L', 0),
(895, 56, 'Moravskoslezský', 'T', 0),
(896, 56, 'Olomoucký', 'M', 0),
(897, 56, 'Pardubický', 'E', 0),
(898, 56, 'Plzeňský', 'P', 0),
(899, 56, 'Praha', 'A', 0),
(900, 56, 'Středočeský', 'S', 0),
(901, 56, 'Vysočina', 'J', 0),
(902, 56, 'Zlínský', 'Z', 0),
(903, 57, 'Arhus', 'AR', 0),
(904, 57, 'Bornholm', 'BH', 0),
(905, 57, 'Copenhagen', 'CO', 0),
(906, 57, 'Faroe Islands', 'FO', 0),
(907, 57, 'Frederiksborg', 'FR', 0),
(908, 57, 'Fyn', 'FY', 0),
(909, 57, 'Kobenhavn', 'KO', 0),
(910, 57, 'Nordjylland', 'NO', 0),
(911, 57, 'Ribe', 'RI', 0),
(912, 57, 'Ringkobing', 'RK', 0),
(913, 57, 'Roskilde', 'RO', 0),
(914, 57, 'Sonderjylland', 'SO', 0),
(915, 57, 'Storstrom', 'ST', 0),
(916, 57, 'Vejle', 'VK', 0),
(917, 57, 'Vestj&aelig;lland', 'VJ', 0),
(918, 57, 'Viborg', 'VB', 0),
(919, 58, '\'Ali Sabih', 'S', 0),
(920, 58, 'Dikhil', 'K', 0),
(921, 58, 'Djibouti', 'J', 0),
(922, 58, 'Obock', 'O', 0),
(923, 58, 'Tadjoura', 'T', 0),
(924, 59, 'Saint Andrew Parish', 'AND', 0),
(925, 59, 'Saint David Parish', 'DAV', 0),
(926, 59, 'Saint George Parish', 'GEO', 0),
(927, 59, 'Saint John Parish', 'JOH', 0),
(928, 59, 'Saint Joseph Parish', 'JOS', 0),
(929, 59, 'Saint Luke Parish', 'LUK', 0),
(930, 59, 'Saint Mark Parish', 'MAR', 0),
(931, 59, 'Saint Patrick Parish', 'PAT', 0),
(932, 59, 'Saint Paul Parish', 'PAU', 0),
(933, 59, 'Saint Peter Parish', 'PET', 0),
(934, 60, 'Distrito Nacional', 'DN', 0),
(935, 60, 'Azua', 'AZ', 0),
(936, 60, 'Baoruco', 'BC', 0),
(937, 60, 'Barahona', 'BH', 0),
(938, 60, 'Dajabon', 'DJ', 0),
(939, 60, 'Duarte', 'DU', 0),
(940, 60, 'Elias Pina', 'EL', 0),
(941, 60, 'El Seybo', 'SY', 0),
(942, 60, 'Espaillat', 'ET', 0),
(943, 60, 'Hato Mayor', 'HM', 0),
(944, 60, 'Independencia', 'IN', 0),
(945, 60, 'La Altagracia', 'AL', 0),
(946, 60, 'La Romana', 'RO', 0),
(947, 60, 'La Vega', 'VE', 0),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 0),
(949, 60, 'Monsenor Nouel', 'MN', 0),
(950, 60, 'Monte Cristi', 'MC', 0),
(951, 60, 'Monte Plata', 'MP', 0),
(952, 60, 'Pedernales', 'PD', 0),
(953, 60, 'Peravia (Bani)', 'PR', 0),
(954, 60, 'Puerto Plata', 'PP', 0),
(955, 60, 'Salcedo', 'SL', 0),
(956, 60, 'Samana', 'SM', 0),
(957, 60, 'Sanchez Ramirez', 'SH', 0),
(958, 60, 'San Cristobal', 'SC', 0),
(959, 60, 'San Jose de Ocoa', 'JO', 0),
(960, 60, 'San Juan', 'SJ', 0),
(961, 60, 'San Pedro de Macoris', 'PM', 0),
(962, 60, 'Santiago', 'SA', 0),
(963, 60, 'Santiago Rodriguez', 'ST', 0),
(964, 60, 'Santo Domingo', 'SD', 0),
(965, 60, 'Valverde', 'VA', 0),
(966, 61, 'Aileu', 'AL', 0),
(967, 61, 'Ainaro', 'AN', 0),
(968, 61, 'Baucau', 'BA', 0),
(969, 61, 'Bobonaro', 'BO', 0),
(970, 61, 'Cova Lima', 'CO', 0),
(971, 61, 'Dili', 'DI', 0),
(972, 61, 'Ermera', 'ER', 0),
(973, 61, 'Lautem', 'LA', 0),
(974, 61, 'Liquica', 'LI', 0),
(975, 61, 'Manatuto', 'MT', 0),
(976, 61, 'Manufahi', 'MF', 0),
(977, 61, 'Oecussi', 'OE', 0),
(978, 61, 'Viqueque', 'VI', 0),
(979, 62, 'Azuay', 'AZU', 0),
(980, 62, 'Bolivar', 'BOL', 0),
(981, 62, 'Ca&ntilde;ar', 'CAN', 0),
(982, 62, 'Carchi', 'CAR', 0),
(983, 62, 'Chimborazo', 'CHI', 0),
(984, 62, 'Cotopaxi', 'COT', 0),
(985, 62, 'El Oro', 'EOR', 0),
(986, 62, 'Esmeraldas', 'ESM', 0),
(987, 62, 'Gal&aacute;pagos', 'GPS', 0),
(988, 62, 'Guayas', 'GUA', 0),
(989, 62, 'Imbabura', 'IMB', 0),
(990, 62, 'Loja', 'LOJ', 0),
(991, 62, 'Los Rios', 'LRO', 0),
(992, 62, 'Manab&iacute;', 'MAN', 0),
(993, 62, 'Morona Santiago', 'MSA', 0),
(994, 62, 'Napo', 'NAP', 0),
(995, 62, 'Orellana', 'ORE', 0),
(996, 62, 'Pastaza', 'PAS', 0),
(997, 62, 'Pichincha', 'PIC', 0),
(998, 62, 'Sucumb&iacute;os', 'SUC', 0),
(999, 62, 'Tungurahua', 'TUN', 0),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 0),
(1001, 63, 'Ad Daqahliyah', 'DHY', 0),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 0),
(1003, 63, 'Al Buhayrah', 'BHY', 0),
(1004, 63, 'Al Fayyum', 'FYM', 0),
(1005, 63, 'Al Gharbiyah', 'GBY', 0),
(1006, 63, 'Al Iskandariyah', 'IDR', 0),
(1007, 63, 'Al Isma\'iliyah', 'IML', 0),
(1008, 63, 'Al Jizah', 'JZH', 0),
(1009, 63, 'Al Minufiyah', 'MFY', 0),
(1010, 63, 'Al Minya', 'MNY', 0),
(1011, 63, 'Al Qahirah', 'QHR', 0),
(1012, 63, 'Al Qalyubiyah', 'QLY', 0),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 0),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 0),
(1015, 63, 'As Suways', 'SWY', 0),
(1016, 63, 'Aswan', 'ASW', 0),
(1017, 63, 'Asyut', 'ASY', 0),
(1018, 63, 'Bani Suwayf', 'BSW', 0),
(1019, 63, 'Bur Sa\'id', 'BSD', 0),
(1020, 63, 'Dumyat', 'DMY', 0),
(1021, 63, 'Janub Sina\'', 'JNS', 0),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 0),
(1023, 63, 'Matruh', 'MAT', 0),
(1024, 63, 'Qina', 'QIN', 0),
(1025, 63, 'Shamal Sina\'', 'SHS', 0),
(1026, 63, 'Suhaj', 'SUH', 0),
(1027, 64, 'Ahuachapan', 'AH', 0),
(1028, 64, 'Cabanas', 'CA', 0),
(1029, 64, 'Chalatenango', 'CH', 0),
(1030, 64, 'Cuscatlan', 'CU', 0),
(1031, 64, 'La Libertad', 'LB', 0),
(1032, 64, 'La Paz', 'PZ', 0),
(1033, 64, 'La Union', 'UN', 0),
(1034, 64, 'Morazan', 'MO', 0),
(1035, 64, 'San Miguel', 'SM', 0),
(1036, 64, 'San Salvador', 'SS', 0),
(1037, 64, 'San Vicente', 'SV', 0),
(1038, 64, 'Santa Ana', 'SA', 0),
(1039, 64, 'Sonsonate', 'SO', 0),
(1040, 64, 'Usulutan', 'US', 0),
(1041, 65, 'Provincia Annobon', 'AN', 0),
(1042, 65, 'Provincia Bioko Norte', 'BN', 0),
(1043, 65, 'Provincia Bioko Sur', 'BS', 0),
(1044, 65, 'Provincia Centro Sur', 'CS', 0),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 0),
(1046, 65, 'Provincia Litoral', 'LI', 0),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 0),
(1048, 66, 'Central (Maekel)', 'MA', 0),
(1049, 66, 'Anseba (Keren)', 'KE', 0),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 0),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 0),
(1052, 66, 'Southern (Debub)', 'DE', 0),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 0),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 0),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 0),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 0),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 0),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 0),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 0),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 0),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 0),
(1062, 67, 'Polvamaa (Polva)', 'PO', 0),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 0),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 0),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 0),
(1066, 67, 'Valgamaa (Valga)', 'VA', 0),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 0),
(1068, 67, 'Vorumaa (Voru)', 'VO', 0),
(1069, 68, 'Afar', 'AF', 0),
(1070, 68, 'Amhara', 'AH', 0),
(1071, 68, 'Benishangul-Gumaz', 'BG', 0),
(1072, 68, 'Gambela', 'GB', 0),
(1073, 68, 'Hariai', 'HR', 0),
(1074, 68, 'Oromia', 'OR', 0),
(1075, 68, 'Somali', 'SM', 0),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 0),
(1077, 68, 'Tigray', 'TG', 0),
(1078, 68, 'Addis Ababa', 'AA', 0),
(1079, 68, 'Dire Dawa', 'DD', 0),
(1080, 71, 'Central Division', 'C', 0),
(1081, 71, 'Northern Division', 'N', 0),
(1082, 71, 'Eastern Division', 'E', 0),
(1083, 71, 'Western Division', 'W', 0),
(1084, 71, 'Rotuma', 'R', 0),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 0),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 0),
(1087, 72, 'Itä-Suomen lääni', 'IS', 0),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 0),
(1089, 72, 'Lapin lääni', 'LA', 0),
(1090, 72, 'Oulun lääni', 'OU', 0),
(1114, 74, 'Ain', '01', 0),
(1115, 74, 'Aisne', '02', 0),
(1116, 74, 'Allier', '03', 0),
(1117, 74, 'Alpes de Haute Provence', '04', 0),
(1118, 74, 'Hautes-Alpes', '05', 0),
(1119, 74, 'Alpes Maritimes', '06', 0),
(1120, 74, 'Ard&egrave;che', '07', 0),
(1121, 74, 'Ardennes', '08', 0),
(1122, 74, 'Ari&egrave;ge', '09', 0),
(1123, 74, 'Aube', '10', 0),
(1124, 74, 'Aude', '11', 0),
(1125, 74, 'Aveyron', '12', 0),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 0),
(1127, 74, 'Calvados', '14', 0),
(1128, 74, 'Cantal', '15', 0),
(1129, 74, 'Charente', '16', 0),
(1130, 74, 'Charente Maritime', '17', 0),
(1131, 74, 'Cher', '18', 0),
(1132, 74, 'Corr&egrave;ze', '19', 0),
(1133, 74, 'Corse du Sud', '2A', 0),
(1134, 74, 'Haute Corse', '2B', 0),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 0),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 0),
(1137, 74, 'Creuse', '23', 0),
(1138, 74, 'Dordogne', '24', 0),
(1139, 74, 'Doubs', '25', 0),
(1140, 74, 'Dr&ocirc;me', '26', 0),
(1141, 74, 'Eure', '27', 0),
(1142, 74, 'Eure et Loir', '28', 0),
(1143, 74, 'Finist&egrave;re', '29', 0),
(1144, 74, 'Gard', '30', 0),
(1145, 74, 'Haute Garonne', '31', 0),
(1146, 74, 'Gers', '32', 0),
(1147, 74, 'Gironde', '33', 0),
(1148, 74, 'H&eacute;rault', '34', 0),
(1149, 74, 'Ille et Vilaine', '35', 0),
(1150, 74, 'Indre', '36', 0),
(1151, 74, 'Indre et Loire', '37', 0),
(1152, 74, 'Is&eacute;re', '38', 0),
(1153, 74, 'Jura', '39', 0),
(1154, 74, 'Landes', '40', 0),
(1155, 74, 'Loir et Cher', '41', 0),
(1156, 74, 'Loire', '42', 0),
(1157, 74, 'Haute Loire', '43', 0),
(1158, 74, 'Loire Atlantique', '44', 0),
(1159, 74, 'Loiret', '45', 0),
(1160, 74, 'Lot', '46', 0),
(1161, 74, 'Lot et Garonne', '47', 0),
(1162, 74, 'Loz&egrave;re', '48', 0),
(1163, 74, 'Maine et Loire', '49', 0),
(1164, 74, 'Manche', '50', 0),
(1165, 74, 'Marne', '51', 0),
(1166, 74, 'Haute Marne', '52', 0),
(1167, 74, 'Mayenne', '53', 0),
(1168, 74, 'Meurthe et Moselle', '54', 0),
(1169, 74, 'Meuse', '55', 0),
(1170, 74, 'Morbihan', '56', 0),
(1171, 74, 'Moselle', '57', 0),
(1172, 74, 'Ni&egrave;vre', '58', 0),
(1173, 74, 'Nord', '59', 0),
(1174, 74, 'Oise', '60', 0),
(1175, 74, 'Orne', '61', 0),
(1176, 74, 'Pas de Calais', '62', 0),
(1177, 74, 'Puy de D&ocirc;me', '63', 0),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 0),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 0),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 0),
(1181, 74, 'Bas Rhin', '67', 0),
(1182, 74, 'Haut Rhin', '68', 0),
(1183, 74, 'Rh&ocirc;ne', '69', 0),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 0),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 0),
(1186, 74, 'Sarthe', '72', 0),
(1187, 74, 'Savoie', '73', 0),
(1188, 74, 'Haute Savoie', '74', 0),
(1189, 74, 'Paris', '75', 0),
(1190, 74, 'Seine Maritime', '76', 0),
(1191, 74, 'Seine et Marne', '77', 0),
(1192, 74, 'Yvelines', '78', 0),
(1193, 74, 'Deux S&egrave;vres', '79', 0),
(1194, 74, 'Somme', '80', 0),
(1195, 74, 'Tarn', '81', 0),
(1196, 74, 'Tarn et Garonne', '82', 0),
(1197, 74, 'Var', '83', 0),
(1198, 74, 'Vaucluse', '84', 0),
(1199, 74, 'Vend&eacute;e', '85', 0),
(1200, 74, 'Vienne', '86', 0),
(1201, 74, 'Haute Vienne', '87', 0),
(1202, 74, 'Vosges', '88', 0),
(1203, 74, 'Yonne', '89', 0),
(1204, 74, 'Territoire de Belfort', '90', 0),
(1205, 74, 'Essonne', '91', 0),
(1206, 74, 'Hauts de Seine', '92', 0),
(1207, 74, 'Seine St-Denis', '93', 0),
(1208, 74, 'Val de Marne', '94', 0),
(1209, 74, 'Val d\'Oise', '95', 0),
(1210, 76, 'Archipel des Marquises', 'M', 0),
(1211, 76, 'Archipel des Tuamotu', 'T', 0),
(1212, 76, 'Archipel des Tubuai', 'I', 0),
(1213, 76, 'Iles du Vent', 'V', 0),
(1214, 76, 'Iles Sous-le-Vent', 'S', 0),
(1215, 77, 'Iles Crozet', 'C', 0),
(1216, 77, 'Iles Kerguelen', 'K', 0),
(1217, 77, 'Ile Amsterdam', 'A', 0),
(1218, 77, 'Ile Saint-Paul', 'P', 0),
(1219, 77, 'Adelie Land', 'D', 0),
(1220, 78, 'Estuaire', 'ES', 0),
(1221, 78, 'Haut-Ogooue', 'HO', 0),
(1222, 78, 'Moyen-Ogooue', 'MO', 0),
(1223, 78, 'Ngounie', 'NG', 0),
(1224, 78, 'Nyanga', 'NY', 0),
(1225, 78, 'Ogooue-Ivindo', 'OI', 0),
(1226, 78, 'Ogooue-Lolo', 'OL', 0),
(1227, 78, 'Ogooue-Maritime', 'OM', 0),
(1228, 78, 'Woleu-Ntem', 'WN', 0),
(1229, 79, 'Banjul', 'BJ', 0),
(1230, 79, 'Basse', 'BS', 0),
(1231, 79, 'Brikama', 'BR', 0),
(1232, 79, 'Janjangbure', 'JA', 0),
(1233, 79, 'Kanifeng', 'KA', 0),
(1234, 79, 'Kerewan', 'KE', 0),
(1235, 79, 'Kuntaur', 'KU', 0),
(1236, 79, 'Mansakonko', 'MA', 0),
(1237, 79, 'Lower River', 'LR', 0),
(1238, 79, 'Central River', 'CR', 0),
(1239, 79, 'North Bank', 'NB', 0),
(1240, 79, 'Upper River', 'UR', 0),
(1241, 79, 'Western', 'WE', 0),
(1242, 80, 'Abkhazia', 'AB', 0),
(1243, 80, 'Ajaria', 'AJ', 0),
(1244, 80, 'Tbilisi', 'TB', 0),
(1245, 80, 'Guria', 'GU', 0),
(1246, 80, 'Imereti', 'IM', 0),
(1247, 80, 'Kakheti', 'KA', 0),
(1248, 80, 'Kvemo Kartli', 'KK', 0),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 0),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 0),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 0),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 0),
(1253, 80, 'Shida Kartli', 'SK', 0),
(1254, 81, 'Baden-Württemberg', 'BAW', 0),
(1255, 81, 'Bayern', 'BAY', 0),
(1256, 81, 'Berlin', 'BER', 0),
(1257, 81, 'Brandenburg', 'BRG', 0),
(1258, 81, 'Bremen', 'BRE', 0),
(1259, 81, 'Hamburg', 'HAM', 0),
(1260, 81, 'Hessen', 'HES', 0),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 0),
(1262, 81, 'Niedersachsen', 'NDS', 0),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 0),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 0),
(1265, 81, 'Saarland', 'SAR', 0),
(1266, 81, 'Sachsen', 'SAS', 0),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 0),
(1268, 81, 'Schleswig-Holstein', 'SCN', 0),
(1269, 81, 'Thüringen', 'THE', 0),
(1270, 82, 'Ashanti Region', 'AS', 0),
(1271, 82, 'Brong-Ahafo Region', 'BA', 0),
(1272, 82, 'Central Region', 'CE', 0),
(1273, 82, 'Eastern Region', 'EA', 0),
(1274, 82, 'Greater Accra Region', 'GA', 0),
(1275, 82, 'Northern Region', 'NO', 0),
(1276, 82, 'Upper East Region', 'UE', 0),
(1277, 82, 'Upper West Region', 'UW', 0),
(1278, 82, 'Volta Region', 'VO', 0),
(1279, 82, 'Western Region', 'WE', 0),
(1280, 84, 'Attica', 'AT', 0),
(1281, 84, 'Central Greece', 'CN', 0),
(1282, 84, 'Central Macedonia', 'CM', 0),
(1283, 84, 'Crete', 'CR', 0),
(1284, 84, 'East Macedonia and Thrace', 'EM', 0),
(1285, 84, 'Epirus', 'EP', 0),
(1286, 84, 'Ionian Islands', 'II', 0),
(1287, 84, 'North Aegean', 'NA', 0),
(1288, 84, 'Peloponnesos', 'PP', 0),
(1289, 84, 'South Aegean', 'SA', 0),
(1290, 84, 'Thessaly', 'TH', 0),
(1291, 84, 'West Greece', 'WG', 0),
(1292, 84, 'West Macedonia', 'WM', 0),
(1293, 85, 'Avannaa', 'A', 0),
(1294, 85, 'Tunu', 'T', 0),
(1295, 85, 'Kitaa', 'K', 0),
(1296, 86, 'Saint Andrew', 'A', 0),
(1297, 86, 'Saint David', 'D', 0),
(1298, 86, 'Saint George', 'G', 0),
(1299, 86, 'Saint John', 'J', 0),
(1300, 86, 'Saint Mark', 'M', 0),
(1301, 86, 'Saint Patrick', 'P', 0),
(1302, 86, 'Carriacou', 'C', 0),
(1303, 86, 'Petit Martinique', 'Q', 0),
(1304, 89, 'Alta Verapaz', 'AV', 0),
(1305, 89, 'Baja Verapaz', 'BV', 0),
(1306, 89, 'Chimaltenango', 'CM', 0),
(1307, 89, 'Chiquimula', 'CQ', 0),
(1308, 89, 'El Peten', 'PE', 0),
(1309, 89, 'El Progreso', 'PR', 0),
(1310, 89, 'El Quiche', 'QC', 0),
(1311, 89, 'Escuintla', 'ES', 0),
(1312, 89, 'Guatemala', 'GU', 0),
(1313, 89, 'Huehuetenango', 'HU', 0),
(1314, 89, 'Izabal', 'IZ', 0),
(1315, 89, 'Jalapa', 'JA', 0),
(1316, 89, 'Jutiapa', 'JU', 0),
(1317, 89, 'Quetzaltenango', 'QZ', 0),
(1318, 89, 'Retalhuleu', 'RE', 0),
(1319, 89, 'Sacatepequez', 'ST', 0),
(1320, 89, 'San Marcos', 'SM', 0),
(1321, 89, 'Santa Rosa', 'SR', 0),
(1322, 89, 'Solola', 'SO', 0),
(1323, 89, 'Suchitepequez', 'SU', 0),
(1324, 89, 'Totonicapan', 'TO', 0),
(1325, 89, 'Zacapa', 'ZA', 0),
(1326, 90, 'Conakry', 'CNK', 0),
(1327, 90, 'Beyla', 'BYL', 0),
(1328, 90, 'Boffa', 'BFA', 0),
(1329, 90, 'Boke', 'BOK', 0),
(1330, 90, 'Coyah', 'COY', 0),
(1331, 90, 'Dabola', 'DBL', 0),
(1332, 90, 'Dalaba', 'DLB', 0),
(1333, 90, 'Dinguiraye', 'DGR', 0),
(1334, 90, 'Dubreka', 'DBR', 0),
(1335, 90, 'Faranah', 'FRN', 0),
(1336, 90, 'Forecariah', 'FRC', 0),
(1337, 90, 'Fria', 'FRI', 0),
(1338, 90, 'Gaoual', 'GAO', 0),
(1339, 90, 'Gueckedou', 'GCD', 0),
(1340, 90, 'Kankan', 'KNK', 0),
(1341, 90, 'Kerouane', 'KRN', 0),
(1342, 90, 'Kindia', 'KND', 0),
(1343, 90, 'Kissidougou', 'KSD', 0),
(1344, 90, 'Koubia', 'KBA', 0),
(1345, 90, 'Koundara', 'KDA', 0),
(1346, 90, 'Kouroussa', 'KRA', 0),
(1347, 90, 'Labe', 'LAB', 0),
(1348, 90, 'Lelouma', 'LLM', 0),
(1349, 90, 'Lola', 'LOL', 0),
(1350, 90, 'Macenta', 'MCT', 0),
(1351, 90, 'Mali', 'MAL', 0),
(1352, 90, 'Mamou', 'MAM', 0),
(1353, 90, 'Mandiana', 'MAN', 0),
(1354, 90, 'Nzerekore', 'NZR', 0),
(1355, 90, 'Pita', 'PIT', 0),
(1356, 90, 'Siguiri', 'SIG', 0),
(1357, 90, 'Telimele', 'TLM', 0),
(1358, 90, 'Tougue', 'TOG', 0),
(1359, 90, 'Yomou', 'YOM', 0),
(1360, 91, 'Bafata Region', 'BF', 0),
(1361, 91, 'Biombo Region', 'BB', 0),
(1362, 91, 'Bissau Region', 'BS', 0),
(1363, 91, 'Bolama Region', 'BL', 0),
(1364, 91, 'Cacheu Region', 'CA', 0),
(1365, 91, 'Gabu Region', 'GA', 0),
(1366, 91, 'Oio Region', 'OI', 0),
(1367, 91, 'Quinara Region', 'QU', 0),
(1368, 91, 'Tombali Region', 'TO', 0),
(1369, 92, 'Barima-Waini', 'BW', 0),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 0),
(1371, 92, 'Demerara-Mahaica', 'DM', 0),
(1372, 92, 'East Berbice-Corentyne', 'EC', 0),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 0),
(1374, 92, 'Mahaica-Berbice', 'MB', 0),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 0),
(1376, 92, 'Potaro-Siparuni', 'PI', 0),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 0),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 0),
(1379, 93, 'Artibonite', 'AR', 0),
(1380, 93, 'Centre', 'CE', 0),
(1381, 93, 'Grand\'Anse', 'GA', 0),
(1382, 93, 'Nord', 'ND', 0),
(1383, 93, 'Nord-Est', 'NE', 0),
(1384, 93, 'Nord-Ouest', 'NO', 0),
(1385, 93, 'Ouest', 'OU', 0),
(1386, 93, 'Sud', 'SD', 0),
(1387, 93, 'Sud-Est', 'SE', 0),
(1388, 94, 'Flat Island', 'F', 0),
(1389, 94, 'McDonald Island', 'M', 0),
(1390, 94, 'Shag Island', 'S', 0),
(1391, 94, 'Heard Island', 'H', 0),
(1392, 95, 'Atlantida', 'AT', 0),
(1393, 95, 'Choluteca', 'CH', 0),
(1394, 95, 'Colon', 'CL', 0),
(1395, 95, 'Comayagua', 'CM', 0),
(1396, 95, 'Copan', 'CP', 0),
(1397, 95, 'Cortes', 'CR', 0),
(1398, 95, 'El Paraiso', 'PA', 0),
(1399, 95, 'Francisco Morazan', 'FM', 0),
(1400, 95, 'Gracias a Dios', 'GD', 0),
(1401, 95, 'Intibuca', 'IN', 0),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 0),
(1403, 95, 'La Paz', 'PZ', 0),
(1404, 95, 'Lempira', 'LE', 0),
(1405, 95, 'Ocotepeque', 'OC', 0),
(1406, 95, 'Olancho', 'OL', 0),
(1407, 95, 'Santa Barbara', 'SB', 0),
(1408, 95, 'Valle', 'VA', 0),
(1409, 95, 'Yoro', 'YO', 0),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 0),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 0),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 0),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 0),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 0),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 0),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 0),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 0),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 0),
(1419, 96, 'Islands New Territories', 'NIS', 0),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 0),
(1421, 96, 'North New Territories', 'NNO', 0),
(1422, 96, 'Sai Kung New Territories', 'NSK', 0),
(1423, 96, 'Sha Tin New Territories', 'NST', 0),
(1424, 96, 'Tai Po New Territories', 'NTP', 0),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 0),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 0),
(1427, 96, 'Yuen Long New Territories', 'NYL', 0),
(1467, 98, 'Austurland', 'AL', 0),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 0),
(1469, 98, 'Norourland eystra', 'NE', 0),
(1470, 98, 'Norourland vestra', 'NV', 0),
(1471, 98, 'Suourland', 'SL', 0),
(1472, 98, 'Suournes', 'SN', 0),
(1473, 98, 'Vestfiroir', 'VF', 0),
(1474, 98, 'Vesturland', 'VL', 0),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 0),
(1508, 100, 'Bali', 'BA', 0),
(1509, 100, 'Banten', 'BT', 0),
(1510, 100, 'Bengkulu', 'BE', 0),
(1511, 100, 'Kalimantan Utara', 'BD', 0),
(1512, 100, 'Gorontalo', 'GO', 0),
(1513, 100, 'Jakarta', 'JK', 0),
(1514, 100, 'Jambi', 'JA', 0),
(1515, 100, 'Jawa Barat', 'JB', 0),
(1516, 100, 'Jawa Tengah', 'JT', 0),
(1517, 100, 'Jawa Timur', 'JI', 0),
(1518, 100, 'Kalimantan Barat', 'KB', 0),
(1519, 100, 'Kalimantan Selatan', 'KS', 0),
(1520, 100, 'Kalimantan Tengah', 'KT', 0),
(1521, 100, 'Kalimantan Timur', 'KI', 0),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 0),
(1523, 100, 'Lampung', 'LA', 0),
(1524, 100, 'Maluku', 'MA', 0),
(1525, 100, 'Maluku Utara', 'MU', 0),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 0),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 0),
(1528, 100, 'Papua', 'PA', 0),
(1529, 100, 'Riau', 'RI', 0),
(1530, 100, 'Sulawesi Selatan', 'SN', 0),
(1531, 100, 'Sulawesi Tengah', 'ST', 0),
(1532, 100, 'Sulawesi Tenggara', 'SG', 0),
(1533, 100, 'Sulawesi Utara', 'SA', 0),
(1534, 100, 'Sumatera Barat', 'SB', 0),
(1535, 100, 'Sumatera Selatan', 'SS', 0),
(1536, 100, 'Sumatera Utara', 'SU', 0),
(1537, 100, 'Yogyakarta', 'YO', 0),
(1538, 101, 'Tehran', 'TEH', 0),
(1539, 101, 'Qom', 'QOM', 0),
(1540, 101, 'Markazi', 'MKZ', 0),
(1541, 101, 'Qazvin', 'QAZ', 0),
(1542, 101, 'Gilan', 'GIL', 0),
(1543, 101, 'Ardabil', 'ARD', 0),
(1544, 101, 'Zanjan', 'ZAN', 0),
(1545, 101, 'East Azarbaijan', 'EAZ', 0),
(1546, 101, 'West Azarbaijan', 'WEZ', 0),
(1547, 101, 'Kurdistan', 'KRD', 0),
(1548, 101, 'Hamadan', 'HMD', 0),
(1549, 101, 'Kermanshah', 'KRM', 0),
(1550, 101, 'Ilam', 'ILM', 0),
(1551, 101, 'Lorestan', 'LRS', 0),
(1552, 101, 'Khuzestan', 'KZT', 0),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 0),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 0),
(1555, 101, 'Bushehr', 'BSH', 0),
(1556, 101, 'Fars', 'FAR', 0),
(1557, 101, 'Hormozgan', 'HRM', 0),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 0),
(1559, 101, 'Kerman', 'KRB', 0),
(1560, 101, 'Yazd', 'YZD', 0),
(1561, 101, 'Esfahan', 'EFH', 0),
(1562, 101, 'Semnan', 'SMN', 0),
(1563, 101, 'Mazandaran', 'MZD', 0),
(1564, 101, 'Golestan', 'GLS', 0),
(1565, 101, 'North Khorasan', 'NKH', 0),
(1566, 101, 'Razavi Khorasan', 'RKH', 0),
(1567, 101, 'South Khorasan', 'SKH', 0),
(1568, 102, 'Baghdad', 'BD', 0),
(1569, 102, 'Salah ad Din', 'SD', 0),
(1570, 102, 'Diyala', 'DY', 0),
(1571, 102, 'Wasit', 'WS', 0),
(1572, 102, 'Maysan', 'MY', 0),
(1573, 102, 'Al Basrah', 'BA', 0),
(1574, 102, 'Dhi Qar', 'DQ', 0),
(1575, 102, 'Al Muthanna', 'MU', 0),
(1576, 102, 'Al Qadisyah', 'QA', 0),
(1577, 102, 'Babil', 'BB', 0),
(1578, 102, 'Al Karbala', 'KB', 0),
(1579, 102, 'An Najaf', 'NJ', 0),
(1580, 102, 'Al Anbar', 'AB', 0),
(1581, 102, 'Ninawa', 'NN', 0),
(1582, 102, 'Dahuk', 'DH', 0),
(1583, 102, 'Arbil', 'AL', 0),
(1584, 102, 'At Ta\'mim', 'TM', 0),
(1585, 102, 'As Sulaymaniyah', 'SL', 0),
(1586, 103, 'Carlow', 'CA', 0),
(1587, 103, 'Cavan', 'CV', 0),
(1588, 103, 'Clare', 'CL', 0),
(1589, 103, 'Cork', 'CO', 0),
(1590, 103, 'Donegal', 'DO', 0),
(1591, 103, 'Dublin', 'DU', 0),
(1592, 103, 'Galway', 'GA', 0),
(1593, 103, 'Kerry', 'KE', 0),
(1594, 103, 'Kildare', 'KI', 0),
(1595, 103, 'Kilkenny', 'KL', 0),
(1596, 103, 'Laois', 'LA', 0),
(1597, 103, 'Leitrim', 'LE', 0);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 0),
(1599, 103, 'Longford', 'LO', 0),
(1600, 103, 'Louth', 'LU', 0),
(1601, 103, 'Mayo', 'MA', 0),
(1602, 103, 'Meath', 'ME', 0),
(1603, 103, 'Monaghan', 'MO', 0),
(1604, 103, 'Offaly', 'OF', 0),
(1605, 103, 'Roscommon', 'RO', 0),
(1606, 103, 'Sligo', 'SL', 0),
(1607, 103, 'Tipperary', 'TI', 0),
(1608, 103, 'Waterford', 'WA', 0),
(1609, 103, 'Westmeath', 'WE', 0),
(1610, 103, 'Wexford', 'WX', 0),
(1611, 103, 'Wicklow', 'WI', 0),
(1612, 104, 'Be\'er Sheva', 'BS', 0),
(1613, 104, 'Bika\'at Hayarden', 'BH', 0),
(1614, 104, 'Eilat and Arava', 'EA', 0),
(1615, 104, 'Galil', 'GA', 0),
(1616, 104, 'Haifa', 'HA', 0),
(1617, 104, 'Jehuda Mountains', 'JM', 0),
(1618, 104, 'Jerusalem', 'JE', 0),
(1619, 104, 'Negev', 'NE', 0),
(1620, 104, 'Semaria', 'SE', 0),
(1621, 104, 'Sharon', 'SH', 0),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 0),
(3860, 105, 'Caltanissetta', 'CL', 0),
(3842, 105, 'Agrigento', 'AG', 0),
(3843, 105, 'Alessandria', 'AL', 0),
(3844, 105, 'Ancona', 'AN', 0),
(3845, 105, 'Aosta', 'AO', 0),
(3846, 105, 'Arezzo', 'AR', 0),
(3847, 105, 'Ascoli Piceno', 'AP', 0),
(3848, 105, 'Asti', 'AT', 0),
(3849, 105, 'Avellino', 'AV', 0),
(3850, 105, 'Bari', 'BA', 0),
(3851, 105, 'Belluno', 'BL', 0),
(3852, 105, 'Benevento', 'BN', 0),
(3853, 105, 'Bergamo', 'BG', 0),
(3854, 105, 'Biella', 'BI', 0),
(3855, 105, 'Bologna', 'BO', 0),
(3856, 105, 'Bolzano', 'BZ', 0),
(3857, 105, 'Brescia', 'BS', 0),
(3858, 105, 'Brindisi', 'BR', 0),
(3859, 105, 'Cagliari', 'CA', 0),
(1643, 106, 'Clarendon Parish', 'CLA', 0),
(1644, 106, 'Hanover Parish', 'HAN', 0),
(1645, 106, 'Kingston Parish', 'KIN', 0),
(1646, 106, 'Manchester Parish', 'MAN', 0),
(1647, 106, 'Portland Parish', 'POR', 0),
(1648, 106, 'Saint Andrew Parish', 'AND', 0),
(1649, 106, 'Saint Ann Parish', 'ANN', 0),
(1650, 106, 'Saint Catherine Parish', 'CAT', 0),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 0),
(1652, 106, 'Saint James Parish', 'JAM', 0),
(1653, 106, 'Saint Mary Parish', 'MAR', 0),
(1654, 106, 'Saint Thomas Parish', 'THO', 0),
(1655, 106, 'Trelawny Parish', 'TRL', 0),
(1656, 106, 'Westmoreland Parish', 'WML', 0),
(1657, 107, 'Aichi', 'AI', 0),
(1658, 107, 'Akita', 'AK', 0),
(1659, 107, 'Aomori', 'AO', 0),
(1660, 107, 'Chiba', 'CH', 0),
(1661, 107, 'Ehime', 'EH', 0),
(1662, 107, 'Fukui', 'FK', 0),
(1663, 107, 'Fukuoka', 'FU', 0),
(1664, 107, 'Fukushima', 'FS', 0),
(1665, 107, 'Gifu', 'GI', 0),
(1666, 107, 'Gumma', 'GU', 0),
(1667, 107, 'Hiroshima', 'HI', 0),
(1668, 107, 'Hokkaido', 'HO', 0),
(1669, 107, 'Hyogo', 'HY', 0),
(1670, 107, 'Ibaraki', 'IB', 0),
(1671, 107, 'Ishikawa', 'IS', 0),
(1672, 107, 'Iwate', 'IW', 0),
(1673, 107, 'Kagawa', 'KA', 0),
(1674, 107, 'Kagoshima', 'KG', 0),
(1675, 107, 'Kanagawa', 'KN', 0),
(1676, 107, 'Kochi', 'KO', 0),
(1677, 107, 'Kumamoto', 'KU', 0),
(1678, 107, 'Kyoto', 'KY', 0),
(1679, 107, 'Mie', 'MI', 0),
(1680, 107, 'Miyagi', 'MY', 0),
(1681, 107, 'Miyazaki', 'MZ', 0),
(1682, 107, 'Nagano', 'NA', 0),
(1683, 107, 'Nagasaki', 'NG', 0),
(1684, 107, 'Nara', 'NR', 0),
(1685, 107, 'Niigata', 'NI', 0),
(1686, 107, 'Oita', 'OI', 0),
(1687, 107, 'Okayama', 'OK', 0),
(1688, 107, 'Okinawa', 'ON', 0),
(1689, 107, 'Osaka', 'OS', 0),
(1690, 107, 'Saga', 'SA', 0),
(1691, 107, 'Saitama', 'SI', 0),
(1692, 107, 'Shiga', 'SH', 0),
(1693, 107, 'Shimane', 'SM', 0),
(1694, 107, 'Shizuoka', 'SZ', 0),
(1695, 107, 'Tochigi', 'TO', 0),
(1696, 107, 'Tokushima', 'TS', 0),
(1697, 107, 'Tokyo', 'TK', 0),
(1698, 107, 'Tottori', 'TT', 0),
(1699, 107, 'Toyama', 'TY', 0),
(1700, 107, 'Wakayama', 'WA', 0),
(1701, 107, 'Yamagata', 'YA', 0),
(1702, 107, 'Yamaguchi', 'YM', 0),
(1703, 107, 'Yamanashi', 'YN', 0),
(1704, 108, '\'Amman', 'AM', 0),
(1705, 108, 'Ajlun', 'AJ', 0),
(1706, 108, 'Al \'Aqabah', 'AA', 0),
(1707, 108, 'Al Balqa\'', 'AB', 0),
(1708, 108, 'Al Karak', 'AK', 0),
(1709, 108, 'Al Mafraq', 'AL', 0),
(1710, 108, 'At Tafilah', 'AT', 0),
(1711, 108, 'Az Zarqa\'', 'AZ', 0),
(1712, 108, 'Irbid', 'IR', 0),
(1713, 108, 'Jarash', 'JA', 0),
(1714, 108, 'Ma\'an', 'MA', 0),
(1715, 108, 'Madaba', 'MD', 0),
(1716, 109, 'Almaty', 'AL', 0),
(1717, 109, 'Almaty City', 'AC', 0),
(1718, 109, 'Aqmola', 'AM', 0),
(1719, 109, 'Aqtobe', 'AQ', 0),
(1720, 109, 'Astana City', 'AS', 0),
(1721, 109, 'Atyrau', 'AT', 0),
(1722, 109, 'Batys Qazaqstan', 'BA', 0),
(1723, 109, 'Bayqongyr City', 'BY', 0),
(1724, 109, 'Mangghystau', 'MA', 0),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 0),
(1726, 109, 'Pavlodar', 'PA', 0),
(1727, 109, 'Qaraghandy', 'QA', 0),
(1728, 109, 'Qostanay', 'QO', 0),
(1729, 109, 'Qyzylorda', 'QY', 0),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 0),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 0),
(1732, 109, 'Zhambyl', 'ZH', 0),
(1733, 110, 'Central', 'CE', 0),
(1734, 110, 'Coast', 'CO', 0),
(1735, 110, 'Eastern', 'EA', 0),
(1736, 110, 'Nairobi Area', 'NA', 0),
(1737, 110, 'North Eastern', 'NE', 0),
(1738, 110, 'Nyanza', 'NY', 0),
(1739, 110, 'Rift Valley', 'RV', 0),
(1740, 110, 'Western', 'WE', 0),
(1741, 111, 'Abaiang', 'AG', 0),
(1742, 111, 'Abemama', 'AM', 0),
(1743, 111, 'Aranuka', 'AK', 0),
(1744, 111, 'Arorae', 'AO', 0),
(1745, 111, 'Banaba', 'BA', 0),
(1746, 111, 'Beru', 'BE', 0),
(1747, 111, 'Butaritari', 'bT', 0),
(1748, 111, 'Kanton', 'KA', 0),
(1749, 111, 'Kiritimati', 'KR', 0),
(1750, 111, 'Kuria', 'KU', 0),
(1751, 111, 'Maiana', 'MI', 0),
(1752, 111, 'Makin', 'MN', 0),
(1753, 111, 'Marakei', 'ME', 0),
(1754, 111, 'Nikunau', 'NI', 0),
(1755, 111, 'Nonouti', 'NO', 0),
(1756, 111, 'Onotoa', 'ON', 0),
(1757, 111, 'Tabiteuea', 'TT', 0),
(1758, 111, 'Tabuaeran', 'TR', 0),
(1759, 111, 'Tamana', 'TM', 0),
(1760, 111, 'Tarawa', 'TW', 0),
(1761, 111, 'Teraina', 'TE', 0),
(1762, 112, 'Chagang-do', 'CHA', 0),
(1763, 112, 'Hamgyong-bukto', 'HAB', 0),
(1764, 112, 'Hamgyong-namdo', 'HAN', 0),
(1765, 112, 'Hwanghae-bukto', 'HWB', 0),
(1766, 112, 'Hwanghae-namdo', 'HWN', 0),
(1767, 112, 'Kangwon-do', 'KAN', 0),
(1768, 112, 'P\'yongan-bukto', 'PYB', 0),
(1769, 112, 'P\'yongan-namdo', 'PYN', 0),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 0),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 0),
(1772, 112, 'P\'yongyang Special City', 'PYO', 0),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 0),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 0),
(1775, 113, 'Cheju-do', 'CD', 0),
(1776, 113, 'Cholla-bukto', 'CB', 0),
(1777, 113, 'Cholla-namdo', 'CN', 0),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 0),
(1779, 113, 'Kangwon-do', 'KA', 0),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 0),
(1781, 113, 'Kyonggi-do', 'KD', 0),
(1782, 113, 'Kyongsang-bukto', 'KB', 0),
(1783, 113, 'Kyongsang-namdo', 'KN', 0),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 0),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 0),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 0),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 0),
(1788, 114, 'Al \'Asimah', 'AL', 0),
(1789, 114, 'Al Ahmadi', 'AA', 0),
(1790, 114, 'Al Farwaniyah', 'AF', 0),
(1791, 114, 'Al Jahra\'', 'AJ', 0),
(1792, 114, 'Hawalli', 'HA', 0),
(1793, 115, 'Bishkek', 'GB', 0),
(1794, 115, 'Batken', 'B', 0),
(1795, 115, 'Chu', 'C', 0),
(1796, 115, 'Jalal-Abad', 'J', 0),
(1797, 115, 'Naryn', 'N', 0),
(1798, 115, 'Osh', 'O', 0),
(1799, 115, 'Talas', 'T', 0),
(1800, 115, 'Ysyk-Kol', 'Y', 0),
(1801, 116, 'Vientiane', 'VT', 0),
(1802, 116, 'Attapu', 'AT', 0),
(1803, 116, 'Bokeo', 'BK', 0),
(1804, 116, 'Bolikhamxai', 'BL', 0),
(1805, 116, 'Champasak', 'CH', 0),
(1806, 116, 'Houaphan', 'HO', 0),
(1807, 116, 'Khammouan', 'KH', 0),
(1808, 116, 'Louang Namtha', 'LM', 0),
(1809, 116, 'Louangphabang', 'LP', 0),
(1810, 116, 'Oudomxai', 'OU', 0),
(1811, 116, 'Phongsali', 'PH', 0),
(1812, 116, 'Salavan', 'SL', 0),
(1813, 116, 'Savannakhet', 'SV', 0),
(1814, 116, 'Vientiane', 'VI', 0),
(1815, 116, 'Xaignabouli', 'XA', 0),
(1816, 116, 'Xekong', 'XE', 0),
(1817, 116, 'Xiangkhoang', 'XI', 0),
(1818, 116, 'Xaisomboun', 'XN', 0),
(1852, 119, 'Berea', 'BE', 0),
(1853, 119, 'Butha-Buthe', 'BB', 0),
(1854, 119, 'Leribe', 'LE', 0),
(1855, 119, 'Mafeteng', 'MF', 0),
(1856, 119, 'Maseru', 'MS', 0),
(1857, 119, 'Mohale\'s Hoek', 'MH', 0),
(1858, 119, 'Mokhotlong', 'MK', 0),
(1859, 119, 'Qacha\'s Nek', 'QN', 0),
(1860, 119, 'Quthing', 'QT', 0),
(1861, 119, 'Thaba-Tseka', 'TT', 0),
(1862, 120, 'Bomi', 'BI', 0),
(1863, 120, 'Bong', 'BG', 0),
(1864, 120, 'Grand Bassa', 'GB', 0),
(1865, 120, 'Grand Cape Mount', 'CM', 0),
(1866, 120, 'Grand Gedeh', 'GG', 0),
(1867, 120, 'Grand Kru', 'GK', 0),
(1868, 120, 'Lofa', 'LO', 0),
(1869, 120, 'Margibi', 'MG', 0),
(1870, 120, 'Maryland', 'ML', 0),
(1871, 120, 'Montserrado', 'MS', 0),
(1872, 120, 'Nimba', 'NB', 0),
(1873, 120, 'River Cess', 'RC', 0),
(1874, 120, 'Sinoe', 'SN', 0),
(1875, 121, 'Ajdabiya', 'AJ', 0),
(1876, 121, 'Al \'Aziziyah', 'AZ', 0),
(1877, 121, 'Al Fatih', 'FA', 0),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 0),
(1879, 121, 'Al Jufrah', 'JU', 0),
(1880, 121, 'Al Khums', 'KH', 0),
(1881, 121, 'Al Kufrah', 'KU', 0),
(1882, 121, 'An Nuqat al Khams', 'NK', 0),
(1883, 121, 'Ash Shati\'', 'AS', 0),
(1884, 121, 'Awbari', 'AW', 0),
(1885, 121, 'Az Zawiyah', 'ZA', 0),
(1886, 121, 'Banghazi', 'BA', 0),
(1887, 121, 'Darnah', 'DA', 0),
(1888, 121, 'Ghadamis', 'GD', 0),
(1889, 121, 'Gharyan', 'GY', 0),
(1890, 121, 'Misratah', 'MI', 0),
(1891, 121, 'Murzuq', 'MZ', 0),
(1892, 121, 'Sabha', 'SB', 0),
(1893, 121, 'Sawfajjin', 'SW', 0),
(1894, 121, 'Surt', 'SU', 0),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 0),
(1896, 121, 'Tarhunah', 'TH', 0),
(1897, 121, 'Tubruq', 'TU', 0),
(1898, 121, 'Yafran', 'YA', 0),
(1899, 121, 'Zlitan', 'ZL', 0),
(1900, 122, 'Vaduz', 'V', 0),
(1901, 122, 'Schaan', 'A', 0),
(1902, 122, 'Balzers', 'B', 0),
(1903, 122, 'Triesen', 'N', 0),
(1904, 122, 'Eschen', 'E', 0),
(1905, 122, 'Mauren', 'M', 0),
(1906, 122, 'Triesenberg', 'T', 0),
(1907, 122, 'Ruggell', 'R', 0),
(1908, 122, 'Gamprin', 'G', 0),
(1909, 122, 'Schellenberg', 'L', 0),
(1910, 122, 'Planken', 'P', 0),
(1911, 123, 'Alytus', 'AL', 0),
(1912, 123, 'Kaunas', 'KA', 0),
(1913, 123, 'Klaipeda', 'KL', 0),
(1914, 123, 'Marijampole', 'MA', 0),
(1915, 123, 'Panevezys', 'PA', 0),
(1916, 123, 'Siauliai', 'SI', 0),
(1917, 123, 'Taurage', 'TA', 0),
(1918, 123, 'Telsiai', 'TE', 0),
(1919, 123, 'Utena', 'UT', 0),
(1920, 123, 'Vilnius', 'VI', 0),
(1921, 124, 'Diekirch', 'DD', 0),
(1922, 124, 'Clervaux', 'DC', 0),
(1923, 124, 'Redange', 'DR', 0),
(1924, 124, 'Vianden', 'DV', 0),
(1925, 124, 'Wiltz', 'DW', 0),
(1926, 124, 'Grevenmacher', 'GG', 0),
(1927, 124, 'Echternach', 'GE', 0),
(1928, 124, 'Remich', 'GR', 0),
(1929, 124, 'Luxembourg', 'LL', 0),
(1930, 124, 'Capellen', 'LC', 0),
(1931, 124, 'Esch-sur-Alzette', 'LE', 0),
(1932, 124, 'Mersch', 'LM', 0),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 0),
(1934, 125, 'St. Anthony Parish', 'ANT', 0),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 0),
(1936, 125, 'Cathedral Parish', 'CAT', 0),
(1937, 125, 'St. Lawrence Parish', 'LAW', 0),
(1938, 127, 'Antananarivo', 'AN', 0),
(1939, 127, 'Antsiranana', 'AS', 0),
(1940, 127, 'Fianarantsoa', 'FN', 0),
(1941, 127, 'Mahajanga', 'MJ', 0),
(1942, 127, 'Toamasina', 'TM', 0),
(1943, 127, 'Toliara', 'TL', 0),
(1944, 128, 'Balaka', 'BLK', 0),
(1945, 128, 'Blantyre', 'BLT', 0),
(1946, 128, 'Chikwawa', 'CKW', 0),
(1947, 128, 'Chiradzulu', 'CRD', 0),
(1948, 128, 'Chitipa', 'CTP', 0),
(1949, 128, 'Dedza', 'DDZ', 0),
(1950, 128, 'Dowa', 'DWA', 0),
(1951, 128, 'Karonga', 'KRG', 0),
(1952, 128, 'Kasungu', 'KSG', 0),
(1953, 128, 'Likoma', 'LKM', 0),
(1954, 128, 'Lilongwe', 'LLG', 0),
(1955, 128, 'Machinga', 'MCG', 0),
(1956, 128, 'Mangochi', 'MGC', 0),
(1957, 128, 'Mchinji', 'MCH', 0),
(1958, 128, 'Mulanje', 'MLJ', 0),
(1959, 128, 'Mwanza', 'MWZ', 0),
(1960, 128, 'Mzimba', 'MZM', 0),
(1961, 128, 'Ntcheu', 'NTU', 0),
(1962, 128, 'Nkhata Bay', 'NKB', 0),
(1963, 128, 'Nkhotakota', 'NKH', 0),
(1964, 128, 'Nsanje', 'NSJ', 0),
(1965, 128, 'Ntchisi', 'NTI', 0),
(1966, 128, 'Phalombe', 'PHL', 0),
(1967, 128, 'Rumphi', 'RMP', 0),
(1968, 128, 'Salima', 'SLM', 0),
(1969, 128, 'Thyolo', 'THY', 0),
(1970, 128, 'Zomba', 'ZBA', 0),
(1971, 129, 'Johor', 'MY-01', 0),
(1972, 129, 'Kedah', 'MY-02', 0),
(1973, 129, 'Kelantan', 'MY-03', 0),
(1974, 129, 'Labuan', 'MY-15', 0),
(1975, 129, 'Melaka', 'MY-04', 0),
(1976, 129, 'Negeri Sembilan', 'MY-05', 0),
(1977, 129, 'Pahang', 'MY-06', 0),
(1978, 129, 'Perak', 'MY-08', 0),
(1979, 129, 'Perlis', 'MY-09', 0),
(1980, 129, 'Pulau Pinang', 'MY-07', 0),
(1981, 129, 'Sabah', 'MY-12', 0),
(1982, 129, 'Sarawak', 'MY-13', 0),
(1983, 129, 'Selangor', 'MY-10', 0),
(1984, 129, 'Terengganu', 'MY-11', 0),
(1985, 129, 'Kuala Lumpur', 'MY-14', 0),
(4035, 129, 'Putrajaya', 'MY-16', 0),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 0),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 0),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 0),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 0),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 0),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 0),
(1992, 130, 'Faadhippolhu', 'FAA', 0),
(1993, 130, 'Male Atoll', 'MAA', 0),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 0),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 0),
(1996, 130, 'Felidhe Atoll', 'FEA', 0),
(1997, 130, 'Mulaku Atoll', 'MUA', 0),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 0),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 0),
(2000, 130, 'Kolhumadulu', 'KLH', 0),
(2001, 130, 'Hadhdhunmathi', 'HDH', 0),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 0),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 0),
(2004, 130, 'Fua Mulaku', 'FMU', 0),
(2005, 130, 'Addu', 'ADD', 0),
(2006, 131, 'Gao', 'GA', 0),
(2007, 131, 'Kayes', 'KY', 0),
(2008, 131, 'Kidal', 'KD', 0),
(2009, 131, 'Koulikoro', 'KL', 0),
(2010, 131, 'Mopti', 'MP', 0),
(2011, 131, 'Segou', 'SG', 0),
(2012, 131, 'Sikasso', 'SK', 0),
(2013, 131, 'Tombouctou', 'TB', 0),
(2014, 131, 'Bamako Capital District', 'CD', 0),
(2015, 132, 'Attard', 'ATT', 0),
(2016, 132, 'Balzan', 'BAL', 0),
(2017, 132, 'Birgu', 'BGU', 0),
(2018, 132, 'Birkirkara', 'BKK', 0),
(2019, 132, 'Birzebbuga', 'BRZ', 0),
(2020, 132, 'Bormla', 'BOR', 0),
(2021, 132, 'Dingli', 'DIN', 0),
(2022, 132, 'Fgura', 'FGU', 0),
(2023, 132, 'Floriana', 'FLO', 0),
(2024, 132, 'Gudja', 'GDJ', 0),
(2025, 132, 'Gzira', 'GZR', 0),
(2026, 132, 'Gargur', 'GRG', 0),
(2027, 132, 'Gaxaq', 'GXQ', 0),
(2028, 132, 'Hamrun', 'HMR', 0),
(2029, 132, 'Iklin', 'IKL', 0),
(2030, 132, 'Isla', 'ISL', 0),
(2031, 132, 'Kalkara', 'KLK', 0),
(2032, 132, 'Kirkop', 'KRK', 0),
(2033, 132, 'Lija', 'LIJ', 0),
(2034, 132, 'Luqa', 'LUQ', 0),
(2035, 132, 'Marsa', 'MRS', 0),
(2036, 132, 'Marsaskala', 'MKL', 0),
(2037, 132, 'Marsaxlokk', 'MXL', 0),
(2038, 132, 'Mdina', 'MDN', 0),
(2039, 132, 'Melliea', 'MEL', 0),
(2040, 132, 'Mgarr', 'MGR', 0),
(2041, 132, 'Mosta', 'MST', 0),
(2042, 132, 'Mqabba', 'MQA', 0),
(2043, 132, 'Msida', 'MSI', 0),
(2044, 132, 'Mtarfa', 'MTF', 0),
(2045, 132, 'Naxxar', 'NAX', 0),
(2046, 132, 'Paola', 'PAO', 0),
(2047, 132, 'Pembroke', 'PEM', 0),
(2048, 132, 'Pieta', 'PIE', 0),
(2049, 132, 'Qormi', 'QOR', 0),
(2050, 132, 'Qrendi', 'QRE', 0),
(2051, 132, 'Rabat', 'RAB', 0),
(2052, 132, 'Safi', 'SAF', 0),
(2053, 132, 'San Giljan', 'SGI', 0),
(2054, 132, 'Santa Lucija', 'SLU', 0),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 0),
(2056, 132, 'San Gwann', 'SGW', 0),
(2057, 132, 'Santa Venera', 'SVE', 0),
(2058, 132, 'Siggiewi', 'SIG', 0),
(2059, 132, 'Sliema', 'SLM', 0),
(2060, 132, 'Swieqi', 'SWQ', 0),
(2061, 132, 'Ta Xbiex', 'TXB', 0),
(2062, 132, 'Tarxien', 'TRX', 0),
(2063, 132, 'Valletta', 'VLT', 0),
(2064, 132, 'Xgajra', 'XGJ', 0),
(2065, 132, 'Zabbar', 'ZBR', 0),
(2066, 132, 'Zebbug', 'ZBG', 0),
(2067, 132, 'Zejtun', 'ZJT', 0),
(2068, 132, 'Zurrieq', 'ZRQ', 0),
(2069, 132, 'Fontana', 'FNT', 0),
(2070, 132, 'Ghajnsielem', 'GHJ', 0),
(2071, 132, 'Gharb', 'GHR', 0),
(2072, 132, 'Ghasri', 'GHS', 0),
(2073, 132, 'Kercem', 'KRC', 0),
(2074, 132, 'Munxar', 'MUN', 0),
(2075, 132, 'Nadur', 'NAD', 0),
(2076, 132, 'Qala', 'QAL', 0),
(2077, 132, 'Victoria', 'VIC', 0),
(2078, 132, 'San Lawrenz', 'SLA', 0),
(2079, 132, 'Sannat', 'SNT', 0),
(2080, 132, 'Xagra', 'ZAG', 0),
(2081, 132, 'Xewkija', 'XEW', 0),
(2082, 132, 'Zebbug', 'ZEB', 0),
(2083, 133, 'Ailinginae', 'ALG', 0),
(2084, 133, 'Ailinglaplap', 'ALL', 0),
(2085, 133, 'Ailuk', 'ALK', 0),
(2086, 133, 'Arno', 'ARN', 0),
(2087, 133, 'Aur', 'AUR', 0),
(2088, 133, 'Bikar', 'BKR', 0),
(2089, 133, 'Bikini', 'BKN', 0),
(2090, 133, 'Bokak', 'BKK', 0),
(2091, 133, 'Ebon', 'EBN', 0),
(2092, 133, 'Enewetak', 'ENT', 0),
(2093, 133, 'Erikub', 'EKB', 0),
(2094, 133, 'Jabat', 'JBT', 0),
(2095, 133, 'Jaluit', 'JLT', 0),
(2096, 133, 'Jemo', 'JEM', 0),
(2097, 133, 'Kili', 'KIL', 0),
(2098, 133, 'Kwajalein', 'KWJ', 0),
(2099, 133, 'Lae', 'LAE', 0),
(2100, 133, 'Lib', 'LIB', 0),
(2101, 133, 'Likiep', 'LKP', 0),
(2102, 133, 'Majuro', 'MJR', 0),
(2103, 133, 'Maloelap', 'MLP', 0),
(2104, 133, 'Mejit', 'MJT', 0),
(2105, 133, 'Mili', 'MIL', 0),
(2106, 133, 'Namorik', 'NMK', 0),
(2107, 133, 'Namu', 'NAM', 0),
(2108, 133, 'Rongelap', 'RGL', 0),
(2109, 133, 'Rongrik', 'RGK', 0),
(2110, 133, 'Toke', 'TOK', 0),
(2111, 133, 'Ujae', 'UJA', 0),
(2112, 133, 'Ujelang', 'UJL', 0),
(2113, 133, 'Utirik', 'UTK', 0),
(2114, 133, 'Wotho', 'WTH', 0),
(2115, 133, 'Wotje', 'WTJ', 0),
(2116, 135, 'Adrar', 'AD', 0),
(2117, 135, 'Assaba', 'AS', 0),
(2118, 135, 'Brakna', 'BR', 0),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 0),
(2120, 135, 'Gorgol', 'GO', 0),
(2121, 135, 'Guidimaka', 'GM', 0),
(2122, 135, 'Hodh Ech Chargui', 'HC', 0),
(2123, 135, 'Hodh El Gharbi', 'HG', 0),
(2124, 135, 'Inchiri', 'IN', 0),
(2125, 135, 'Tagant', 'TA', 0),
(2126, 135, 'Tiris Zemmour', 'TZ', 0),
(2127, 135, 'Trarza', 'TR', 0),
(2128, 135, 'Nouakchott', 'NO', 0),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 0),
(2130, 136, 'Curepipe', 'CU', 0),
(2131, 136, 'Port Louis', 'PU', 0),
(2132, 136, 'Quatre Bornes', 'QB', 0),
(2133, 136, 'Vacoas-Phoenix', 'VP', 0),
(2134, 136, 'Agalega Islands', 'AG', 0),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 0),
(2136, 136, 'Rodrigues', 'RO', 0),
(2137, 136, 'Black River', 'BL', 0),
(2138, 136, 'Flacq', 'FL', 0),
(2139, 136, 'Grand Port', 'GP', 0),
(2140, 136, 'Moka', 'MO', 0),
(2141, 136, 'Pamplemousses', 'PA', 0),
(2142, 136, 'Plaines Wilhems', 'PW', 0),
(2143, 136, 'Port Louis', 'PL', 0),
(2144, 136, 'Riviere du Rempart', 'RR', 0),
(2145, 136, 'Savanne', 'SA', 0),
(2146, 138, 'Baja California Norte', 'BN', 0),
(2147, 138, 'Baja California Sur', 'BS', 0),
(2148, 138, 'Campeche', 'CA', 0),
(2149, 138, 'Chiapas', 'CI', 0),
(2150, 138, 'Chihuahua', 'CH', 0),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 0),
(2152, 138, 'Colima', 'CL', 0),
(2153, 138, 'Distrito Federal', 'DF', 0),
(2154, 138, 'Durango', 'DU', 0),
(2155, 138, 'Guanajuato', 'GA', 0),
(2156, 138, 'Guerrero', 'GE', 0),
(2157, 138, 'Hidalgo', 'HI', 0),
(2158, 138, 'Jalisco', 'JA', 0),
(2159, 138, 'Mexico', 'ME', 0),
(2160, 138, 'Michoacan de Ocampo', 'MI', 0),
(2161, 138, 'Morelos', 'MO', 0),
(2162, 138, 'Nayarit', 'NA', 0),
(2163, 138, 'Nuevo Leon', 'NL', 0),
(2164, 138, 'Oaxaca', 'OA', 0),
(2165, 138, 'Puebla', 'PU', 0),
(2166, 138, 'Queretaro de Arteaga', 'QA', 0),
(2167, 138, 'Quintana Roo', 'QR', 0),
(2168, 138, 'San Luis Potosi', 'SA', 0),
(2169, 138, 'Sinaloa', 'SI', 0),
(2170, 138, 'Sonora', 'SO', 0),
(2171, 138, 'Tabasco', 'TB', 0),
(2172, 138, 'Tamaulipas', 'TM', 0),
(2173, 138, 'Tlaxcala', 'TL', 0),
(2174, 138, 'Veracruz-Llave', 'VE', 0),
(2175, 138, 'Yucatan', 'YU', 0),
(2176, 138, 'Zacatecas', 'ZA', 0),
(2177, 139, 'Chuuk', 'C', 0),
(2178, 139, 'Kosrae', 'K', 0),
(2179, 139, 'Pohnpei', 'P', 0),
(2180, 139, 'Yap', 'Y', 0),
(2181, 140, 'Gagauzia', 'GA', 0),
(2182, 140, 'Chisinau', 'CU', 0),
(2183, 140, 'Balti', 'BA', 0),
(2184, 140, 'Cahul', 'CA', 0),
(2185, 140, 'Edinet', 'ED', 0),
(2186, 140, 'Lapusna', 'LA', 0),
(2187, 140, 'Orhei', 'OR', 0),
(2188, 140, 'Soroca', 'SO', 0),
(2189, 140, 'Tighina', 'TI', 0),
(2190, 140, 'Ungheni', 'UN', 0),
(2191, 140, 'St‚nga Nistrului', 'SN', 0),
(2192, 141, 'Fontvieille', 'FV', 0),
(2193, 141, 'La Condamine', 'LC', 0),
(2194, 141, 'Monaco-Ville', 'MV', 0),
(2195, 141, 'Monte-Carlo', 'MC', 0),
(2196, 142, 'Ulanbaatar', '1', 0),
(2197, 142, 'Orhon', '035', 0),
(2198, 142, 'Darhan uul', '037', 0),
(2199, 142, 'Hentiy', '039', 0),
(2200, 142, 'Hovsgol', '041', 0),
(2201, 142, 'Hovd', '043', 0),
(2202, 142, 'Uvs', '046', 0),
(2203, 142, 'Tov', '047', 0),
(2204, 142, 'Selenge', '049', 0),
(2205, 142, 'Suhbaatar', '051', 0),
(2206, 142, 'Omnogovi', '053', 0),
(2207, 142, 'Ovorhangay', '055', 0),
(2208, 142, 'Dzavhan', '057', 0),
(2209, 142, 'DundgovL', '059', 0),
(2210, 142, 'Dornod', '061', 0),
(2211, 142, 'Dornogov', '063', 0),
(2212, 142, 'Govi-Sumber', '064', 0),
(2213, 142, 'Govi-Altay', '065', 0),
(2214, 142, 'Bulgan', '067', 0),
(2215, 142, 'Bayanhongor', '069', 0),
(2216, 142, 'Bayan-Olgiy', '071', 0),
(2217, 142, 'Arhangay', '073', 0),
(2218, 143, 'Saint Anthony', 'A', 0),
(2219, 143, 'Saint Georges', 'G', 0),
(2220, 143, 'Saint Peter', 'P', 0),
(2221, 144, 'Agadir', 'AGD', 0),
(2222, 144, 'Al Hoceima', 'HOC', 0),
(2223, 144, 'Azilal', 'AZI', 0),
(2224, 144, 'Beni Mellal', 'BME', 0),
(2225, 144, 'Ben Slimane', 'BSL', 0),
(2226, 144, 'Boulemane', 'BLM', 0),
(2227, 144, 'Casablanca', 'CBL', 0),
(2228, 144, 'Chaouen', 'CHA', 0),
(2229, 144, 'El Jadida', 'EJA', 0),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 0),
(2231, 144, 'Er Rachidia', 'ERA', 0),
(2232, 144, 'Essaouira', 'ESS', 0),
(2233, 144, 'Fes', 'FES', 0),
(2234, 144, 'Figuig', 'FIG', 0),
(2235, 144, 'Guelmim', 'GLM', 0),
(2236, 144, 'Ifrane', 'IFR', 0),
(2237, 144, 'Kenitra', 'KEN', 0),
(2238, 144, 'Khemisset', 'KHM', 0),
(2239, 144, 'Khenifra', 'KHN', 0),
(2240, 144, 'Khouribga', 'KHO', 0),
(2241, 144, 'Laayoune', 'LYN', 0),
(2242, 144, 'Larache', 'LAR', 0),
(2243, 144, 'Marrakech', 'MRK', 0),
(2244, 144, 'Meknes', 'MKN', 0),
(2245, 144, 'Nador', 'NAD', 0),
(2246, 144, 'Ouarzazate', 'ORZ', 0),
(2247, 144, 'Oujda', 'OUJ', 0),
(2248, 144, 'Rabat-Sale', 'RSA', 0),
(2249, 144, 'Safi', 'SAF', 0),
(2250, 144, 'Settat', 'SET', 0),
(2251, 144, 'Sidi Kacem', 'SKA', 0),
(2252, 144, 'Tangier', 'TGR', 0),
(2253, 144, 'Tan-Tan', 'TAN', 0),
(2254, 144, 'Taounate', 'TAO', 0),
(2255, 144, 'Taroudannt', 'TRD', 0),
(2256, 144, 'Tata', 'TAT', 0),
(2257, 144, 'Taza', 'TAZ', 0),
(2258, 144, 'Tetouan', 'TET', 0),
(2259, 144, 'Tiznit', 'TIZ', 0),
(2260, 144, 'Ad Dakhla', 'ADK', 0),
(2261, 144, 'Boujdour', 'BJD', 0),
(2262, 144, 'Es Smara', 'ESM', 0),
(2263, 145, 'Cabo Delgado', 'CD', 0),
(2264, 145, 'Gaza', 'GZ', 0),
(2265, 145, 'Inhambane', 'IN', 0),
(2266, 145, 'Manica', 'MN', 0),
(2267, 145, 'Maputo (city)', 'MC', 0),
(2268, 145, 'Maputo', 'MP', 0),
(2269, 145, 'Nampula', 'NA', 0),
(2270, 145, 'Niassa', 'NI', 0),
(2271, 145, 'Sofala', 'SO', 0),
(2272, 145, 'Tete', 'TE', 0),
(2273, 145, 'Zambezia', 'ZA', 0),
(2274, 146, 'Ayeyarwady', 'AY', 0),
(2275, 146, 'Bago', 'BG', 0),
(2276, 146, 'Magway', 'MG', 0),
(2277, 146, 'Mandalay', 'MD', 0),
(2278, 146, 'Sagaing', 'SG', 0),
(2279, 146, 'Tanintharyi', 'TN', 0),
(2280, 146, 'Yangon', 'YG', 0),
(2281, 146, 'Chin State', 'CH', 0),
(2282, 146, 'Kachin State', 'KC', 0),
(2283, 146, 'Kayah State', 'KH', 0),
(2284, 146, 'Kayin State', 'KN', 0),
(2285, 146, 'Mon State', 'MN', 0),
(2286, 146, 'Rakhine State', 'RK', 0),
(2287, 146, 'Shan State', 'SH', 0),
(2288, 147, 'Caprivi', 'CA', 0),
(2289, 147, 'Erongo', 'ER', 0),
(2290, 147, 'Hardap', 'HA', 0),
(2291, 147, 'Karas', 'KR', 0),
(2292, 147, 'Kavango', 'KV', 0),
(2293, 147, 'Khomas', 'KH', 0),
(2294, 147, 'Kunene', 'KU', 0),
(2295, 147, 'Ohangwena', 'OW', 0),
(2296, 147, 'Omaheke', 'OK', 0),
(2297, 147, 'Omusati', 'OT', 0),
(2298, 147, 'Oshana', 'ON', 0),
(2299, 147, 'Oshikoto', 'OO', 0),
(2300, 147, 'Otjozondjupa', 'OJ', 0),
(2301, 148, 'Aiwo', 'AO', 0),
(2302, 148, 'Anabar', 'AA', 0),
(2303, 148, 'Anetan', 'AT', 0),
(2304, 148, 'Anibare', 'AI', 0),
(2305, 148, 'Baiti', 'BA', 0),
(2306, 148, 'Boe', 'BO', 0),
(2307, 148, 'Buada', 'BU', 0),
(2308, 148, 'Denigomodu', 'DE', 0),
(2309, 148, 'Ewa', 'EW', 0),
(2310, 148, 'Ijuw', 'IJ', 0),
(2311, 148, 'Meneng', 'ME', 0),
(2312, 148, 'Nibok', 'NI', 0),
(2313, 148, 'Uaboe', 'UA', 0),
(2314, 148, 'Yaren', 'YA', 0),
(2315, 149, 'Bagmati', 'BA', 0),
(2316, 149, 'Bheri', 'BH', 0),
(2317, 149, 'Dhawalagiri', 'DH', 0),
(2318, 149, 'Gandaki', 'GA', 0),
(2319, 149, 'Janakpur', 'JA', 0),
(2320, 149, 'Karnali', 'KA', 0),
(2321, 149, 'Kosi', 'KO', 0),
(2322, 149, 'Lumbini', 'LU', 0),
(2323, 149, 'Mahakali', 'MA', 0),
(2324, 149, 'Mechi', 'ME', 0),
(2325, 149, 'Narayani', 'NA', 0),
(2326, 149, 'Rapti', 'RA', 0),
(2327, 149, 'Sagarmatha', 'SA', 0),
(2328, 149, 'Seti', 'SE', 0),
(2329, 150, 'Drenthe', 'DR', 0),
(2330, 150, 'Flevoland', 'FL', 0),
(2331, 150, 'Friesland', 'FR', 0),
(2332, 150, 'Gelderland', 'GE', 0),
(2333, 150, 'Groningen', 'GR', 0),
(2334, 150, 'Limburg', 'LI', 0),
(2335, 150, 'Noord-Brabant', 'NB', 0),
(2336, 150, 'Noord-Holland', 'NH', 0),
(2337, 150, 'Overijssel', 'OV', 0),
(2338, 150, 'Utrecht', 'UT', 0),
(2339, 150, 'Zeeland', 'ZE', 0),
(2340, 150, 'Zuid-Holland', 'ZH', 0),
(2341, 152, 'Iles Loyaute', 'L', 0),
(2342, 152, 'Nord', 'N', 0),
(2343, 152, 'Sud', 'S', 0),
(2344, 153, 'Auckland', 'AUK', 0),
(2345, 153, 'Bay of Plenty', 'BOP', 0),
(2346, 153, 'Canterbury', 'CAN', 0),
(2347, 153, 'Coromandel', 'COR', 0),
(2348, 153, 'Gisborne', 'GIS', 0),
(2349, 153, 'Fiordland', 'FIO', 0),
(2350, 153, 'Hawke\'s Bay', 'HKB', 0),
(2351, 153, 'Marlborough', 'MBH', 0),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 0),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 0),
(2354, 153, 'Nelson', 'NSN', 0),
(2355, 153, 'Northland', 'NTL', 0),
(2356, 153, 'Otago', 'OTA', 0),
(2357, 153, 'Southland', 'STL', 0),
(2358, 153, 'Taranaki', 'TKI', 0),
(2359, 153, 'Wellington', 'WGN', 0),
(2360, 153, 'Waikato', 'WKO', 0),
(2361, 153, 'Wairarapa', 'WAI', 0),
(2362, 153, 'West Coast', 'WTC', 0),
(2363, 154, 'Atlantico Norte', 'AN', 0),
(2364, 154, 'Atlantico Sur', 'AS', 0),
(2365, 154, 'Boaco', 'BO', 0),
(2366, 154, 'Carazo', 'CA', 0),
(2367, 154, 'Chinandega', 'CI', 0),
(2368, 154, 'Chontales', 'CO', 0),
(2369, 154, 'Esteli', 'ES', 0),
(2370, 154, 'Granada', 'GR', 0),
(2371, 154, 'Jinotega', 'JI', 0),
(2372, 154, 'Leon', 'LE', 0),
(2373, 154, 'Madriz', 'MD', 0),
(2374, 154, 'Managua', 'MN', 0),
(2375, 154, 'Masaya', 'MS', 0),
(2376, 154, 'Matagalpa', 'MT', 0),
(2377, 154, 'Nuevo Segovia', 'NS', 0),
(2378, 154, 'Rio San Juan', 'RS', 0),
(2379, 154, 'Rivas', 'RI', 0),
(2380, 155, 'Agadez', 'AG', 0),
(2381, 155, 'Diffa', 'DF', 0),
(2382, 155, 'Dosso', 'DS', 0),
(2383, 155, 'Maradi', 'MA', 0),
(2384, 155, 'Niamey', 'NM', 0),
(2385, 155, 'Tahoua', 'TH', 0),
(2386, 155, 'Tillaberi', 'TL', 0),
(2387, 155, 'Zinder', 'ZD', 0),
(2388, 156, 'Abia', 'AB', 0),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 0),
(2390, 156, 'Adamawa', 'AD', 0),
(2391, 156, 'Akwa Ibom', 'AK', 0),
(2392, 156, 'Anambra', 'AN', 0),
(2393, 156, 'Bauchi', 'BC', 0),
(2394, 156, 'Bayelsa', 'BY', 0),
(2395, 156, 'Benue', 'BN', 0),
(2396, 156, 'Borno', 'BO', 0),
(2397, 156, 'Cross River', 'CR', 0),
(2398, 156, 'Delta', 'DE', 0),
(2399, 156, 'Ebonyi', 'EB', 0),
(2400, 156, 'Edo', 'ED', 0),
(2401, 156, 'Ekiti', 'EK', 0),
(2402, 156, 'Enugu', 'EN', 0),
(2403, 156, 'Gombe', 'GO', 0),
(2404, 156, 'Imo', 'IM', 0),
(2405, 156, 'Jigawa', 'JI', 0),
(2406, 156, 'Kaduna', 'KD', 0),
(2407, 156, 'Kano', 'KN', 0),
(2408, 156, 'Katsina', 'KT', 0),
(2409, 156, 'Kebbi', 'KE', 0),
(2410, 156, 'Kogi', 'KO', 0),
(2411, 156, 'Kwara', 'KW', 0),
(2412, 156, 'Lagos', 'LA', 0),
(2413, 156, 'Nassarawa', 'NA', 0),
(2414, 156, 'Niger', 'NI', 0),
(2415, 156, 'Ogun', 'OG', 0),
(2416, 156, 'Ondo', 'ONG', 0),
(2417, 156, 'Osun', 'OS', 0),
(2418, 156, 'Oyo', 'OY', 0),
(2419, 156, 'Plateau', 'PL', 0),
(2420, 156, 'Rivers', 'RI', 0),
(2421, 156, 'Sokoto', 'SO', 0),
(2422, 156, 'Taraba', 'TA', 0),
(2423, 156, 'Yobe', 'YO', 0),
(2424, 156, 'Zamfara', 'ZA', 0),
(2425, 159, 'Northern Islands', 'N', 0),
(2426, 159, 'Rota', 'R', 0),
(2427, 159, 'Saipan', 'S', 0),
(2428, 159, 'Tinian', 'T', 0),
(2429, 160, 'Akershus', 'AK', 0),
(2430, 160, 'Aust-Agder', 'AA', 0),
(2431, 160, 'Buskerud', 'BU', 0),
(2432, 160, 'Finnmark', 'FM', 0),
(2433, 160, 'Hedmark', 'HM', 0),
(2434, 160, 'Hordaland', 'HL', 0),
(2435, 160, 'More og Romdal', 'MR', 0),
(2436, 160, 'Nord-Trondelag', 'NT', 0),
(2437, 160, 'Nordland', 'NL', 0),
(2438, 160, 'Ostfold', 'OF', 0),
(2439, 160, 'Oppland', 'OP', 0),
(2440, 160, 'Oslo', 'OL', 0),
(2441, 160, 'Rogaland', 'RL', 0),
(2442, 160, 'Sor-Trondelag', 'ST', 0),
(2443, 160, 'Sogn og Fjordane', 'SJ', 0),
(2444, 160, 'Svalbard', 'SV', 0),
(2445, 160, 'Telemark', 'TM', 0),
(2446, 160, 'Troms', 'TR', 0),
(2447, 160, 'Vest-Agder', 'VA', 0),
(2448, 160, 'Vestfold', 'VF', 0),
(2449, 161, 'Ad Dakhiliyah', 'DA', 0),
(2450, 161, 'Al Batinah', 'BA', 0),
(2451, 161, 'Al Wusta', 'WU', 0),
(2452, 161, 'Ash Sharqiyah', 'SH', 0),
(2453, 161, 'Az Zahirah', 'ZA', 0),
(2454, 161, 'Masqat', 'MA', 0),
(2455, 161, 'Musandam', 'MU', 0),
(2456, 161, 'Zufar', 'ZU', 0),
(2457, 162, 'Balochistan', 'B', 0),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 0),
(2459, 162, 'Islamabad Capital Territory', 'I', 0),
(2460, 162, 'North-West Frontier', 'N', 0),
(2461, 162, 'Punjab', 'P', 0),
(2462, 162, 'Sindh', 'S', 0),
(2463, 163, 'Aimeliik', 'AM', 0),
(2464, 163, 'Airai', 'AR', 0),
(2465, 163, 'Angaur', 'AN', 0),
(2466, 163, 'Hatohobei', 'HA', 0),
(2467, 163, 'Kayangel', 'KA', 0),
(2468, 163, 'Koror', 'KO', 0),
(2469, 163, 'Melekeok', 'ME', 0),
(2470, 163, 'Ngaraard', 'NA', 0),
(2471, 163, 'Ngarchelong', 'NG', 0),
(2472, 163, 'Ngardmau', 'ND', 0),
(2473, 163, 'Ngatpang', 'NT', 0),
(2474, 163, 'Ngchesar', 'NC', 0),
(2475, 163, 'Ngeremlengui', 'NR', 0),
(2476, 163, 'Ngiwal', 'NW', 0),
(2477, 163, 'Peleliu', 'PE', 0),
(2478, 163, 'Sonsorol', 'SO', 0),
(2479, 164, 'Bocas del Toro', 'BT', 0),
(2480, 164, 'Chiriqui', 'CH', 0),
(2481, 164, 'Cocle', 'CC', 0),
(2482, 164, 'Colon', 'CL', 0),
(2483, 164, 'Darien', 'DA', 0),
(2484, 164, 'Herrera', 'HE', 0),
(2485, 164, 'Los Santos', 'LS', 0),
(2486, 164, 'Panama', 'PA', 0),
(2487, 164, 'San Blas', 'SB', 0),
(2488, 164, 'Veraguas', 'VG', 0),
(2489, 165, 'Bougainville', 'BV', 0),
(2490, 165, 'Central', 'CE', 0),
(2491, 165, 'Chimbu', 'CH', 0),
(2492, 165, 'Eastern Highlands', 'EH', 0),
(2493, 165, 'East New Britain', 'EB', 0),
(2494, 165, 'East Sepik', 'ES', 0),
(2495, 165, 'Enga', 'EN', 0),
(2496, 165, 'Gulf', 'GU', 0),
(2497, 165, 'Madang', 'MD', 0),
(2498, 165, 'Manus', 'MN', 0),
(2499, 165, 'Milne Bay', 'MB', 0),
(2500, 165, 'Morobe', 'MR', 0),
(2501, 165, 'National Capital', 'NC', 0),
(2502, 165, 'New Ireland', 'NI', 0),
(2503, 165, 'Northern', 'NO', 0),
(2504, 165, 'Sandaun', 'SA', 0),
(2505, 165, 'Southern Highlands', 'SH', 0),
(2506, 165, 'Western', 'WE', 0),
(2507, 165, 'Western Highlands', 'WH', 0),
(2508, 165, 'West New Britain', 'WB', 0),
(2509, 166, 'Alto Paraguay', 'AG', 0),
(2510, 166, 'Alto Parana', 'AN', 0),
(2511, 166, 'Amambay', 'AM', 0),
(2512, 166, 'Asuncion', 'AS', 0),
(2513, 166, 'Boqueron', 'BO', 0),
(2514, 166, 'Caaguazu', 'CG', 0),
(2515, 166, 'Caazapa', 'CZ', 0),
(2516, 166, 'Canindeyu', 'CN', 0),
(2517, 166, 'Central', 'CE', 0),
(2518, 166, 'Concepcion', 'CC', 0),
(2519, 166, 'Cordillera', 'CD', 0),
(2520, 166, 'Guaira', 'GU', 0),
(2521, 166, 'Itapua', 'IT', 0),
(2522, 166, 'Misiones', 'MI', 0),
(2523, 166, 'Neembucu', 'NE', 0),
(2524, 166, 'Paraguari', 'PA', 0),
(2525, 166, 'Presidente Hayes', 'PH', 0),
(2526, 166, 'San Pedro', 'SP', 0),
(2527, 167, 'Amazonas', 'AM', 0),
(2528, 167, 'Ancash', 'AN', 0),
(2529, 167, 'Apurimac', 'AP', 0),
(2530, 167, 'Arequipa', 'AR', 0),
(2531, 167, 'Ayacucho', 'AY', 0),
(2532, 167, 'Cajamarca', 'CJ', 0),
(2533, 167, 'Callao', 'CL', 0),
(2534, 167, 'Cusco', 'CU', 0),
(2535, 167, 'Huancavelica', 'HV', 0),
(2536, 167, 'Huanuco', 'HO', 0),
(2537, 167, 'Ica', 'IC', 0),
(2538, 167, 'Junin', 'JU', 0),
(2539, 167, 'La Libertad', 'LD', 0),
(2540, 167, 'Lambayeque', 'LY', 0),
(2541, 167, 'Lima', 'LI', 0),
(2542, 167, 'Loreto', 'LO', 0),
(2543, 167, 'Madre de Dios', 'MD', 0),
(2544, 167, 'Moquegua', 'MO', 0),
(2545, 167, 'Pasco', 'PA', 0),
(2546, 167, 'Piura', 'PI', 0),
(2547, 167, 'Puno', 'PU', 0),
(2548, 167, 'San Martin', 'SM', 0),
(2549, 167, 'Tacna', 'TA', 0),
(2550, 167, 'Tumbes', 'TU', 0),
(2551, 167, 'Ucayali', 'UC', 0),
(2552, 168, 'Abra', 'ABR', 0),
(2553, 168, 'Agusan del Norte', 'ANO', 0),
(2554, 168, 'Agusan del Sur', 'ASU', 0),
(2555, 168, 'Aklan', 'AKL', 0),
(2556, 168, 'Albay', 'ALB', 0),
(2557, 168, 'Antique', 'ANT', 0),
(2558, 168, 'Apayao', 'APY', 0),
(2559, 168, 'Aurora', 'AUR', 0),
(2560, 168, 'Basilan', 'BAS', 0),
(2561, 168, 'Bataan', 'BTA', 0),
(2562, 168, 'Batanes', 'BTE', 0),
(2563, 168, 'Batangas', 'BTG', 0),
(2564, 168, 'Biliran', 'BLR', 0),
(2565, 168, 'Benguet', 'BEN', 0),
(2566, 168, 'Bohol', 'BOL', 0),
(2567, 168, 'Bukidnon', 'BUK', 0),
(2568, 168, 'Bulacan', 'BUL', 0),
(2569, 168, 'Cagayan', 'CAG', 0),
(2570, 168, 'Camarines Norte', 'CNO', 0),
(2571, 168, 'Camarines Sur', 'CSU', 0),
(2572, 168, 'Camiguin', 'CAM', 0),
(2573, 168, 'Capiz', 'CAP', 0),
(2574, 168, 'Catanduanes', 'CAT', 0),
(2575, 168, 'Cavite', 'CAV', 0),
(2576, 168, 'Cebu', 'CEB', 0),
(2577, 168, 'Compostela', 'CMP', 0),
(2578, 168, 'Davao del Norte', 'DNO', 0),
(2579, 168, 'Davao del Sur', 'DSU', 0),
(2580, 168, 'Davao Oriental', 'DOR', 0),
(2581, 168, 'Eastern Samar', 'ESA', 0),
(2582, 168, 'Guimaras', 'GUI', 0),
(2583, 168, 'Ifugao', 'IFU', 0),
(2584, 168, 'Ilocos Norte', 'INO', 0),
(2585, 168, 'Ilocos Sur', 'ISU', 0),
(2586, 168, 'Iloilo', 'ILO', 0),
(2587, 168, 'Isabela', 'ISA', 0),
(2588, 168, 'Kalinga', 'KAL', 0),
(2589, 168, 'Laguna', 'LAG', 0),
(2590, 168, 'Lanao del Norte', 'LNO', 0),
(2591, 168, 'Lanao del Sur', 'LSU', 0),
(2592, 168, 'La Union', 'UNI', 0),
(2593, 168, 'Leyte', 'LEY', 0),
(2594, 168, 'Maguindanao', 'MAG', 0),
(2595, 168, 'Marinduque', 'MRN', 0),
(2596, 168, 'Masbate', 'MSB', 0),
(2597, 168, 'Mindoro Occidental', 'MIC', 0),
(2598, 168, 'Mindoro Oriental', 'MIR', 0),
(2599, 168, 'Misamis Occidental', 'MSC', 0),
(2600, 168, 'Misamis Oriental', 'MOR', 0),
(2601, 168, 'Mountain', 'MOP', 0),
(2602, 168, 'Negros Occidental', 'NOC', 0),
(2603, 168, 'Negros Oriental', 'NOR', 0),
(2604, 168, 'North Cotabato', 'NCT', 0),
(2605, 168, 'Northern Samar', 'NSM', 0),
(2606, 168, 'Nueva Ecija', 'NEC', 0),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 0),
(2608, 168, 'Palawan', 'PLW', 0),
(2609, 168, 'Pampanga', 'PMP', 0),
(2610, 168, 'Pangasinan', 'PNG', 0),
(2611, 168, 'Quezon', 'QZN', 0),
(2612, 168, 'Quirino', 'QRN', 0),
(2613, 168, 'Rizal', 'RIZ', 0),
(2614, 168, 'Romblon', 'ROM', 0),
(2615, 168, 'Samar', 'SMR', 0),
(2616, 168, 'Sarangani', 'SRG', 0),
(2617, 168, 'Siquijor', 'SQJ', 0),
(2618, 168, 'Sorsogon', 'SRS', 0),
(2619, 168, 'South Cotabato', 'SCO', 0),
(2620, 168, 'Southern Leyte', 'SLE', 0),
(2621, 168, 'Sultan Kudarat', 'SKU', 0),
(2622, 168, 'Sulu', 'SLU', 0),
(2623, 168, 'Surigao del Norte', 'SNO', 0),
(2624, 168, 'Surigao del Sur', 'SSU', 0),
(2625, 168, 'Tarlac', 'TAR', 0),
(2626, 168, 'Tawi-Tawi', 'TAW', 0),
(2627, 168, 'Zambales', 'ZBL', 0),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 0),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 0),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 0),
(2631, 170, 'Dolnoslaskie', 'DO', 0),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 0),
(2633, 170, 'Lodzkie', 'LO', 0),
(2634, 170, 'Lubelskie', 'LL', 0),
(2635, 170, 'Lubuskie', 'LU', 0),
(2636, 170, 'Malopolskie', 'ML', 0),
(2637, 170, 'Mazowieckie', 'MZ', 0),
(2638, 170, 'Opolskie', 'OP', 0),
(2639, 170, 'Podkarpackie', 'PP', 0),
(2640, 170, 'Podlaskie', 'PL', 0),
(2641, 170, 'Pomorskie', 'PM', 0),
(2642, 170, 'Slaskie', 'SL', 0),
(2643, 170, 'Swietokrzyskie', 'SW', 0),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 0),
(2645, 170, 'Wielkopolskie', 'WP', 0),
(2646, 170, 'Zachodniopomorskie', 'ZA', 0),
(2647, 198, 'Saint Pierre', 'P', 0),
(2648, 198, 'Miquelon', 'M', 0),
(2649, 171, 'A&ccedil;ores', 'AC', 0),
(2650, 171, 'Aveiro', 'AV', 0),
(2651, 171, 'Beja', 'BE', 0),
(2652, 171, 'Braga', 'BR', 0),
(2653, 171, 'Bragan&ccedil;a', 'BA', 0),
(2654, 171, 'Castelo Branco', 'CB', 0),
(2655, 171, 'Coimbra', 'CO', 0),
(2656, 171, '&Eacute;vora', 'EV', 0),
(2657, 171, 'Faro', 'FA', 0),
(2658, 171, 'Guarda', 'GU', 0),
(2659, 171, 'Leiria', 'LE', 0),
(2660, 171, 'Lisboa', 'LI', 0),
(2661, 171, 'Madeira', 'ME', 0),
(2662, 171, 'Portalegre', 'PO', 0),
(2663, 171, 'Porto', 'PR', 0),
(2664, 171, 'Santar&eacute;m', 'SA', 0),
(2665, 171, 'Set&uacute;bal', 'SE', 0),
(2666, 171, 'Viana do Castelo', 'VC', 0),
(2667, 171, 'Vila Real', 'VR', 0),
(2668, 171, 'Viseu', 'VI', 0),
(2669, 173, 'Ad Dawhah', 'DW', 0),
(2670, 173, 'Al Ghuwayriyah', 'GW', 0),
(2671, 173, 'Al Jumayliyah', 'JM', 0),
(2672, 173, 'Al Khawr', 'KR', 0),
(2673, 173, 'Al Wakrah', 'WK', 0),
(2674, 173, 'Ar Rayyan', 'RN', 0),
(2675, 173, 'Jarayan al Batinah', 'JB', 0),
(2676, 173, 'Madinat ash Shamal', 'MS', 0),
(2677, 173, 'Umm Sa\'id', 'UD', 0),
(2678, 173, 'Umm Salal', 'UL', 0),
(2679, 175, 'Alba', 'AB', 0),
(2680, 175, 'Arad', 'AR', 0),
(2681, 175, 'Arges', 'AG', 0),
(2682, 175, 'Bacau', 'BC', 0),
(2683, 175, 'Bihor', 'BH', 0),
(2684, 175, 'Bistrita-Nasaud', 'BN', 0),
(2685, 175, 'Botosani', 'BT', 0),
(2686, 175, 'Brasov', 'BV', 0),
(2687, 175, 'Braila', 'BR', 0),
(2688, 175, 'Bucuresti', 'B', 0),
(2689, 175, 'Buzau', 'BZ', 0),
(2690, 175, 'Caras-Severin', 'CS', 0),
(2691, 175, 'Calarasi', 'CL', 0),
(2692, 175, 'Cluj', 'CJ', 0),
(2693, 175, 'Constanta', 'CT', 0),
(2694, 175, 'Covasna', 'CV', 0),
(2695, 175, 'Dimbovita', 'DB', 0),
(2696, 175, 'Dolj', 'DJ', 0),
(2697, 175, 'Galati', 'GL', 0),
(2698, 175, 'Giurgiu', 'GR', 0),
(2699, 175, 'Gorj', 'GJ', 0),
(2700, 175, 'Harghita', 'HR', 0),
(2701, 175, 'Hunedoara', 'HD', 0),
(2702, 175, 'Ialomita', 'IL', 0),
(2703, 175, 'Iasi', 'IS', 0),
(2704, 175, 'Ilfov', 'IF', 0),
(2705, 175, 'Maramures', 'MM', 0),
(2706, 175, 'Mehedinti', 'MH', 0),
(2707, 175, 'Mures', 'MS', 0),
(2708, 175, 'Neamt', 'NT', 0),
(2709, 175, 'Olt', 'OT', 0),
(2710, 175, 'Prahova', 'PH', 0),
(2711, 175, 'Satu-Mare', 'SM', 0),
(2712, 175, 'Salaj', 'SJ', 0),
(2713, 175, 'Sibiu', 'SB', 0),
(2714, 175, 'Suceava', 'SV', 0),
(2715, 175, 'Teleorman', 'TR', 0),
(2716, 175, 'Timis', 'TM', 0),
(2717, 175, 'Tulcea', 'TL', 0),
(2718, 175, 'Vaslui', 'VS', 0),
(2719, 175, 'Valcea', 'VL', 0),
(2720, 175, 'Vrancea', 'VN', 0),
(2721, 176, 'Abakan', 'AB', 0),
(2722, 176, 'Aginskoye', 'AG', 0),
(2723, 176, 'Anadyr', 'AN', 0),
(2724, 176, 'Arkahangelsk', 'AR', 0),
(2725, 176, 'Astrakhan', 'AS', 0),
(2726, 176, 'Barnaul', 'BA', 0),
(2727, 176, 'Belgorod', 'BE', 0),
(2728, 176, 'Birobidzhan', 'BI', 0),
(2729, 176, 'Blagoveshchensk', 'BL', 0),
(2730, 176, 'Bryansk', 'BR', 0),
(2731, 176, 'Cheboksary', 'CH', 0),
(2732, 176, 'Chelyabinsk', 'CL', 0),
(2733, 176, 'Cherkessk', 'CR', 0),
(2734, 176, 'Chita', 'CI', 0),
(2735, 176, 'Dudinka', 'DU', 0),
(2736, 176, 'Elista', 'EL', 0),
(2738, 176, 'Gorno-Altaysk', 'GA', 0),
(2739, 176, 'Groznyy', 'GR', 0),
(2740, 176, 'Irkutsk', 'IR', 0),
(2741, 176, 'Ivanovo', 'IV', 0),
(2742, 176, 'Izhevsk', 'IZ', 0),
(2743, 176, 'Kalinigrad', 'KA', 0),
(2744, 176, 'Kaluga', 'KL', 0),
(2745, 176, 'Kasnodar', 'KS', 0),
(2746, 176, 'Kazan', 'KZ', 0),
(2747, 176, 'Kemerovo', 'KE', 0),
(2748, 176, 'Khabarovsk', 'KH', 0),
(2749, 176, 'Khanty-Mansiysk', 'KM', 0),
(2750, 176, 'Kostroma', 'KO', 0),
(2751, 176, 'Krasnodar', 'KR', 0),
(2752, 176, 'Krasnoyarsk', 'KN', 0),
(2753, 176, 'Kudymkar', 'KU', 0),
(2754, 176, 'Kurgan', 'KG', 0),
(2755, 176, 'Kursk', 'KK', 0),
(2756, 176, 'Kyzyl', 'KY', 0),
(2757, 176, 'Lipetsk', 'LI', 0),
(2758, 176, 'Magadan', 'MA', 0),
(2759, 176, 'Makhachkala', 'MK', 0),
(2760, 176, 'Maykop', 'MY', 0),
(2761, 176, 'Moscow', 'MO', 0),
(2762, 176, 'Murmansk', 'MU', 0),
(2763, 176, 'Nalchik', 'NA', 0),
(2764, 176, 'Naryan Mar', 'NR', 0),
(2765, 176, 'Nazran', 'NZ', 0),
(2766, 176, 'Nizhniy Novgorod', 'NI', 0),
(2767, 176, 'Novgorod', 'NO', 0),
(2768, 176, 'Novosibirsk', 'NV', 0),
(2769, 176, 'Omsk', 'OM', 0),
(2770, 176, 'Orel', 'OR', 0),
(2771, 176, 'Orenburg', 'OE', 0),
(2772, 176, 'Palana', 'PA', 0),
(2773, 176, 'Penza', 'PE', 0),
(2774, 176, 'Perm', 'PR', 0),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 0),
(2776, 176, 'Petrozavodsk', 'PT', 0),
(2777, 176, 'Pskov', 'PS', 0),
(2778, 176, 'Rostov-na-Donu', 'RO', 0),
(2779, 176, 'Ryazan', 'RY', 0),
(2780, 176, 'Salekhard', 'SL', 0),
(2781, 176, 'Samara', 'SA', 0),
(2782, 176, 'Saransk', 'SR', 0),
(2783, 176, 'Saratov', 'SV', 0),
(2784, 176, 'Smolensk', 'SM', 0),
(2785, 176, 'St. Petersburg', 'SP', 0),
(2786, 176, 'Stavropol', 'ST', 0),
(2787, 176, 'Syktyvkar', 'SY', 0),
(2788, 176, 'Tambov', 'TA', 0),
(2789, 176, 'Tomsk', 'TO', 0),
(2790, 176, 'Tula', 'TU', 0),
(2791, 176, 'Tura', 'TR', 0),
(2792, 176, 'Tver', 'TV', 0),
(2793, 176, 'Tyumen', 'TY', 0),
(2794, 176, 'Ufa', 'UF', 0),
(2795, 176, 'Ul\'yanovsk', 'UL', 0),
(2796, 176, 'Ulan-Ude', 'UU', 0),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 0),
(2798, 176, 'Vladikavkaz', 'VL', 0),
(2799, 176, 'Vladimir', 'VA', 0),
(2800, 176, 'Vladivostok', 'VV', 0),
(2801, 176, 'Volgograd', 'VG', 0),
(2802, 176, 'Vologda', 'VD', 0),
(2803, 176, 'Voronezh', 'VO', 0),
(2804, 176, 'Vyatka', 'VY', 0),
(2805, 176, 'Yakutsk', 'YA', 0),
(2806, 176, 'Yaroslavl', 'YR', 0),
(2807, 176, 'Yekaterinburg', 'YE', 0),
(2808, 176, 'Yoshkar-Ola', 'YO', 0),
(2809, 177, 'Butare', 'BU', 0),
(2810, 177, 'Byumba', 'BY', 0),
(2811, 177, 'Cyangugu', 'CY', 0),
(2812, 177, 'Gikongoro', 'GK', 0),
(2813, 177, 'Gisenyi', 'GS', 0),
(2814, 177, 'Gitarama', 'GT', 0),
(2815, 177, 'Kibungo', 'KG', 0),
(2816, 177, 'Kibuye', 'KY', 0),
(2817, 177, 'Kigali Rurale', 'KR', 0),
(2818, 177, 'Kigali-ville', 'KV', 0),
(2819, 177, 'Ruhengeri', 'RU', 0),
(2820, 177, 'Umutara', 'UM', 0),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 0),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 0),
(2823, 178, 'Saint George Basseterre', 'SGB', 0),
(2824, 178, 'Saint George Gingerland', 'SGG', 0),
(2825, 178, 'Saint James Windward', 'SJW', 0),
(2826, 178, 'Saint John Capesterre', 'SJC', 0),
(2827, 178, 'Saint John Figtree', 'SJF', 0),
(2828, 178, 'Saint Mary Cayon', 'SMC', 0),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 0),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 0),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 0),
(2832, 178, 'Saint Thomas Lowland', 'STL', 0),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 0),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 0),
(2835, 179, 'Anse-la-Raye', 'AR', 0),
(2836, 179, 'Castries', 'CA', 0),
(2837, 179, 'Choiseul', 'CH', 0),
(2838, 179, 'Dauphin', 'DA', 0),
(2839, 179, 'Dennery', 'DE', 0),
(2840, 179, 'Gros-Islet', 'GI', 0),
(2841, 179, 'Laborie', 'LA', 0),
(2842, 179, 'Micoud', 'MI', 0),
(2843, 179, 'Praslin', 'PR', 0),
(2844, 179, 'Soufriere', 'SO', 0),
(2845, 179, 'Vieux-Fort', 'VF', 0),
(2846, 180, 'Charlotte', 'C', 0),
(2847, 180, 'Grenadines', 'R', 0),
(2848, 180, 'Saint Andrew', 'A', 0),
(2849, 180, 'Saint David', 'D', 0),
(2850, 180, 'Saint George', 'G', 0),
(2851, 180, 'Saint Patrick', 'P', 0),
(2852, 181, 'A\'ana', 'AN', 0),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 0),
(2854, 181, 'Atua', 'AT', 0),
(2855, 181, 'Fa\'asaleleaga', 'FA', 0),
(2856, 181, 'Gaga\'emauga', 'GE', 0),
(2857, 181, 'Gagaifomauga', 'GF', 0),
(2858, 181, 'Palauli', 'PA', 0),
(2859, 181, 'Satupa\'itea', 'SA', 0),
(2860, 181, 'Tuamasaga', 'TU', 0),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 0),
(2862, 181, 'Vaisigano', 'VS', 0),
(2863, 182, 'Acquaviva', 'AC', 0),
(2864, 182, 'Borgo Maggiore', 'BM', 0),
(2865, 182, 'Chiesanuova', 'CH', 0),
(2866, 182, 'Domagnano', 'DO', 0),
(2867, 182, 'Faetano', 'FA', 0),
(2868, 182, 'Fiorentino', 'FI', 0),
(2869, 182, 'Montegiardino', 'MO', 0),
(2870, 182, 'Citta di San Marino', 'SM', 0),
(2871, 182, 'Serravalle', 'SE', 0),
(2872, 183, 'Sao Tome', 'S', 0),
(2873, 183, 'Principe', 'P', 0),
(2874, 184, 'Al Bahah', 'BH', 0),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 0),
(2876, 184, 'Al Jawf', 'JF', 0),
(2877, 184, 'Al Madinah', 'MD', 0),
(2878, 184, 'Al Qasim', 'QS', 0),
(2879, 184, 'Ar Riyad', 'RD', 0),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 0),
(2881, 184, '\'Asir', 'AS', 0),
(2882, 184, 'Ha\'il', 'HL', 0),
(2883, 184, 'Jizan', 'JZ', 0),
(2884, 184, 'Makkah', 'ML', 0),
(2885, 184, 'Najran', 'NR', 0),
(2886, 184, 'Tabuk', 'TB', 0),
(2887, 185, 'Dakar', 'DA', 0),
(2888, 185, 'Diourbel', 'DI', 0),
(2889, 185, 'Fatick', 'FA', 0),
(2890, 185, 'Kaolack', 'KA', 0),
(2891, 185, 'Kolda', 'KO', 0),
(2892, 185, 'Louga', 'LO', 0),
(2893, 185, 'Matam', 'MA', 0),
(2894, 185, 'Saint-Louis', 'SL', 0),
(2895, 185, 'Tambacounda', 'TA', 0),
(2896, 185, 'Thies', 'TH', 0),
(2897, 185, 'Ziguinchor', 'ZI', 0),
(2898, 186, 'Anse aux Pins', 'AP', 0),
(2899, 186, 'Anse Boileau', 'AB', 0),
(2900, 186, 'Anse Etoile', 'AE', 0),
(2901, 186, 'Anse Louis', 'AL', 0),
(2902, 186, 'Anse Royale', 'AR', 0),
(2903, 186, 'Baie Lazare', 'BL', 0),
(2904, 186, 'Baie Sainte Anne', 'BS', 0),
(2905, 186, 'Beau Vallon', 'BV', 0),
(2906, 186, 'Bel Air', 'BA', 0),
(2907, 186, 'Bel Ombre', 'BO', 0),
(2908, 186, 'Cascade', 'CA', 0),
(2909, 186, 'Glacis', 'GL', 0),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 0),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 0),
(2912, 186, 'La Digue', 'DG', 0),
(2913, 186, 'La Riviere Anglaise', 'RA', 0),
(2914, 186, 'Mont Buxton', 'MB', 0),
(2915, 186, 'Mont Fleuri', 'MF', 0),
(2916, 186, 'Plaisance', 'PL', 0),
(2917, 186, 'Pointe La Rue', 'PR', 0),
(2918, 186, 'Port Glaud', 'PG', 0),
(2919, 186, 'Saint Louis', 'SL', 0),
(2920, 186, 'Takamaka', 'TA', 0),
(2921, 187, 'Eastern', 'E', 0),
(2922, 187, 'Northern', 'N', 0),
(2923, 187, 'Southern', 'S', 0),
(2924, 187, 'Western', 'W', 0),
(2925, 189, 'Banskobystrický', 'BA', 0),
(2926, 189, 'Bratislavský', 'BR', 0),
(2927, 189, 'Košický', 'KO', 0),
(2928, 189, 'Nitriansky', 'NI', 0),
(2929, 189, 'Prešovský', 'PR', 0),
(2930, 189, 'Trenčiansky', 'TC', 0),
(2931, 189, 'Trnavský', 'TV', 0),
(2932, 189, 'Žilinský', 'ZI', 0),
(2933, 191, 'Central', 'CE', 0),
(2934, 191, 'Choiseul', 'CH', 0),
(2935, 191, 'Guadalcanal', 'GC', 0),
(2936, 191, 'Honiara', 'HO', 0),
(2937, 191, 'Isabel', 'IS', 0),
(2938, 191, 'Makira', 'MK', 0),
(2939, 191, 'Malaita', 'ML', 0),
(2940, 191, 'Rennell and Bellona', 'RB', 0),
(2941, 191, 'Temotu', 'TM', 0),
(2942, 191, 'Western', 'WE', 0),
(2943, 192, 'Awdal', 'AW', 0),
(2944, 192, 'Bakool', 'BK', 0),
(2945, 192, 'Banaadir', 'BN', 0),
(2946, 192, 'Bari', 'BR', 0),
(2947, 192, 'Bay', 'BY', 0),
(2948, 192, 'Galguduud', 'GA', 0),
(2949, 192, 'Gedo', 'GE', 0),
(2950, 192, 'Hiiraan', 'HI', 0),
(2951, 192, 'Jubbada Dhexe', 'JD', 0),
(2952, 192, 'Jubbada Hoose', 'JH', 0),
(2953, 192, 'Mudug', 'MU', 0),
(2954, 192, 'Nugaal', 'NU', 0),
(2955, 192, 'Sanaag', 'SA', 0),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 0),
(2957, 192, 'Shabeellaha Hoose', 'SH', 0),
(2958, 192, 'Sool', 'SL', 0),
(2959, 192, 'Togdheer', 'TO', 0),
(2960, 192, 'Woqooyi Galbeed', 'WG', 0),
(2961, 193, 'Eastern Cape', 'EC', 0),
(2962, 193, 'Free State', 'FS', 0),
(2963, 193, 'Gauteng', 'GT', 0),
(2964, 193, 'KwaZulu-Natal', 'KN', 0),
(2965, 193, 'Limpopo', 'LP', 0),
(2966, 193, 'Mpumalanga', 'MP', 0),
(2967, 193, 'North West', 'NW', 0),
(2968, 193, 'Northern Cape', 'NC', 0),
(2969, 193, 'Western Cape', 'WC', 0),
(2970, 195, 'La Coru&ntilde;a', 'CA', 0),
(2971, 195, '&Aacute;lava', 'AL', 0),
(2972, 195, 'Albacete', 'AB', 0),
(2973, 195, 'Alicante', 'AC', 0),
(2974, 195, 'Almeria', 'AM', 0),
(2975, 195, 'Asturias', 'AS', 0),
(2976, 195, '&Aacute;vila', 'AV', 0),
(2977, 195, 'Badajoz', 'BJ', 0),
(2978, 195, 'Baleares', 'IB', 0),
(2979, 195, 'Barcelona', 'BA', 0),
(2980, 195, 'Burgos', 'BU', 0),
(2981, 195, 'C&aacute;ceres', 'CC', 0),
(2982, 195, 'C&aacute;diz', 'CZ', 0),
(2983, 195, 'Cantabria', 'CT', 0),
(2984, 195, 'Castell&oacute;n', 'CL', 0),
(2985, 195, 'Ceuta', 'CE', 0),
(2986, 195, 'Ciudad Real', 'CR', 0),
(2987, 195, 'C&oacute;rdoba', 'CD', 0),
(2988, 195, 'Cuenca', 'CU', 0),
(2989, 195, 'Girona', 'GI', 0),
(2990, 195, 'Granada', 'GD', 0),
(2991, 195, 'Guadalajara', 'GJ', 0),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 0),
(2993, 195, 'Huelva', 'HL', 0),
(2994, 195, 'Huesca', 'HS', 0),
(2995, 195, 'Ja&eacute;n', 'JN', 0),
(2996, 195, 'La Rioja', 'RJ', 0),
(2997, 195, 'Las Palmas', 'PM', 0),
(2998, 195, 'Leon', 'LE', 0),
(2999, 195, 'Lleida', 'LL', 0),
(3000, 195, 'Lugo', 'LG', 0),
(3001, 195, 'Madrid', 'MD', 0),
(3002, 195, 'Malaga', 'MA', 0),
(3003, 195, 'Melilla', 'ML', 0),
(3004, 195, 'Murcia', 'MU', 0),
(3005, 195, 'Navarra', 'NV', 0),
(3006, 195, 'Ourense', 'OU', 0),
(3007, 195, 'Palencia', 'PL', 0),
(3008, 195, 'Pontevedra', 'PO', 0),
(3009, 195, 'Salamanca', 'SL', 0),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 0),
(3011, 195, 'Segovia', 'SG', 0),
(3012, 195, 'Sevilla', 'SV', 0),
(3013, 195, 'Soria', 'SO', 0),
(3014, 195, 'Tarragona', 'TA', 0),
(3015, 195, 'Teruel', 'TE', 0),
(3016, 195, 'Toledo', 'TO', 0),
(3017, 195, 'Valencia', 'VC', 0),
(3018, 195, 'Valladolid', 'VD', 0),
(3019, 195, 'Vizcaya', 'VZ', 0),
(3020, 195, 'Zamora', 'ZM', 0),
(3021, 195, 'Zaragoza', 'ZR', 0),
(3022, 196, 'Central', 'CE', 0),
(3023, 196, 'Eastern', 'EA', 0),
(3024, 196, 'North Central', 'NC', 0),
(3025, 196, 'Northern', 'NO', 0),
(3026, 196, 'North Western', 'NW', 0),
(3027, 196, 'Sabaragamuwa', 'SA', 0),
(3028, 196, 'Southern', 'SO', 0),
(3029, 196, 'Uva', 'UV', 0),
(3030, 196, 'Western', 'WE', 0),
(3032, 197, 'Saint Helena', 'S', 0),
(3034, 199, 'A\'ali an Nil', 'ANL', 0),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 0),
(3036, 199, 'Al Buhayrat', 'BRT', 0),
(3037, 199, 'Al Jazirah', 'JZR', 0),
(3038, 199, 'Al Khartum', 'KRT', 0),
(3039, 199, 'Al Qadarif', 'QDR', 0),
(3040, 199, 'Al Wahdah', 'WDH', 0),
(3041, 199, 'An Nil al Abyad', 'ANB', 0),
(3042, 199, 'An Nil al Azraq', 'ANZ', 0),
(3043, 199, 'Ash Shamaliyah', 'ASH', 0),
(3044, 199, 'Bahr al Jabal', 'BJA', 0),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 0),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 0),
(3047, 199, 'Gharb Darfur', 'GDA', 0),
(3048, 199, 'Gharb Kurdufan', 'GKU', 0),
(3049, 199, 'Janub Darfur', 'JDA', 0),
(3050, 199, 'Janub Kurdufan', 'JKU', 0),
(3051, 199, 'Junqali', 'JQL', 0),
(3052, 199, 'Kassala', 'KSL', 0),
(3053, 199, 'Nahr an Nil', 'NNL', 0),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 0),
(3055, 199, 'Shamal Darfur', 'SDA', 0),
(3056, 199, 'Shamal Kurdufan', 'SKU', 0),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 0),
(3058, 199, 'Sinnar', 'SNR', 0),
(3059, 199, 'Warab', 'WRB', 0),
(3060, 200, 'Brokopondo', 'BR', 0),
(3061, 200, 'Commewijne', 'CM', 0),
(3062, 200, 'Coronie', 'CR', 0),
(3063, 200, 'Marowijne', 'MA', 0),
(3064, 200, 'Nickerie', 'NI', 0),
(3065, 200, 'Para', 'PA', 0),
(3066, 200, 'Paramaribo', 'PM', 0),
(3067, 200, 'Saramacca', 'SA', 0),
(3068, 200, 'Sipaliwini', 'SI', 0),
(3069, 200, 'Wanica', 'WA', 0),
(3070, 202, 'Hhohho', 'H', 0),
(3071, 202, 'Lubombo', 'L', 0),
(3072, 202, 'Manzini', 'M', 0),
(3073, 202, 'Shishelweni', 'S', 0),
(3074, 203, 'Blekinge', 'K', 0),
(3075, 203, 'Dalarna', 'W', 0),
(3076, 203, 'Gävleborg', 'X', 0),
(3077, 203, 'Gotland', 'I', 0),
(3078, 203, 'Halland', 'N', 0),
(3079, 203, 'Jämtland', 'Z', 0),
(3080, 203, 'Jönköping', 'F', 0),
(3081, 203, 'Kalmar', 'H', 0),
(3082, 203, 'Kronoberg', 'G', 0),
(3083, 203, 'Norrbotten', 'BD', 0),
(3084, 203, 'Örebro', 'T', 0),
(3085, 203, 'Östergötland', 'E', 0),
(3086, 203, 'Sk&aring;ne', 'M', 0),
(3087, 203, 'Södermanland', 'D', 0),
(3088, 203, 'Stockholm', 'AB', 0),
(3089, 203, 'Uppsala', 'C', 0),
(3090, 203, 'Värmland', 'S', 0),
(3091, 203, 'Västerbotten', 'AC', 0),
(3092, 203, 'Västernorrland', 'Y', 0),
(3093, 203, 'Västmanland', 'U', 0),
(3094, 203, 'Västra Götaland', 'O', 0),
(3095, 204, 'Aargau', 'AG', 0),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 0),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 0),
(3098, 204, 'Basel-Stadt', 'BS', 0),
(3099, 204, 'Basel-Landschaft', 'BL', 0),
(3100, 204, 'Bern', 'BE', 0),
(3101, 204, 'Fribourg', 'FR', 0),
(3102, 204, 'Gen&egrave;ve', 'GE', 0),
(3103, 204, 'Glarus', 'GL', 0),
(3104, 204, 'Graubünden', 'GR', 0),
(3105, 204, 'Jura', 'JU', 0),
(3106, 204, 'Luzern', 'LU', 0),
(3107, 204, 'Neuch&acirc;tel', 'NE', 0),
(3108, 204, 'Nidwald', 'NW', 0),
(3109, 204, 'Obwald', 'OW', 0),
(3110, 204, 'St. Gallen', 'SG', 0),
(3111, 204, 'Schaffhausen', 'SH', 0),
(3112, 204, 'Schwyz', 'SZ', 0),
(3113, 204, 'Solothurn', 'SO', 0),
(3114, 204, 'Thurgau', 'TG', 0),
(3115, 204, 'Ticino', 'TI', 0),
(3116, 204, 'Uri', 'UR', 0),
(3117, 204, 'Valais', 'VS', 0),
(3118, 204, 'Vaud', 'VD', 0),
(3119, 204, 'Zug', 'ZG', 0),
(3120, 204, 'Zürich', 'ZH', 0),
(3121, 205, 'Al Hasakah', 'HA', 0),
(3122, 205, 'Al Ladhiqiyah', 'LA', 0),
(3123, 205, 'Al Qunaytirah', 'QU', 0),
(3124, 205, 'Ar Raqqah', 'RQ', 0),
(3125, 205, 'As Suwayda', 'SU', 0),
(3126, 205, 'Dara', 'DA', 0),
(3127, 205, 'Dayr az Zawr', 'DZ', 0),
(3128, 205, 'Dimashq', 'DI', 0),
(3129, 205, 'Halab', 'HL', 0),
(3130, 205, 'Hamah', 'HM', 0),
(3131, 205, 'Hims', 'HI', 0),
(3132, 205, 'Idlib', 'ID', 0),
(3133, 205, 'Rif Dimashq', 'RD', 0),
(3134, 205, 'Tartus', 'TA', 0),
(3135, 206, 'Chang-hua', 'CH', 0),
(3136, 206, 'Chia-i', 'CI', 0);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 0),
(3138, 206, 'Hua-lien', 'HL', 0),
(3139, 206, 'I-lan', 'IL', 0),
(3140, 206, 'Kao-hsiung county', 'KH', 0),
(3141, 206, 'Kin-men', 'KM', 0),
(3142, 206, 'Lien-chiang', 'LC', 0),
(3143, 206, 'Miao-li', 'ML', 0),
(3144, 206, 'Nan-t\'ou', 'NT', 0),
(3145, 206, 'P\'eng-hu', 'PH', 0),
(3146, 206, 'P\'ing-tung', 'PT', 0),
(3147, 206, 'T\'ai-chung', 'TG', 0),
(3148, 206, 'T\'ai-nan', 'TA', 0),
(3149, 206, 'T\'ai-pei county', 'TP', 0),
(3150, 206, 'T\'ai-tung', 'TT', 0),
(3151, 206, 'T\'ao-yuan', 'TY', 0),
(3152, 206, 'Yun-lin', 'YL', 0),
(3153, 206, 'Chia-i city', 'CC', 0),
(3154, 206, 'Chi-lung', 'CL', 0),
(3155, 206, 'Hsin-chu', 'HC', 0),
(3156, 206, 'T\'ai-chung', 'TH', 0),
(3157, 206, 'T\'ai-nan', 'TN', 0),
(3158, 206, 'Kao-hsiung city', 'KC', 0),
(3159, 206, 'T\'ai-pei city', 'TC', 0),
(3160, 207, 'Gorno-Badakhstan', 'GB', 0),
(3161, 207, 'Khatlon', 'KT', 0),
(3162, 207, 'Sughd', 'SU', 0),
(3163, 208, 'Arusha', 'AR', 0),
(3164, 208, 'Dar es Salaam', 'DS', 0),
(3165, 208, 'Dodoma', 'DO', 0),
(3166, 208, 'Iringa', 'IR', 0),
(3167, 208, 'Kagera', 'KA', 0),
(3168, 208, 'Kigoma', 'KI', 0),
(3169, 208, 'Kilimanjaro', 'KJ', 0),
(3170, 208, 'Lindi', 'LN', 0),
(3171, 208, 'Manyara', 'MY', 0),
(3172, 208, 'Mara', 'MR', 0),
(3173, 208, 'Mbeya', 'MB', 0),
(3174, 208, 'Morogoro', 'MO', 0),
(3175, 208, 'Mtwara', 'MT', 0),
(3176, 208, 'Mwanza', 'MW', 0),
(3177, 208, 'Pemba North', 'PN', 0),
(3178, 208, 'Pemba South', 'PS', 0),
(3179, 208, 'Pwani', 'PW', 0),
(3180, 208, 'Rukwa', 'RK', 0),
(3181, 208, 'Ruvuma', 'RV', 0),
(3182, 208, 'Shinyanga', 'SH', 0),
(3183, 208, 'Singida', 'SI', 0),
(3184, 208, 'Tabora', 'TB', 0),
(3185, 208, 'Tanga', 'TN', 0),
(3186, 208, 'Zanzibar Central/South', 'ZC', 0),
(3187, 208, 'Zanzibar North', 'ZN', 0),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 0),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 0),
(3190, 209, 'Ang Thong', 'Ang Thong', 0),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 0),
(3192, 209, 'Bangkok', 'Bangkok', 0),
(3193, 209, 'Buriram', 'Buriram', 0),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 0),
(3195, 209, 'Chai Nat', 'Chai Nat', 0),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 0),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 0),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 0),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 0),
(3200, 209, 'Chon Buri', 'Chon Buri', 0),
(3201, 209, 'Chumphon', 'Chumphon', 0),
(3202, 209, 'Kalasin', 'Kalasin', 0),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 0),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 0),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 0),
(3206, 209, 'Krabi', 'Krabi', 0),
(3207, 209, 'Lampang', 'Lampang', 0),
(3208, 209, 'Lamphun', 'Lamphun', 0),
(3209, 209, 'Loei', 'Loei', 0),
(3210, 209, 'Lop Buri', 'Lop Buri', 0),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 0),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 0),
(3213, 209, 'Mukdahan', 'Mukdahan', 0),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 0),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 0),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 0),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 0),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 0),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 0),
(3220, 209, 'Nan', 'Nan', 0),
(3221, 209, 'Narathiwat', 'Narathiwat', 0),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 0),
(3223, 209, 'Nong Khai', 'Nong Khai', 0),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 0),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 0),
(3226, 209, 'Pattani', 'Pattani', 0),
(3227, 209, 'Phangnga', 'Phangnga', 0),
(3228, 209, 'Phatthalung', 'Phatthalung', 0),
(3229, 209, 'Phayao', 'Phayao', 0),
(3230, 209, 'Phetchabun', 'Phetchabun', 0),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 0),
(3232, 209, 'Phichit', 'Phichit', 0),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 0),
(3234, 209, 'Phrae', 'Phrae', 0),
(3235, 209, 'Phuket', 'Phuket', 0),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 0),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 0),
(3238, 209, 'Ranong', 'Ranong', 0),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 0),
(3240, 209, 'Rayong', 'Rayong', 0),
(3241, 209, 'Roi Et', 'Roi Et', 0),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 0),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 0),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 0),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 0),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 0),
(3247, 209, 'Sara Buri', 'Sara Buri', 0),
(3248, 209, 'Satun', 'Satun', 0),
(3249, 209, 'Sing Buri', 'Sing Buri', 0),
(3250, 209, 'Sisaket', 'Sisaket', 0),
(3251, 209, 'Songkhla', 'Songkhla', 0),
(3252, 209, 'Sukhothai', 'Sukhothai', 0),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 0),
(3254, 209, 'Surat Thani', 'Surat Thani', 0),
(3255, 209, 'Surin', 'Surin', 0),
(3256, 209, 'Tak', 'Tak', 0),
(3257, 209, 'Trang', 'Trang', 0),
(3258, 209, 'Trat', 'Trat', 0),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 0),
(3260, 209, 'Udon Thani', 'Udon Thani', 0),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 0),
(3262, 209, 'Uttaradit', 'Uttaradit', 0),
(3263, 209, 'Yala', 'Yala', 0),
(3264, 209, 'Yasothon', 'Yasothon', 0),
(3265, 210, 'Kara', 'K', 0),
(3266, 210, 'Plateaux', 'P', 0),
(3267, 210, 'Savanes', 'S', 0),
(3268, 210, 'Centrale', 'C', 0),
(3269, 210, 'Maritime', 'M', 0),
(3270, 211, 'Atafu', 'A', 0),
(3271, 211, 'Fakaofo', 'F', 0),
(3272, 211, 'Nukunonu', 'N', 0),
(3273, 212, 'Ha\'apai', 'H', 0),
(3274, 212, 'Tongatapu', 'T', 0),
(3275, 212, 'Vava\'u', 'V', 0),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 0),
(3277, 213, 'Diego Martin', 'DM', 0),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 0),
(3279, 213, 'Penal/Debe', 'PD', 0),
(3280, 213, 'Princes Town', 'PT', 0),
(3281, 213, 'Sangre Grande', 'SG', 0),
(3282, 213, 'San Juan/Laventille', 'SL', 0),
(3283, 213, 'Siparia', 'SI', 0),
(3284, 213, 'Tunapuna/Piarco', 'TP', 0),
(3285, 213, 'Port of Spain', 'PS', 0),
(3286, 213, 'San Fernando', 'SF', 0),
(3287, 213, 'Arima', 'AR', 0),
(3288, 213, 'Point Fortin', 'PF', 0),
(3289, 213, 'Chaguanas', 'CH', 0),
(3290, 213, 'Tobago', 'TO', 0),
(3291, 214, 'Ariana', 'AR', 0),
(3292, 214, 'Beja', 'BJ', 0),
(3293, 214, 'Ben Arous', 'BA', 0),
(3294, 214, 'Bizerte', 'BI', 0),
(3295, 214, 'Gabes', 'GB', 0),
(3296, 214, 'Gafsa', 'GF', 0),
(3297, 214, 'Jendouba', 'JE', 0),
(3298, 214, 'Kairouan', 'KR', 0),
(3299, 214, 'Kasserine', 'KS', 0),
(3300, 214, 'Kebili', 'KB', 0),
(3301, 214, 'Kef', 'KF', 0),
(3302, 214, 'Mahdia', 'MH', 0),
(3303, 214, 'Manouba', 'MN', 0),
(3304, 214, 'Medenine', 'ME', 0),
(3305, 214, 'Monastir', 'MO', 0),
(3306, 214, 'Nabeul', 'NA', 0),
(3307, 214, 'Sfax', 'SF', 0),
(3308, 214, 'Sidi', 'SD', 0),
(3309, 214, 'Siliana', 'SL', 0),
(3310, 214, 'Sousse', 'SO', 0),
(3311, 214, 'Tataouine', 'TA', 0),
(3312, 214, 'Tozeur', 'TO', 0),
(3313, 214, 'Tunis', 'TU', 0),
(3314, 214, 'Zaghouan', 'ZA', 0),
(3315, 215, 'Adana', 'ADA', 0),
(3316, 215, 'Adıyaman', 'ADI', 0),
(3317, 215, 'Afyonkarahisar', 'AFY', 0),
(3318, 215, 'Ağrı', 'AGR', 0),
(3319, 215, 'Aksaray', 'AKS', 0),
(3320, 215, 'Amasya', 'AMA', 0),
(3321, 215, 'Ankara', 'ANK', 0),
(3322, 215, 'Antalya', 'ANT', 0),
(3323, 215, 'Ardahan', 'ARD', 0),
(3324, 215, 'Artvin', 'ART', 0),
(3325, 215, 'Aydın', 'AYI', 0),
(3326, 215, 'Balıkesir', 'BAL', 0),
(3327, 215, 'Bartın', 'BAR', 0),
(3328, 215, 'Batman', 'BAT', 0),
(3329, 215, 'Bayburt', 'BAY', 0),
(3330, 215, 'Bilecik', 'BIL', 0),
(3331, 215, 'Bingöl', 'BIN', 0),
(3332, 215, 'Bitlis', 'BIT', 0),
(3333, 215, 'Bolu', 'BOL', 0),
(3334, 215, 'Burdur', 'BRD', 0),
(3335, 215, 'Bursa', 'BRS', 0),
(3336, 215, 'Çanakkale', 'CKL', 0),
(3337, 215, 'Çankırı', 'CKR', 0),
(3338, 215, 'Çorum', 'COR', 0),
(3339, 215, 'Denizli', 'DEN', 0),
(3340, 215, 'Diyarbakır', 'DIY', 0),
(3341, 215, 'Düzce', 'DUZ', 0),
(3342, 215, 'Edirne', 'EDI', 0),
(3343, 215, 'Elazığ', 'ELA', 0),
(3344, 215, 'Erzincan', 'EZC', 0),
(3345, 215, 'Erzurum', 'EZR', 0),
(3346, 215, 'Eskişehir', 'ESK', 0),
(3347, 215, 'Gaziantep', 'GAZ', 0),
(3348, 215, 'Giresun', 'GIR', 0),
(3349, 215, 'Gümüşhane', 'GMS', 0),
(3350, 215, 'Hakkari', 'HKR', 0),
(3351, 215, 'Hatay', 'HTY', 0),
(3352, 215, 'Iğdır', 'IGD', 0),
(3353, 215, 'Isparta', 'ISP', 0),
(3354, 215, 'İstanbul', 'IST', 0),
(3355, 215, 'İzmir', 'IZM', 0),
(3356, 215, 'Kahramanmaraş', 'KAH', 0),
(3357, 215, 'Karabük', 'KRB', 0),
(3358, 215, 'Karaman', 'KRM', 0),
(3359, 215, 'Kars', 'KRS', 0),
(3360, 215, 'Kastamonu', 'KAS', 0),
(3361, 215, 'Kayseri', 'KAY', 0),
(3362, 215, 'Kilis', 'KLS', 0),
(3363, 215, 'Kırıkkale', 'KRK', 0),
(3364, 215, 'Kırklareli', 'KLR', 0),
(3365, 215, 'Kırşehir', 'KRH', 0),
(3366, 215, 'Kocaeli', 'KOC', 0),
(3367, 215, 'Konya', 'KON', 0),
(3368, 215, 'Kütahya', 'KUT', 0),
(3369, 215, 'Malatya', 'MAL', 0),
(3370, 215, 'Manisa', 'MAN', 0),
(3371, 215, 'Mardin', 'MAR', 0),
(3372, 215, 'Mersin', 'MER', 0),
(3373, 215, 'Muğla', 'MUG', 0),
(3374, 215, 'Muş', 'MUS', 0),
(3375, 215, 'Nevşehir', 'NEV', 0),
(3376, 215, 'Niğde', 'NIG', 0),
(3377, 215, 'Ordu', 'ORD', 0),
(3378, 215, 'Osmaniye', 'OSM', 0),
(3379, 215, 'Rize', 'RIZ', 0),
(3380, 215, 'Sakarya', 'SAK', 0),
(3381, 215, 'Samsun', 'SAM', 0),
(3382, 215, 'Şanlıurfa', 'SAN', 0),
(3383, 215, 'Siirt', 'SII', 0),
(3384, 215, 'Sinop', 'SIN', 0),
(3385, 215, 'Şırnak', 'SIR', 0),
(3386, 215, 'Sivas', 'SIV', 0),
(3387, 215, 'Tekirdağ', 'TEL', 0),
(3388, 215, 'Tokat', 'TOK', 0),
(3389, 215, 'Trabzon', 'TRA', 0),
(3390, 215, 'Tunceli', 'TUN', 0),
(3391, 215, 'Uşak', 'USK', 0),
(3392, 215, 'Van', 'VAN', 0),
(3393, 215, 'Yalova', 'YAL', 0),
(3394, 215, 'Yozgat', 'YOZ', 0),
(3395, 215, 'Zonguldak', 'ZON', 0),
(3396, 216, 'Ahal Welayaty', 'A', 0),
(3397, 216, 'Balkan Welayaty', 'B', 0),
(3398, 216, 'Dashhowuz Welayaty', 'D', 0),
(3399, 216, 'Lebap Welayaty', 'L', 0),
(3400, 216, 'Mary Welayaty', 'M', 0),
(3401, 217, 'Ambergris Cays', 'AC', 0),
(3402, 217, 'Dellis Cay', 'DC', 0),
(3403, 217, 'French Cay', 'FC', 0),
(3404, 217, 'Little Water Cay', 'LW', 0),
(3405, 217, 'Parrot Cay', 'RC', 0),
(3406, 217, 'Pine Cay', 'PN', 0),
(3407, 217, 'Salt Cay', 'SL', 0),
(3408, 217, 'Grand Turk', 'GT', 0),
(3409, 217, 'South Caicos', 'SC', 0),
(3410, 217, 'East Caicos', 'EC', 0),
(3411, 217, 'Middle Caicos', 'MC', 0),
(3412, 217, 'North Caicos', 'NC', 0),
(3413, 217, 'Providenciales', 'PR', 0),
(3414, 217, 'West Caicos', 'WC', 0),
(3415, 218, 'Nanumanga', 'NMG', 0),
(3416, 218, 'Niulakita', 'NLK', 0),
(3417, 218, 'Niutao', 'NTO', 0),
(3418, 218, 'Funafuti', 'FUN', 0),
(3419, 218, 'Nanumea', 'NME', 0),
(3420, 218, 'Nui', 'NUI', 0),
(3421, 218, 'Nukufetau', 'NFT', 0),
(3422, 218, 'Nukulaelae', 'NLL', 0),
(3423, 218, 'Vaitupu', 'VAI', 0),
(3424, 219, 'Kalangala', 'KAL', 0),
(3425, 219, 'Kampala', 'KMP', 0),
(3426, 219, 'Kayunga', 'KAY', 0),
(3427, 219, 'Kiboga', 'KIB', 0),
(3428, 219, 'Luwero', 'LUW', 0),
(3429, 219, 'Masaka', 'MAS', 0),
(3430, 219, 'Mpigi', 'MPI', 0),
(3431, 219, 'Mubende', 'MUB', 0),
(3432, 219, 'Mukono', 'MUK', 0),
(3433, 219, 'Nakasongola', 'NKS', 0),
(3434, 219, 'Rakai', 'RAK', 0),
(3435, 219, 'Sembabule', 'SEM', 0),
(3436, 219, 'Wakiso', 'WAK', 0),
(3437, 219, 'Bugiri', 'BUG', 0),
(3438, 219, 'Busia', 'BUS', 0),
(3439, 219, 'Iganga', 'IGA', 0),
(3440, 219, 'Jinja', 'JIN', 0),
(3441, 219, 'Kaberamaido', 'KAB', 0),
(3442, 219, 'Kamuli', 'KML', 0),
(3443, 219, 'Kapchorwa', 'KPC', 0),
(3444, 219, 'Katakwi', 'KTK', 0),
(3445, 219, 'Kumi', 'KUM', 0),
(3446, 219, 'Mayuge', 'MAY', 0),
(3447, 219, 'Mbale', 'MBA', 0),
(3448, 219, 'Pallisa', 'PAL', 0),
(3449, 219, 'Sironko', 'SIR', 0),
(3450, 219, 'Soroti', 'SOR', 0),
(3451, 219, 'Tororo', 'TOR', 0),
(3452, 219, 'Adjumani', 'ADJ', 0),
(3453, 219, 'Apac', 'APC', 0),
(3454, 219, 'Arua', 'ARU', 0),
(3455, 219, 'Gulu', 'GUL', 0),
(3456, 219, 'Kitgum', 'KIT', 0),
(3457, 219, 'Kotido', 'KOT', 0),
(3458, 219, 'Lira', 'LIR', 0),
(3459, 219, 'Moroto', 'MRT', 0),
(3460, 219, 'Moyo', 'MOY', 0),
(3461, 219, 'Nakapiripirit', 'NAK', 0),
(3462, 219, 'Nebbi', 'NEB', 0),
(3463, 219, 'Pader', 'PAD', 0),
(3464, 219, 'Yumbe', 'YUM', 0),
(3465, 219, 'Bundibugyo', 'BUN', 0),
(3466, 219, 'Bushenyi', 'BSH', 0),
(3467, 219, 'Hoima', 'HOI', 0),
(3468, 219, 'Kabale', 'KBL', 0),
(3469, 219, 'Kabarole', 'KAR', 0),
(3470, 219, 'Kamwenge', 'KAM', 0),
(3471, 219, 'Kanungu', 'KAN', 0),
(3472, 219, 'Kasese', 'KAS', 0),
(3473, 219, 'Kibaale', 'KBA', 0),
(3474, 219, 'Kisoro', 'KIS', 0),
(3475, 219, 'Kyenjojo', 'KYE', 0),
(3476, 219, 'Masindi', 'MSN', 0),
(3477, 219, 'Mbarara', 'MBR', 0),
(3478, 219, 'Ntungamo', 'NTU', 0),
(3479, 219, 'Rukungiri', 'RUK', 0),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 0),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 0),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 0),
(3483, 220, 'Crimea', '43', 0),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 0),
(3485, 220, 'Donets\'ka Oblast\'', '14', 0),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 0),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 0),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 0),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 0),
(3490, 220, 'Kyiv', '30', 0),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 0),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 0),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 0),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 0),
(3495, 220, 'Odes\'ka Oblast\'', '51', 0),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 0),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 0),
(3498, 220, 'Sevastopol\'', '40', 0),
(3499, 220, 'Sums\'ka Oblast\'', '59', 0),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 0),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 0),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 0),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 0),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 0),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 0),
(3506, 221, 'Abu Dhabi', 'ADH', 0),
(3507, 221, '\'Ajman', 'AJ', 0),
(3508, 221, 'Al Fujayrah', 'FU', 0),
(3509, 221, 'Ash Shariqah', 'SH', 0),
(3510, 221, 'Dubai', 'DU', 0),
(3511, 221, 'R\'as al Khaymah', 'RK', 0),
(3512, 221, 'Umm al Qaywayn', 'UQ', 0),
(3513, 222, 'Aberdeen', 'ABN', 0),
(3514, 222, 'Aberdeenshire', 'ABNS', 0),
(3515, 222, 'Anglesey', 'ANG', 0),
(3516, 222, 'Angus', 'AGS', 0),
(3517, 222, 'Argyll and Bute', 'ARY', 0),
(3518, 222, 'Bedfordshire', 'BEDS', 0),
(3519, 222, 'Berkshire', 'BERKS', 0),
(3520, 222, 'Blaenau Gwent', 'BLA', 0),
(3521, 222, 'Bridgend', 'BRI', 0),
(3522, 222, 'Bristol', 'BSTL', 0),
(3523, 222, 'Buckinghamshire', 'BUCKS', 0),
(3524, 222, 'Caerphilly', 'CAE', 0),
(3525, 222, 'Cambridgeshire', 'CAMBS', 0),
(3526, 222, 'Cardiff', 'CDF', 0),
(3527, 222, 'Carmarthenshire', 'CARM', 0),
(3528, 222, 'Ceredigion', 'CDGN', 0),
(3529, 222, 'Cheshire', 'CHES', 0),
(3530, 222, 'Clackmannanshire', 'CLACK', 0),
(3531, 222, 'Conwy', 'CON', 0),
(3532, 222, 'Cornwall', 'CORN', 0),
(3533, 222, 'Denbighshire', 'DNBG', 0),
(3534, 222, 'Derbyshire', 'DERBY', 0),
(3535, 222, 'Devon', 'DVN', 0),
(3536, 222, 'Dorset', 'DOR', 0),
(3537, 222, 'Dumfries and Galloway', 'DGL', 0),
(3538, 222, 'Dundee', 'DUND', 0),
(3539, 222, 'Durham', 'DHM', 0),
(3540, 222, 'East Ayrshire', 'ARYE', 0),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 0),
(3542, 222, 'East Lothian', 'LOTE', 0),
(3543, 222, 'East Renfrewshire', 'RENE', 0),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 0),
(3545, 222, 'East Sussex', 'SXE', 0),
(3546, 222, 'Edinburgh', 'EDIN', 0),
(3547, 222, 'Essex', 'ESX', 0),
(3548, 222, 'Falkirk', 'FALK', 0),
(3549, 222, 'Fife', 'FFE', 0),
(3550, 222, 'Flintshire', 'FLINT', 0),
(3551, 222, 'Glasgow', 'GLAS', 0),
(3552, 222, 'Gloucestershire', 'GLOS', 0),
(3553, 222, 'Greater London', 'LDN', 0),
(3554, 222, 'Greater Manchester', 'MCH', 0),
(3555, 222, 'Gwynedd', 'GDD', 0),
(3556, 222, 'Hampshire', 'HANTS', 0),
(3557, 222, 'Herefordshire', 'HWR', 0),
(3558, 222, 'Hertfordshire', 'HERTS', 0),
(3559, 222, 'Highlands', 'HLD', 0),
(3560, 222, 'Inverclyde', 'IVER', 0),
(3561, 222, 'Isle of Wight', 'IOW', 0),
(3562, 222, 'Kent', 'KNT', 0),
(3563, 222, 'Lancashire', 'LANCS', 0),
(3564, 222, 'Leicestershire', 'LEICS', 0),
(3565, 222, 'Lincolnshire', 'LINCS', 0),
(3566, 222, 'Merseyside', 'MSY', 0),
(3567, 222, 'Merthyr Tydfil', 'MERT', 0),
(3568, 222, 'Midlothian', 'MLOT', 0),
(3569, 222, 'Monmouthshire', 'MMOUTH', 0),
(3570, 222, 'Moray', 'MORAY', 0),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 0),
(3572, 222, 'Newport', 'NEWPT', 0),
(3573, 222, 'Norfolk', 'NOR', 0),
(3574, 222, 'North Ayrshire', 'ARYN', 0),
(3575, 222, 'North Lanarkshire', 'LANN', 0),
(3576, 222, 'North Yorkshire', 'YSN', 0),
(3577, 222, 'Northamptonshire', 'NHM', 0),
(3578, 222, 'Northumberland', 'NLD', 0),
(3579, 222, 'Nottinghamshire', 'NOT', 0),
(3580, 222, 'Orkney Islands', 'ORK', 0),
(3581, 222, 'Oxfordshire', 'OFE', 0),
(3582, 222, 'Pembrokeshire', 'PEM', 0),
(3583, 222, 'Perth and Kinross', 'PERTH', 0),
(3584, 222, 'Powys', 'PWS', 0),
(3585, 222, 'Renfrewshire', 'REN', 0),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 0),
(3587, 222, 'Rutland', 'RUT', 0),
(3588, 222, 'Scottish Borders', 'BOR', 0),
(3589, 222, 'Shetland Islands', 'SHET', 0),
(3590, 222, 'Shropshire', 'SPE', 0),
(3591, 222, 'Somerset', 'SOM', 0),
(3592, 222, 'South Ayrshire', 'ARYS', 0),
(3593, 222, 'South Lanarkshire', 'LANS', 0),
(3594, 222, 'South Yorkshire', 'YSS', 0),
(3595, 222, 'Staffordshire', 'SFD', 0),
(3596, 222, 'Stirling', 'STIR', 0),
(3597, 222, 'Suffolk', 'SFK', 0),
(3598, 222, 'Surrey', 'SRY', 0),
(3599, 222, 'Swansea', 'SWAN', 0),
(3600, 222, 'Torfaen', 'TORF', 0),
(3601, 222, 'Tyne and Wear', 'TWR', 0),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 0),
(3603, 222, 'Warwickshire', 'WARKS', 0),
(3604, 222, 'West Dunbartonshire', 'WDUN', 0),
(3605, 222, 'West Lothian', 'WLOT', 0),
(3606, 222, 'West Midlands', 'WMD', 0),
(3607, 222, 'West Sussex', 'SXW', 0),
(3608, 222, 'West Yorkshire', 'YSW', 0),
(3609, 222, 'Western Isles', 'WIL', 0),
(3610, 222, 'Wiltshire', 'WLT', 0),
(3611, 222, 'Worcestershire', 'WORCS', 0),
(3612, 222, 'Wrexham', 'WRX', 0),
(3613, 223, 'Alabama', 'AL', 0),
(3614, 223, 'Alaska', 'AK', 0),
(3615, 223, 'American Samoa', 'AS', 0),
(3616, 223, 'Arizona', 'AZ', 0),
(3617, 223, 'Arkansas', 'AR', 0),
(3618, 223, 'Armed Forces Africa', 'AF', 0),
(3619, 223, 'Armed Forces Americas', 'AA', 0),
(3620, 223, 'Armed Forces Canada', 'AC', 0),
(3621, 223, 'Armed Forces Europe', 'AE', 0),
(3622, 223, 'Armed Forces Middle East', 'AM', 0),
(3623, 223, 'Armed Forces Pacific', 'AP', 0),
(3624, 223, 'California', 'CA', 0),
(3625, 223, 'Colorado', 'CO', 0),
(3626, 223, 'Connecticut', 'CT', 0),
(3627, 223, 'Delaware', 'DE', 0),
(3628, 223, 'District of Columbia', 'DC', 0),
(3629, 223, 'Federated States Of Micronesia', 'FM', 0),
(3630, 223, 'Florida', 'FL', 0),
(3631, 223, 'Georgia', 'GA', 0),
(3632, 223, 'Guam', 'GU', 0),
(3633, 223, 'Hawaii', 'HI', 0),
(3634, 223, 'Idaho', 'ID', 0),
(3635, 223, 'Illinois', 'IL', 0),
(3636, 223, 'Indiana', 'IN', 0),
(3637, 223, 'Iowa', 'IA', 0),
(3638, 223, 'Kansas', 'KS', 0),
(3639, 223, 'Kentucky', 'KY', 0),
(3640, 223, 'Louisiana', 'LA', 0),
(3641, 223, 'Maine', 'ME', 0),
(3642, 223, 'Marshall Islands', 'MH', 0),
(3643, 223, 'Maryland', 'MD', 0),
(3644, 223, 'Massachusetts', 'MA', 0),
(3645, 223, 'Michigan', 'MI', 0),
(3646, 223, 'Minnesota', 'MN', 0),
(3647, 223, 'Mississippi', 'MS', 0),
(3648, 223, 'Missouri', 'MO', 0),
(3649, 223, 'Montana', 'MT', 0),
(3650, 223, 'Nebraska', 'NE', 0),
(3651, 223, 'Nevada', 'NV', 0),
(3652, 223, 'New Hampshire', 'NH', 0),
(3653, 223, 'New Jersey', 'NJ', 0),
(3654, 223, 'New Mexico', 'NM', 0),
(3655, 223, 'New York', 'NY', 0),
(3656, 223, 'North Carolina', 'NC', 0),
(3657, 223, 'North Dakota', 'ND', 0),
(3658, 223, 'Northern Mariana Islands', 'MP', 0),
(3659, 223, 'Ohio', 'OH', 0),
(3660, 223, 'Oklahoma', 'OK', 0),
(3661, 223, 'Oregon', 'OR', 0),
(3662, 223, 'Palau', 'PW', 0),
(3663, 223, 'Pennsylvania', 'PA', 0),
(3664, 223, 'Puerto Rico', 'PR', 0),
(3665, 223, 'Rhode Island', 'RI', 0),
(3666, 223, 'South Carolina', 'SC', 0),
(3667, 223, 'South Dakota', 'SD', 0),
(3668, 223, 'Tennessee', 'TN', 0),
(3669, 223, 'Texas', 'TX', 0),
(3670, 223, 'Utah', 'UT', 0),
(3671, 223, 'Vermont', 'VT', 0),
(3672, 223, 'Virgin Islands', 'VI', 0),
(3673, 223, 'Virginia', 'VA', 0),
(3674, 223, 'Washington', 'WA', 0),
(3675, 223, 'West Virginia', 'WV', 0),
(3676, 223, 'Wisconsin', 'WI', 0),
(3677, 223, 'Wyoming', 'WY', 0),
(3678, 224, 'Baker Island', 'BI', 0),
(3679, 224, 'Howland Island', 'HI', 0),
(3680, 224, 'Jarvis Island', 'JI', 0),
(3681, 224, 'Johnston Atoll', 'JA', 0),
(3682, 224, 'Kingman Reef', 'KR', 0),
(3683, 224, 'Midway Atoll', 'MA', 0),
(3684, 224, 'Navassa Island', 'NI', 0),
(3685, 224, 'Palmyra Atoll', 'PA', 0),
(3686, 224, 'Wake Island', 'WI', 0),
(3687, 225, 'Artigas', 'AR', 0),
(3688, 225, 'Canelones', 'CA', 0),
(3689, 225, 'Cerro Largo', 'CL', 0),
(3690, 225, 'Colonia', 'CO', 0),
(3691, 225, 'Durazno', 'DU', 0),
(3692, 225, 'Flores', 'FS', 0),
(3693, 225, 'Florida', 'FA', 0),
(3694, 225, 'Lavalleja', 'LA', 0),
(3695, 225, 'Maldonado', 'MA', 0),
(3696, 225, 'Montevideo', 'MO', 0),
(3697, 225, 'Paysandu', 'PA', 0),
(3698, 225, 'Rio Negro', 'RN', 0),
(3699, 225, 'Rivera', 'RV', 0),
(3700, 225, 'Rocha', 'RO', 0),
(3701, 225, 'Salto', 'SL', 0),
(3702, 225, 'San Jose', 'SJ', 0),
(3703, 225, 'Soriano', 'SO', 0),
(3704, 225, 'Tacuarembo', 'TA', 0),
(3705, 225, 'Treinta y Tres', 'TT', 0),
(3706, 226, 'Andijon', 'AN', 0),
(3707, 226, 'Buxoro', 'BU', 0),
(3708, 226, 'Farg\'ona', 'FA', 0),
(3709, 226, 'Jizzax', 'JI', 0),
(3710, 226, 'Namangan', 'NG', 0),
(3711, 226, 'Navoiy', 'NW', 0),
(3712, 226, 'Qashqadaryo', 'QA', 0),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 0),
(3714, 226, 'Samarqand', 'SA', 0),
(3715, 226, 'Sirdaryo', 'SI', 0),
(3716, 226, 'Surxondaryo', 'SU', 0),
(3717, 226, 'Toshkent City', 'TK', 0),
(3718, 226, 'Toshkent Region', 'TO', 0),
(3719, 226, 'Xorazm', 'XO', 0),
(3720, 227, 'Malampa', 'MA', 0),
(3721, 227, 'Penama', 'PE', 0),
(3722, 227, 'Sanma', 'SA', 0),
(3723, 227, 'Shefa', 'SH', 0),
(3724, 227, 'Tafea', 'TA', 0),
(3725, 227, 'Torba', 'TO', 0),
(3726, 229, 'Amazonas', 'AM', 0),
(3727, 229, 'Anzoategui', 'AN', 0),
(3728, 229, 'Apure', 'AP', 0),
(3729, 229, 'Aragua', 'AR', 0),
(3730, 229, 'Barinas', 'BA', 0),
(3731, 229, 'Bolivar', 'BO', 0),
(3732, 229, 'Carabobo', 'CA', 0),
(3733, 229, 'Cojedes', 'CO', 0),
(3734, 229, 'Delta Amacuro', 'DA', 0),
(3735, 229, 'Dependencias Federales', 'DF', 0),
(3736, 229, 'Distrito Federal', 'DI', 0),
(3737, 229, 'Falcon', 'FA', 0),
(3738, 229, 'Guarico', 'GU', 0),
(3739, 229, 'Lara', 'LA', 0),
(3740, 229, 'Merida', 'ME', 0),
(3741, 229, 'Miranda', 'MI', 0),
(3742, 229, 'Monagas', 'MO', 0),
(3743, 229, 'Nueva Esparta', 'NE', 0),
(3744, 229, 'Portuguesa', 'PO', 0),
(3745, 229, 'Sucre', 'SU', 0),
(3746, 229, 'Tachira', 'TA', 0),
(3747, 229, 'Trujillo', 'TR', 0),
(3748, 229, 'Vargas', 'VA', 0),
(3749, 229, 'Yaracuy', 'YA', 0),
(3750, 229, 'Zulia', 'ZU', 0),
(3751, 230, 'An Giang', 'AG', 0),
(3752, 230, 'Bac Giang', 'BG', 0),
(3753, 230, 'Bac Kan', 'BK', 0),
(3754, 230, 'Bac Lieu', 'BL', 0),
(3755, 230, 'Bac Ninh', 'BC', 0),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 0),
(3757, 230, 'Ben Tre', 'BN', 0),
(3758, 230, 'Binh Dinh', 'BH', 0),
(3759, 230, 'Binh Duong', 'BU', 0),
(3760, 230, 'Binh Phuoc', 'BP', 0),
(3761, 230, 'Binh Thuan', 'BT', 0),
(3762, 230, 'Ca Mau', 'CM', 0),
(3763, 230, 'Can Tho', 'CT', 0),
(3764, 230, 'Cao Bang', 'CB', 0),
(3765, 230, 'Dak Lak', 'DL', 0),
(3766, 230, 'Dak Nong', 'DG', 0),
(3767, 230, 'Da Nang', 'DN', 0),
(3768, 230, 'Dien Bien', 'DB', 0),
(3769, 230, 'Dong Nai', 'DI', 0),
(3770, 230, 'Dong Thap', 'DT', 0),
(3771, 230, 'Gia Lai', 'GL', 0),
(3772, 230, 'Ha Giang', 'HG', 0),
(3773, 230, 'Hai Duong', 'HD', 0),
(3774, 230, 'Hai Phong', 'HP', 0),
(3775, 230, 'Ha Nam', 'HM', 0),
(3776, 230, 'Ha Noi', 'HI', 0),
(3777, 230, 'Ha Tay', 'HT', 0),
(3778, 230, 'Ha Tinh', 'HH', 0),
(3779, 230, 'Hoa Binh', 'HB', 0),
(3780, 230, 'Ho Chi Minh City', 'HC', 0),
(3781, 230, 'Hau Giang', 'HU', 0),
(3782, 230, 'Hung Yen', 'HY', 0),
(3783, 232, 'Saint Croix', 'C', 0),
(3784, 232, 'Saint John', 'J', 0),
(3785, 232, 'Saint Thomas', 'T', 0),
(3786, 233, 'Alo', 'A', 0),
(3787, 233, 'Sigave', 'S', 0),
(3788, 233, 'Wallis', 'W', 0),
(3789, 235, 'Abyan', 'AB', 0),
(3790, 235, 'Adan', 'AD', 0),
(3791, 235, 'Amran', 'AM', 0),
(3792, 235, 'Al Bayda', 'BA', 0),
(3793, 235, 'Ad Dali', 'DA', 0),
(3794, 235, 'Dhamar', 'DH', 0),
(3795, 235, 'Hadramawt', 'HD', 0),
(3796, 235, 'Hajjah', 'HJ', 0),
(3797, 235, 'Al Hudaydah', 'HU', 0),
(3798, 235, 'Ibb', 'IB', 0),
(3799, 235, 'Al Jawf', 'JA', 0),
(3800, 235, 'Lahij', 'LA', 0),
(3801, 235, 'Ma\'rib', 'MA', 0),
(3802, 235, 'Al Mahrah', 'MR', 0),
(3803, 235, 'Al Mahwit', 'MW', 0),
(3804, 235, 'Sa\'dah', 'SD', 0),
(3805, 235, 'San\'a', 'SN', 0),
(3806, 235, 'Shabwah', 'SH', 0),
(3807, 235, 'Ta\'izz', 'TA', 0),
(3812, 237, 'Bas-Congo', 'BC', 0),
(3813, 237, 'Bandundu', 'BN', 0),
(3814, 237, 'Equateur', 'EQ', 0),
(3815, 237, 'Katanga', 'KA', 0),
(3816, 237, 'Kasai-Oriental', 'KE', 0),
(3817, 237, 'Kinshasa', 'KN', 0),
(3818, 237, 'Kasai-Occidental', 'KW', 0),
(3819, 237, 'Maniema', 'MA', 0),
(3820, 237, 'Nord-Kivu', 'NK', 0),
(3821, 237, 'Orientale', 'OR', 0),
(3822, 237, 'Sud-Kivu', 'SK', 0),
(3823, 238, 'Central', 'CE', 0),
(3824, 238, 'Copperbelt', 'CB', 0),
(3825, 238, 'Eastern', 'EA', 0),
(3826, 238, 'Luapula', 'LP', 0),
(3827, 238, 'Lusaka', 'LK', 0),
(3828, 238, 'Northern', 'NO', 0),
(3829, 238, 'North-Western', 'NW', 0),
(3830, 238, 'Southern', 'SO', 0),
(3831, 238, 'Western', 'WE', 0),
(3832, 239, 'Bulawayo', 'BU', 0),
(3833, 239, 'Harare', 'HA', 0),
(3834, 239, 'Manicaland', 'ML', 0),
(3835, 239, 'Mashonaland Central', 'MC', 0),
(3836, 239, 'Mashonaland East', 'ME', 0),
(3837, 239, 'Mashonaland West', 'MW', 0),
(3838, 239, 'Masvingo', 'MV', 0),
(3839, 239, 'Matabeleland North', 'MN', 0),
(3840, 239, 'Matabeleland South', 'MS', 0),
(3841, 239, 'Midlands', 'MD', 0),
(3861, 105, 'Campobasso', 'CB', 0),
(3863, 105, 'Caserta', 'CE', 0),
(3864, 105, 'Catania', 'CT', 0),
(3865, 105, 'Catanzaro', 'CZ', 0),
(3866, 105, 'Chieti', 'CH', 0),
(3867, 105, 'Como', 'CO', 0),
(3868, 105, 'Cosenza', 'CS', 0),
(3869, 105, 'Cremona', 'CR', 0),
(3870, 105, 'Crotone', 'KR', 0),
(3871, 105, 'Cuneo', 'CN', 0),
(3872, 105, 'Enna', 'EN', 0),
(3873, 105, 'Ferrara', 'FE', 0),
(3874, 105, 'Firenze', 'FI', 0),
(3875, 105, 'Foggia', 'FG', 0),
(3876, 105, 'Forli-Cesena', 'FC', 0),
(3877, 105, 'Frosinone', 'FR', 0),
(3878, 105, 'Genova', 'GE', 0),
(3879, 105, 'Gorizia', 'GO', 0),
(3880, 105, 'Grosseto', 'GR', 0),
(3881, 105, 'Imperia', 'IM', 0),
(3882, 105, 'Isernia', 'IS', 0),
(3883, 105, 'L&#39;Aquila', 'AQ', 0),
(3884, 105, 'La Spezia', 'SP', 0),
(3885, 105, 'Latina', 'LT', 0),
(3886, 105, 'Lecce', 'LE', 0),
(3887, 105, 'Lecco', 'LC', 0),
(3888, 105, 'Livorno', 'LI', 0),
(3889, 105, 'Lodi', 'LO', 0),
(3890, 105, 'Lucca', 'LU', 0),
(3891, 105, 'Macerata', 'MC', 0),
(3892, 105, 'Mantova', 'MN', 0),
(3893, 105, 'Massa-Carrara', 'MS', 0),
(3894, 105, 'Matera', 'MT', 0),
(3896, 105, 'Messina', 'ME', 0),
(3897, 105, 'Milano', 'MI', 0),
(3898, 105, 'Modena', 'MO', 0),
(3899, 105, 'Napoli', 'NA', 0),
(3900, 105, 'Novara', 'NO', 0),
(3901, 105, 'Nuoro', 'NU', 0),
(3904, 105, 'Oristano', 'OR', 0),
(3905, 105, 'Padova', 'PD', 0),
(3906, 105, 'Palermo', 'PA', 0),
(3907, 105, 'Parma', 'PR', 0),
(3908, 105, 'Pavia', 'PV', 0),
(3909, 105, 'Perugia', 'PG', 0),
(3910, 105, 'Pesaro e Urbino', 'PU', 0),
(3911, 105, 'Pescara', 'PE', 0),
(3912, 105, 'Piacenza', 'PC', 0),
(3913, 105, 'Pisa', 'PI', 0),
(3914, 105, 'Pistoia', 'PT', 0),
(3915, 105, 'Pordenone', 'PN', 0),
(3916, 105, 'Potenza', 'PZ', 0),
(3917, 105, 'Prato', 'PO', 0),
(3918, 105, 'Ragusa', 'RG', 0),
(3919, 105, 'Ravenna', 'RA', 0),
(3920, 105, 'Reggio Calabria', 'RC', 0),
(3921, 105, 'Reggio Emilia', 'RE', 0),
(3922, 105, 'Rieti', 'RI', 0),
(3923, 105, 'Rimini', 'RN', 0),
(3924, 105, 'Roma', 'RM', 0),
(3925, 105, 'Rovigo', 'RO', 0),
(3926, 105, 'Salerno', 'SA', 0),
(3927, 105, 'Sassari', 'SS', 0),
(3928, 105, 'Savona', 'SV', 0),
(3929, 105, 'Siena', 'SI', 0),
(3930, 105, 'Siracusa', 'SR', 0),
(3931, 105, 'Sondrio', 'SO', 0),
(3932, 105, 'Taranto', 'TA', 0),
(3933, 105, 'Teramo', 'TE', 0),
(3934, 105, 'Terni', 'TR', 0),
(3935, 105, 'Torino', 'TO', 0),
(3936, 105, 'Trapani', 'TP', 0),
(3937, 105, 'Trento', 'TN', 0),
(3938, 105, 'Treviso', 'TV', 0),
(3939, 105, 'Trieste', 'TS', 0),
(3940, 105, 'Udine', 'UD', 0),
(3941, 105, 'Varese', 'VA', 0),
(3942, 105, 'Venezia', 'VE', 0),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 0),
(3944, 105, 'Vercelli', 'VC', 0),
(3945, 105, 'Verona', 'VR', 0),
(3946, 105, 'Vibo Valentia', 'VV', 0),
(3947, 105, 'Vicenza', 'VI', 0),
(3948, 105, 'Viterbo', 'VT', 0),
(3949, 222, 'County Antrim', 'ANT', 0),
(3950, 222, 'County Armagh', 'ARM', 0),
(3951, 222, 'County Down', 'DOW', 0),
(3952, 222, 'County Fermanagh', 'FER', 0),
(3953, 222, 'County Londonderry', 'LDY', 0),
(3954, 222, 'County Tyrone', 'TYR', 0),
(3955, 222, 'Cumbria', 'CMA', 0),
(3956, 190, 'Pomurska', '1', 0),
(3957, 190, 'Podravska', '2', 0),
(3958, 190, 'Koroška', '3', 0),
(3959, 190, 'Savinjska', '4', 0),
(3960, 190, 'Zasavska', '5', 0),
(3961, 190, 'Spodnjeposavska', '6', 0),
(3962, 190, 'Jugovzhodna Slovenija', '7', 0),
(3963, 190, 'Osrednjeslovenska', '8', 0),
(3964, 190, 'Gorenjska', '9', 0),
(3965, 190, 'Notranjsko-kraška', '10', 0),
(3966, 190, 'Goriška', '11', 0),
(3967, 190, 'Obalno-kraška', '12', 0),
(3968, 33, 'Ruse', '', 0),
(3969, 101, 'Alborz', 'ALB', 0),
(3970, 21, 'Brussels-Capital Region', 'BRU', 0),
(3971, 138, 'Aguascalientes', 'AG', 0),
(3973, 242, 'Andrijevica', '01', 0),
(3974, 242, 'Bar', '02', 0),
(3975, 242, 'Berane', '03', 0),
(3976, 242, 'Bijelo Polje', '04', 0),
(3977, 242, 'Budva', '05', 0),
(3978, 242, 'Cetinje', '06', 0),
(3979, 242, 'Danilovgrad', '07', 0),
(3980, 242, 'Herceg-Novi', '08', 0),
(3981, 242, 'Kolašin', '09', 0),
(3982, 242, 'Kotor', '10', 0),
(3983, 242, 'Mojkovac', '11', 0),
(3984, 242, 'Nikšić', '12', 0),
(3985, 242, 'Plav', '13', 0),
(3986, 242, 'Pljevlja', '14', 0),
(3987, 242, 'Plužine', '15', 0),
(3988, 242, 'Podgorica', '16', 0),
(3989, 242, 'Rožaje', '17', 0),
(3990, 242, 'Šavnik', '18', 0),
(3991, 242, 'Tivat', '19', 0),
(3992, 242, 'Ulcinj', '20', 0),
(3993, 242, 'Žabljak', '21', 0),
(3994, 243, 'Belgrade', '00', 0),
(3995, 243, 'North Bačka', '01', 0),
(3996, 243, 'Central Banat', '02', 0),
(3997, 243, 'North Banat', '03', 0),
(3998, 243, 'South Banat', '04', 0),
(3999, 243, 'West Bačka', '05', 0),
(4000, 243, 'South Bačka', '06', 0),
(4001, 243, 'Srem', '07', 0),
(4002, 243, 'Mačva', '08', 0),
(4003, 243, 'Kolubara', '09', 0),
(4004, 243, 'Podunavlje', '10', 0),
(4005, 243, 'Braničevo', '11', 0),
(4006, 243, 'Šumadija', '12', 0),
(4007, 243, 'Pomoravlje', '13', 0),
(4008, 243, 'Bor', '14', 0),
(4009, 243, 'Zaječar', '15', 0),
(4010, 243, 'Zlatibor', '16', 0),
(4011, 243, 'Moravica', '17', 0),
(4012, 243, 'Raška', '18', 0),
(4013, 243, 'Rasina', '19', 0),
(4014, 243, 'Nišava', '20', 0),
(4015, 243, 'Toplica', '21', 0),
(4016, 243, 'Pirot', '22', 0),
(4017, 243, 'Jablanica', '23', 0),
(4018, 243, 'Pčinja', '24', 0),
(4020, 245, 'Bonaire', 'BO', 0),
(4021, 245, 'Saba', 'SA', 0),
(4022, 245, 'Sint Eustatius', 'SE', 0),
(4023, 248, 'Central Equatoria', 'EC', 0),
(4024, 248, 'Eastern Equatoria', 'EE', 0),
(4025, 248, 'Jonglei', 'JG', 0),
(4026, 248, 'Lakes', 'LK', 0),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 0),
(4028, 248, 'Unity', 'UY', 0),
(4029, 248, 'Upper Nile', 'NU', 0),
(4030, 248, 'Warrap', 'WR', 0),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 0),
(4032, 248, 'Western Equatoria', 'EW', 0),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 0),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 0),
(4038, 117, 'Aizkraukles novads', '0320200', 0),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 0),
(4040, 117, 'Aizputes novads', '0640600', 0),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 0),
(4042, 117, 'Aknīstes novads', '0560800', 0),
(4043, 117, 'Aloja, Alojas novads', '0661007', 0),
(4044, 117, 'Alojas novads', '0661000', 0),
(4045, 117, 'Alsungas novads', '0624200', 0),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 0),
(4047, 117, 'Alūksnes novads', '0360200', 0),
(4048, 117, 'Amatas novads', '0424701', 0),
(4049, 117, 'Ape, Apes novads', '0360805', 0),
(4050, 117, 'Apes novads', '0360800', 0),
(4051, 117, 'Auce, Auces novads', '0460805', 0),
(4052, 117, 'Auces novads', '0460800', 0),
(4053, 117, 'Ādažu novads', '0804400', 0),
(4054, 117, 'Babītes novads', '0804900', 0),
(4055, 117, 'Baldone, Baldones novads', '0800605', 0),
(4056, 117, 'Baldones novads', '0800600', 0),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 0),
(4058, 117, 'Baltinavas novads', '0384400', 0),
(4059, 117, 'Balvi, Balvu novads', '0380201', 0),
(4060, 117, 'Balvu novads', '0380200', 0),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 0),
(4062, 117, 'Bauskas novads', '0400200', 0),
(4063, 117, 'Beverīnas novads', '0964700', 0),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 0),
(4065, 117, 'Brocēnu novads', '0840601', 0),
(4066, 117, 'Burtnieku novads', '0967101', 0),
(4067, 117, 'Carnikavas novads', '0805200', 0),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 0),
(4069, 117, 'Cesvaines novads', '0700800', 0),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 0),
(4071, 117, 'Cēsu novads', '0420200', 0),
(4072, 117, 'Ciblas novads', '0684901', 0),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 0),
(4074, 117, 'Dagdas novads', '0601000', 0),
(4075, 117, 'Daugavpils', '0050000', 0),
(4076, 117, 'Daugavpils novads', '0440200', 0),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 0),
(4078, 117, 'Dobeles novads', '0460200', 0),
(4079, 117, 'Dundagas novads', '0885100', 0),
(4080, 117, 'Durbe, Durbes novads', '0640807', 0),
(4081, 117, 'Durbes novads', '0640801', 0),
(4082, 117, 'Engures novads', '0905100', 0),
(4083, 117, 'Ērgļu novads', '0705500', 0),
(4084, 117, 'Garkalnes novads', '0806000', 0),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 0),
(4086, 117, 'Grobiņas novads', '0641000', 0),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 0),
(4088, 117, 'Gulbenes novads', '0500200', 0),
(4089, 117, 'Iecavas novads', '0406400', 0),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 0),
(4091, 117, 'Ikšķiles novads', '0740600', 0),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 0),
(4093, 117, 'Ilūkstes novads', '0440801', 0),
(4094, 117, 'Inčukalna novads', '0801800', 0),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 0),
(4096, 117, 'Jaunjelgavas novads', '0321000', 0),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 0),
(4098, 117, 'Jaunpils novads', '0905700', 0),
(4099, 117, 'Jelgava', '0090000', 0),
(4100, 117, 'Jelgavas novads', '0540200', 0),
(4101, 117, 'Jēkabpils', '0110000', 0),
(4102, 117, 'Jēkabpils novads', '0560200', 0),
(4103, 117, 'Jūrmala', '0130000', 0),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 0),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 0),
(4106, 117, 'Kandavas novads', '0901201', 0),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 0),
(4108, 117, 'Kārsavas novads', '0681000', 0),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 0),
(4110, 117, 'Kokneses novads', '0326100', 0),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 0),
(4112, 117, 'Krāslavas novads', '0600202', 0),
(4113, 117, 'Krimuldas novads', '0806900', 0),
(4114, 117, 'Krustpils novads', '0566900', 0),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 0),
(4116, 117, 'Kuldīgas novads', '0620200', 0),
(4117, 117, 'Ķeguma novads', '0741001', 0),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 0),
(4119, 117, 'Ķekavas novads', '0800800', 0),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 0),
(4121, 117, 'Lielvārdes novads', '0741401', 0),
(4122, 117, 'Liepāja', '0170000', 0),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 0),
(4124, 117, 'Limbažu novads', '0660200', 0),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 0),
(4126, 117, 'Līgatnes novads', '0421200', 0),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 0),
(4128, 117, 'Līvānu novads', '0761201', 0),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 0),
(4130, 117, 'Lubānas novads', '0701400', 0),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 0),
(4132, 117, 'Ludzas novads', '0680200', 0),
(4133, 117, 'Madona, Madonas novads', '0700201', 0),
(4134, 117, 'Madonas novads', '0700200', 0),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 0),
(4136, 117, 'Mazsalacas novads', '0961000', 0),
(4137, 117, 'Mālpils novads', '0807400', 0),
(4138, 117, 'Mārupes novads', '0807600', 0),
(4139, 117, 'Mērsraga novads', '0887600', 0),
(4140, 117, 'Naukšēnu novads', '0967300', 0),
(4141, 117, 'Neretas novads', '0327100', 0),
(4142, 117, 'Nīcas novads', '0647900', 0),
(4143, 117, 'Ogre, Ogres novads', '0740201', 0),
(4144, 117, 'Ogres novads', '0740202', 0),
(4145, 117, 'Olaine, Olaines novads', '0801009', 0),
(4146, 117, 'Olaines novads', '0801000', 0),
(4147, 117, 'Ozolnieku novads', '0546701', 0),
(4148, 117, 'Pārgaujas novads', '0427500', 0),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 0),
(4150, 117, 'Pāvilostas novads', '0641401', 0),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 0),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 0),
(4153, 117, 'Pļaviņu novads', '0321400', 0),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 0),
(4155, 117, 'Preiļu novads', '0760202', 0),
(4156, 117, 'Priekule, Priekules novads', '0641615', 0),
(4157, 117, 'Priekules novads', '0641600', 0),
(4158, 117, 'Priekuļu novads', '0427300', 0),
(4159, 117, 'Raunas novads', '0427700', 0),
(4160, 117, 'Rēzekne', '0210000', 0),
(4161, 117, 'Rēzeknes novads', '0780200', 0),
(4162, 117, 'Riebiņu novads', '0766300', 0),
(4163, 117, 'Rīga', '0010000', 0),
(4164, 117, 'Rojas novads', '0888300', 0),
(4165, 117, 'Ropažu novads', '0808400', 0),
(4166, 117, 'Rucavas novads', '0648500', 0),
(4167, 117, 'Rugāju novads', '0387500', 0),
(4168, 117, 'Rundāles novads', '0407700', 0),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 0),
(4170, 117, 'Rūjienas novads', '0961600', 0),
(4171, 117, 'Sabile, Talsu novads', '0880213', 0),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 0),
(4173, 117, 'Salacgrīvas novads', '0661400', 0),
(4174, 117, 'Salas novads', '0568700', 0),
(4175, 117, 'Salaspils novads', '0801200', 0),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 0),
(4177, 117, 'Saldus novads', '0840200', 0),
(4178, 117, 'Saldus, Saldus novads', '0840201', 0),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 0),
(4180, 117, 'Saulkrastu novads', '0801400', 0),
(4181, 117, 'Seda, Strenču novads', '0941813', 0),
(4182, 117, 'Sējas novads', '0809200', 0),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 0),
(4184, 117, 'Siguldas novads', '0801601', 0),
(4185, 117, 'Skrīveru novads', '0328200', 0),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 0),
(4187, 117, 'Skrundas novads', '0621200', 0),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 0),
(4189, 117, 'Smiltenes novads', '0941600', 0),
(4190, 117, 'Staicele, Alojas novads', '0661017', 0),
(4191, 117, 'Stende, Talsu novads', '0880215', 0),
(4192, 117, 'Stopiņu novads', '0809600', 0),
(4193, 117, 'Strenči, Strenču novads', '0941817', 0),
(4194, 117, 'Strenču novads', '0941800', 0),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 0),
(4196, 117, 'Talsi, Talsu novads', '0880201', 0),
(4197, 117, 'Talsu novads', '0880200', 0),
(4198, 117, 'Tērvetes novads', '0468900', 0),
(4199, 117, 'Tukuma novads', '0900200', 0),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 0),
(4201, 117, 'Vaiņodes novads', '0649300', 0),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 0),
(4203, 117, 'Valka, Valkas novads', '0940201', 0),
(4204, 117, 'Valkas novads', '0940200', 0),
(4205, 117, 'Valmiera', '0250000', 0),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 0),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 0),
(4208, 117, 'Varakļānu novads', '0701800', 0),
(4209, 117, 'Vārkavas novads', '0769101', 0),
(4210, 117, 'Vecpiebalgas novads', '0429300', 0),
(4211, 117, 'Vecumnieku novads', '0409500', 0),
(4212, 117, 'Ventspils', '0270000', 0),
(4213, 117, 'Ventspils novads', '0980200', 0),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 0),
(4215, 117, 'Viesītes novads', '0561800', 0),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 0),
(4217, 117, 'Viļakas novads', '0381600', 0),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 0),
(4219, 117, 'Viļānu novads', '0781800', 0),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 0),
(4221, 117, 'Zilupes novads', '0681801', 0),
(4222, 43, 'Arica y Parinacota', 'AP', 0),
(4223, 43, 'Los Rios', 'LR', 0),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 0),
(4225, 118, 'Beirut', 'LB-BR', 0),
(4226, 118, 'Bekaa', 'LB-BE', 0),
(4227, 118, 'Mount Lebanon', 'LB-ML', 0),
(4228, 118, 'Nabatieh', 'LB-NB', 0),
(4229, 118, 'North', 'LB-NR', 0),
(4230, 118, 'South', 'LB-ST', 0),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 0),
(4233, 100, 'Papua Barat', 'PB', 0),
(4234, 100, 'Sulawesi Barat', 'SR', 0),
(4235, 100, 'Kepulauan Riau', 'KR', 0),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 0),
(4237, 105, 'Fermo', 'FM', 0),
(4238, 105, 'Monza Brianza', 'MB', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
