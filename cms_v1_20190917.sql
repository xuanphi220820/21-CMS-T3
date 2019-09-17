-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 17, 2019 at 04:31 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms_tuan_3`
--

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
  `post_email` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`, `post_email`) VALUES
(1, 1, '2019-09-17 00:34:33', '2019-09-17 00:34:33', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-09-17 00:34:33', '2019-09-17 00:34:33', '', 0, 'http://localhost:82/cms_tuan3/?p=1', 0, 'post', '', 1, NULL),
(2, 1, '2019-09-17 00:34:33', '2019-09-17 00:34:33', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:82/cms_tuan3/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-09-17 00:34:33', '2019-09-17 00:34:33', '', 0, 'http://localhost:82/cms_tuan3/?page_id=2', 0, 'page', '', 0, NULL),
(3, 1, '2019-09-17 00:34:33', '2019-09-17 00:34:33', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:82/cms_tuan3.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-09-17 00:34:33', '2019-09-17 00:34:33', '', 0, 'http://localhost:82/cms_tuan3/?page_id=3', 0, 'page', '', 0, NULL),
(4, 1, '2019-09-17 00:34:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 00:34:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=4', 0, 'post', '', 0, NULL),
(5, 1, '2019-09-17 00:35:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 00:35:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=5', 0, 'post', '', 0, NULL),
(6, 1, '2019-09-17 00:36:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 00:36:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=6', 0, 'post', '', 0, NULL),
(7, 1, '2019-09-17 00:36:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 00:36:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=7', 0, 'post', '', 0, NULL),
(8, 1, '2019-09-17 00:59:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 00:59:44', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=8', 0, 'post', '', 0, NULL),
(9, 1, '2019-09-17 01:02:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:02:30', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=9', 0, 'post', '', 0, NULL),
(10, 1, '2019-09-17 01:05:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:05:37', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=10', 0, 'post', '', 0, NULL),
(11, 1, '2019-09-17 01:05:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:05:54', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=11', 0, 'post', '', 0, NULL),
(12, 1, '2019-09-17 01:06:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:06:39', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=12', 0, 'post', '', 0, NULL),
(13, 1, '2019-09-17 01:06:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:06:43', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=13', 0, 'post', '', 0, NULL),
(14, 1, '2019-09-17 01:07:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:07:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=14', 0, 'post', '', 0, NULL),
(15, 1, '2019-09-17 01:07:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:07:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=15', 0, 'post', '', 0, NULL),
(16, 1, '2019-09-17 01:11:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:11:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=16', 0, 'post', '', 0, NULL),
(17, 1, '2019-09-17 01:17:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:17:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=17', 0, 'post', '', 0, NULL),
(18, 1, '2019-09-17 01:19:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:19:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=18', 0, 'post', '', 0, NULL),
(19, 1, '2019-09-17 01:22:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:22:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=19', 0, 'post', '', 0, NULL),
(20, 1, '2019-09-17 01:22:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:22:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=20', 0, 'post', '', 0, NULL),
(21, 1, '2019-09-17 01:36:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:36:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=21', 0, 'post', '', 0, NULL),
(22, 1, '2019-09-17 01:38:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:38:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=22', 0, 'post', '', 0, NULL),
(23, 1, '2019-09-17 01:40:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:40:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=23', 0, 'post', '', 0, NULL),
(24, 1, '2019-09-17 01:52:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:52:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=24', 0, 'post', '', 0, NULL),
(25, 1, '2019-09-17 01:52:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:52:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=25', 0, 'post', '', 0, NULL),
(26, 1, '2019-09-17 01:53:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:53:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=26', 0, 'post', '', 0, NULL),
(27, 1, '2019-09-17 01:53:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:53:15', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=27', 0, 'post', '', 0, NULL),
(28, 1, '2019-09-17 01:53:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:53:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=28', 0, 'post', '', 0, NULL),
(29, 1, '2019-09-17 01:54:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:54:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=29', 0, 'post', '', 0, NULL),
(30, 1, '2019-09-17 01:54:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:54:32', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=30', 0, 'post', '', 0, NULL),
(31, 1, '2019-09-17 01:54:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:54:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=31', 0, 'post', '', 0, NULL),
(32, 1, '2019-09-17 01:55:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:55:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=32', 0, 'post', '', 0, NULL),
(33, 1, '2019-09-17 01:55:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:55:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=33', 0, 'post', '', 0, NULL),
(34, 1, '2019-09-17 01:55:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:55:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=34', 0, 'post', '', 0, NULL),
(35, 1, '2019-09-17 01:58:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 01:58:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=35', 0, 'post', '', 0, NULL),
(36, 1, '2019-09-17 02:00:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 02:00:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=36', 0, 'post', '', 0, NULL),
(37, 1, '2019-09-17 02:00:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 02:00:44', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=37', 0, 'post', '', 0, NULL),
(38, 1, '2019-09-17 02:01:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 02:01:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=38', 0, 'post', '', 0, NULL),
(39, 1, '2019-09-17 02:01:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 02:01:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=39', 0, 'post', '', 0, NULL),
(40, 1, '2019-09-17 02:40:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 02:40:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=40', 0, 'post', '', 0, NULL),
(41, 1, '2019-09-17 02:40:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 02:40:41', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=41', 0, 'post', '', 0, NULL),
(42, 1, '2019-09-17 02:48:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 02:48:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=42', 0, 'post', '', 0, NULL),
(43, 1, '2019-09-17 02:48:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 02:48:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=43', 0, 'post', '', 0, NULL),
(44, 1, '2019-09-17 02:52:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 02:52:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=44', 0, 'post', '', 0, NULL),
(45, 1, '2019-09-17 03:17:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 03:17:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=45', 0, 'post', '', 0, NULL),
(46, 1, '2019-09-17 03:19:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 03:19:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=46', 0, 'post', '', 0, NULL),
(47, 1, '2019-09-17 03:28:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 03:28:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=47', 0, 'post', '', 0, NULL),
(48, 1, '2019-09-17 03:28:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 03:28:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=48', 0, 'post', '', 0, NULL),
(49, 1, '2019-09-17 04:20:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 04:20:54', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=49', 0, 'post', '', 0, NULL),
(50, 1, '2019-09-17 04:22:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 04:22:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=50', 0, 'post', '', 0, NULL),
(51, 1, '2019-09-17 04:22:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 04:22:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=51', 0, 'post', '', 0, NULL),
(52, 1, '2019-09-17 04:22:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 04:22:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=52', 0, 'post', '', 0, NULL),
(53, 1, '2019-09-17 04:28:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 04:28:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=53', 0, 'post', '', 0, NULL),
(54, 1, '2019-09-17 04:28:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-17 04:28:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/cms_tuan3/?p=54', 0, 'post', '', 0, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
