-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2026 at 05:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saptashree`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2a$12$Q/wZm.HgzV6xvTL4NyRY2O/elm3su5K/jy7DBaNextpYFOcJr5gOy', NULL, '2020-09-16 03:15:20', '2023-10-31 11:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL,
  `page_status` enum('1','0') NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `temporary_address` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `job_id` varchar(50) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_nepali_name` varchar(255) DEFAULT NULL,
  `site_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone_ne` varchar(255) DEFAULT NULL,
  `website_full_address` varchar(255) DEFAULT NULL,
  `address_ne` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_keyword` varchar(255) DEFAULT NULL,
  `page_description` text DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `site_logo` varchar(255) NOT NULL,
  `site_logo_nepali` varchar(255) DEFAULT NULL,
  `site_status` enum('1','0') NOT NULL,
  `extra_one` varchar(255) DEFAULT NULL,
  `extra_two` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `site_name`, `site_nepali_name`, `site_email`, `phone`, `phone_ne`, `website_full_address`, `address_ne`, `facebook`, `twitter`, `linkedin`, `other`, `page_title`, `page_keyword`, `page_description`, `favicon`, `site_logo`, `site_logo_nepali`, `site_status`, `extra_one`, `extra_two`, `created_at`, `updated_at`, `instagram`, `youtube`) VALUES
(1, 'Saptashree Academy | Damak', 'Saptashree Academy | Damak', 'saptashree2018@gmail.com', '9800000000', NULL, 'Damak -09,Shantimarga jhapa, Damak', NULL, 'https://www.facebook.com/', 'https://twitter.com/', NULL, 'https://www.youtube.com/', 'Saptashree Academy | Damak', 'Saptashree Academy | Damak', NULL, '1780332131_52702758_374299246456018_361133606300549120_n.jpg', '1778602631_52702758_374299246456018_361133606300549120_n.jpg', '1778741844_unnamed.webp', '1', '3154/066/067', '', '2020-09-16 03:15:20', '2026-06-01 16:42:11', 'https://www.instagram.com/', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `minimum_qualification` varchar(255) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `contract_time` varchar(30) DEFAULT NULL,
  `navigation_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `posted_on` varchar(50) DEFAULT NULL,
  `foodaccommondation` varchar(255) DEFAULT NULL,
  `total_demand` varchar(255) DEFAULT NULL,
  `working_day` varchar(255) DEFAULT NULL,
  `working_hour` varchar(255) DEFAULT NULL,
  `visa_ticket` varchar(255) DEFAULT NULL,
  `service_charge` varchar(255) DEFAULT NULL,
  `lt_number` varchar(255) DEFAULT NULL,
  `interview` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_06_040112_create_admins_table', 1),
(4, '2020_08_06_040148_create_navigations_table', 1),
(5, '2020_08_06_040229_create_navigation_items_table', 1),
(6, '2020_08_06_040251_create_page_types', 1),
(7, '2020_08_06_040325_create_subscribers_table', 1),
(8, '2020_08_06_040351_create_global_settings_table', 1),
(9, '2020_08_06_040430_create_navigation_video_items_table', 1),
(10, '2020_08_06_040522_create_comments_table', 1),
(11, '2022_07_12_231308_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `caption_nepali` varchar(255) DEFAULT NULL,
  `nav_category` varchar(255) NOT NULL,
  `page_type` varchar(255) NOT NULL,
  `page_template` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `short_content` text DEFAULT NULL,
  `short_content_nepali` text DEFAULT NULL,
  `long_content` text DEFAULT NULL,
  `long_content_nepali` text DEFAULT NULL,
  `parent_page_id` int(11) NOT NULL,
  `icon_image` varchar(255) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `icon_image_caption` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `main_attachment` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_keyword` varchar(255) DEFAULT NULL,
  `page_description` varchar(255) DEFAULT NULL,
  `page_status` enum('1','0') NOT NULL,
  `nav_status` enum('1','0') NOT NULL,
  `extra_one` varchar(255) DEFAULT NULL,
  `extra_two` varchar(255) DEFAULT NULL,
  `extra_three` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `span` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `insta_link` varchar(255) DEFAULT NULL,
  `link_link` varchar(255) DEFAULT NULL,
  `twit_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `nav_name`, `alias`, `caption`, `caption_nepali`, `nav_category`, `page_type`, `page_template`, `position`, `short_content`, `short_content_nepali`, `long_content`, `long_content_nepali`, `parent_page_id`, `icon_image`, `featured_image`, `icon_image_caption`, `banner_image`, `link`, `main_attachment`, `attachment`, `page_title`, `page_keyword`, `page_description`, `page_status`, `nav_status`, `extra_one`, `extra_two`, `extra_three`, `created_at`, `updated_at`, `span`, `fb_link`, `insta_link`, `link_link`, `twit_link`) VALUES
(2254, 'about', 'about', 'about', NULL, 'Home', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'about', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:11:46', '2023-02-15 05:01:21', NULL, '', '', '', ''),
(2265, 'gal1', 'gal1', 'picnic pic', '.', 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326379_download (1).jfif', NULL, NULL, NULL, NULL, 'gal1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:58:42', '2022-07-21 00:57:59', NULL, '', '', '', ''),
(2288, 'gallary1', 'gallary1', 'Gallary1', '.', 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326408_download (5).jfif', NULL, NULL, NULL, NULL, 'gallary1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:41:18', '2022-07-21 00:58:28', NULL, '', '', '', ''),
(2289, 'gallary2', 'gallary2', 'Gallary2', '.', 'Main', 'Photo Gallery', NULL, 3, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326422_download (6).jfif', NULL, NULL, NULL, NULL, 'gallary2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:42:28', '2022-07-21 00:58:42', NULL, '', '', '', ''),
(2290, 'gallary4', 'gallary4', 'Gallary4', '.', 'Main', 'Photo Gallery', NULL, 4, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326448_images (2).jfif', NULL, NULL, NULL, NULL, 'gallary4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:43:57', '2022-07-21 00:59:08', NULL, '', '', '', ''),
(2291, 'gallary5', 'gallary5', 'Gallary5', '.', 'Main', 'Photo Gallery', NULL, 5, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326467_wallpapersden.com_north-america-usa-florida_1280x720.jpg', NULL, NULL, NULL, NULL, 'gallary5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:44:19', '2022-07-21 00:59:27', NULL, '', '', '', ''),
(2292, 'gallary6', 'gallary6', 'Gallary6', '.', 'Main', 'Photo Gallery', NULL, 6, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326491_wallpapersden.com_dubai-uae-top-view_1280x720.jpg', NULL, NULL, NULL, NULL, 'gallary6', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:45:32', '2022-07-21 00:59:51', NULL, '', '', '', ''),
(2293, 'gallary7', 'gallary7', 'Gallary7', '.', 'Main', 'Photo Gallery', NULL, 7, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326514_images.jfif', NULL, NULL, NULL, NULL, 'gallary7', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:46:16', '2022-07-21 01:00:14', NULL, '', '', '', ''),
(2294, 'gallary8', 'gallary8', 'Gallary7', '.', 'Main', 'Photo Gallery', NULL, 8, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326532_wallpapersden.com_australia_1280x720.jpg', NULL, NULL, NULL, NULL, 'gallary8', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:47:01', '2022-07-21 01:00:32', NULL, '', '', '', ''),
(2332, 'notice1', 'notice1', 'Misson', NULL, 'Main', 'Notice', NULL, 1, 'Vision & Values', NULL, 'Our Vision is to lead in the creation and delivery of innovative workforce solutions and services that enable our clients to win in the changing world of work', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notice1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 04:01:21', '2022-07-22 17:12:00', NULL, '', '', '', ''),
(2340, 'People', 'people', 'People', NULL, 'Main', 'Notice', NULL, 2, 'People', NULL, 'We care about people and the role of work in their lives. We respect people as individuals, trusting them, supporting them, enabling them to achieve their aims in work and in life.\r\n\r\nWe help people develop their careers through planning, work, coaching and training.\r\n\r\nWe recognize everyone’s contribution to our success - our staff, our clients and our candidates. We encourage and reward achievement.', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'People', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 15:39:15', '2022-07-22 15:39:15', NULL, '', '', '', ''),
(2341, 'Knowledge', 'knowledge', 'Knowledge', NULL, 'Main', 'Notice', NULL, 3, 'Knowledge', NULL, 'We share our knowledge, our expertise and our resources, so that everyone understands what is important now and what’s happening next in the world of work - and knows how best to respond.\r\n\r\nWe actively listen and act upon this information to improve our relationships, solutions and services.', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Knowledge', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 15:40:55', '2022-07-22 15:40:55', NULL, '', '', '', ''),
(2342, 'Innovation', 'innovation', 'Innovation', NULL, 'Main', 'Notice', NULL, 4, 'Innovation', NULL, 'Based on our understanding of the world of work, we actively pursue the development and adoption of the best practices worldwide. We lead in the world of work. We dare to innovate, to pioneer and to evolve.\r\n\r\nWe never accept the status quo. We constantly challenge the norm to find new and better ways of doing things.\r\n\r\nWe thrive on our entrepreneurial spirit and speed of response; taking risks, knowing that we will not always succeed, but never exposing our clients to risk.', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innovation', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 15:41:41', '2022-07-22 15:41:41', NULL, '', '', '', ''),
(2343, 'Certificates1', 'certificates1', 'Membership Certificates', NULL, 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468241_16 (1).jpg', NULL, NULL, NULL, NULL, 'Certificates1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:00:13', '2022-07-22 16:22:21', NULL, '', '', '', ''),
(2344, 'Certificates2', 'certificates2', 'Appreciation Letter', NULL, 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468272_17.jpg', NULL, NULL, NULL, NULL, 'Certificates2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:02:27', '2022-07-22 16:22:52', NULL, '', '', '', ''),
(2345, 'Certificates3', 'certificates3', 'Entry Card', NULL, 'Main', 'Photo Gallery', NULL, 3, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468287_18.jpg', NULL, NULL, NULL, NULL, 'Certificates3', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:03:45', '2022-07-22 16:23:07', NULL, '', '', '', ''),
(2346, 'Certificates4', 'certificates4', 'Shram Tatha Rojgar Bibhag Letter', NULL, 'Main', 'Photo Gallery', NULL, 4, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468302_19.jpg', NULL, NULL, NULL, NULL, 'Certificates4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:05:52', '2022-07-22 16:23:22', NULL, '', '', '', ''),
(2347, 'Certificates5', 'certificates5', 'Company Registration Paper', NULL, 'Main', 'Photo Gallery', NULL, 5, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468325_20.jpg', NULL, NULL, NULL, NULL, 'Certificates5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:07:19', '2022-07-22 16:23:45', NULL, '', '', '', ''),
(2348, 'Certificates6', 'certificates6', 'PAN', NULL, 'Main', 'Photo Gallery', NULL, 6, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468367_21 (1).jpg', NULL, NULL, NULL, NULL, 'Certificates6', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:08:22', '2022-07-22 16:24:27', NULL, '', '', '', ''),
(2349, 'Certificates7', 'certificates7', 'Baideshik Rojgar Sewa Sulka Ijazat Patra', NULL, 'Main', 'Photo Gallery', NULL, 7, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468393_22.jpg', NULL, NULL, NULL, NULL, 'Certificates7', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:11:17', '2022-07-22 16:24:53', NULL, '', '', '', ''),
(2350, 'Certificates9', 'certificates9', 'Letter of Appreciation', NULL, 'Main', 'Photo Gallery', NULL, 8, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468410_fodefeen1.jpg', NULL, NULL, NULL, NULL, 'Certificates9', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:17:20', '2022-07-22 16:25:10', NULL, '', '', '', ''),
(2351, 'Certificates10', 'certificates10', 'Certificate of Registration', NULL, 'Main', 'Photo Gallery', NULL, 9, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468002_iso-certificate.jpg', NULL, NULL, NULL, NULL, 'Certificates10', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:18:22', '2022-07-22 16:25:18', NULL, '', '', '', ''),
(2352, 'Photo1', 'photo1', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468652_09.jpg', NULL, NULL, NULL, NULL, 'Photo1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:29:12', '2022-07-22 16:29:12', NULL, '', '', '', ''),
(2353, 'Photo2', 'photo2', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468756_07.jpg', NULL, NULL, NULL, NULL, 'Photo2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:29:28', '2022-07-22 16:30:56', NULL, '', '', '', ''),
(2354, 'Photo3', 'photo3', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 3, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468744_08.jpg', NULL, NULL, NULL, NULL, 'Photo3', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:30:02', '2022-07-24 15:50:31', NULL, '', '', '', ''),
(2355, 'Photo4', 'photo4', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 4, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468855_05.jpg', NULL, NULL, NULL, NULL, 'Photo4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:32:35', '2022-07-22 16:32:35', NULL, '', '', '', ''),
(2356, 'Photo5', 'photo5', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 5, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468878_06.jpg', NULL, NULL, NULL, NULL, 'Photo5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:32:58', '2022-07-22 16:32:58', NULL, '', '', '', ''),
(2357, 'Photo6', 'photo6', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 6, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468910_04.jpg', NULL, NULL, NULL, NULL, 'Photo6', NULL, '0', '0', NULL, NULL, NULL, '2022-07-22 16:33:30', '2022-07-24 15:54:35', NULL, '', '', '', ''),
(2358, 'Photo7', 'photo7', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 7, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468939_03.jpg', NULL, NULL, NULL, NULL, 'Photo7', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:33:59', '2022-07-24 15:52:13', NULL, '', '', '', ''),
(2359, 'Photo8', 'photo8', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 8, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468966_02.jpg', NULL, NULL, NULL, NULL, 'Photo8', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:34:26', '2022-07-24 15:52:13', NULL, '', '', '', ''),
(2361, 'gly', '-gly', 'gly1', NULL, 'Main', 'Photo Gallery', NULL, 9, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658480717_org.jpg', NULL, NULL, NULL, NULL, 'gly', NULL, '0', '0', NULL, NULL, NULL, '2022-07-22 19:50:17', '2022-07-22 20:05:44', NULL, '', '', '', ''),
(2443, 'photo-gallery', 'photogallery', 'Photo Gallery', NULL, 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 2418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo-gallery', NULL, '1', '0', NULL, NULL, NULL, '2022-09-11 22:17:33', '2022-09-13 20:55:17', '(21)', '', '', '', ''),
(2444, 'video-gallery', 'videogallery', 'Video Gallery', NULL, 'Main', 'Video Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'video-gallery', NULL, '1', '0', NULL, NULL, NULL, '2022-09-11 22:18:45', '2022-12-16 19:30:30', '(21)', '', '', '', ''),
(2445, 'video-one', 'videoone', 'Video Gallery', NULL, 'Main', 'Video Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'video-one', NULL, '1', '0', NULL, NULL, NULL, '2022-09-11 22:19:19', '2022-09-11 22:19:19', '(21)', '', '', '', ''),
(2446, 'photo', 'photo', 'Our Meeting', NULL, 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2443, NULL, NULL, NULL, '/uploads/banner_image/1670945414_Economy-1.jpg', NULL, NULL, NULL, NULL, 'photo', NULL, '1', '0', NULL, NULL, NULL, '2022-09-11 22:20:26', '2022-12-13 15:30:14', '(21)', '', '', '', ''),
(2472, 'testimonial', 'testimonial-', 'Testimonial', NULL, 'Home', 'Group', NULL, 5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '/uploads/banner_image/1670837002_chairperson.jpg', NULL, NULL, NULL, NULL, 'testimonial', NULL, '1', '0', NULL, NULL, NULL, '2022-12-12 09:23:22', '2023-03-30 07:06:36', NULL, '', '', '', ''),
(2483, 'food', 'food', 'Manufacturing', NULL, 'Main', 'Group Jobs', NULL, 1, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546291_Manufacturing.jpg', NULL, NULL, NULL, NULL, 'food', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 07:13:38', '2023-02-16 11:18:11', NULL, '', '', '', ''),
(2498, 'security-guards', 'securityguards', 'Security Guards', NULL, 'Main', 'Group Jobs', NULL, 2, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546347_Security Guards.jpg', NULL, NULL, NULL, NULL, 'security-guards', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 16:51:35', '2023-02-16 11:19:07', NULL, '', '', '', ''),
(2499, 'hospitability', 'hospitability', 'Hospitability', NULL, 'Main', 'Group Jobs', NULL, 3, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546384_Hospitability.jpg', NULL, NULL, NULL, NULL, 'hospitability', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 16:52:29', '2023-02-16 11:19:44', NULL, '', '', '', ''),
(2500, 'mining', 'mining', 'Mining', NULL, 'Main', 'Group Jobs', NULL, 4, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546411_Mining.jpg', NULL, NULL, NULL, NULL, 'mining', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 16:55:53', '2023-02-16 11:20:11', NULL, '', '', '', ''),
(2501, 'agriculture', 'agriculture', 'Agriculture', NULL, 'Main', 'Group Jobs', NULL, 5, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546445_Agricultlure.jpg', NULL, NULL, NULL, NULL, 'agriculture', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 16:57:18', '2023-02-16 11:20:45', NULL, '', '', '', ''),
(2502, 'logistics', 'logistics', 'Logistics', NULL, 'Main', 'Group Jobs', NULL, 6, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546477_Logistics.jpg', NULL, NULL, NULL, NULL, 'logistics', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 16:59:12', '2023-02-16 11:21:17', NULL, '', '', '', ''),
(2503, 'manufacture-company', 'manufacturecompany', 'Cunstruction', NULL, 'Main', 'Group Jobs', NULL, 7, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546508_carousel-3.jpg', NULL, NULL, NULL, NULL, 'manufacture-company', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 17:00:09', '2023-02-16 11:21:48', NULL, '', '', '', ''),
(2588, 'about-us-one', 'aboutusone', 'About Us', NULL, 'Home', 'Normal', NULL, 1, 'At Saptashree Academy, Damak, Jhapa, we help students learn, grow, and succeed with strong academics, discipline, skills, and values building a confident and bright future.', NULL, NULL, NULL, 2254, NULL, NULL, '10', '/uploads/banner_image/1778599006_471984506_1643560869529843_2499924896352556228_n.jpg', NULL, NULL, NULL, '1', 'about-us-one', NULL, '1', '0', NULL, NULL, NULL, '2023-04-03 09:29:30', '2026-05-12 16:18:13', NULL, NULL, NULL, NULL, NULL),
(2596, 'testo2', 'testo2', 'Nabin Yadav', NULL, 'Home', 'Normal', NULL, 3, 'Student', NULL, 'Thanks to Sapta Shree Academy School, I am on the right path toward a bright future. Their dedicated guidance and supportive environment make learning smooth and inspiring.”', NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1778684486_1756275474_829459_man_512x512.png', NULL, NULL, NULL, NULL, 'testo2', NULL, '1', '0', NULL, NULL, NULL, '2023-04-07 06:40:40', '2026-05-13 15:01:26', NULL, NULL, NULL, NULL, NULL),
(2597, 'gallary', 'gallary', 'Gallery', NULL, 'Main', 'Group', NULL, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gallary', NULL, '1', '0', NULL, NULL, NULL, '2023-04-07 06:50:22', '2024-04-09 15:48:59', NULL, NULL, NULL, NULL, NULL),
(2605, 'labour', 'labour', 'Labour', NULL, 'Main', 'Group Jobs', NULL, 1, NULL, NULL, NULL, NULL, 2603, NULL, NULL, NULL, '/uploads/banner_image/1681633388_sadad.PNG', NULL, NULL, NULL, NULL, 'labour', NULL, '1', '0', NULL, NULL, NULL, '2023-04-16 08:17:30', '2023-04-16 08:23:08', NULL, '', '', '', ''),
(2606, 'nabin', 'nabin', 'asdadas', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2605, '1682853581_Chillout Mashup Music Channel YouTube Thumbnail (6).jpg', NULL, NULL, '/uploads/banner_image/1681636723_about (2).jpg', NULL, NULL, NULL, NULL, 'nabin', NULL, '1', '0', NULL, NULL, NULL, '2023-04-16 09:10:37', '2023-04-30 11:19:41', NULL, '', '', '', ''),
(2607, 'nabinsad', 'nabinsad', 'acscascv', NULL, 'Main', 'Job', NULL, 2, 'safdasfasfasfasf', NULL, '<ul>\r\n	<li><i class=\"fa fa-hand-point-right\"></i><span>Age Limit: 20-37 years</span></li>\r\n	<li><i class=\"fa fa-hand-point-right\"></i><span>Must be well groom, clean, smart and pleasing personality</span></li>\r\n	<li><i class=\"fa fa-hand-point-right\"></i><span>Must have good communicable English</span></li>\r\n	<li><i class=\"fa fa-hand-point-right\"></i><span>Must have 2-5years of experience in related field</span></li>\r\n	<li><i class=\"fa fa-hand-point-right\"></i><span>GCC experience candidate will be highly preferable</span></li>\r\n	<li><i class=\"fa fa-hand-point-right\"></i><span>Candidate should be physically well build, mentally fit and strong</span></li>\r\n	<li><i class=\"fa fa-hand-point-right\"></i><span>Tattoo in visible body parts will not be acceptable</span></li>\r\n</ul>', NULL, 2605, NULL, NULL, NULL, '/uploads/banner_image/1681638828_about (2).jpg', NULL, NULL, NULL, NULL, 'nabinsad', NULL, '1', '0', NULL, NULL, NULL, '2023-04-16 09:53:48', '2023-04-16 10:04:40', NULL, '', '', '', ''),
(2609, 'nabinasfas', 'nabinasfas', 'sdafasd', NULL, 'Main', 'Job', NULL, 3, NULL, NULL, NULL, NULL, 2605, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nabinasfas', NULL, '1', '0', NULL, NULL, NULL, '2023-04-16 10:46:31', '2023-04-16 10:46:31', NULL, '', '', '', ''),
(2650, 'photo-gallery-one', 'photogalleryone', 'Photo Gallery', NULL, 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 2597, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo-gallery-one', NULL, '1', '0', NULL, NULL, NULL, '2023-06-17 03:52:08', '2024-04-11 07:48:51', NULL, NULL, NULL, NULL, NULL),
(2742, 'banner', 'banner', 'Banner', NULL, 'Home', 'Group', NULL, 1, 'cacscasc', NULL, NULL, NULL, 0, NULL, '1712634498_about.PNG', NULL, '/uploads/banner_image/1712634498_about.PNG', NULL, NULL, NULL, NULL, 'banner', NULL, '1', '0', NULL, NULL, NULL, '2024-04-09 03:48:18', '2024-04-09 16:15:52', NULL, NULL, NULL, NULL, NULL),
(2745, 'sadsad', 'sadsad', 'Utsav Timilsina', NULL, 'Home', 'Normal', NULL, 4, 'Student', NULL, '“My journey toward success began at Sapta Shree Academy School. With their continuous support and guidance, every step feels confident and motivating.”', NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1778684468_1756275474_829459_man_512x512.png', NULL, NULL, NULL, NULL, 'sadsad', NULL, '1', '0', NULL, NULL, NULL, '2024-04-09 05:19:53', '2026-05-13 15:01:08', NULL, NULL, NULL, NULL, NULL),
(2746, 'partners', 'partners-', 'Partners', NULL, 'Home', 'Group', NULL, 19, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'partners', NULL, '1', '0', NULL, NULL, NULL, '2024-04-09 05:48:43', '2024-04-09 05:48:43', NULL, NULL, NULL, NULL, NULL),
(2747, 'partners-one', 'partnersone', 'University of Central Oklahoma', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2746, NULL, NULL, NULL, '/uploads/banner_image/1724755036_UCO-logo.gif', NULL, NULL, NULL, NULL, 'partners-one', NULL, '1', '0', NULL, NULL, NULL, '2024-04-09 05:49:17', '2024-08-27 16:22:16', NULL, NULL, NULL, NULL, NULL),
(2752, 'services', 'services', 'Programs', NULL, 'Main', 'Group', NULL, 3, NULL, NULL, '<span style=\"font-size:24px;\"><strong>Prepare for Studying </strong></span><span style=\"color:#FFFF00;\"><span style=\"font-size:36px;\"><strong>Abroad</strong></span></span>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'services', NULL, '1', '0', NULL, NULL, NULL, '2024-04-09 15:45:14', '2026-04-19 15:12:36', NULL, NULL, NULL, NULL, NULL),
(2754, 'Academic', 'academic', 'Academic', NULL, 'Main', 'Group', NULL, 5, NULL, NULL, 'Best Duolingo Class In Nepal | Affordable | Flexible| Online | 160 Score', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Academic', NULL, '1', '1', NULL, NULL, NULL, '2024-04-09 15:47:59', '2026-04-20 04:07:05', NULL, NULL, NULL, NULL, NULL),
(2756, 'blog', 'blog', 'News & Events', NULL, 'Main', 'Group', NULL, 10, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'blog', NULL, '1', '0', NULL, NULL, NULL, '2024-04-09 15:49:40', '2026-04-20 04:08:25', NULL, NULL, NULL, NULL, NULL),
(2757, 'about-one', 'aboutone', 'About', NULL, 'Main', 'Group', NULL, 0, NULL, NULL, NULL, NULL, 0, '1725352617_13681edf4aed3911f492.png', NULL, NULL, '/uploads/banner_image/1712678882_unsplashtuv1rzqpuy-2@2x.png', NULL, NULL, NULL, NULL, 'about-one', NULL, '1', '0', NULL, NULL, NULL, '2024-04-09 15:59:37', '2025-08-24 10:42:57', NULL, NULL, NULL, NULL, NULL),
(2802, 'video-gallery-one', 'videogalleryone', 'Video Gallery', NULL, 'Main', 'Video Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2597, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'video-gallery-one', NULL, '1', '0', NULL, NULL, NULL, '2024-04-11 07:35:53', '2024-04-11 07:35:53', NULL, NULL, NULL, NULL, NULL),
(2904, 'enquiry', 'enquiry', 'Enquiry', NULL, 'Main', 'Normal', NULL, 11, NULL, NULL, 'country: USA,UK,Australia,Canada,Japan<br />\r\nfaculty: Under Graduate, Post Graduate<br />\r\neducationlevel: +2, Bachelor, Master<br />\r\nhaveyoudone: TOEFL-IBT, TOEFL, IELTS, SAT, GRE, GMAT, Language, SAT II', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'enquiry', NULL, '0', '0', NULL, NULL, NULL, '2024-04-17 15:27:06', '2025-08-20 16:43:17', NULL, NULL, NULL, NULL, NULL),
(2907, 'study-home', 'studyhome', 'Home Study Page', NULL, 'Home', 'Group', NULL, 20, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'study-home', NULL, '1', '0', NULL, NULL, NULL, '2024-04-19 09:47:10', '2024-04-19 09:47:10', NULL, NULL, NULL, NULL, NULL),
(2908, 'students-one', 'studentsone', 'Nursery, LKG, UKG students practising ...', NULL, 'Home', 'Group', NULL, 1, '/abroad-study/australia', NULL, 'Nursery, LKG, UKG students practising beads writing...', NULL, 2907, NULL, NULL, '/abroad-study/study-aus', '/uploads/banner_image/1778681154_471658767_1643546002864663_8162541523981526990_n.jpg', NULL, NULL, NULL, NULL, 'students-one', NULL, '1', '0', NULL, NULL, NULL, '2024-04-19 09:47:52', '2026-05-13 14:16:56', NULL, NULL, NULL, NULL, NULL),
(2910, 'student-two', 'studenttwo', 'Happy Dashain 2079❤️', NULL, 'Home', 'Group', NULL, 3, NULL, NULL, 'Happy Dashain 2079', NULL, 2907, NULL, NULL, '/abroad-study/study-canada', '/uploads/banner_image/1778681204_477394268_1170780488385480_3370189372404125291_n.jpg', NULL, NULL, NULL, NULL, 'student-two', NULL, '1', '0', NULL, NULL, NULL, '2024-04-19 09:50:14', '2026-05-13 14:17:03', NULL, NULL, NULL, NULL, NULL),
(2911, 'student-three', 'studentthree', 'Have a colourful and joyous Holi!', NULL, 'Home', 'Group', NULL, 4, NULL, NULL, 'Have a colourful and joyous Holi!', NULL, 2907, NULL, NULL, '/abroad-study/uk-destinystudy', '/uploads/banner_image/1778681259_472292931_1646367662582497_4287697650172398002_n.jpg', NULL, NULL, NULL, NULL, 'student-three', NULL, '1', '0', NULL, NULL, NULL, '2024-04-19 09:50:35', '2026-05-13 14:17:10', NULL, NULL, NULL, NULL, NULL),
(2912, 'student-four', 'studentfour', 'Nothing is pleasanter than exploring a library.', NULL, 'Home', 'Group', NULL, 5, NULL, NULL, 'Nothing is pleasanter than exploring a library.', NULL, 2907, NULL, NULL, '/abroad-study/usa', '/uploads/banner_image/1778681278_472314948_1646362595916337_5823773374377675994_n.jpg', NULL, NULL, NULL, NULL, 'student-four', NULL, '1', '0', NULL, NULL, NULL, '2024-04-19 09:50:57', '2026-05-13 14:17:18', NULL, NULL, NULL, NULL, NULL),
(2940, 'about-us-two', 'aboutustwo', 'About Us', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<p><strong>About Saptashree Academy | Damak, Jhapa, Nepal</strong></p>\r\n\r\n<p>Saptashree Academy is a leading educational institution located in Damak, Jhapa, Nepal, committed to delivering quality education and holistic student development. Established with a vision to nurture young minds and build future leaders, our academy has become a trusted name among parents and students seeking academic excellence in the eastern region of Nepal.</p>\r\n\r\n<p>At Saptashree Academy, we believe that education goes beyond textbooks. Our teaching approach focuses on developing critical thinking, creativity, discipline, and strong moral values. We provide a student-centered learning environment where every child is encouraged to explore their potential and grow with confidence.</p>\r\n\r\n<p>Our experienced and dedicated faculty members use modern teaching methodologies combined with practical learning techniques to ensure that students gain both theoretical knowledge and real-world skills. We emphasize interactive classrooms, digital learning tools, and continuous assessment to enhance the overall learning experience.</p>\r\n\r\n<p>Located in the heart of Damak, Jhapa, Saptashree Academy offers a safe, peaceful, and inspiring environment for students. Our facilities include well-equipped classrooms, a library, extracurricular activity programs, and co-curricular opportunities that support the physical, emotional, and intellectual development of students.</p>\r\n\r\n<p>We are proud to promote not only academic excellence but also character building, leadership skills, and social responsibility. Through various programs, events, and activities, we prepare our students to face future challenges with confidence and integrity.</p>\r\n\r\n<p><strong>Why Choose Saptashree Academy in Damak?</strong></p>\r\n\r\n<ul data-spread=\"false\">\r\n	<li>Quality education with modern teaching methods</li>\r\n	<li>Experienced and dedicated teachers</li>\r\n	<li>Focus on holistic student development</li>\r\n	<li>Safe and supportive learning environment</li>\r\n	<li>Strong academic performance and discipline</li>\r\n</ul>\r\n\r\n<p>At Saptashree Academy, our mission is to empower students with knowledge, skills, and values that will help them succeed in life and contribute positively to society.</p>\r\n\r\n<p>Join Saptashree Academy, Damak, and be part of a journey towards excellence in education.</p>', NULL, 2757, NULL, NULL, NULL, '/uploads/banner_image/1778822872_476878874_1170115131785349_5509550004158113498_n.jpg', NULL, '1778822894_471950826_1643569289529001_1028454988663916474_n.jpg', NULL, NULL, 'about-us-two', NULL, '1', '0', NULL, NULL, NULL, '2024-04-19 17:07:13', '2026-05-15 05:28:14', NULL, NULL, NULL, NULL, NULL),
(2954, 'partners-three', 'partnersthree', 'Webster University', NULL, 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2746, NULL, NULL, NULL, '/uploads/banner_image/1717086514_logo-color.svg', NULL, NULL, NULL, NULL, 'partners-three', NULL, '1', '0', NULL, NULL, NULL, '2024-05-30 19:51:36', '2024-05-30 22:13:34', NULL, NULL, NULL, NULL, NULL),
(2955, 'partners-four', 'partnersfour', 'Avila University', NULL, 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 2746, NULL, NULL, NULL, '/uploads/banner_image/1717086567_logo-one-line-no-tag.svg', NULL, NULL, NULL, NULL, 'partners-four', NULL, '1', '0', NULL, NULL, NULL, '2024-05-30 19:51:58', '2024-05-30 22:14:27', NULL, NULL, NULL, NULL, NULL),
(2980, 'shree-blogs', 'shreeblogs', 'Blog Three', NULL, 'Main', 'Group Project', NULL, 1, 'Saptashree Academy, estd in 2017, aims at developing the cultured, competent,skilled, value based', NULL, 'blogs', NULL, 2756, NULL, NULL, '5 minute read', '/uploads/banner_image/1778737082_471950826_1643569289529001_1028454988663916474_n.jpg', NULL, NULL, NULL, NULL, 'shree-blogs', NULL, '1', '0', NULL, NULL, NULL, '2024-08-27 10:12:27', '2026-05-14 05:38:02', NULL, NULL, NULL, NULL, NULL),
(2981, 'Peaceful-Learning-in-the-Library', 'peacefullearninginthelibrary', 'Peaceful Learning in the Library', NULL, 'Main', 'Projectdetails', NULL, 1, NULL, NULL, '<p data-end=\"316\" data-start=\"49\">Saptashree Academy, established in 2017, is dedicated to developing cultured, competent, skilled, and value-based students. The academy believes that true education goes beyond classrooms, and one of the most important places that supports this belief is the library.</p>\r\n\r\n<p data-end=\"716\" data-start=\"318\">The library is a शांत (quiet) and focused environment where students can study without distractions. Unlike noisy surroundings, the calm atmosphere of the library helps students concentrate better on their studies. When a student sits with a book in such a peaceful place, learning becomes more effective and meaningful. It allows them to understand concepts deeply instead of just memorizing them.</p>\r\n\r\n<p data-end=\"1126\" data-start=\"718\">In Saptashree Academy, the library is more than just a room filled with books. It is a space where students explore new ideas, gain knowledge, and build strong habits. Students can find different types of books — academic, informative, and inspirational that help them grow not only in their studies but also in their personal lives. Reading regularly improves vocabulary, thinking ability, and creativity.</p>\r\n\r\n<p data-end=\"1463\" data-start=\"1128\">Studying in the library also teaches discipline and time management. When students make a habit of visiting the library, they learn to use their time wisely. They become more responsible and focused on their goals. Sitting quietly, making notes, and revising lessons helps students prepare better for exams and boosts their confidence.</p>\r\n\r\n<p data-end=\"1830\" data-start=\"1465\">Another important benefit of the library is self-learning. In the classroom, teachers guide students, but in the library, students learn to study on their own. This develops independence and critical thinking skills. It encourages them to ask questions, search for answers, and understand topics in their own way. These skills are very important for future success.</p>\r\n\r\n<p data-end=\"2110\" data-start=\"1832\">The library also creates a positive learning environment. Seeing other students studying seriously motivates everyone to do better. It builds a culture of learning where students inspire each other. Even a small effort made in the library can lead to big achievements over time.</p>\r\n\r\n<p data-end=\"2406\" data-start=\"2112\">Saptashree Academy strongly encourages students to make full use of the library facilities. Spending even a small amount of time daily in the library can make a big difference in a student’s academic journey. It helps them stay focused, improves their performance, and shapes their personality.</p>\r\n\r\n<p data-end=\"2683\" data-is-last-node=\"\" data-is-only-node=\"\" data-start=\"2408\">In conclusion, the library plays a very important role in a student’s life. It is a place where silence turns into strength, and hard work turns into success. At Saptashree Academy, the library is not just a study area — it is a foundation for a bright and successful future.</p>', NULL, 2980, NULL, NULL, '5 Minutes Read', '/uploads/banner_image/1778866343_471785755_1643549156197681_8206102864610851947_n.jpg', NULL, '1776698737_472290011_1646362799249650_4789456837686266040_n.jpg', NULL, NULL, 'Peaceful-Learning-in-the-Library', NULL, '1', '0', NULL, NULL, NULL, '2024-08-27 10:23:57', '2026-05-15 17:32:23', NULL, NULL, NULL, NULL, NULL),
(2982, 'shree-blog-one', 'shreeblogone', 'Blog Four', NULL, 'Main', 'Group Project', NULL, 2, 'Saptashree Academy, estd in 2017, aims at developing the cultured, competent,skilled, value based', NULL, 'blogs', NULL, 2756, NULL, NULL, '5 minute read', '/uploads/banner_image/1778737091_471614553_1643569459528984_6732066446436980199_n.jpg', NULL, NULL, NULL, NULL, 'shree-blog-one', NULL, '1', '0', NULL, NULL, NULL, '2024-08-27 10:29:16', '2026-05-14 05:38:11', NULL, NULL, NULL, NULL, NULL),
(2990, 'blog-two', 'blogtwo', 'Blog Two', NULL, 'Main', 'Group Project', NULL, 6, 'Saptashree Academy, estd in 2017, aims at developing the cultured, competent,skilled, value based', NULL, 'blogs', NULL, 2756, NULL, NULL, '5 minute read', '/uploads/banner_image/1778737098_472245871_1646362429249687_978251924434444700_n.jpg', NULL, NULL, NULL, NULL, 'blog-two', NULL, '1', '0', NULL, NULL, NULL, '2024-08-27 11:40:58', '2026-05-14 05:38:18', NULL, NULL, NULL, NULL, NULL),
(2994, 'canada_blog', 'canadablog', 'Blog One', NULL, 'Main', 'Group Project', NULL, 8, 'Saptashree Academy, estd in 2017, aims at developing the cultured, competent,skilled, value based', NULL, 'blogs', NULL, 2756, NULL, NULL, '5 minute read', '/uploads/banner_image/1778737107_476878874_1170115131785349_5509550004158113498_n.jpg', NULL, NULL, NULL, NULL, 'canada_blog', NULL, '1', '0', NULL, NULL, NULL, '2024-08-27 15:54:47', '2026-05-14 05:38:27', NULL, NULL, NULL, NULL, NULL),
(2997, 'Career-&-Future-Planning', 'careerfutureplanning', 'Career & Future Planning', NULL, 'Main', 'Group', NULL, 2, 'Professional counselling to help...', NULL, NULL, NULL, 2752, NULL, NULL, NULL, '/uploads/banner_image/1778606367_472011851_1643549512864312_5697948249889088800_n.jpg', NULL, NULL, NULL, NULL, 'Career-&-Future-Planning', NULL, '1', '0', NULL, NULL, NULL, '2024-08-29 14:43:13', '2026-05-12 17:19:27', NULL, NULL, NULL, NULL, NULL),
(2998, 'Career-Counselling-details', 'careercounsellingdetails', 'Career Counselling', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<strong data-end=\"935\" data-start=\"907\">Guided Academic Pathways</strong><br data-end=\"938\" data-start=\"935\" />\r\nProfessional counselling to help students identify strengths and choose the right educational direction for future success.', NULL, 2997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Career-Counselling-details', NULL, '1', '0', NULL, NULL, NULL, '2024-08-29 14:45:18', '2026-05-18 11:11:41', NULL, NULL, NULL, NULL, NULL),
(3001, 'banner-one', 'bannerone', 'Saptashree Academy', NULL, 'Home', 'Normal', NULL, 3, 'Believe us, we never let you down.', NULL, 'Since 2017, we have been supporting school students in building strong foundations in education, skills, and values.', NULL, 2742, NULL, NULL, NULL, '/uploads/banner_image/1778599651_476833482_1170115058452023_5870302479151174723_n.jpg', NULL, '1778828920_Untitled design (1).mp4', NULL, NULL, 'banner-one', NULL, '1', '0', NULL, NULL, NULL, '2025-08-19 08:19:11', '2026-05-15 07:08:40', NULL, NULL, NULL, NULL, NULL),
(3003, 'gallery-one', 'galleryone', 'Students practising..', NULL, 'Main', 'Photo Gallery', NULL, 1, 'asdadas', NULL, NULL, NULL, 2650, NULL, NULL, NULL, '/uploads/banner_image/1778683308_mission.jpg', NULL, NULL, NULL, NULL, 'gallery-one', NULL, '1', '0', NULL, NULL, NULL, '2025-08-19 10:22:47', '2026-05-13 14:41:48', NULL, NULL, NULL, NULL, NULL),
(3006, 'gallery-two', 'gallerytwo', 'Happy Dashain 2079❤️', NULL, 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2650, NULL, NULL, NULL, '/uploads/banner_image/1778683338_472209586_1643549072864356_5554480832329339555_n.jpg', NULL, NULL, NULL, NULL, 'gallery-two', NULL, '1', '0', NULL, NULL, NULL, '2025-08-20 09:09:56', '2026-05-13 14:42:18', NULL, NULL, NULL, NULL, NULL),
(3007, 'gallery-three', 'gallerythree', 'संविधान दिवसको उपलक्ष्यमा..', NULL, 'Main', 'Photo Gallery', NULL, 3, NULL, NULL, NULL, NULL, 2650, NULL, NULL, NULL, '/uploads/banner_image/1778683368_476833482_1170115058452023_5870302479151174723_n.jpg', NULL, NULL, NULL, NULL, 'gallery-three', NULL, '1', '0', NULL, NULL, NULL, '2025-08-20 09:11:01', '2026-05-13 14:42:48', NULL, NULL, NULL, NULL, NULL),
(3008, 'gallery-four', 'galleryfour', 'colourful and joyous Holi!', NULL, 'Main', 'Photo Gallery', NULL, 4, NULL, NULL, NULL, NULL, 2650, NULL, NULL, NULL, '/uploads/banner_image/1778683381_472292931_1646367662582497_4287697650172398002_n.jpg', NULL, NULL, NULL, NULL, 'gallery-four', NULL, '1', '0', NULL, NULL, NULL, '2025-08-20 09:11:39', '2026-05-15 15:02:50', NULL, NULL, NULL, NULL, NULL),
(3010, 'Admission-&-Enrollment-Guidance', 'admissionenrollmentguidance', 'Admission & Enrollment Guidance', NULL, 'Main', 'Group', NULL, 3, 'Complete assistance for admissions, ...', NULL, NULL, NULL, 2752, NULL, NULL, NULL, '/uploads/banner_image/1778606392_471747754_1643549082864355_984220219391353925_n.jpg', NULL, NULL, NULL, NULL, 'Admission-&-Enrollment-Guidance', NULL, '1', '0', NULL, NULL, NULL, '2025-08-20 10:59:08', '2026-05-12 17:19:52', NULL, NULL, NULL, NULL, NULL),
(3015, 'goal', 'goal', 'Team', NULL, 'Home', 'Group', NULL, 21, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'goal', NULL, '1', '0', NULL, NULL, NULL, '2025-08-20 17:27:38', '2025-08-20 17:27:38', NULL, NULL, NULL, NULL, NULL),
(3016, 'team-Principal', 'teamprincipal', 'Principal', NULL, 'Home', 'Normal', NULL, 1, 'Principal&nbsp;', NULL, '<div style=\"text-align: justify;\">\"We are committed to excellence, innovation, and integrity, working together to achieve sustainable growth and serve our community responsibly.\"&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</div>\r\n<br />\r\nMob: 9800000000', NULL, 3015, NULL, NULL, NULL, '/uploads/banner_image/1780333336_images.jfif', NULL, NULL, NULL, NULL, 'team-Principal', NULL, '1', '0', NULL, NULL, NULL, '2025-08-20 17:28:23', '2026-06-01 17:02:16', NULL, 'https://x.com/', 'https://x.com/', NULL, 'https://x.com/'),
(3025, 'program_one', 'programone', 'Program1', NULL, 'Main', 'Group', NULL, 22, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'program_one', NULL, '0', '0', NULL, NULL, NULL, '2025-08-24 11:02:29', '2025-08-24 15:03:21', NULL, NULL, NULL, NULL, NULL),
(3026, 'test', 'test', 'teast', NULL, 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 3025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, '1', '0', NULL, NULL, NULL, '2025-08-24 11:02:58', '2025-08-24 11:02:58', NULL, NULL, NULL, NULL, NULL),
(3027, 'sdadasd', 'sdadasd', 'sddasd', NULL, 'Main', 'Normal', NULL, 1, 'sadasd', NULL, NULL, NULL, 3026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdadasd', NULL, '1', '0', NULL, NULL, NULL, '2025-08-24 11:08:33', '2025-08-24 11:08:33', NULL, NULL, NULL, NULL, NULL),
(3028, 'Smooth-School-Entry-Process-details', 'smoothschoolentryprocessdetails', 'Smooth School Entry Process', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<strong data-end=\"741\" data-start=\"710\">Smooth School Entry Process</strong><br data-end=\"744\" data-start=\"741\" />\r\nComplete assistance for admissions, documentation, and academic placement to ensure a hassle-free enrollment experience.', NULL, 3010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Smooth-School-Entry-Process-details', NULL, '1', '0', NULL, NULL, NULL, '2025-08-24 16:26:43', '2026-05-18 11:05:41', NULL, NULL, NULL, NULL, NULL),
(3049, 'testi-three', 'testithree', 'Aditya Chaudhary', NULL, 'Home', 'Normal', NULL, 5, 'Student', NULL, '<p data-end=\"696\" data-start=\"570\">“Sapta Shree Academy School has guided me toward a successful future with confidence, care, and quality education.”</p>', NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1780333365_1756275474_829459_man_512x512.png', NULL, NULL, NULL, NULL, 'testi-three', NULL, '1', '0', NULL, NULL, NULL, '2025-08-27 06:14:33', '2026-06-01 17:02:45', NULL, NULL, NULL, NULL, NULL),
(3050, 'testi-four', 'testifour', 'Sonalika Dahal', NULL, 'Home', 'Normal', NULL, 6, 'Student', NULL, '“Thanks to Sapta Shree Academy School, I am confidently moving toward a successful future. Their expert guidance and nurturing environment make every step of the journey inspiring and meaningful.”', NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1780333379_1756275474_829459_man_512x512.png', NULL, NULL, NULL, NULL, 'testi-four', NULL, '1', '0', NULL, NULL, NULL, '2025-08-27 06:15:21', '2026-06-01 17:02:59', NULL, NULL, NULL, NULL, NULL),
(3052, 'Student-Development-Support', 'studentdevelopmentsupport', 'Student Development & Support', NULL, 'Main', 'Group', NULL, 4, 'Focused programs that support discipline...', NULL, NULL, NULL, 2752, NULL, NULL, NULL, '/uploads/banner_image/1778606427_mission (2).jpg', NULL, NULL, NULL, NULL, 'Student-Development-Support', NULL, '1', '0', NULL, NULL, NULL, '2025-08-29 06:42:30', '2026-05-12 17:20:27', NULL, NULL, NULL, NULL, NULL),
(3053, 'Student-Development-&-Support-details', 'studentdevelopmentsupportdetails', 'Student Development & Support', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<strong data-end=\"538\" data-start=\"507\">Holistic Growth Environment</strong><br data-end=\"541\" data-start=\"538\" />\r\nFocused programs that support discipline, confidence, creativity, and personal development alongside academic learning.', NULL, 3052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Student-Development-&-Support-details', NULL, '1', '0', NULL, NULL, NULL, '2025-08-29 06:47:58', '2026-05-18 11:03:47', NULL, NULL, NULL, NULL, NULL),
(3054, 'Academic-Excellence-Programs', 'academicexcellenceprograms', 'Academic Excellence Programs', NULL, 'Main', 'Group', NULL, 5, 'A structured academic framework designed to...', NULL, NULL, NULL, 2752, NULL, NULL, NULL, '/uploads/banner_image/1778606445_472314948_1646362595916337_5823773374377675994_n.jpg', NULL, NULL, NULL, NULL, 'Academic-Excellence-Programs', NULL, '1', '0', NULL, NULL, NULL, '2025-08-29 06:52:54', '2026-05-12 17:20:45', NULL, NULL, NULL, NULL, NULL),
(3056, 'Strong-Foundation-Learning-System-Details', 'strongfoundationlearningsystemdetails', 'Strong Foundation Learning System', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<strong data-end=\"337\" data-start=\"300\">Strong Foundation Learning System</strong><br data-end=\"340\" data-start=\"337\" />\r\nA structured academic framework designed to strengthen core subjects, critical thinking, and long-term student success.', NULL, 3054, NULL, NULL, NULL, '/uploads/banner_image/1778606299_472011851_1643549512864312_5697948249889088800_n.jpg', NULL, NULL, NULL, NULL, 'Strong-Foundation-Learning-System-Details', NULL, '1', '0', NULL, NULL, NULL, '2025-08-29 06:59:35', '2026-05-12 17:18:19', NULL, NULL, NULL, NULL, NULL),
(3057, 'team-vice-Principal', 'teamviceprincipal', 'Vice Principal', NULL, 'Home', 'Normal', NULL, 2, 'Vice Principal', NULL, '\"We are committed to excellence, innovation, and integrity, working together to achieve sustainable growth and serve our community responsibly.\"&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<br />\r\n<br />\r\nMob: 9800000000', NULL, 3015, NULL, NULL, NULL, '/uploads/banner_image/1778688207_profile-1.jpg', NULL, NULL, NULL, NULL, 'team-vice-Principal', NULL, '1', '0', NULL, NULL, NULL, '2026-04-17 04:55:07', '2026-05-13 16:03:27', NULL, NULL, NULL, NULL, NULL),
(3058, 'team-teacher', 'teamteacher', 'Maths Teacher', NULL, 'Home', 'Normal', NULL, 3, 'Maths Teacher', NULL, NULL, NULL, 3015, NULL, NULL, NULL, '/uploads/banner_image/1778688226_1756275474_829459_man_512x512.png', NULL, NULL, NULL, NULL, 'team-teacher', NULL, '1', '0', NULL, NULL, NULL, '2026-04-17 05:14:42', '2026-05-13 16:03:46', NULL, NULL, NULL, NULL, NULL),
(3059, 'team-science-teacher', 'teamscienceteacher', 'Science Teacher', NULL, 'Home', 'Normal', NULL, 4, 'Science Teacher', NULL, NULL, NULL, 3015, NULL, NULL, NULL, '/uploads/banner_image/1778688267_images.jfif', NULL, NULL, NULL, NULL, 'team-science-teacher', NULL, '1', '0', NULL, NULL, NULL, '2026-04-17 05:15:28', '2026-05-13 16:04:27', NULL, NULL, NULL, NULL, NULL),
(3060, 'team-nepali-teacher', 'teamnepaliteacher', 'Nepali Teacher', NULL, 'Home', 'Normal', NULL, 5, 'Nepali Teacher', NULL, NULL, NULL, 3015, NULL, NULL, NULL, '/uploads/banner_image/1778688277_profile-1.jpg', NULL, NULL, NULL, NULL, 'team-nepali-teacher', NULL, '1', '0', NULL, NULL, NULL, '2026-04-17 05:16:20', '2026-05-13 16:04:37', NULL, NULL, NULL, NULL, NULL),
(3061, 'primery-level', 'primerylevel', 'Primary Level', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<h1 data-end=\"190\" data-section-id=\"1fx61h4\" data-start=\"146\" style=\"text-align: justify;\">📘 Primary Education at Saptashree Academy</h1>\r\n\r\n<p data-end=\"592\" data-start=\"192\" style=\"text-align: justify;\">At Saptashree Academy, Damak, Jhapa, our <strong data-end=\"262\" data-start=\"233\">Primary Education program</strong> is thoughtfully designed to build a strong academic and personal foundation for young learners. We understand that early education plays a vital role in shaping a child’s future, and therefore we focus on creating a nurturing, safe, and engaging learning environment where children feel encouraged to explore, question, and grow.</p>\r\n\r\n<p data-end=\"1080\" data-start=\"594\" style=\"text-align: justify;\">Our primary level education emphasizes the development of essential skills such as reading, writing, communication, and basic mathematics. We follow a child-centered teaching approach that combines traditional learning with modern interactive methods to make education more enjoyable and effective. Through storytelling, activity-based learning, group tasks, visual learning tools, and creative exercises, we ensure that students learn with interest and enthusiasm rather than pressure.</p>\r\n\r\n<p data-end=\"1407\" data-start=\"1082\" style=\"text-align: justify;\">In addition to academic learning, we strongly focus on character building and life skills. Students are guided to develop discipline, respect, kindness, teamwork, and good manners from an early age. We believe that education is not only about academic achievement but also about shaping responsible and confident individuals.</p>\r\n\r\n<p data-end=\"1784\" data-start=\"1409\" style=\"text-align: justify;\">Our experienced teachers pay close attention to each student’s learning pace and provide individual support when needed. Regular assessments and feedback systems help track progress and ensure continuous improvement. We also encourage participation in extracurricular activities such as drawing, games, music, and cultural programs to support overall personality development.</p>\r\n\r\n<p data-end=\"1963\" data-start=\"1786\" style=\"text-align: justify;\">At Saptashree Academy, our Primary Education program is more than just classroom learning—it is the beginning of a lifelong journey of knowledge, creativity, and self-discovery.</p>', NULL, 2754, NULL, NULL, NULL, '/uploads/banner_image/1778829663_471785755_1643549156197681_8206102864610851947_n.jpg', NULL, NULL, NULL, NULL, 'primery-level', NULL, '1', '0', NULL, NULL, NULL, '2026-04-20 11:12:47', '2026-05-15 07:21:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `navigations` (`id`, `nav_name`, `alias`, `caption`, `caption_nepali`, `nav_category`, `page_type`, `page_template`, `position`, `short_content`, `short_content_nepali`, `long_content`, `long_content_nepali`, `parent_page_id`, `icon_image`, `featured_image`, `icon_image_caption`, `banner_image`, `link`, `main_attachment`, `attachment`, `page_title`, `page_keyword`, `page_description`, `page_status`, `nav_status`, `extra_one`, `extra_two`, `extra_three`, `created_at`, `updated_at`, `span`, `fb_link`, `insta_link`, `link_link`, `twit_link`) VALUES
(3062, 'secondary-level', 'secondarylevel', 'Secondary Level', NULL, 'Main', 'Normal', NULL, 2, NULL, NULL, '<h1 data-end=\"2016\" data-section-id=\"1dy8nbg\" data-start=\"1970\" style=\"text-align: justify;\">📚 Secondary Education at Saptashree Academy</h1>\r\n\r\n<p data-end=\"2359\" data-start=\"2018\" style=\"text-align: justify;\">The <strong data-end=\"2089\" data-start=\"2022\">Secondary Education program at Saptashree Academy, Damak, Jhapa</strong> is designed to prepare students for academic excellence, higher education, and future career opportunities. At this stage, we focus on strengthening subject knowledge, enhancing critical thinking abilities, and developing practical understanding of real-world concepts.</p>\r\n\r\n<p data-end=\"2698\" data-start=\"2361\" style=\"text-align: justify;\">Our secondary level curriculum is structured to provide in-depth learning across major academic subjects, ensuring that students gain strong conceptual clarity and analytical skills. We encourage students to move beyond memorization and develop the ability to understand, analyze, and apply knowledge effectively in different situations.</p>\r\n\r\n<p data-end=\"3100\" data-start=\"2700\" style=\"text-align: justify;\">We integrate modern teaching methodologies, including digital learning tools, presentations, project-based learning, and interactive classroom discussions. This helps students become more engaged and improves their ability to think independently and creatively. Our teachers act as mentors, guiding students not only academically but also personally, helping them build confidence and responsibility.</p>\r\n\r\n<p data-end=\"3544\" data-start=\"3102\" style=\"text-align: justify;\">Along with academics, we place strong emphasis on discipline, leadership development, and moral values. Students are encouraged to participate in debates, group discussions, presentations, science exhibitions, and various co-curricular activities that enhance their communication and leadership skills. We also provide continuous assessments, examinations, and feedback systems to monitor academic progress and identify areas for improvement.</p>\r\n\r\n<p data-end=\"3785\" data-start=\"3546\" style=\"text-align: justify;\">Career guidance and counseling are also an important part of our Secondary Education program. We help students understand their strengths and interests so they can make informed decisions about their future academic and professional paths.</p>\r\n\r\n<p data-end=\"3993\" data-start=\"3787\" style=\"text-align: justify;\">At Saptashree Academy, Secondary Education is not just about passing exams—it is about preparing students to face challenges confidently, think independently, and become responsible contributors to society.</p>', NULL, 2754, NULL, NULL, NULL, '/uploads/banner_image/1778829711_472245871_1646362429249687_978251924434444700_n (1).jpg', NULL, NULL, NULL, NULL, 'secondary-level', NULL, '1', '0', NULL, NULL, NULL, '2026-04-20 11:13:10', '2026-05-15 07:21:51', NULL, NULL, NULL, NULL, NULL),
(3063, 'dasdasd', 'dasdasd', 'assdasda', NULL, 'Home', 'Normal', NULL, 1, 'dasdas', NULL, NULL, NULL, 2908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dasdasd', NULL, '1', '0', NULL, NULL, NULL, '2026-05-13 14:18:05', '2026-05-13 14:18:05', NULL, NULL, NULL, NULL, NULL),
(3064, 'social-teacher', 'socialteacher', 'Social Studies', NULL, 'Home', 'Normal', NULL, 6, NULL, NULL, NULL, NULL, 3015, NULL, NULL, NULL, '/uploads/banner_image/1778827051_1778688277_profile-1.jpg', NULL, NULL, NULL, NULL, 'social-teacher', NULL, '1', '0', NULL, NULL, NULL, '2026-05-15 06:37:31', '2026-05-15 06:37:31', NULL, NULL, NULL, NULL, NULL),
(3065, 'saptashree_blogtwo', 'saptashreeblogtwo', 'Saptashree Academy', NULL, 'Main', 'Projectdetails', NULL, 1, NULL, NULL, NULL, NULL, 2982, NULL, NULL, NULL, '/uploads/banner_image/1778866491_472245871_1646362429249687_978251924434444700_n (1).jpg', NULL, NULL, NULL, NULL, 'saptashree_blogtwo', NULL, '1', '0', NULL, NULL, NULL, '2026-05-15 17:34:51', '2026-05-15 17:34:51', NULL, NULL, NULL, NULL, NULL),
(3066, 'saptashree_bloghree', 'saptashreebloghree', 'Saptashree Academy', NULL, 'Main', 'Projectdetails', NULL, 1, NULL, NULL, NULL, NULL, 2990, NULL, NULL, NULL, '/uploads/banner_image/1778866551_471950826_1643569289529001_1028454988663916474_n.jpg', NULL, NULL, NULL, NULL, 'saptashree_bloghree', NULL, '1', '0', NULL, NULL, NULL, '2026-05-15 17:35:51', '2026-05-15 17:35:51', NULL, NULL, NULL, NULL, NULL),
(3067, 'saptashree_blogfour', 'saptashreeblogfour', 'Saptashree Academy', NULL, 'Main', 'Projectdetails', NULL, 1, NULL, NULL, NULL, NULL, 2994, NULL, NULL, NULL, '/uploads/banner_image/1778866586_471614553_1643569459528984_6732066446436980199_n.jpg', NULL, NULL, NULL, NULL, 'saptashree_blogfour', NULL, '1', '0', NULL, NULL, NULL, '2026-05-15 17:36:26', '2026-05-15 17:36:26', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `navigation_items`
--

CREATE TABLE `navigation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `navigation_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_nepali` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `content_nepali` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `extra_one` varchar(255) DEFAULT NULL,
  `extra_two` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation_items`
--

INSERT INTO `navigation_items` (`id`, `sort`, `navigation_id`, `name`, `name_nepali`, `file`, `content`, `content_nepali`, `link`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(19, 1, 2322, NULL, NULL, '1658466642_thumb_fodefeen1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:42', '2022-07-22 15:58:47'),
(20, 1, 2322, NULL, NULL, '1658466658_thumb_22.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:58', '2022-07-22 15:58:47'),
(21, 1, 2322, NULL, NULL, '1658466669_thumb_20.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:09', '2022-07-22 15:58:47'),
(22, 1, 2322, NULL, NULL, '1658466678_thumb_19.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:18', '2022-07-22 15:58:47'),
(23, 1, 2322, NULL, NULL, '1658466688_thumb_17.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:28', '2022-07-22 15:58:47'),
(24, 1, 2322, NULL, NULL, '1658466697_thumb_16.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:37', '2022-07-22 15:58:47'),
(25, 1, 2445, NULL, NULL, NULL, NULL, NULL, 'https://youtu.be/syKIp6HXf2Y', NULL, NULL, '2022-09-11 22:19:26', '2022-09-11 22:19:26'),
(26, 1, 2445, NULL, NULL, NULL, NULL, NULL, 'https://youtu.be/syKIp6HXf2Y', NULL, NULL, '2022-09-11 22:19:26', '2022-09-11 22:19:26'),
(45, 1, 2457, NULL, NULL, '1663921747_gallery-pic.png', NULL, NULL, NULL, NULL, NULL, '2022-09-13 21:00:14', '2022-09-23 19:14:07'),
(59, 1, 2464, NULL, NULL, '1663998841_2-1.png', NULL, NULL, NULL, NULL, NULL, '2022-09-14 22:23:28', '2022-09-24 16:39:01'),
(60, 2, 2464, NULL, NULL, '1663998858_Ijajat-Patra1-copy-Copy.jpg', NULL, NULL, NULL, NULL, NULL, '2022-09-14 22:23:28', '2022-09-24 16:39:18'),
(61, 3, 2464, NULL, NULL, '1663998876_renewed-License.jpeg', NULL, NULL, NULL, NULL, NULL, '2022-09-14 22:23:28', '2022-09-24 16:39:36'),
(62, 1, 2465, NULL, NULL, '1663999042_organization-chart-employment-link.png', NULL, NULL, NULL, NULL, NULL, '2022-09-14 22:25:18', '2022-10-28 17:22:33'),
(63, 1, 2457, NULL, NULL, '1663921783_gallery-pic-1.png', NULL, NULL, NULL, NULL, NULL, '2022-09-23 19:14:43', '2022-09-23 19:14:43'),
(64, 2, 2457, NULL, NULL, '1663921783_gallery-pic-3.png', NULL, NULL, NULL, NULL, NULL, '2022-09-23 19:14:43', '2022-09-23 19:14:43'),
(65, 3, 2457, NULL, NULL, '1663921783_gallery-pic-4.png', NULL, NULL, NULL, NULL, NULL, '2022-09-23 19:14:43', '2022-09-23 19:14:43'),
(66, 1, 2446, NULL, NULL, '1670945328_Economy-1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-09-23 19:15:46', '2022-12-13 15:30:15'),
(74, 1, 2462, NULL, NULL, '1670944478_legal-document-1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:34:32', '2022-12-16 20:07:30'),
(75, 2, 2462, NULL, NULL, '1670944487_legal-document-3.jpg', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:34:32', '2022-12-16 20:07:30'),
(76, 3, 2462, NULL, NULL, '1670944510_legal-document-2.jpg', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:34:32', '2022-12-16 20:07:30'),
(78, 1, 2463, NULL, NULL, '1663998773_AL-Sary-National-Indoor-Cleaner.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(79, 2, 2463, NULL, NULL, '1663998773_Al-Waha-Farm-Kuwait.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(80, 3, 2463, NULL, NULL, '1663998773_BYSM-Electromechinical-Demand-Qatar.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(81, 4, 2463, NULL, NULL, '1663998773_Kuwait-Waste-Collection-Cleaner.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(82, 5, 2463, NULL, NULL, '1663998773_kuwat-costacoffee.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(83, 6, 2463, NULL, NULL, '1663998773_SP-SP-International-Electro-Mechanical-Works-Demand.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(85, 2, 2446, NULL, NULL, '1670945349_legal-document-3.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-13 15:29:09', '2022-12-13 15:30:15'),
(86, 3, 2446, NULL, NULL, '1670945349_legal-document-2.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-13 15:29:09', '2022-12-13 15:30:15'),
(87, 1, 2517, NULL, NULL, '1671354038_legal-document-2.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-18 20:45:38', '2022-12-18 20:45:38'),
(88, 2, 2517, NULL, NULL, '1671354038_legal-document-1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-18 20:45:38', '2022-12-18 20:45:38'),
(89, 3, 2517, NULL, NULL, '1671354038_legal-document-3.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-18 20:45:38', '2022-12-18 20:45:38'),
(90, 1, 2517, NULL, NULL, '1671432110_license up to 2080.jpeg', NULL, NULL, NULL, NULL, NULL, '2022-12-19 18:26:50', '2022-12-19 18:26:50'),
(91, 1, 2526, NULL, NULL, '1674798581_1671354038_legal-document-2.jpg', NULL, NULL, NULL, NULL, NULL, '2023-01-27 17:34:41', '2023-01-27 17:34:41'),
(92, 2, 2526, NULL, NULL, '1674798581_1671432110_license up to 2080.jpeg', NULL, NULL, NULL, NULL, NULL, '2023-01-27 17:34:41', '2023-01-27 17:34:41'),
(93, 3, 2526, NULL, NULL, '1674798581_1671354038_legal-document-1q.jpg', NULL, NULL, NULL, NULL, NULL, '2023-01-27 17:34:41', '2023-01-27 17:34:41'),
(94, 4, 2526, NULL, NULL, '1674798581_1671354038_legal-document-3.jpg', NULL, NULL, NULL, NULL, NULL, '2023-01-27 17:34:41', '2023-01-27 17:34:41'),
(96, 1, 2533, '1', NULL, '1678005806_reg.jpg', 'Okay', NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-03-05 20:32:40'),
(97, 2, 2533, '2', NULL, '1678005850_pan.jpg', 'no', NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-03-05 20:32:40'),
(98, 3, 2533, '3', NULL, '1678005976_reg back.jpg', NULL, NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-03-05 20:32:40'),
(99, 4, 2533, '4', NULL, '1678005988_tax clear.jpg', NULL, NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-03-05 20:32:40'),
(100, 5, 2533, '5', NULL, '1678005941_viber_image_2023-03-05_12-31-52-213.jpg', NULL, NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-03-05 20:32:40'),
(109, 1, 2560, NULL, NULL, '1678006285_viber_image_2023-03-05_12-31-52-140.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(110, 2, 2560, NULL, NULL, '1678006285_viber_image_2023-03-05_12-31-51-997.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(111, 3, 2560, NULL, NULL, '1678006285_viber_image_2023-03-05_12-31-51-879.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(112, 4, 2560, NULL, NULL, '1678006285_viber_image_2023-03-05_12-31-51-791.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(113, 5, 2560, NULL, NULL, '1678006285_viber_image_2023-03-05_12-31-51-540.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(114, 6, 2560, NULL, NULL, '1678006285_viber_image_2023-03-05_12-31-51-420.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(115, 7, 2560, NULL, NULL, '1678006285_viber_image_2023-03-05_12-31-51-732.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(116, 8, 2560, NULL, NULL, '1678006285_70707277_188570515511945_1936225004257542144_n.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(117, 9, 2560, NULL, NULL, '1678006285_13030_934315036600176_9036367205026918193_n.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(118, 10, 2560, NULL, NULL, '1678006285_10648911_10203133191384776_4783782128477091181_o.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(119, 11, 2560, NULL, NULL, '1678006285_10658656_10203133229225722_3865868328209446927_o.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(120, 12, 2560, NULL, NULL, '1678006285_10917875_892243007474046_3583310694074702412_n.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(121, 13, 2560, NULL, NULL, '1678006285_13030_934315036600176_9036367205026918193_n.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(122, 14, 2560, NULL, NULL, '1678006285_21586801_1660344630663876_6575765492879266436_o.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:36:25', '2023-03-05 20:36:25'),
(123, 1, 2560, NULL, NULL, '1678006398_69463501_185304232505240_6865738709963112448_n.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:38:18', '2023-03-05 20:38:18'),
(124, 2, 2560, NULL, NULL, '1678006398_69537910_185304465838550_6890267783586643968_n.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:38:18', '2023-03-05 20:38:18'),
(125, 3, 2560, NULL, NULL, '1678006398_69782615_185304359171894_5697479018148790272_n.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:38:18', '2023-03-05 20:38:18'),
(126, 4, 2560, NULL, NULL, '1678006398_viber_image_2023-03-05_12-31-51-256.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:38:18', '2023-03-05 20:38:18'),
(127, 1, 2544, NULL, NULL, '1678007266_reg.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:52:46', '2023-03-05 20:52:46'),
(128, 2, 2544, NULL, NULL, '1678007266_pan.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:52:46', '2023-03-05 20:52:46'),
(129, 3, 2544, NULL, NULL, '1678007266_reg back.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:52:46', '2023-03-05 20:52:46'),
(130, 4, 2544, NULL, NULL, '1678007266_tax clear.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:52:46', '2023-03-05 20:52:46'),
(131, 5, 2544, NULL, NULL, '1678007266_CCI05032023_0010.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:52:46', '2023-03-05 20:52:46'),
(132, 6, 2544, NULL, NULL, '1678007266_viber_image_2023-03-05_12-31-52-213.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-05 20:52:46', '2023-03-05 20:52:46'),
(133, 1, 2560, NULL, NULL, '1678273816_unnamed (1).jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-08 22:55:16', '2023-03-08 22:55:16'),
(134, 2, 2560, NULL, NULL, '1678273816_unnamed.jpg', NULL, NULL, NULL, NULL, NULL, '2023-03-08 22:55:16', '2023-03-08 22:55:16'),
(135, 1, 2593, NULL, NULL, '1680517198_about.jpg', NULL, NULL, NULL, NULL, NULL, '2023-04-03 10:19:58', '2023-04-03 10:19:58'),
(136, 1, 2595, NULL, NULL, '1680772587_about (1).jpg', NULL, NULL, NULL, NULL, NULL, '2023-04-06 09:16:27', '2023-04-10 05:44:35'),
(137, 1, 2597, NULL, NULL, '1680851034_testimonial-2.jpg', NULL, NULL, NULL, NULL, NULL, '2023-04-07 07:03:54', '2024-04-09 15:48:57'),
(138, 1, 2598, NULL, NULL, '1681105527_15.jpg', NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:45:27', '2023-04-10 05:45:27'),
(139, 1, 2599, NULL, NULL, '1681105622_15.jpg', NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:47:02', '2023-04-10 05:47:02'),
(140, 1, 2593, NULL, NULL, '1681112675_15.jpg', NULL, NULL, NULL, NULL, NULL, '2023-04-10 07:44:35', '2023-04-10 07:44:35'),
(141, 1, 2598, NULL, NULL, '1682839476_pexels-photo-5895248.jpeg', NULL, NULL, NULL, NULL, NULL, '2023-04-30 07:24:36', '2023-04-30 07:24:36'),
(142, 2, 2598, NULL, NULL, '1682839477_Chillout Mashup Music Channel YouTube Thumbnail (5).jpg', NULL, NULL, NULL, NULL, NULL, '2023-04-30 07:24:37', '2023-04-30 07:24:37'),
(143, 3, 2598, NULL, NULL, '1682839477_Chillout Mashup Music Channel YouTube Thumbnail (6).jpg', NULL, NULL, NULL, NULL, NULL, '2023-04-30 07:24:37', '2023-04-30 07:24:37'),
(148, 1, 2651, NULL, NULL, '1686974097_bg-4.jpg', NULL, NULL, NULL, NULL, NULL, '2023-06-17 03:54:57', '2023-06-17 03:55:21'),
(149, 1, 2652, NULL, NULL, '1712980445_australia.jpg', NULL, NULL, NULL, NULL, NULL, '2023-06-17 05:50:33', '2024-04-19 10:21:54'),
(150, 1, 2778, '1', NULL, '1713349425_img1.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-10 11:34:12', '2024-04-17 10:23:45'),
(152, 1, 2778, '3', NULL, '1713349449_img2.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-10 11:35:09', '2024-04-17 10:24:09'),
(153, 1, 2778, '4', NULL, '1713349461_img3.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-10 11:35:21', '2024-04-17 10:24:21'),
(154, 1, 2778, '5', NULL, '1713349505_img4.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-10 11:35:51', '2024-04-17 10:25:05'),
(162, 1, 2804, NULL, NULL, '1712826707_australia.jpg', NULL, NULL, NULL, NULL, NULL, '2024-04-11 09:11:47', '2024-04-11 09:11:47'),
(163, 2, 2804, NULL, NULL, '1712826707_australia.jpg', NULL, NULL, NULL, NULL, NULL, '2024-04-11 09:11:47', '2024-04-11 09:11:47'),
(164, 1, 2652, NULL, NULL, '1712981252_Japan-2107x1406.jpg', NULL, NULL, NULL, NULL, NULL, '2024-04-13 04:07:32', '2024-04-19 10:21:54'),
(165, 2, 2652, NULL, NULL, '1712981252_image@2x.png', NULL, NULL, NULL, NULL, NULL, '2024-04-13 04:07:32', '2024-04-19 10:21:54'),
(166, 3, 2652, NULL, NULL, '1712981252_unsplashtuv1rzqpuy-5@2x.png', NULL, NULL, NULL, NULL, NULL, '2024-04-13 04:07:32', '2024-04-19 10:21:54'),
(167, 1, 2819, NULL, NULL, '1713270329_img1.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-16 12:25:29', '2024-04-16 12:25:29'),
(168, 2, 2819, NULL, NULL, '1713270329_img2.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-16 12:25:29', '2024-04-16 12:25:29'),
(169, 3, 2819, NULL, NULL, '1713270329_img4.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-16 12:25:29', '2024-04-16 12:25:29'),
(170, 4, 2819, NULL, NULL, '1713270329_img4.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-16 12:25:29', '2024-04-16 12:25:29'),
(171, 1, 2829, NULL, NULL, '1713272229_img1.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-16 12:57:09', '2024-04-16 12:57:09'),
(172, 2, 2829, NULL, NULL, '1713272229_img2.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-16 12:57:09', '2024-04-16 12:57:09'),
(173, 3, 2829, NULL, NULL, '1713272229_img3.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-16 12:57:09', '2024-04-16 12:57:09'),
(174, 4, 2829, NULL, NULL, '1713272229_img4.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-16 12:57:09', '2024-04-16 12:57:09'),
(176, 1, 2652, NULL, NULL, '1713341057_about.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-17 08:04:17', '2024-04-19 10:21:54'),
(177, 1, 2870, NULL, NULL, '1713344607_img1.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:03:27', '2024-04-17 09:03:27'),
(178, 2, 2870, NULL, NULL, '1713344607_img2.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:03:27', '2024-04-17 09:03:27'),
(179, 3, 2870, NULL, NULL, '1713344607_img3.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:03:27', '2024-04-17 09:03:27'),
(180, 4, 2870, NULL, NULL, '1713344607_img4.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:03:27', '2024-04-17 09:03:27'),
(181, 5, 2870, NULL, NULL, '1713344607_img5.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:03:27', '2024-04-17 09:03:27'),
(182, 1, 2865, NULL, NULL, '1717086248_Young state.png', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:04:48', '2024-05-30 22:09:08'),
(183, 2, 2865, NULL, NULL, '1717086259_Webster.png', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:04:48', '2024-05-30 22:09:19'),
(184, 3, 2865, NULL, NULL, '1756099541_download (2).png', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:04:48', '2025-08-25 05:25:41'),
(185, 4, 2865, NULL, NULL, '1713344688_img4.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:04:48', '2024-04-17 09:04:48'),
(186, 5, 2865, NULL, NULL, '1756099491_images.jpeg', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:04:48', '2025-08-25 05:24:51'),
(187, 6, 2865, NULL, NULL, '1717086306_north texas.svg', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:04:48', '2024-05-30 22:10:06'),
(188, 7, 2865, NULL, NULL, '1717086313_amcommercelogo.svg', NULL, NULL, NULL, NULL, NULL, '2024-04-17 09:04:48', '2024-05-30 22:10:13'),
(189, 1, 2784, NULL, NULL, '1713443689_adelphi-university-logo.jpg', NULL, NULL, NULL, NULL, NULL, '2024-04-18 12:34:49', '2024-04-18 12:34:49'),
(190, 2, 2784, NULL, NULL, '1713443689_img2.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-18 12:34:49', '2024-04-18 12:34:49'),
(191, 3, 2784, NULL, NULL, '1713443689_img3.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-18 12:34:49', '2024-04-18 12:34:49'),
(192, 4, 2784, NULL, NULL, '1713443689_img4.PNG', NULL, NULL, NULL, NULL, NULL, '2024-04-18 12:34:50', '2024-04-18 12:34:50'),
(197, 1, 3003, NULL, NULL, '1780037980_476403998_1167472705382925_6248612204647507135_n.jpg', NULL, NULL, NULL, NULL, NULL, '2025-08-19 10:23:03', '2026-05-29 06:59:40'),
(198, 2, 3003, NULL, NULL, '1780037992_mission (2).jpg', NULL, NULL, NULL, NULL, NULL, '2025-08-19 10:23:03', '2026-05-29 06:59:52'),
(199, 1, 3003, NULL, NULL, '1780038005_nackgroundone.jpg', NULL, NULL, NULL, NULL, NULL, '2025-08-21 15:35:15', '2026-05-29 07:00:05'),
(204, 1, 2802, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/embed/mqgfONwzNNA?si=s_5Rta_GpFzePvyI', NULL, NULL, '2025-08-24 09:19:38', '2026-05-15 15:13:00'),
(205, 2, 2802, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/embed/mqgfONwzNNA?si=s_5Rta_GpFzePvyI', NULL, NULL, '2025-08-24 09:19:38', '2026-05-15 15:13:09'),
(206, 3, 2802, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/embed/mqgfONwzNNA?si=s_5Rta_GpFzePvyI', NULL, NULL, '2025-08-24 09:19:38', '2026-05-15 15:13:14'),
(207, 1, 2802, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/embed/mqgfONwzNNA?si=s_5Rta_GpFzePvyI', NULL, NULL, '2025-08-24 09:21:12', '2026-05-15 15:13:19'),
(208, 1, 2778, NULL, NULL, '1756101529_download (2).png', NULL, NULL, NULL, NULL, NULL, '2025-08-25 05:58:49', '2025-08-25 05:58:49'),
(209, 1, 3037, NULL, NULL, '1756102254_download (6).png', NULL, NULL, NULL, NULL, NULL, '2025-08-25 06:10:54', '2025-08-25 06:10:54'),
(210, 2, 3037, NULL, NULL, '1756102254_download (5).png', NULL, NULL, NULL, NULL, NULL, '2025-08-25 06:10:54', '2025-08-25 06:10:54'),
(211, 3, 3037, NULL, NULL, '1756102254_images (1).jpeg', NULL, NULL, NULL, NULL, NULL, '2025-08-25 06:10:54', '2025-08-25 06:10:54'),
(212, 4, 3037, NULL, NULL, '1756102254_download (4).png', NULL, NULL, NULL, NULL, NULL, '2025-08-25 06:10:54', '2025-08-25 06:10:54'),
(213, 5, 3037, NULL, NULL, '1756102254_download (3).png', NULL, NULL, NULL, NULL, NULL, '2025-08-25 06:10:54', '2025-08-25 06:10:54'),
(214, 1, 3003, NULL, NULL, '1780038021_472314948_1646362595916337_5823773374377675994_n.jpg', NULL, NULL, NULL, NULL, NULL, '2025-08-26 15:22:54', '2026-05-29 07:00:21'),
(247, 1, 3007, NULL, NULL, '1776399680_476833482_1170115058452023_5870302479151174723_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:21:20', '2026-05-13 14:42:48'),
(248, 2, 3007, NULL, NULL, '1776399680_476814222_1170115078452021_532026761372354373_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:21:20', '2026-05-13 14:42:48'),
(249, 3, 3007, NULL, NULL, '1776399680_476835681_1170115031785359_3861807144375118505_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:21:20', '2026-05-13 14:42:48'),
(250, 4, 3007, NULL, NULL, '1776399680_476878874_1170115131785349_5509550004158113498_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:21:20', '2026-05-13 14:42:48'),
(251, 5, 3007, NULL, NULL, '1776399680_476815617_1170115148452014_1098865089398816409_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:21:20', '2026-05-13 14:42:48'),
(252, 6, 3007, NULL, NULL, '1776399680_476960682_1170115038452025_7808959768071560371_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:21:20', '2026-05-13 14:42:48'),
(253, 7, 3007, NULL, NULL, '1776399680_476833494_1170115105118685_6129385219976951503_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:21:20', '2026-05-13 14:42:48'),
(254, 8, 3007, NULL, NULL, '1776399680_476819035_1170115065118689_2695553740563949914_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:21:20', '2026-05-13 14:42:48'),
(255, 9, 3007, NULL, NULL, '1776399680_476878874_1170115131785349_5509550004158113498_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:21:20', '2026-05-13 14:42:48'),
(256, 10, 3007, NULL, NULL, '1776399681_476819035_1170115065118689_2695553740563949914_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:21:21', '2026-05-13 14:42:48'),
(257, 1, 3008, NULL, NULL, '1776399913_472311496_1646367892582474_3712842375720576595_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(258, 2, 3008, NULL, NULL, '1776399913_472305934_1646367929249137_3344039928113731446_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(259, 3, 3008, NULL, NULL, '1776399913_472311428_1646367669249163_4005925313642032654_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(260, 4, 3008, NULL, NULL, '1776399913_472258249_1646367939249136_666621871860826308_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(261, 5, 3008, NULL, NULL, '1776399913_472253914_1646367685915828_3539448245238666524_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(262, 6, 3008, NULL, NULL, '1776399913_472254941_1646367955915801_4923018866243821290_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(263, 7, 3008, NULL, NULL, '1776399913_472260295_1646367972582466_4230248811323421949_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(264, 8, 3008, NULL, NULL, '1776399913_472234291_1646367609249169_5496353021406830123_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(265, 9, 3008, NULL, NULL, '1776399913_472243206_1646367949249135_3432252116745076607_n (1).jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(266, 10, 3008, NULL, NULL, '1776399913_472250111_1646367555915841_5681945471467456610_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(267, 11, 3008, NULL, NULL, '1776399913_472140371_1646367865915810_81155205371776146_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-04-17 04:25:13', '2026-05-15 15:02:50'),
(268, 1, 3006, NULL, NULL, '1780038363_477475939_1170780478385481_6414829435707352510_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:06:03', '2026-05-29 07:06:03'),
(269, 2, 3006, NULL, NULL, '1780038363_477992607_1170780928385436_8804331057536911457_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:06:03', '2026-05-29 07:06:03'),
(270, 3, 3006, NULL, NULL, '1780038363_476984914_1170780675052128_6118762761900378497_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:06:03', '2026-05-29 07:06:03'),
(271, 4, 3006, NULL, NULL, '1780038363_478195177_1170780758385453_3015258017917530424_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:06:03', '2026-05-29 07:06:03'),
(272, 5, 3006, NULL, NULL, '1780038363_471950826_1643569289529001_1028454988663916474_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:06:03', '2026-05-29 07:06:03'),
(273, 6, 3006, NULL, NULL, '1780038363_471614553_1643569459528984_6732066446436980199_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:06:03', '2026-05-29 07:06:03'),
(274, 7, 3006, NULL, NULL, '1780038363_476663935_1170780895052106_2307376638347598994_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:06:03', '2026-05-29 07:06:03'),
(275, 8, 3006, NULL, NULL, '1780038363_476840429_1170780851718777_3724491588949564963_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:06:03', '2026-05-29 07:06:03'),
(276, 9, 3006, NULL, NULL, '1780038363_477394268_1170780488385480_3370189372404125291_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:06:03', '2026-05-29 07:06:03'),
(277, 10, 3006, NULL, NULL, '1780038363_476407029_1170780485052147_7735918385118885705_n.jpg', NULL, NULL, NULL, NULL, NULL, '2026-05-29 07:06:03', '2026-05-29 07:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_video_items`
--

CREATE TABLE `navigation_video_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_nepali` varchar(255) DEFAULT NULL,
  `vlink` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `content_nepali` varchar(255) DEFAULT NULL,
  `extra_one` varchar(255) DEFAULT NULL,
  `extra_two` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_types`
--

CREATE TABLE `page_types` (
  `sort` int(10) UNSIGNED NOT NULL,
  `page_type_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_types`
--

INSERT INTO `page_types` (`sort`, `page_type_title`, `created_at`, `updated_at`) VALUES
(1, 'Job', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(2, 'Group', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(3, 'Photo Gallery', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(11, 'Normal', NULL, NULL),
(12, 'Group Jobcategory', NULL, NULL),
(13, 'Group Jobs', NULL, NULL),
(14, 'Video Gallery\r\n', NULL, NULL),
(15, 'Team', NULL, NULL),
(16, 'Group Project', NULL, NULL),
(17, 'Projectdetails', NULL, NULL),
(18, 'Message', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_items`
--
ALTER TABLE `navigation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_types`
--
ALTER TABLE `page_types`
  ADD PRIMARY KEY (`sort`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3068;

--
-- AUTO_INCREMENT for table `navigation_items`
--
ALTER TABLE `navigation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_types`
--
ALTER TABLE `page_types`
  MODIFY `sort` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
