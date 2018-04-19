-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2018 at 12:28 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-17 08:46:03', '2018-04-17 08:46:03', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 18, 'WooCommerce', '', '', '', '2018-04-17 13:11:24', '2018-04-17 13:11:24', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 19, 'WooCommerce', '', '', '', '2018-04-17 16:52:00', '2018-04-17 16:52:00', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 20, 'WooCommerce', '', '', '', '2018-04-17 17:34:20', '2018-04-17 17:34:20', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 21, 'WooCommerce', '', '', '', '2018-04-17 18:06:58', '2018-04-17 18:06:58', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 22, 'WooCommerce', '', '', '', '2018-04-17 19:10:18', '2018-04-17 19:10:18', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 25, 'WooCommerce', 'woocommerce@dealgo.ae', '', '', '2018-04-19 09:05:08', '2018-04-19 09:05:08', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=542 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dealgo.ae/home', 'yes'),
(2, 'home', 'http://dealgo.ae/home', 'yes'),
(3, 'blogname', 'Home Bazar', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'firassleibi@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:9:{i:1524143647;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1524170764;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1524170910;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1524182400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524213977;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524214110;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524214235;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1525132800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523955021;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1524127622;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(273, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1524127625;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.3.5\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.5.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.3.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.5.3\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1410389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1410389\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(511, '_site_transient_timeout_theme_roots', '1524129424', 'no'),
(512, '_site_transient_theme_roots', 'a:5:{s:16:\"storefront-child\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(120, '_site_transient_timeout_browser_efc56fe28520bcd166ef136f44025003', '1524559578', 'no'),
(121, '_site_transient_browser_efc56fe28520bcd166ef136f44025003', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, 'recently_activated', 'a:0:{}', 'yes'),
(355, '_site_transient_timeout_browser_f486628b8b3cd381d361bdc25237d08d', '1524678849', 'no'),
(356, '_site_transient_browser_f486628b8b3cd381d361bdc25237d08d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(525, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(268, 'wc_ppec_version', '1.5.3', 'yes'),
(146, 'woocommerce_store_address', 'Dubai - Business Bay', 'yes'),
(147, 'woocommerce_store_address_2', '', 'yes'),
(148, 'woocommerce_store_city', 'Dubai', 'yes'),
(149, 'woocommerce_default_country', 'AE', 'yes'),
(150, 'woocommerce_store_postcode', '00971', 'yes'),
(151, 'woocommerce_allowed_countries', 'all', 'yes'),
(152, 'woocommerce_all_except_countries', '', 'yes'),
(153, 'woocommerce_specific_allowed_countries', '', 'yes'),
(154, 'woocommerce_ship_to_countries', '', 'yes'),
(155, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(156, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(157, 'woocommerce_calc_taxes', 'no', 'yes'),
(158, 'woocommerce_currency', 'AED', 'yes'),
(159, 'woocommerce_currency_pos', 'left', 'yes'),
(160, 'woocommerce_price_thousand_sep', ',', 'yes'),
(161, 'woocommerce_price_decimal_sep', '.', 'yes'),
(162, 'woocommerce_price_num_decimals', '2', 'yes'),
(163, 'woocommerce_shop_page_id', '4', 'yes'),
(164, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(165, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(166, 'woocommerce_weight_unit', 'kg', 'yes'),
(167, 'woocommerce_dimension_unit', 'cm', 'yes'),
(168, 'woocommerce_enable_reviews', 'yes', 'yes'),
(169, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(170, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(171, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(172, 'woocommerce_review_rating_required', 'yes', 'no'),
(173, 'woocommerce_manage_stock', 'yes', 'yes'),
(174, 'woocommerce_hold_stock_minutes', '60', 'no'),
(175, 'woocommerce_notify_low_stock', 'yes', 'no'),
(176, 'woocommerce_notify_no_stock', 'yes', 'no'),
(177, 'woocommerce_stock_email_recipient', 'firassleibi@gmail.com', 'no'),
(178, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(179, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(180, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(181, 'woocommerce_stock_format', '', 'yes'),
(182, 'woocommerce_file_download_method', 'force', 'no'),
(183, 'woocommerce_downloads_require_login', 'no', 'no'),
(184, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(185, 'woocommerce_prices_include_tax', 'no', 'yes'),
(186, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(187, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(188, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(189, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(190, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(191, 'woocommerce_tax_display_cart', 'excl', 'no'),
(192, 'woocommerce_price_display_suffix', '', 'yes'),
(193, 'woocommerce_tax_total_display', 'itemized', 'no'),
(194, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(195, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(196, 'woocommerce_ship_to_destination', 'billing', 'no'),
(197, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(198, 'woocommerce_enable_coupons', 'yes', 'yes'),
(199, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(200, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(201, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(202, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(203, 'woocommerce_cart_page_id', '5', 'yes'),
(204, 'woocommerce_checkout_page_id', '6', 'yes'),
(205, 'woocommerce_terms_page_id', '', 'no'),
(206, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(207, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(208, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(209, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(210, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(211, 'woocommerce_myaccount_page_id', '7', 'yes'),
(212, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(213, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(214, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(215, 'woocommerce_registration_generate_username', 'yes', 'no'),
(216, 'woocommerce_registration_generate_password', 'no', 'no'),
(217, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(218, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(219, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(220, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(221, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(222, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(223, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(224, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(225, 'woocommerce_email_from_name', 'Home Bazar', 'no'),
(226, 'woocommerce_email_from_address', 'firassleibi@gmail.com', 'no'),
(227, 'woocommerce_email_header_image', '', 'no'),
(228, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(229, 'woocommerce_email_base_color', '#96588a', 'no'),
(230, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(231, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(232, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(233, 'woocommerce_api_enabled', 'yes', 'yes'),
(234, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(235, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(236, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(237, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(238, 'product_cat_children', 'a:0:{}', 'yes'),
(239, 'default_product_cat', '15', 'yes'),
(260, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(242, 'woocommerce_version', '3.3.5', 'yes'),
(243, 'woocommerce_db_version', '3.3.5', 'yes'),
(244, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(245, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(246, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(250, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(252, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(253, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(256, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(515, '_transient_is_multi_author', '0', 'yes'),
(261, 'woocommerce_product_type', 'both', 'yes'),
(262, 'woocommerce_allow_tracking', 'no', 'yes'),
(311, 'woocommerce_gateway_order', 'a:5:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;s:11:\"ppec_paypal\";i:4;}', 'yes'),
(264, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:21:\"firassleibi@gmail.com\";}', 'yes'),
(265, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(266, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(267, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";s:0:\"\";s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(274, '_transient_shipping-transient-version', '1523954988', 'yes'),
(275, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"20\";}', 'yes'),
(276, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"40\";}', 'yes'),
(278, 'current_theme', 'Store Front Child Theme', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(279, 'theme_mods_storefront', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #747474;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #404040;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #727272;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #636363;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #595959;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #404040;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #727272;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #404040;\n				}\n			}\";s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523956046;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(280, 'theme_switched', '', 'yes'),
(281, 'storefront_nux_fresh_site', '0', 'yes'),
(282, 'woocommerce_catalog_rows', '4', 'yes'),
(283, 'woocommerce_catalog_columns', '3', 'yes'),
(284, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(285, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1524127625;s:7:\"checked\";a:5:{s:16:\"storefront-child\";s:5:\"1.0.0\";s:10:\"storefront\";s:5:\"2.2.8\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(293, '_transient_product-transient-version', '1524134057', 'yes'),
(291, '_transient_timeout_wc_shipping_method_count_1_1523954988', '1526547067', 'no'),
(286, '_transient_timeout_external_ip_address_::1', '1524559835', 'no'),
(287, '_transient_external_ip_address_::1', '94.200.130.66', 'no'),
(289, '_transient_product_query-transient-version', '1524134057', 'yes'),
(292, '_transient_wc_shipping_method_count_1_1523954988', '2', 'no'),
(300, '_site_transient_timeout_browser_c34fbe0893b504a8f7ca5b8e754e60a9', '1524561673', 'no'),
(299, 'theme_mods_storefront-child', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #747474;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #404040;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #727272;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #636363;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #595959;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #404040;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #727272;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #404040;\n				}\n			}\";s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(301, '_site_transient_browser_c34fbe0893b504a8f7ca5b8e754e60a9', 'a:10:{s:4:\"name\";s:14:\"Microsoft Edge\";s:7:\"version\";s:8:\"16.16299\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:8:\"15.15063\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(329, '_transient_orders-transient-version', '1524128705', 'yes'),
(330, 'storefront_nux_guided_tour', '1', 'yes'),
(537, '_transient_timeout_wc_product_children_10', '1526726058', 'no'),
(538, '_transient_wc_product_children_10', 'a:2:{s:3:\"all\";a:2:{i:0;i:24;i:1;i:23;}s:7:\"visible\";a:2:{i:0;i:24;i:1;i:23;}}', 'no'),
(310, 'storefront_nux_dismissed', '1', 'yes'),
(540, '_transient_wc_var_prices_10', '{\"version\":\"1524134057\",\"4be0d687c340b42e199e18ce8603e593\":{\"price\":{\"24\":\"100.00\",\"23\":\"100.00\"},\"regular_price\":{\"24\":\"100.00\",\"23\":\"100.00\"},\"sale_price\":{\"24\":\"100.00\",\"23\":\"100.00\"}},\"8c63c923243b86394a21985d260e5c3b\":{\"price\":{\"24\":\"100.00\",\"23\":\"100.00\"},\"regular_price\":{\"24\":\"100.00\",\"23\":\"100.00\"},\"sale_price\":{\"24\":\"100.00\",\"23\":\"100.00\"}}}', 'no'),
(494, '_transient_timeout_wc_term_counts', '1526677678', 'no'),
(495, '_transient_wc_term_counts', 'a:1:{i:15;s:1:\"2\";}', 'no'),
(353, '_transient_timeout_external_ip_address_127.0.0.1', '1524678823', 'no'),
(354, '_transient_external_ip_address_127.0.0.1', '5.107.1.146', 'no'),
(375, 'WPLANG', '', 'yes'),
(376, 'new_admin_email', 'firassleibi@gmail.com', 'yes'),
(539, '_transient_timeout_wc_var_prices_10', '1526726093', 'no'),
(391, '_site_transient_timeout_browser_b12d5038d8519a3a5d8c6c00ea573726', '1524690062', 'no'),
(392, '_site_transient_browser_b12d5038d8519a3a5d8c6c00ea573726', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"59.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=442 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_wc_review_count', '0'),
(3, 8, '_wc_rating_count', 'a:0:{}'),
(4, 8, '_wc_average_rating', '0'),
(5, 9, '_wp_attached_file', '2018/04/item_XXL_23831166_34522496.jpg'),
(6, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:274;s:6:\"height\";i:592;s:4:\"file\";s:38:\"2018/04/item_XXL_23831166_34522496.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"item_XXL_23831166_34522496-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"item_XXL_23831166_34522496-139x300.jpg\";s:5:\"width\";i:139;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"item_XXL_23831166_34522496-274x324.jpg\";s:5:\"width\";i:274;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"item_XXL_23831166_34522496-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"item_XXL_23831166_34522496-274x324.jpg\";s:5:\"width\";i:274;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"item_XXL_23831166_34522496-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 8, '_edit_last', '1'),
(8, 8, '_thumbnail_id', '9'),
(9, 8, '_sku', ''),
(10, 8, '_regular_price', '200'),
(11, 8, '_sale_price', '100'),
(12, 8, '_sale_price_dates_from', ''),
(13, 8, '_sale_price_dates_to', ''),
(14, 8, 'total_sales', '7'),
(15, 8, '_tax_status', 'taxable'),
(16, 8, '_tax_class', ''),
(17, 8, '_manage_stock', 'no'),
(18, 8, '_backorders', 'no'),
(19, 8, '_sold_individually', 'no'),
(20, 8, '_weight', ''),
(21, 8, '_length', ''),
(22, 8, '_width', ''),
(23, 8, '_height', ''),
(24, 8, '_upsell_ids', 'a:0:{}'),
(25, 8, '_crosssell_ids', 'a:0:{}'),
(26, 8, '_purchase_note', ''),
(27, 8, '_default_attributes', 'a:0:{}'),
(28, 8, '_virtual', 'no'),
(29, 8, '_downloadable', 'no'),
(30, 8, '_product_image_gallery', ''),
(31, 8, '_download_limit', '-1'),
(32, 8, '_download_expiry', '-1'),
(33, 8, '_stock', NULL),
(34, 8, '_stock_status', 'instock'),
(35, 8, '_product_version', '3.3.5'),
(36, 8, '_price', '100'),
(37, 8, '_edit_lock', '1523955187:1'),
(38, 10, '_wc_review_count', '0'),
(39, 10, '_wc_rating_count', 'a:0:{}'),
(40, 10, '_wc_average_rating', '0'),
(41, 11, '_wp_attached_file', '2018/04/item_XL_22973329_32236870.jpg'),
(42, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:451;s:4:\"file\";s:37:\"2018/04/item_XL_22973329_32236870.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"item_XL_22973329_32236870-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"item_XL_22973329_32236870-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"item_XL_22973329_32236870-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"item_XL_22973329_32236870-416x313.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"item_XL_22973329_32236870-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"item_XL_22973329_32236870-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"item_XL_22973329_32236870-416x313.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"item_XL_22973329_32236870-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 10, '_edit_last', '1'),
(44, 10, '_thumbnail_id', '11'),
(45, 10, '_sku', 'kkkk'),
(46, 10, '_regular_price', '300'),
(47, 10, '_sale_price', '100'),
(48, 10, '_sale_price_dates_from', ''),
(49, 10, '_sale_price_dates_to', ''),
(50, 10, 'total_sales', '12'),
(51, 10, '_tax_status', 'taxable'),
(52, 10, '_tax_class', ''),
(53, 10, '_manage_stock', 'yes'),
(54, 10, '_backorders', 'no'),
(55, 10, '_sold_individually', 'no'),
(56, 10, '_weight', ''),
(57, 10, '_length', ''),
(58, 10, '_width', ''),
(59, 10, '_height', ''),
(60, 10, '_upsell_ids', 'a:0:{}'),
(61, 10, '_crosssell_ids', 'a:0:{}'),
(62, 10, '_purchase_note', ''),
(63, 10, '_default_attributes', 'a:0:{}'),
(64, 10, '_virtual', 'no'),
(65, 10, '_downloadable', 'no'),
(66, 10, '_product_image_gallery', ''),
(67, 10, '_download_limit', '-1'),
(68, 10, '_download_expiry', '-1'),
(69, 10, '_stock', '1000'),
(70, 10, '_stock_status', 'instock'),
(71, 10, '_product_version', '3.3.5'),
(73, 10, '_edit_lock', '1524135064:1'),
(74, 6, '_edit_lock', '1523956905:1'),
(75, 12, '_edit_last', '1'),
(76, 12, '_edit_lock', '1523958351:1'),
(77, 15, '_edit_last', '1'),
(78, 15, '_wp_page_template', 'login.php'),
(79, 15, '_edit_lock', '1523958835:1'),
(80, 18, '_order_key', 'wc_order_5ad5f246b43ab'),
(81, 18, '_customer_user', '1'),
(82, 18, '_payment_method', 'cod'),
(83, 18, '_payment_method_title', 'Cash on delivery'),
(84, 18, '_transaction_id', ''),
(85, 18, '_customer_ip_address', '::1'),
(86, 18, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(87, 18, '_created_via', 'checkout'),
(88, 18, '_date_completed', ''),
(89, 18, '_completed_date', ''),
(90, 18, '_date_paid', ''),
(91, 18, '_paid_date', ''),
(92, 18, '_cart_hash', '79c6bb04fd71a0e57e96957001988268'),
(93, 18, '_billing_first_name', 'Firas'),
(94, 18, '_billing_last_name', 'Sleibi'),
(95, 18, '_billing_company', ''),
(96, 18, '_billing_address_1', '11'),
(97, 18, '_billing_address_2', ''),
(98, 18, '_billing_city', 'dubai'),
(99, 18, '_billing_state', ''),
(100, 18, '_billing_postcode', ''),
(101, 18, '_billing_country', 'AE'),
(102, 18, '_billing_email', 'firassleibi@gmail.com'),
(103, 18, '_billing_phone', ''),
(104, 18, '_shipping_first_name', 'Firas'),
(105, 18, '_shipping_last_name', 'Sleibi'),
(106, 18, '_shipping_company', ''),
(107, 18, '_shipping_address_1', '11'),
(108, 18, '_shipping_address_2', ''),
(109, 18, '_shipping_city', 'dubai'),
(110, 18, '_shipping_state', ''),
(111, 18, '_shipping_postcode', ''),
(112, 18, '_shipping_country', 'AE'),
(113, 18, '_order_currency', 'AED'),
(114, 18, '_cart_discount', '0'),
(115, 18, '_cart_discount_tax', '0'),
(116, 18, '_order_shipping', '20.00'),
(117, 18, '_order_shipping_tax', '0'),
(118, 18, '_order_tax', '0'),
(119, 18, '_order_total', '220.00'),
(120, 18, '_order_version', '3.3.5'),
(121, 18, '_prices_include_tax', 'no'),
(122, 18, '_billing_address_index', 'Firas Sleibi  11  dubai   AE firassleibi@gmail.com '),
(123, 18, '_shipping_address_index', 'Firas Sleibi  11  dubai   AE'),
(124, 18, '_download_permissions_granted', 'yes'),
(125, 18, '_recorded_sales', 'yes'),
(126, 18, '_recorded_coupon_usage_counts', 'yes'),
(127, 18, '_order_stock_reduced', 'yes'),
(128, 19, '_order_key', 'wc_order_5ad6262d9a726'),
(129, 19, '_customer_user', '1'),
(130, 19, '_payment_method', 'cod'),
(131, 19, '_payment_method_title', 'Cash on delivery'),
(132, 19, '_transaction_id', ''),
(133, 19, '_customer_ip_address', '::1'),
(134, 19, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(135, 19, '_created_via', 'checkout'),
(136, 19, '_date_completed', ''),
(137, 19, '_completed_date', ''),
(138, 19, '_date_paid', ''),
(139, 19, '_paid_date', ''),
(140, 19, '_cart_hash', '62ccc5659aca9c68be12668d97813678'),
(141, 19, '_billing_first_name', 'Firas'),
(142, 19, '_billing_last_name', 'Sleibi'),
(143, 19, '_billing_company', ''),
(144, 19, '_billing_address_1', '11'),
(145, 19, '_billing_address_2', ''),
(146, 19, '_billing_city', 'dubai'),
(147, 19, '_billing_state', ''),
(148, 19, '_billing_postcode', ''),
(149, 19, '_billing_country', 'AE'),
(150, 19, '_billing_email', 'firassleibi@gmail.com'),
(151, 19, '_billing_phone', ''),
(152, 19, '_shipping_first_name', 'Firas'),
(153, 19, '_shipping_last_name', 'Sleibi'),
(154, 19, '_shipping_company', ''),
(155, 19, '_shipping_address_1', '11'),
(156, 19, '_shipping_address_2', ''),
(157, 19, '_shipping_city', 'dubai'),
(158, 19, '_shipping_state', ''),
(159, 19, '_shipping_postcode', ''),
(160, 19, '_shipping_country', 'AE'),
(161, 19, '_order_currency', 'AED'),
(162, 19, '_cart_discount', '0'),
(163, 19, '_cart_discount_tax', '0'),
(164, 19, '_order_shipping', '20.00'),
(165, 19, '_order_shipping_tax', '0'),
(166, 19, '_order_tax', '0'),
(167, 19, '_order_total', '820.00'),
(168, 19, '_order_version', '3.3.5'),
(169, 19, '_prices_include_tax', 'no'),
(170, 19, '_billing_address_index', 'Firas Sleibi  11  dubai   AE firassleibi@gmail.com '),
(171, 19, '_shipping_address_index', 'Firas Sleibi  11  dubai   AE'),
(172, 19, '_download_permissions_granted', 'yes'),
(173, 19, '_recorded_sales', 'yes'),
(174, 19, '_recorded_coupon_usage_counts', 'yes'),
(175, 19, '_order_stock_reduced', 'yes'),
(176, 20, '_order_key', 'wc_order_5ad6301a95475'),
(177, 20, '_customer_user', '1'),
(178, 20, '_payment_method', 'cod'),
(179, 20, '_payment_method_title', 'Cash on delivery'),
(180, 20, '_transaction_id', ''),
(181, 20, '_customer_ip_address', '::1'),
(182, 20, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(183, 20, '_created_via', 'checkout'),
(184, 20, '_date_completed', ''),
(185, 20, '_completed_date', ''),
(186, 20, '_date_paid', ''),
(187, 20, '_paid_date', ''),
(188, 20, '_cart_hash', '67483dd6506360c9d22c54ebcb299eeb'),
(189, 20, '_billing_first_name', 'Firas'),
(190, 20, '_billing_last_name', 'Sleibi'),
(191, 20, '_billing_company', ''),
(192, 20, '_billing_address_1', '11'),
(193, 20, '_billing_address_2', ''),
(194, 20, '_billing_city', 'dubai'),
(195, 20, '_billing_state', ''),
(196, 20, '_billing_postcode', ''),
(197, 20, '_billing_country', 'AE'),
(198, 20, '_billing_email', 'firassleibi@gmail.com'),
(199, 20, '_billing_phone', ''),
(200, 20, '_shipping_first_name', 'Firas'),
(201, 20, '_shipping_last_name', 'Sleibi'),
(202, 20, '_shipping_company', ''),
(203, 20, '_shipping_address_1', '11'),
(204, 20, '_shipping_address_2', ''),
(205, 20, '_shipping_city', 'dubai'),
(206, 20, '_shipping_state', ''),
(207, 20, '_shipping_postcode', ''),
(208, 20, '_shipping_country', 'AE'),
(209, 20, '_order_currency', 'AED'),
(210, 20, '_cart_discount', '0'),
(211, 20, '_cart_discount_tax', '0'),
(212, 20, '_order_shipping', '20.00'),
(213, 20, '_order_shipping_tax', '0'),
(214, 20, '_order_tax', '0'),
(215, 20, '_order_total', '220.00'),
(216, 20, '_order_version', '3.3.5'),
(217, 20, '_prices_include_tax', 'no'),
(218, 20, '_billing_address_index', 'Firas Sleibi  11  dubai   AE firassleibi@gmail.com '),
(219, 20, '_shipping_address_index', 'Firas Sleibi  11  dubai   AE'),
(220, 20, '_download_permissions_granted', 'yes'),
(221, 20, '_recorded_sales', 'yes'),
(222, 20, '_recorded_coupon_usage_counts', 'yes'),
(223, 20, '_order_stock_reduced', 'yes'),
(224, 21, '_order_key', 'wc_order_5ad637c04d36e'),
(225, 21, '_customer_user', '1'),
(226, 21, '_payment_method', 'cod'),
(227, 21, '_payment_method_title', 'Cash on delivery'),
(228, 21, '_transaction_id', ''),
(229, 21, '_customer_ip_address', '::1'),
(230, 21, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(231, 21, '_created_via', 'checkout'),
(232, 21, '_date_completed', ''),
(233, 21, '_completed_date', ''),
(234, 21, '_date_paid', ''),
(235, 21, '_paid_date', ''),
(236, 21, '_cart_hash', '67483dd6506360c9d22c54ebcb299eeb'),
(237, 21, '_billing_first_name', 'Firas'),
(238, 21, '_billing_last_name', 'Sleibi'),
(239, 21, '_billing_company', ''),
(240, 21, '_billing_address_1', '11'),
(241, 21, '_billing_address_2', ''),
(242, 21, '_billing_city', 'dubai'),
(243, 21, '_billing_state', ''),
(244, 21, '_billing_postcode', ''),
(245, 21, '_billing_country', 'AE'),
(246, 21, '_billing_email', 'firassleibi@gmail.com'),
(247, 21, '_billing_phone', ''),
(248, 21, '_shipping_first_name', 'Firas'),
(249, 21, '_shipping_last_name', 'Sleibi'),
(250, 21, '_shipping_company', ''),
(251, 21, '_shipping_address_1', '11'),
(252, 21, '_shipping_address_2', ''),
(253, 21, '_shipping_city', 'dubai'),
(254, 21, '_shipping_state', ''),
(255, 21, '_shipping_postcode', ''),
(256, 21, '_shipping_country', 'AE'),
(257, 21, '_order_currency', 'AED'),
(258, 21, '_cart_discount', '0'),
(259, 21, '_cart_discount_tax', '0'),
(260, 21, '_order_shipping', '20.00'),
(261, 21, '_order_shipping_tax', '0'),
(262, 21, '_order_tax', '0'),
(263, 21, '_order_total', '220.00'),
(264, 21, '_order_version', '3.3.5'),
(265, 21, '_prices_include_tax', 'no'),
(266, 21, '_billing_address_index', 'Firas Sleibi  11  dubai   AE firassleibi@gmail.com '),
(267, 21, '_shipping_address_index', 'Firas Sleibi  11  dubai   AE'),
(268, 21, '_download_permissions_granted', 'yes'),
(269, 21, '_recorded_sales', 'yes'),
(270, 21, '_recorded_coupon_usage_counts', 'yes'),
(271, 21, '_order_stock_reduced', 'yes'),
(272, 22, '_order_key', 'wc_order_5ad6469894c30'),
(273, 22, '_customer_user', '1'),
(274, 22, '_payment_method', 'cod'),
(275, 22, '_payment_method_title', 'Cash on delivery'),
(276, 22, '_transaction_id', ''),
(277, 22, '_customer_ip_address', '::1'),
(278, 22, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(279, 22, '_created_via', 'checkout'),
(280, 22, '_date_completed', ''),
(281, 22, '_completed_date', ''),
(282, 22, '_date_paid', ''),
(283, 22, '_paid_date', ''),
(284, 22, '_cart_hash', 'b5c8a774b899ec54709335241c5f7f96'),
(285, 22, '_billing_first_name', 'Firas'),
(286, 22, '_billing_last_name', 'Sleibi'),
(287, 22, '_billing_company', ''),
(288, 22, '_billing_address_1', '11'),
(289, 22, '_billing_address_2', ''),
(290, 22, '_billing_city', 'dubai'),
(291, 22, '_billing_state', ''),
(292, 22, '_billing_postcode', ''),
(293, 22, '_billing_country', 'AE'),
(294, 22, '_billing_email', 'firassleibi@gmail.com'),
(295, 22, '_billing_phone', ''),
(296, 22, '_shipping_first_name', 'Firas'),
(297, 22, '_shipping_last_name', 'Sleibi'),
(298, 22, '_shipping_company', ''),
(299, 22, '_shipping_address_1', '11'),
(300, 22, '_shipping_address_2', ''),
(301, 22, '_shipping_city', 'dubai'),
(302, 22, '_shipping_state', ''),
(303, 22, '_shipping_postcode', ''),
(304, 22, '_shipping_country', 'AE'),
(305, 22, '_order_currency', 'AED'),
(306, 22, '_cart_discount', '0'),
(307, 22, '_cart_discount_tax', '0'),
(308, 22, '_order_shipping', '20.00'),
(309, 22, '_order_shipping_tax', '0'),
(310, 22, '_order_tax', '0'),
(311, 22, '_order_total', '320.00'),
(312, 22, '_order_version', '3.3.5'),
(313, 22, '_prices_include_tax', 'no'),
(314, 22, '_billing_address_index', 'Firas Sleibi  11  dubai   AE firassleibi@gmail.com '),
(315, 22, '_shipping_address_index', 'Firas Sleibi  11  dubai   AE'),
(316, 22, '_download_permissions_granted', 'yes'),
(317, 22, '_recorded_sales', 'yes'),
(318, 22, '_recorded_coupon_usage_counts', 'yes'),
(319, 22, '_order_stock_reduced', 'yes'),
(320, 10, '_product_attributes', 'a:1:{s:5:\"color\";a:6:{s:4:\"name\";s:5:\"color\";s:5:\"value\";s:18:\"red | green | blue\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(354, 23, 'attribute_color', 'red'),
(321, 23, '_variation_description', ''),
(322, 23, '_sku', ''),
(323, 23, '_regular_price', '100'),
(324, 23, '_sale_price', ''),
(325, 23, '_sale_price_dates_from', ''),
(326, 23, '_sale_price_dates_to', ''),
(327, 23, 'total_sales', '0'),
(328, 23, '_tax_status', 'taxable'),
(329, 23, '_tax_class', 'parent'),
(330, 23, '_manage_stock', 'no'),
(331, 23, '_backorders', 'no'),
(332, 23, '_sold_individually', 'no'),
(333, 23, '_weight', ''),
(334, 23, '_length', ''),
(335, 23, '_width', ''),
(336, 23, '_height', ''),
(337, 23, '_upsell_ids', 'a:0:{}'),
(338, 23, '_crosssell_ids', 'a:0:{}'),
(339, 23, '_purchase_note', ''),
(340, 23, '_default_attributes', 'a:0:{}'),
(341, 23, '_virtual', 'no'),
(342, 23, '_downloadable', 'no'),
(343, 23, '_product_image_gallery', ''),
(344, 23, '_download_limit', '-1'),
(345, 23, '_download_expiry', '-1'),
(346, 23, '_stock', '0'),
(347, 23, '_stock_status', 'instock'),
(348, 23, '_wc_average_rating', '0'),
(349, 23, '_wc_rating_count', 'a:0:{}'),
(350, 23, '_wc_review_count', '0'),
(351, 23, '_downloadable_files', 'a:0:{}'),
(352, 23, '_price', '100'),
(353, 23, '_product_version', '3.3.5'),
(355, 24, '_variation_description', ''),
(356, 24, '_sku', ''),
(357, 24, '_regular_price', '100'),
(358, 24, '_sale_price', ''),
(359, 24, '_sale_price_dates_from', ''),
(360, 24, '_sale_price_dates_to', ''),
(361, 24, 'total_sales', '0'),
(362, 24, '_tax_status', 'taxable'),
(363, 24, '_tax_class', 'parent'),
(364, 24, '_manage_stock', 'no'),
(365, 24, '_backorders', 'no'),
(366, 24, '_sold_individually', 'no'),
(367, 24, '_weight', ''),
(368, 24, '_length', ''),
(369, 24, '_width', ''),
(370, 24, '_height', ''),
(371, 24, '_upsell_ids', 'a:0:{}'),
(372, 24, '_crosssell_ids', 'a:0:{}'),
(373, 24, '_purchase_note', ''),
(374, 24, '_default_attributes', 'a:0:{}'),
(375, 24, '_virtual', 'no'),
(376, 24, '_downloadable', 'no'),
(377, 24, '_product_image_gallery', ''),
(378, 24, '_download_limit', '-1'),
(379, 24, '_download_expiry', '-1'),
(380, 24, '_stock', '0'),
(381, 24, '_stock_status', 'instock'),
(382, 24, '_wc_average_rating', '0'),
(383, 24, '_wc_rating_count', 'a:0:{}'),
(384, 24, '_wc_review_count', '0'),
(385, 24, '_downloadable_files', 'a:0:{}'),
(386, 24, 'attribute_color', 'green'),
(387, 24, '_price', '100'),
(388, 24, '_product_version', '3.3.5'),
(441, 10, '_price', '100'),
(390, 25, '_order_key', 'wc_order_5ad85bc165eeb'),
(391, 25, '_customer_user', '11'),
(392, 25, '_payment_method', 'cod'),
(393, 25, '_payment_method_title', 'Cash on delivery'),
(394, 25, '_transaction_id', ''),
(395, 25, '_customer_ip_address', '127.0.0.1'),
(396, 25, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36'),
(397, 25, '_created_via', 'checkout'),
(398, 25, '_date_completed', ''),
(399, 25, '_completed_date', ''),
(400, 25, '_date_paid', ''),
(401, 25, '_paid_date', ''),
(402, 25, '_cart_hash', '3e4dbffeecffc8d1b6102aabfa7d6595'),
(403, 25, '_billing_first_name', 'Firas'),
(404, 25, '_billing_last_name', 'Sleibi'),
(405, 25, '_billing_company', ''),
(406, 25, '_billing_address_1', 'Nahda 1'),
(407, 25, '_billing_address_2', '1005'),
(408, 25, '_billing_city', 'Dubai'),
(409, 25, '_billing_state', 'Sharjah'),
(410, 25, '_billing_postcode', ''),
(411, 25, '_billing_country', 'AE'),
(412, 25, '_billing_email', 'firassleibi@gmail.com'),
(413, 25, '_billing_phone', '524219541'),
(414, 25, '_shipping_first_name', 'Firas'),
(415, 25, '_shipping_last_name', 'Sleibi'),
(416, 25, '_shipping_company', ''),
(417, 25, '_shipping_address_1', 'Nahda 1'),
(418, 25, '_shipping_address_2', '1005'),
(419, 25, '_shipping_city', 'Dubai'),
(420, 25, '_shipping_state', 'Sharjah'),
(421, 25, '_shipping_postcode', ''),
(422, 25, '_shipping_country', 'AE'),
(423, 25, '_order_currency', 'AED'),
(424, 25, '_cart_discount', '0'),
(425, 25, '_cart_discount_tax', '0'),
(426, 25, '_order_shipping', '20.00'),
(427, 25, '_order_shipping_tax', '0'),
(428, 25, '_order_tax', '0'),
(429, 25, '_order_total', '220.00'),
(430, 25, '_order_version', '3.3.5'),
(431, 25, '_prices_include_tax', 'no'),
(432, 25, '_billing_address_index', 'Firas Sleibi  Nahda 1 1005 Dubai Sharjah  AE firassleibi@gmail.com 524219541'),
(433, 25, '_shipping_address_index', 'Firas Sleibi  Nahda 1 1005 Dubai Sharjah  AE'),
(434, 25, '_download_permissions_granted', 'yes'),
(435, 25, '_recorded_sales', 'yes'),
(436, 25, '_recorded_coupon_usage_counts', 'yes'),
(437, 25, '_order_stock_reduced', 'yes'),
(438, 24, '_thumbnail_id', '11'),
(440, 23, '_thumbnail_id', '11');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-17 08:46:03', '2018-04-17 08:46:03', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-17 08:46:03', '2018-04-17 08:46:03', '', 0, 'http://localhost/home/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-17 08:46:03', '2018-04-17 08:46:03', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/home/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-17 08:46:03', '2018-04-17 08:46:03', '', 0, 'http://localhost/home/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-17 08:46:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-17 08:46:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/home/?p=3', 0, 'post', '', 0),
(4, 1, '2018-04-17 08:49:18', '2018-04-17 08:49:18', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-04-17 08:49:18', '2018-04-17 08:49:18', '', 0, 'http://localhost/home/shop/', 0, 'page', '', 0),
(5, 1, '2018-04-17 08:49:18', '2018-04-17 08:49:18', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-04-17 08:49:18', '2018-04-17 08:49:18', '', 0, 'http://localhost/home/cart/', 0, 'page', '', 0),
(6, 1, '2018-04-17 08:49:18', '2018-04-17 08:49:18', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-04-17 08:49:18', '2018-04-17 08:49:18', '', 0, 'http://localhost/home/checkout/', 0, 'page', '', 0),
(7, 1, '2018-04-17 08:49:18', '2018-04-17 08:49:18', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-04-17 08:49:18', '2018-04-17 08:49:18', '', 0, 'http://localhost/home/my-account/', 0, 'page', '', 0),
(8, 1, '2018-04-17 08:53:06', '2018-04-17 08:53:06', 'Combines two innovative formulas in one lipstick. In the center is a liquid core infused with passion fruit oil. Provides intense moisture in a pink pop of color. The outside layer is a luminous lip color. Contains melon fruit extract, murumuru butter &amp; plant-derived esters to condition lips. Loaded with subtle golden pearl to complement bronzed, summer skin', 'Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease', '', 'publish', 'open', 'closed', '', 'revlon-matte-balm-225-sultry-revlon-lacquer-balm-130-tease', '', '', '2018-04-17 08:53:06', '2018-04-17 08:53:06', '', 0, 'http://localhost/home/?post_type=product&#038;p=8', 0, 'product', '', 0),
(9, 1, '2018-04-17 08:52:49', '2018-04-17 08:52:49', '', 'item_XXL_23831166_34522496', '', 'inherit', 'open', 'closed', '', 'item_xxl_23831166_34522496', '', '', '2018-04-17 08:52:49', '2018-04-17 08:52:49', '', 8, 'http://localhost/home/wp-content/uploads/2018/04/item_XXL_23831166_34522496.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-04-17 08:54:30', '2018-04-17 08:54:30', 'Combines two innovative formulas in one lipstick. In the center is a liquid core infused with passion fruit oil. Provides intense moisture in a pink pop of color. The outside layer is a luminous lip color. Contains melon fruit extract, murumuru butter &amp; plant-derived esters to condition lips. Loaded with subtle golden pearl to complement bronzed, summer skin', 'Tom Ford Moisturecore Lip Color Carriacou', '', 'publish', 'open', 'closed', '', 'tom-ford-moisturecore-lip-color-carriacou', '', '', '2018-04-18 21:07:54', '2018-04-18 21:07:54', '', 0, 'http://localhost/home/?post_type=product&#038;p=10', 0, 'product', '', 0),
(11, 1, '2018-04-17 08:54:26', '2018-04-17 08:54:26', '', 'item_XL_22973329_32236870', '', 'inherit', 'open', 'closed', '', 'item_xl_22973329_32236870', '', '', '2018-04-17 08:54:26', '2018-04-17 08:54:26', '', 10, 'http://localhost/home/wp-content/uploads/2018/04/item_XL_22973329_32236870.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-04-17 09:45:51', '0000-00-00 00:00:00', '', 'login', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-17 09:45:51', '2018-04-17 09:45:51', '', 0, 'http://localhost/home/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-04-17 09:47:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-17 09:47:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/home/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-04-17 09:47:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-17 09:47:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/home/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-04-17 09:49:16', '2018-04-17 09:49:16', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2018-04-17 09:53:54', '2018-04-17 09:53:54', '', 0, 'http://localhost/home/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-04-17 09:49:16', '2018-04-17 09:49:16', '', 'Login', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-04-17 09:49:16', '2018-04-17 09:49:16', '', 15, 'http://localhost/home/2018/04/17/15-revision-v1/', 0, 'revision', '', 0),
(17, 2, '2018-04-17 12:11:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-17 12:11:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/home/?p=17', 0, 'post', '', 0),
(18, 1, '2018-04-17 13:10:30', '2018-04-17 13:10:30', '', 'Order &ndash; April 17, 2018 @ 01:10 PM', '', 'wc-processing', 'open', 'closed', 'order_5ad5f246b45f0', 'order-apr-17-2018-0110-pm', '', '', '2018-04-17 13:11:21', '2018-04-17 13:11:21', '', 0, 'http://localhost/home/?post_type=shop_order&#038;p=18', 0, 'shop_order', '', 1),
(19, 1, '2018-04-17 16:51:57', '2018-04-17 16:51:57', '', 'Order &ndash; April 17, 2018 @ 04:51 PM', '', 'wc-processing', 'open', 'closed', 'order_5ad6262d9a726', 'order-apr-17-2018-0451-pm', '', '', '2018-04-17 16:51:57', '2018-04-17 16:51:57', '', 0, 'http://localhost/home/?post_type=shop_order&#038;p=19', 0, 'shop_order', '', 1),
(20, 1, '2018-04-17 17:34:18', '2018-04-17 17:34:18', '', 'Order &ndash; April 17, 2018 @ 05:34 PM', '', 'wc-processing', 'open', 'closed', 'order_5ad6301a95475', 'order-apr-17-2018-0534-pm', '', '', '2018-04-17 17:34:18', '2018-04-17 17:34:18', '', 0, 'http://localhost/home/?post_type=shop_order&#038;p=20', 0, 'shop_order', '', 1),
(21, 1, '2018-04-17 18:06:56', '2018-04-17 18:06:56', '', 'Order &ndash; April 17, 2018 @ 06:06 PM', '', 'wc-processing', 'open', 'closed', 'order_5ad637c04d756', 'order-apr-17-2018-0606-pm', '', '', '2018-04-17 18:06:56', '2018-04-17 18:06:56', '', 0, 'http://localhost/home/?post_type=shop_order&#038;p=21', 0, 'shop_order', '', 1),
(22, 1, '2018-04-17 19:10:16', '2018-04-17 19:10:16', '', 'Order &ndash; April 17, 2018 @ 07:10 PM', '', 'wc-processing', 'open', 'closed', 'order_5ad6469894c30', 'order-apr-17-2018-0710-pm', '', '', '2018-04-17 19:10:16', '2018-04-17 19:10:16', '', 0, 'http://localhost/home/?post_type=shop_order&#038;p=22', 0, 'shop_order', '', 1),
(23, 1, '2018-04-18 21:03:51', '2018-04-18 21:03:51', '', 'Tom Ford Moisturecore Lip Color Carriacou - red', '', 'publish', 'closed', 'closed', '', 'tom-ford-moisturecore-lip-color-carriacou', '', '', '2018-04-18 21:05:24', '2018-04-18 21:05:24', '', 10, 'http://dealgo.ae/home/product/tom-ford-moisturecore-lip-color-carriacou/', 2, 'product_variation', '', 0),
(24, 1, '2018-04-18 21:05:29', '2018-04-18 21:05:29', '', 'Tom Ford Moisturecore Lip Color Carriacou - green', '', 'publish', 'closed', 'closed', '', 'tom-ford-moisturecore-lip-color-carriacou-2', '', '', '2018-04-18 21:05:33', '2018-04-18 21:05:33', '', 10, 'http://dealgo.ae/home/product/tom-ford-moisturecore-lip-color-carriacou/', 1, 'product_variation', '', 0),
(25, 1, '2018-04-19 09:05:05', '2018-04-19 09:05:05', '', 'Order &ndash; April 19, 2018 @ 09:05 AM', '', 'wc-processing', 'open', 'closed', 'order_5ad85bc165eeb', 'order-apr-19-2018-0905-am', '', '', '2018-04-19 09:05:05', '2018-04-19 09:05:05', '', 0, 'http://dealgo.ae/home/?post_type=shop_order&#038;p=25', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 15, 0),
(8, 2, 0),
(10, 15, 0),
(10, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 1),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'firassleibi'),
(2, 1, 'first_name', 'Firas'),
(3, 1, 'last_name', 'Sleibi'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(23, 1, 'session_tokens', 'a:9:{s:64:\"c7d39c049a7c7b67a4d5949c7c21aa0ff3d9a42fe598407c10777aa99a9471e4\";a:4:{s:10:\"expiration\";i:1524143646;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1523970846;}s:64:\"ac7b936a2700a87d611e19c79a614763b07da41d01aed68721c76043f48e67ff\";a:4:{s:10:\"expiration\";i:1524163940;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1523991140;}s:64:\"1738d66fc0ea93c6a62bb9f9747933dd45f9c1b20592e5de28d50bbdcaec0167\";a:4:{s:10:\"expiration\";i:1524246298;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524073498;}s:64:\"87864261f0f663384172bc2c4422f39249591400f0329b5cd649adc34fd1d5cd\";a:4:{s:10:\"expiration\";i:1524249405;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524076605;}s:64:\"1edcf753aa8e8371fb6504a03a739cbe29f8d594c5d729db5cf9063d7040d339\";a:4:{s:10:\"expiration\";i:1524249530;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524076730;}s:64:\"cb1dbda7d854d20fc2faab739d804d602ac2141e4a13d0378b254413cb218655\";a:4:{s:10:\"expiration\";i:1524258701;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524085901;}s:64:\"b28e5df276969b7d1122d0696c51affc5a41568900259263548dcc860baa1d3c\";a:4:{s:10:\"expiration\";i:1525340752;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524131152;}s:64:\"06556aa2073f8796890c8fdf3482de00779edd5f0553cd2f40fa3719d50eebf7\";a:4:{s:10:\"expiration\";i:1524306811;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0\";s:5:\"login\";i:1524134011;}s:64:\"ceb7c8846c6cacdb70e67c5fe982d82b2904be781f85a526a30f8b30312c70b0\";a:4:{s:10:\"expiration\";i:1524307069;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524134269;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1523955182'),
(182, 9, 'syntax_highlighting', 'true'),
(133, 6, 'comment_shortcuts', 'false'),
(134, 6, 'admin_color', 'fresh'),
(135, 6, 'use_ssl', '0'),
(136, 6, 'show_admin_bar_front', 'true'),
(137, 6, 'locale', ''),
(138, 6, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(139, 6, 'wp_user_level', '0'),
(144, 7, 'last_name', ''),
(145, 7, 'description', ''),
(146, 7, 'rich_editing', 'true'),
(147, 7, 'syntax_highlighting', 'true'),
(24, 2, 'nickname', 'firas@gmail.com'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:11:\"contributor\";b:1;}'),
(36, 2, 'wp_user_level', '1'),
(41, 3, 'nickname', 'firass@gmail.com'),
(42, 3, 'first_name', ''),
(43, 3, 'last_name', ''),
(44, 3, 'description', ''),
(45, 3, 'rich_editing', 'true'),
(46, 3, 'syntax_highlighting', 'true'),
(38, 2, 'wp_dashboard_quick_press_last_post_id', '17'),
(39, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}}'),
(40, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(47, 3, 'comment_shortcuts', 'false'),
(48, 3, 'admin_color', 'fresh'),
(49, 3, 'use_ssl', '0'),
(50, 3, 'show_admin_bar_front', 'true'),
(51, 3, 'locale', ''),
(52, 3, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(53, 3, 'wp_user_level', '0'),
(56, 4, 'nickname', 'firassleibis@gmail.com'),
(57, 4, 'first_name', ''),
(58, 4, 'last_name', ''),
(59, 4, 'description', ''),
(60, 4, 'rich_editing', 'true'),
(61, 4, 'syntax_highlighting', 'true'),
(55, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(62, 4, 'comment_shortcuts', 'false'),
(63, 4, 'admin_color', 'fresh'),
(64, 4, 'use_ssl', '0'),
(65, 4, 'show_admin_bar_front', 'true'),
(66, 4, 'locale', ''),
(67, 4, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(68, 4, 'wp_user_level', '0'),
(71, 5, 'nickname', 'firaso@gmail.com'),
(72, 5, 'first_name', ''),
(73, 5, 'last_name', ''),
(74, 5, 'description', ''),
(75, 5, 'rich_editing', 'true'),
(76, 5, 'syntax_highlighting', 'true'),
(70, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(77, 5, 'comment_shortcuts', 'false'),
(78, 5, 'admin_color', 'fresh'),
(79, 5, 'use_ssl', '0'),
(80, 5, 'show_admin_bar_front', 'true'),
(81, 5, 'locale', ''),
(82, 5, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(83, 5, 'wp_user_level', '0'),
(86, 1, 'last_update', '1523992216'),
(85, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}}'),
(87, 1, 'billing_first_name', 'Firas'),
(88, 1, 'billing_last_name', 'Sleibi'),
(89, 1, 'billing_address_1', '11'),
(90, 1, 'billing_city', 'dubai'),
(91, 1, 'billing_country', 'AE'),
(92, 1, 'billing_email', 'firassleibi@gmail.com'),
(93, 1, 'shipping_first_name', 'Firas'),
(94, 1, 'shipping_last_name', 'Sleibi'),
(95, 1, 'shipping_address_1', '11'),
(96, 1, 'shipping_city', 'dubai'),
(97, 1, 'shipping_country', 'AE'),
(172, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:1\";}'),
(127, 6, 'nickname', 'ahmad@gmail.com'),
(128, 6, 'first_name', ''),
(129, 6, 'last_name', ''),
(130, 6, 'description', ''),
(131, 6, 'rich_editing', 'true'),
(132, 6, 'syntax_highlighting', 'true'),
(142, 7, 'nickname', 'firassleibi@gmaisl.com'),
(143, 7, 'first_name', ''),
(141, 6, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}}'),
(148, 7, 'comment_shortcuts', 'false'),
(149, 7, 'admin_color', 'fresh'),
(150, 7, 'use_ssl', '0'),
(151, 7, 'show_admin_bar_front', 'true'),
(152, 7, 'locale', ''),
(153, 7, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(154, 7, 'wp_user_level', '0'),
(157, 8, 'nickname', 'firaassleibi@gmail.com'),
(158, 8, 'first_name', ''),
(159, 8, 'last_name', ''),
(160, 8, 'description', ''),
(161, 8, 'rich_editing', 'true'),
(162, 8, 'syntax_highlighting', 'true'),
(156, 7, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}}'),
(163, 8, 'comment_shortcuts', 'false'),
(164, 8, 'admin_color', 'fresh'),
(165, 8, 'use_ssl', '0'),
(166, 8, 'show_admin_bar_front', 'true'),
(167, 8, 'locale', ''),
(168, 8, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(169, 8, 'wp_user_level', '0'),
(171, 8, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}}'),
(175, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:200;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:200;s:8:\"line_tax\";i:0;}s:32:\"63be8af4dd93be1c31641083154e0189\";a:10:{s:3:\"key\";s:32:\"63be8af4dd93be1c31641083154e0189\";s:10:\"product_id\";i:10;s:12:\"variation_id\";i:23;s:9:\"variation\";a:1:{s:15:\"attribute_color\";s:3:\"red\";}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}}'),
(195, 1, 'google_id', '114564090591330045175'),
(201, 10, 'syntax_highlighting', 'true'),
(202, 10, 'comment_shortcuts', 'false'),
(203, 10, 'admin_color', 'fresh'),
(176, 1, 'facebook_id', '1446103218778834'),
(177, 9, 'nickname', 'firas.sleibi@yahoo.com'),
(178, 9, 'first_name', ''),
(179, 9, 'last_name', ''),
(180, 9, 'description', ''),
(181, 9, 'rich_editing', 'true'),
(183, 9, 'comment_shortcuts', 'false'),
(184, 9, 'admin_color', 'fresh'),
(185, 9, 'use_ssl', '0'),
(186, 9, 'show_admin_bar_front', 'true'),
(187, 9, 'locale', ''),
(188, 9, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(189, 9, 'wp_user_level', '0'),
(190, 9, 'facebook_id', '1731062430315060'),
(192, 9, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}}'),
(193, 1, 'closedpostboxes_product', 'a:0:{}'),
(194, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(196, 10, 'nickname', 'sama.karkanawi@gmail.com'),
(197, 10, 'first_name', 'Sama'),
(198, 10, 'last_name', 'Karkanawi'),
(199, 10, 'description', ''),
(200, 10, 'rich_editing', 'true'),
(204, 10, 'use_ssl', '0'),
(205, 10, 'show_admin_bar_front', 'true'),
(206, 10, 'locale', ''),
(207, 10, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(208, 10, 'wp_user_level', '0'),
(209, 10, 'last_update', '1524126912'),
(210, 10, 'google_id', '109208273980617329247'),
(211, 10, 'session_tokens', 'a:1:{s:64:\"ae6bcaa9c1747c0c4c34e7ebdb3742666cc609000738d58ce24e65d610aa6e9a\";a:4:{s:10:\"expiration\";i:1524299712;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0\";s:5:\"login\";i:1524126912;}}'),
(212, 10, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:200;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:200;s:8:\"line_tax\";i:0;}}}'),
(213, 11, 'nickname', 'firas.sleibi@yahoo.com'),
(214, 11, 'first_name', 'Firas'),
(215, 11, 'last_name', 'Sleibi'),
(216, 11, 'description', ''),
(217, 11, 'rich_editing', 'true'),
(218, 11, 'syntax_highlighting', 'true'),
(219, 11, 'comment_shortcuts', 'false'),
(220, 11, 'admin_color', 'fresh'),
(221, 11, 'use_ssl', '0'),
(222, 11, 'show_admin_bar_front', 'true'),
(223, 11, 'locale', ''),
(224, 11, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(225, 11, 'wp_user_level', '0'),
(226, 11, 'last_update', '1524128705'),
(227, 11, 'facebook_id', '1731062430315060'),
(252, 12, 'nickname', 'firassleibiii@gmail.com'),
(253, 12, 'first_name', ''),
(254, 12, 'last_name', ''),
(255, 12, 'description', ''),
(256, 12, 'rich_editing', 'true'),
(257, 12, 'syntax_highlighting', 'true'),
(251, 11, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"63be8af4dd93be1c31641083154e0189\";a:10:{s:3:\"key\";s:32:\"63be8af4dd93be1c31641083154e0189\";s:10:\"product_id\";i:10;s:12:\"variation_id\";i:23;s:9:\"variation\";a:1:{s:15:\"attribute_color\";s:3:\"red\";}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:300;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:300;s:8:\"line_tax\";i:0;}}}'),
(258, 12, 'comment_shortcuts', 'false'),
(259, 12, 'admin_color', 'fresh'),
(260, 12, 'use_ssl', '0'),
(261, 12, 'show_admin_bar_front', 'true'),
(262, 12, 'locale', ''),
(263, 12, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(232, 11, 'billing_first_name', 'Firas'),
(233, 11, 'billing_last_name', 'Sleibi'),
(234, 11, 'billing_address_1', 'Nahda 1'),
(235, 11, 'billing_address_2', '1005'),
(236, 11, 'billing_city', 'Dubai'),
(237, 11, 'billing_state', 'Sharjah'),
(238, 11, 'billing_country', 'AE'),
(239, 11, 'billing_email', 'firassleibi@gmail.com'),
(240, 11, 'billing_phone', '524219541'),
(241, 11, 'shipping_first_name', 'Firas'),
(242, 11, 'shipping_last_name', 'Sleibi'),
(243, 11, 'shipping_address_1', 'Nahda 1'),
(244, 11, 'shipping_address_2', '1005'),
(245, 11, 'shipping_city', 'Dubai'),
(246, 11, 'shipping_state', 'Sharjah'),
(247, 11, 'shipping_country', 'AE'),
(248, 11, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:1\";}'),
(264, 12, 'wp_user_level', '0'),
(269, 11, 'session_tokens', 'a:1:{s:64:\"1df1aaf8bb55105e851084ba2b0ee524f09787340a80943d014bf0b85b23a930\";a:4:{s:10:\"expiration\";i:1524313368;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524140568;}}'),
(266, 12, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'firassleibi', '$P$B4WXU0sz7V/VLw.WX4SDi6Y3EgfArh0', 'firassleibi', 'firassleibi@gmail.com', '', '2018-04-17 08:46:03', '', 0, 'firassleibi'),
(2, 'firas@gmail.com', '$P$BkCniWX0KF3TfqO4KEjnicDhZ6pk791', 'firasgmail-com', 'firas@gmail.com', '', '2018-04-17 12:09:38', '', 0, 'firas@gmail.com'),
(3, 'firass@gmail.com', '$P$B7LrF4pzc8z/A1Rfa/eV.fNnkcDfWG.', 'firassgmail-com', 'firass@gmail.com', '', '2018-04-17 12:13:33', '', 0, 'firass@gmail.com'),
(4, 'firassleibis@gmail.com', '$P$BEQmk5SL5hknBvKNrH2FlPJVCwpREB0', 'firassleibisgmail-com', 'firassleibis@gmail.com', '', '2018-04-17 12:24:16', '', 0, 'firassleibis@gmail.com'),
(5, 'firaso@gmail.com', '$P$BJqbL0maJ2ifL84OrEW6kZfIm5RYkf.', 'firasogmail-com', 'firaso@gmail.com', '', '2018-04-17 12:58:32', '', 0, 'firaso@gmail.com'),
(6, 'ahmad@gmail.com', '$P$Bpw9HrKm3KVjFT4IGgYp4AXoFaJ0T./', 'ahmadgmail-com', 'ahmad@gmail.com', '', '2018-04-17 18:44:27', '', 0, 'ahmad@gmail.com'),
(7, 'firassleibi@gmaisl.com', '$P$BjQHH4c7nxzP.jbwNcImvY8A7TMGKq.', 'firassleibigmaisl-com', 'firassleibi@gmaisl.com', '', '2018-04-17 18:46:41', '', 0, 'firassleibi@gmaisl.com'),
(8, 'firaassleibi@gmail.com', '$P$Bjmr3k4n5u4EYF6GjVRwZOR1W9R0Th0', 'firaassleibigmail-com', 'firaassleibi@gmail.com', '', '2018-04-17 18:50:04', '', 0, 'firaassleibi@gmail.com'),
(11, 'firas.sleibi@yahoo.com', '$P$BIIZoguP0FIKP5sbO0KOsFF5hDQSM8.', 'firas-sleibiyahoo-com', 'firas.sleibi@yahoo.com', '', '2018-04-19 08:44:31', '', 0, 'Firas Sleibi'),
(10, 'sama.karkanawi@gmail.com', '$P$BUsur1.tt16rIfbqutTqubfrhifDYr1', 'sama-karkanawigmail-com', 'sama.karkanawi@gmail.com', '', '2018-04-19 08:35:12', '', 0, 'sama.karkanawi@gmail.com'),
(12, 'firassleibiii@gmail.com', '$P$BPtFPoVvJBAhDOau6F2B2cWELLaBkH0', 'firassleibiiigmail-com', 'firassleibiii@gmail.com', '', '2018-04-19 10:06:13', '', 0, 'firassleibiii@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
CREATE TABLE IF NOT EXISTS `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
CREATE TABLE IF NOT EXISTS `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(41, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(40, 5, '_line_tax', '0'),
(39, 5, '_line_total', '100'),
(38, 5, '_line_subtotal_tax', '0'),
(36, 5, '_tax_class', ''),
(37, 5, '_line_subtotal', '100'),
(35, 5, '_qty', '1'),
(34, 5, '_variation_id', '0'),
(33, 5, '_product_id', '8'),
(32, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(30, 4, '_line_total', '100'),
(31, 4, '_line_tax', '0'),
(29, 4, '_line_subtotal_tax', '0'),
(28, 4, '_line_subtotal', '100'),
(27, 4, '_tax_class', ''),
(24, 4, '_product_id', '10'),
(25, 4, '_variation_id', '0'),
(26, 4, '_qty', '1'),
(42, 6, 'method_id', 'flat_rate:1'),
(43, 6, 'cost', '20.00'),
(44, 6, 'total_tax', '0'),
(45, 6, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(46, 6, 'Items', 'Tom Ford Moisturecore Lip Color Carriacou &times; 1, Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease &times; 1'),
(47, 7, '_product_id', '10'),
(48, 7, '_variation_id', '0'),
(49, 7, '_qty', '5'),
(50, 7, '_tax_class', ''),
(51, 7, '_line_subtotal', '500'),
(52, 7, '_line_subtotal_tax', '0'),
(53, 7, '_line_total', '500'),
(54, 7, '_line_tax', '0'),
(55, 7, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(56, 8, '_product_id', '8'),
(57, 8, '_variation_id', '0'),
(58, 8, '_qty', '3'),
(59, 8, '_tax_class', ''),
(60, 8, '_line_subtotal', '300'),
(61, 8, '_line_subtotal_tax', '0'),
(62, 8, '_line_total', '300'),
(63, 8, '_line_tax', '0'),
(64, 8, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(65, 9, 'method_id', 'flat_rate:1'),
(66, 9, 'cost', '20.00'),
(67, 9, 'total_tax', '0'),
(68, 9, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(69, 9, 'Items', 'Tom Ford Moisturecore Lip Color Carriacou &times; 5, Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease &times; 3'),
(70, 10, '_product_id', '10'),
(71, 10, '_variation_id', '0'),
(72, 10, '_qty', '2'),
(73, 10, '_tax_class', ''),
(74, 10, '_line_subtotal', '200'),
(75, 10, '_line_subtotal_tax', '0'),
(76, 10, '_line_total', '200'),
(77, 10, '_line_tax', '0'),
(78, 10, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(79, 11, 'method_id', 'flat_rate:1'),
(80, 11, 'cost', '20.00'),
(81, 11, 'total_tax', '0'),
(82, 11, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(83, 11, 'Items', 'Tom Ford Moisturecore Lip Color Carriacou &times; 2'),
(84, 12, '_product_id', '10'),
(85, 12, '_variation_id', '0'),
(86, 12, '_qty', '2'),
(87, 12, '_tax_class', ''),
(88, 12, '_line_subtotal', '200'),
(89, 12, '_line_subtotal_tax', '0'),
(90, 12, '_line_total', '200'),
(91, 12, '_line_tax', '0'),
(92, 12, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(93, 13, 'method_id', 'flat_rate:1'),
(94, 13, 'cost', '20.00'),
(95, 13, 'total_tax', '0'),
(96, 13, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(97, 13, 'Items', 'Tom Ford Moisturecore Lip Color Carriacou &times; 2'),
(98, 14, '_product_id', '8'),
(99, 14, '_variation_id', '0'),
(100, 14, '_qty', '1'),
(101, 14, '_tax_class', ''),
(102, 14, '_line_subtotal', '100'),
(103, 14, '_line_subtotal_tax', '0'),
(104, 14, '_line_total', '100'),
(105, 14, '_line_tax', '0'),
(106, 14, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(107, 15, '_product_id', '10'),
(108, 15, '_variation_id', '0'),
(109, 15, '_qty', '2'),
(110, 15, '_tax_class', ''),
(111, 15, '_line_subtotal', '200'),
(112, 15, '_line_subtotal_tax', '0'),
(113, 15, '_line_total', '200'),
(114, 15, '_line_tax', '0'),
(115, 15, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(116, 16, 'method_id', 'flat_rate:1'),
(117, 16, 'cost', '20.00'),
(118, 16, 'total_tax', '0'),
(119, 16, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(120, 16, 'Items', 'Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease &times; 1, Tom Ford Moisturecore Lip Color Carriacou &times; 2'),
(121, 17, '_product_id', '8'),
(122, 17, '_variation_id', '0'),
(123, 17, '_qty', '2'),
(124, 17, '_tax_class', ''),
(125, 17, '_line_subtotal', '200'),
(126, 17, '_line_subtotal_tax', '0'),
(127, 17, '_line_total', '200'),
(128, 17, '_line_tax', '0'),
(129, 17, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(130, 18, 'method_id', 'flat_rate:1'),
(131, 18, 'cost', '20.00'),
(132, 18, 'total_tax', '0'),
(133, 18, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(134, 18, 'Items', 'Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease &times; 2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(5, 'Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease', 'line_item', 18),
(4, 'Tom Ford Moisturecore Lip Color Carriacou', 'line_item', 18),
(6, 'Flat rate', 'shipping', 18),
(7, 'Tom Ford Moisturecore Lip Color Carriacou', 'line_item', 19),
(8, 'Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease', 'line_item', 19),
(9, 'Flat rate', 'shipping', 19),
(10, 'Tom Ford Moisturecore Lip Color Carriacou', 'line_item', 20),
(11, 'Flat rate', 'shipping', 20),
(12, 'Tom Ford Moisturecore Lip Color Carriacou', 'line_item', 21),
(13, 'Flat rate', 'shipping', 21),
(14, 'Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease', 'line_item', 22),
(15, 'Tom Ford Moisturecore Lip Color Carriacou', 'line_item', 22),
(16, 'Flat rate', 'shipping', 22),
(17, 'Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease', 'line_item', 25),
(18, 'Flat rate', 'shipping', 25);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(32, '2', 'a:1:{s:8:\"customer\";s:703:\"a:26:{s:2:\"id\";s:1:\"2\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:15:\"firas@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524139791),
(36, '3', 'a:1:{s:8:\"customer\";s:704:\"a:26:{s:2:\"id\";s:1:\"3\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"firass@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524140642),
(37, '0be7cbf56f90e89bbde87a12d68ce711', 'a:1:{s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524140656),
(40, '4', 'a:1:{s:8:\"customer\";s:710:\"a:26:{s:2:\"id\";s:1:\"4\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"firassleibis@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524140672),
(300, '1', 'a:13:{s:8:\"customer\";s:828:\"a:26:{s:2:\"id\";s:2:\"11\";s:13:\"date_modified\";s:25:\"2018-04-19T09:05:05+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:5:\"Dubai\";s:9:\"address_1\";s:7:\"Nahda 1\";s:7:\"address\";s:7:\"Nahda 1\";s:9:\"address_2\";s:4:\"1005\";s:5:\"state\";s:7:\"Sharjah\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:5:\"Dubai\";s:18:\"shipping_address_1\";s:7:\"Nahda 1\";s:16:\"shipping_address\";s:7:\"Nahda 1\";s:18:\"shipping_address_2\";s:4:\"1005\";s:14:\"shipping_state\";s:7:\"Sharjah\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:5:\"Firas\";s:9:\"last_name\";s:6:\"Sleibi\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:9:\"524219541\";s:5:\"email\";s:21:\"firassleibi@gmail.com\";s:19:\"shipping_first_name\";s:5:\"Firas\";s:18:\"shipping_last_name\";s:6:\"Sleibi\";s:16:\"shipping_company\";s:0:\"\";}\";s:4:\"cart\";s:739:\"a:2:{s:32:\"63be8af4dd93be1c31641083154e0189\";a:10:{s:3:\"key\";s:32:\"63be8af4dd93be1c31641083154e0189\";s:10:\"product_id\";i:10;s:12:\"variation_id\";i:23;s:9:\"variation\";a:1:{s:15:\"attribute_color\";s:3:\"red\";}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:300;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:300;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:409:\"a:15:{s:8:\"subtotal\";s:6:\"400.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"20.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"400.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"420.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:489:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_f1a3bca3ba33f73bbe2148d09bbf910c\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:5:\"20.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:131:\"Tom Ford Moisturecore Lip Color Carriacou - red &times; 1, Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease &times; 3\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:21:\"chosen_payment_method\";s:3:\"cod\";s:10:\"wc_notices\";N;}', 1524307070),
(44, '5', 'a:1:{s:8:\"customer\";s:704:\"a:26:{s:2:\"id\";s:1:\"5\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"firaso@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524142696),
(109, '6', 'a:1:{s:8:\"customer\";s:703:\"a:26:{s:2:\"id\";s:1:\"6\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:15:\"ahmad@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524161260),
(113, '7', 'a:1:{s:8:\"customer\";s:710:\"a:26:{s:2:\"id\";s:1:\"7\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"firassleibi@gmaisl.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524163587),
(117, '8', 'a:1:{s:8:\"customer\";s:710:\"a:26:{s:2:\"id\";s:1:\"8\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"firaassleibi@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524163649),
(173, '4d6abb2c3e50536bf3eccf687bc28741', 'a:14:{s:4:\"cart\";s:711:\"a:2:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:25;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:2500;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:2500;s:8:\"line_tax\";i:0;}s:32:\"d3d9446802a44259755d38e6d163e820\";a:10:{s:3:\"key\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:15;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1500;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1500;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:412:\"a:15:{s:8:\"subtotal\";s:7:\"4000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"20.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:7:\"4000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"4020.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:485:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_f7bb56f97374f11c14332c4eb44817f4\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:5:\"20.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:127:\"Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease &times; 25, Tom Ford Moisturecore Lip Color Carriacou &times; 15\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:776:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-04-17T19:10:16+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:5:\"dubai\";s:9:\"address_1\";s:2:\"11\";s:7:\"address\";s:2:\"11\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:5:\"dubai\";s:18:\"shipping_address_1\";s:2:\"11\";s:16:\"shipping_address\";s:2:\"11\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:5:\"Firas\";s:9:\"last_name\";s:6:\"Sleibi\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"firassleibi@gmail.com\";s:19:\"shipping_first_name\";s:5:\"Firas\";s:18:\"shipping_last_name\";s:6:\"Sleibi\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:3:\"cod\";s:22:\"order_awaiting_payment\";N;s:10:\"wc_notices\";N;}', 1524163897),
(179, '11a946bd24e21332b90f59283072f9cd', 'a:12:{s:4:\"cart\";s:708:\"a:2:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:25;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:2500;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:2500;s:8:\"line_tax\";i:0;}s:32:\"d3d9446802a44259755d38e6d163e820\";a:10:{s:3:\"key\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:5;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:500;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:500;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:412:\"a:15:{s:8:\"subtotal\";s:7:\"3000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"20.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:7:\"3000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"3020.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:484:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_4c5e176f873911d3df8ab11c0241224a\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:5:\"20.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:126:\"Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease &times; 25, Tom Ford Moisturecore Lip Color Carriacou &times; 5\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:775:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-04-17T19:10:16+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:5:\"dubai\";s:9:\"address_1\";s:2:\"11\";s:7:\"address\";s:2:\"11\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:5:\"dubai\";s:18:\"shipping_address_1\";s:2:\"11\";s:16:\"shipping_address\";s:2:\"11\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:5:\"Firas\";s:9:\"last_name\";s:6:\"Sleibi\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"firassleibi@gmail.com\";s:19:\"shipping_first_name\";s:5:\"Firas\";s:18:\"shipping_last_name\";s:6:\"Sleibi\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524247022),
(191, '9', 'a:1:{s:8:\"customer\";s:710:\"a:26:{s:2:\"id\";s:1:\"9\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"firas.sleibi@yahoo.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524251698),
(275, '12', 'a:1:{s:8:\"customer\";s:712:\"a:26:{s:2:\"id\";s:2:\"12\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"firassleibiii@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524305125),
(276, '16ad2d6da9cccc65a56b9bb14d46f2f6', 'a:1:{s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524305281),
(290, 'f41d89535c4a7fec0d26e8c41c68395e', 'a:13:{s:4:\"cart\";s:739:\"a:2:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:10:{s:3:\"key\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:200;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:200;s:8:\"line_tax\";i:0;}s:32:\"63be8af4dd93be1c31641083154e0189\";a:10:{s:3:\"key\";s:32:\"63be8af4dd93be1c31641083154e0189\";s:10:\"product_id\";i:10;s:12:\"variation_id\";i:23;s:9:\"variation\";a:1:{s:15:\"attribute_color\";s:3:\"red\";}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:409:\"a:15:{s:8:\"subtotal\";s:6:\"300.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"20.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"300.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"320.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:489:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_06562f31fb8c6e19123377317fdc9db5\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:5:\"20.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:131:\"Revlon Matte Balm, 225 Sultry + Revlon Lacquer Balm, 130 Tease &times; 2, Tom Ford Moisturecore Lip Color Carriacou - red &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:775:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-04-17T19:10:16+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:5:\"dubai\";s:9:\"address_1\";s:2:\"11\";s:7:\"address\";s:2:\"11\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:5:\"dubai\";s:18:\"shipping_address_1\";s:2:\"11\";s:16:\"shipping_address\";s:2:\"11\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:5:\"Firas\";s:9:\"last_name\";s:6:\"Sleibi\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"firassleibi@gmail.com\";s:19:\"shipping_first_name\";s:5:\"Firas\";s:18:\"shipping_last_name\";s:6:\"Sleibi\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:3:\"cod\";}', 1524297872),
(292, '11', 'a:1:{s:8:\"customer\";s:828:\"a:26:{s:2:\"id\";s:2:\"11\";s:13:\"date_modified\";s:25:\"2018-04-19T09:05:05+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:5:\"Dubai\";s:9:\"address_1\";s:7:\"Nahda 1\";s:7:\"address\";s:7:\"Nahda 1\";s:9:\"address_2\";s:4:\"1005\";s:5:\"state\";s:7:\"Sharjah\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:5:\"Dubai\";s:18:\"shipping_address_1\";s:7:\"Nahda 1\";s:16:\"shipping_address\";s:7:\"Nahda 1\";s:18:\"shipping_address_2\";s:4:\"1005\";s:14:\"shipping_state\";s:7:\"Sharjah\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:5:\"Firas\";s:9:\"last_name\";s:6:\"Sleibi\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:9:\"524219541\";s:5:\"email\";s:21:\"firassleibi@gmail.com\";s:19:\"shipping_first_name\";s:5:\"Firas\";s:18:\"shipping_last_name\";s:6:\"Sleibi\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524305981),
(279, 'a6ef79db804f7a8b2546fd09266f00d9', 'a:1:{s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524305300),
(293, '42d45deb1b3b4ef9e4dce3576e8f7ca3', 'a:1:{s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1524307067);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'United Arab Emirates', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'AE', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
