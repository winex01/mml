-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2019 at 04:41 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mml`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_permits`
--

CREATE TABLE `business_permits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_permits`
--

INSERT INTO `business_permits` (`id`, `file`, `created_at`, `updated_at`) VALUES
(2, '[{\"download_link\":\"business-permits\\\\December2019\\\\L9ZEHgqKKYgj9HqxmUfP.png\",\"original_name\":\"Basic Org Chart.png\"}]', '2019-12-07 19:59:20', '2019-12-07 19:59:20'),
(3, '[{\"download_link\":\"business-permits\\\\December2019\\\\cg5Ydzh1xvTjdv9qZed2.pdf\",\"original_name\":\"DTI,Business Permit,Pcab.pdf\"}]', '2019-12-07 20:20:24', '2019-12-07 20:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-12-07 02:15:27', '2019-12-07 02:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `location`, `task`, `link`, `created_at`, `updated_at`) VALUES
(1, 'DTSI GROUP SOLUTION', 'CEBUCITY', 'CIVIL WORK,FURNITURE,AUXILIARY', 'https://www.dtsigroup.com/', '2019-12-07 20:54:31', '2019-12-07 20:54:31'),
(2, 'MUNICIPALITY OF ALEGRIA', 'COMMERCIAL MARKET', 'Construction of 2 storey', 'https://en.wikipedia.org/wiki/Alegria,_Surigao_del_Norte', '2019-12-07 20:55:00', '2019-12-07 20:55:00'),
(3, 'FORMOBILT MAZARE COVE', NULL, 'Construction of 2 Storey House', 'http://www.cebuhomeliving.com/mazari-cove/', '2019-12-07 20:55:41', '2019-12-07 20:55:41'),
(4, 'MINOSA RESIDENCE', 'BATO LEYTE', 'Construction of 2 storey House', NULL, '2019-12-07 20:56:40', '2019-12-07 20:56:40'),
(5, 'VIERNES RESIDENCE', 'TALISAY CITY,CEBU', 'Painting Exterior', NULL, '2019-12-07 20:57:27', '2019-12-07 20:57:27'),
(6, 'THE CORITHIAN RESIDENCES', 'CEBU, CITY', 'Architectural,Plumbing Works', NULL, '2019-12-07 20:58:12', '2019-12-07 20:58:12'),
(7, 'SAN MARINO RESIDENCES', 'CEBU, CITY', 'Architectural Work', NULL, '2019-12-07 20:58:59', '2019-12-07 20:58:59'),
(8, 'RNU LUNA', 'ORMOC, CITY', 'Sanblasting Work and Painting', NULL, '2019-12-07 21:00:09', '2019-12-07 21:00:09'),
(9, 'PASAR LIDE', 'ISABEL, LEYTE', 'Sandblasting Work and Painting,  Laddle Repair', 'https://pasar.com.ph/', '2019-12-07 21:01:23', '2019-12-07 21:01:23'),
(10, 'PHILPHOS LIDE', 'ISABEL, LEYTE', 'Sandblasting Work &amp; Painting', NULL, '2019-12-07 21:02:15', '2019-12-07 21:02:15'),
(11, 'SMP ENGINEERING-BILWANG', 'ISABEL, LEYTE', 'Sandblasting Work &amp; Painting', NULL, '2019-12-07 21:02:41', '2019-12-07 21:02:41'),
(12, 'FIRST BALFOUR-UPPER MAHIAO', 'KANANGA, LEYTE', 'Sandblasting Work &amp; Painting', NULL, '2019-12-07 21:03:08', '2019-12-07 21:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 3),
(59, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(65, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 9, 'file', 'file', 'File', 1, 1, 1, 1, 1, 1, '{}', 2),
(67, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 3),
(68, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(69, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 10, 'location', 'text', 'Location', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 10, 'task', 'text', 'Task', 0, 1, 1, 1, 1, 1, '{}', 4),
(73, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(74, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(75, 10, 'link', 'text', 'Website Link', 0, 1, 1, 1, 1, 1, '{}', 5),
(87, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 13, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 2),
(89, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 3),
(90, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(91, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 14, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(93, 14, 'cover', 'image', 'Cover Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 4),
(94, 14, 'images', 'multiple_images', 'Multiple Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 5),
(95, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(96, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(97, 14, 'portfolio_category_id', 'text', 'Portfolio Category Id', 1, 0, 0, 1, 1, 1, '{}', 2),
(98, 14, 'portfolio_belongsto_portfolio_category_relationship', 'relationship', 'Portfolio Category', 0, 1, 1, 1, 1, 1, '{\"model\":\"\\\\App\\\\PortfolioCategory\",\"table\":\"portfolio_categories\",\"type\":\"belongsTo\",\"column\":\"portfolio_category_id\",\"key\":\"id\",\"label\":\"description\",\"pivot_table\":\"business_permits\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(103, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(104, 16, 'email', 'text', 'Email', 1, 1, 1, 0, 0, 0, '{}', 2),
(105, 16, 'created_at', 'timestamp', 'Subscribed Date', 0, 1, 1, 1, 0, 0, '{}', 3),
(106, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-12-07 02:15:14', '2019-12-07 02:15:14'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-07 02:15:14', '2019-12-07 02:15:14'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-12-07 02:15:14', '2019-12-07 02:15:14'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(7, 'services', 'services', 'Service', 'Services', 'voyager-list', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-07 03:23:53', '2019-12-07 03:23:53'),
(9, 'business_permits', 'business-permits', 'Business Permit', 'Business Permits', 'voyager-window-list', 'App\\BusinessPermit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-07 19:17:27', '2019-12-07 19:17:27'),
(10, 'clients', 'clients', 'Client', 'Clients', 'voyager-diamond', 'App\\Client', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-07 20:46:56', '2019-12-07 21:03:56'),
(13, 'portfolio_categories', 'portfolio-categories', 'Portfolio Category', 'Portfolio Categories', 'voyager-world', 'App\\PortfolioCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-08 02:22:52', '2019-12-08 02:22:52'),
(14, 'portfolios', 'portfolios', 'Portfolio', 'Portfolios', 'voyager-photos', 'App\\Portfolio', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-08 02:24:41', '2019-12-08 02:27:24'),
(16, 'newsletters', 'newsletters', 'Newsletter', 'Newsletters', 'voyager-smile', 'App\\Newsletter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-08 07:34:30', '2019-12-08 07:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\ContactUs\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:25:\\\"winnie131212592@gmail.com\\\";}}s:12:\\\"notification\\\";O:27:\\\"App\\\\Notifications\\\\ContactUs\\\":12:{s:7:\\\"\\u0000*\\u0000name\\\";s:16:\\\"Winnie A. Damayo\\\";s:8:\\\"\\u0000*\\u0000email\\\";s:25:\\\"winnie131212592@gmail.com\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:23:\\\"MML Test email message.\\\";s:2:\\\"id\\\";s:36:\\\"a1a58eb9-a385-4c05-82d2-4210d5d6bb53\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"mml7777website@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k24sm23373870pfk.63 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k24sm23373870pfk.63 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k24sm23373870pfk.63 - gsmtp\r\n\". in C:\\laragon\\www\\mml\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\laragon\\www\\mml\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\laragon\\www\\mml\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\laragon\\www\\mml\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(486): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(65): Illuminate\\Mail\\Mailer->send(Object(Illuminate\\Support\\HtmlString), Array, Object(Closure))\n#6 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(146): Illuminate\\Notifications\\Channels\\MailChannel->send(Object(Illuminate\\Notifications\\AnonymousNotifiable), Object(App\\Notifications\\ContactUs))\n#7 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(105): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(Object(Illuminate\\Notifications\\AnonymousNotifiable), \'b47f7556-d3cd-4...\', Object(App\\Notifications\\ContactUs), \'mail\')\n#8 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(107): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#10 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow(Array, Object(App\\Notifications\\ContactUs), Array)\n#11 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\SendQueuedNotifications.php(74): Illuminate\\Notifications\\ChannelManager->sendNow(Object(Illuminate\\Notifications\\AnonymousNotifiable), Object(App\\Notifications\\ContactUs), Array)\n#12 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->handle(Object(Illuminate\\Notifications\\ChannelManager))\n#13 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#14 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#20 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#21 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Notifications\\SendQueuedNotifications), false)\n#23 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#24 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#25 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#27 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(353): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(299): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#33 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#35 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(202): Illuminate\\Container\\Container->call(Array)\n#40 C:\\laragon\\www\\mml\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(189): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\mml\\vendor\\symfony\\console\\Application.php(1011): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\laragon\\www\\mml\\vendor\\symfony\\console\\Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\mml\\vendor\\symfony\\console\\Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\mml\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2019-12-08 06:04:27'),
(2, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\ContactUs\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:25:\\\"winnie131212592@gmail.com\\\";}}s:12:\\\"notification\\\";O:27:\\\"App\\\\Notifications\\\\ContactUs\\\":12:{s:7:\\\"\\u0000*\\u0000name\\\";s:16:\\\"Winnie A. Damayo\\\";s:8:\\\"\\u0000*\\u0000email\\\";s:25:\\\"winnie131212592@gmail.com\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:23:\\\"MML Test email message.\\\";s:2:\\\"id\\\";s:36:\\\"82a0a87c-4abc-46ed-a589-d50831ebfaba\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"mml7777website@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials f13sm23739571pfa.57 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials f13sm23739571pfa.57 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials f13sm23739571pfa.57 - gsmtp\r\n\". in C:\\laragon\\www\\mml\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\laragon\\www\\mml\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\laragon\\www\\mml\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\laragon\\www\\mml\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(486): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(65): Illuminate\\Mail\\Mailer->send(Object(Illuminate\\Support\\HtmlString), Array, Object(Closure))\n#6 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(146): Illuminate\\Notifications\\Channels\\MailChannel->send(Object(Illuminate\\Notifications\\AnonymousNotifiable), Object(App\\Notifications\\ContactUs))\n#7 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(105): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(Object(Illuminate\\Notifications\\AnonymousNotifiable), \'6d029d33-897a-4...\', Object(App\\Notifications\\ContactUs), \'mail\')\n#8 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(107): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#10 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow(Array, Object(App\\Notifications\\ContactUs), Array)\n#11 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\SendQueuedNotifications.php(74): Illuminate\\Notifications\\ChannelManager->sendNow(Object(Illuminate\\Notifications\\AnonymousNotifiable), Object(App\\Notifications\\ContactUs), Array)\n#12 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->handle(Object(Illuminate\\Notifications\\ChannelManager))\n#13 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#14 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#20 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#21 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Notifications\\SendQueuedNotifications), false)\n#23 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#24 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#25 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#27 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(353): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(299): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#33 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#35 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(202): Illuminate\\Container\\Container->call(Array)\n#40 C:\\laragon\\www\\mml\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(189): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\mml\\vendor\\symfony\\console\\Application.php(1011): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\laragon\\www\\mml\\vendor\\symfony\\console\\Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\mml\\vendor\\symfony\\console\\Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\mml\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\mml\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2019-12-08 06:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-07 02:15:15', '2019-12-07 02:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-12-07 02:15:15', '2019-12-07 02:15:15', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-12-07 02:15:15', '2019-12-07 02:15:15', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-12-07 02:15:15', '2019-12-07 02:15:15', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-12-07 02:15:15', '2019-12-07 02:15:15', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-12-07 02:15:15', '2019-12-07 02:15:15', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-12-07 02:15:15', '2019-12-07 02:15:15', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-12-07 02:15:15', '2019-12-07 02:15:15', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-12-07 02:15:15', '2019-12-07 02:15:15', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-12-07 02:15:15', '2019-12-07 02:15:15', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-12-07 02:15:15', '2019-12-07 02:15:15', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-12-07 02:15:15', '2019-12-07 02:15:15', 'voyager.hooks', NULL),
(12, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2019-12-07 02:15:27', '2019-12-07 02:15:27', 'voyager.categories.index', NULL),
(13, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-12-07 02:15:27', '2019-12-07 02:15:27', 'voyager.posts.index', NULL),
(14, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-12-07 02:15:27', '2019-12-07 02:15:27', 'voyager.pages.index', NULL),
(15, 1, 'Services', '', '_self', 'voyager-list', NULL, NULL, 15, '2019-12-07 03:23:53', '2019-12-07 03:23:53', 'voyager.services.index', NULL),
(17, 1, 'Business Permits', '', '_self', 'voyager-window-list', NULL, NULL, 16, '2019-12-07 19:17:27', '2019-12-07 19:17:27', 'voyager.business-permits.index', NULL),
(18, 1, 'Clients', '', '_self', 'voyager-diamond', NULL, NULL, 17, '2019-12-07 20:46:56', '2019-12-07 20:46:56', 'voyager.clients.index', NULL),
(21, 1, 'Portfolio Categories', '', '_self', 'voyager-world', NULL, NULL, 18, '2019-12-08 02:22:52', '2019-12-08 02:22:52', 'voyager.portfolio-categories.index', NULL),
(22, 1, 'Portfolios', '', '_self', 'voyager-photos', NULL, NULL, 19, '2019-12-08 02:24:42', '2019-12-08 02:24:42', 'voyager.portfolios.index', NULL),
(24, 1, 'Newsletters', '', '_self', 'voyager-smile', NULL, NULL, 20, '2019-12-08 07:34:30', '2019-12-08 07:34:30', 'voyager.newsletters.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(28, '2019_12_07_122034_create_services_table', 3),
(30, '2019_12_08_034935_create_business_permits_table', 4),
(34, '2019_12_08_054334_create_clients_table', 5),
(39, '2019_12_08_091520_create_portfolios_table', 6),
(40, '2019_12_08_110307_create_portfolio_categories_table', 6),
(41, '2019_12_08_110458_alter_portfolio_table', 6),
(43, '2019_12_08_144600_create_jobs_table', 7),
(44, '2019_12_08_160205_create_newsletters_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '2019-12-08 07:18:56', '2019-12-08 07:18:56'),
(3, 'winnie131212592@gmail.com', '2019-12-08 07:32:54', '2019-12-08 07:32:54'),
(4, 'john@example.com', '2019-12-08 07:35:24', '2019-12-08 07:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-12-07 02:15:27', '2019-12-07 02:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(2, 'browse_bread', NULL, '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(3, 'browse_database', NULL, '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(4, 'browse_media', NULL, '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(5, 'browse_compass', NULL, '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(6, 'browse_menus', 'menus', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(7, 'read_menus', 'menus', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(8, 'edit_menus', 'menus', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(9, 'add_menus', 'menus', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(10, 'delete_menus', 'menus', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(11, 'browse_roles', 'roles', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(12, 'read_roles', 'roles', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(13, 'edit_roles', 'roles', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(14, 'add_roles', 'roles', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(15, 'delete_roles', 'roles', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(16, 'browse_users', 'users', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(17, 'read_users', 'users', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(18, 'edit_users', 'users', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(19, 'add_users', 'users', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(20, 'delete_users', 'users', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(21, 'browse_settings', 'settings', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(22, 'read_settings', 'settings', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(23, 'edit_settings', 'settings', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(24, 'add_settings', 'settings', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(25, 'delete_settings', 'settings', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(26, 'browse_hooks', NULL, '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(27, 'browse_categories', 'categories', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(28, 'read_categories', 'categories', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(29, 'edit_categories', 'categories', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(30, 'add_categories', 'categories', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(31, 'delete_categories', 'categories', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(32, 'browse_posts', 'posts', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(33, 'read_posts', 'posts', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(34, 'edit_posts', 'posts', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(35, 'add_posts', 'posts', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(36, 'delete_posts', 'posts', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(37, 'browse_pages', 'pages', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(38, 'read_pages', 'pages', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(39, 'edit_pages', 'pages', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(40, 'add_pages', 'pages', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(41, 'delete_pages', 'pages', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(42, 'browse_services', 'services', '2019-12-07 03:23:53', '2019-12-07 03:23:53'),
(43, 'read_services', 'services', '2019-12-07 03:23:53', '2019-12-07 03:23:53'),
(44, 'edit_services', 'services', '2019-12-07 03:23:53', '2019-12-07 03:23:53'),
(45, 'add_services', 'services', '2019-12-07 03:23:53', '2019-12-07 03:23:53'),
(46, 'delete_services', 'services', '2019-12-07 03:23:53', '2019-12-07 03:23:53'),
(52, 'browse_business_permits', 'business_permits', '2019-12-07 19:17:27', '2019-12-07 19:17:27'),
(53, 'read_business_permits', 'business_permits', '2019-12-07 19:17:27', '2019-12-07 19:17:27'),
(54, 'edit_business_permits', 'business_permits', '2019-12-07 19:17:27', '2019-12-07 19:17:27'),
(55, 'add_business_permits', 'business_permits', '2019-12-07 19:17:27', '2019-12-07 19:17:27'),
(56, 'delete_business_permits', 'business_permits', '2019-12-07 19:17:27', '2019-12-07 19:17:27'),
(57, 'browse_clients', 'clients', '2019-12-07 20:46:56', '2019-12-07 20:46:56'),
(58, 'read_clients', 'clients', '2019-12-07 20:46:56', '2019-12-07 20:46:56'),
(59, 'edit_clients', 'clients', '2019-12-07 20:46:56', '2019-12-07 20:46:56'),
(60, 'add_clients', 'clients', '2019-12-07 20:46:56', '2019-12-07 20:46:56'),
(61, 'delete_clients', 'clients', '2019-12-07 20:46:56', '2019-12-07 20:46:56'),
(72, 'browse_portfolio_categories', 'portfolio_categories', '2019-12-08 02:22:52', '2019-12-08 02:22:52'),
(73, 'read_portfolio_categories', 'portfolio_categories', '2019-12-08 02:22:52', '2019-12-08 02:22:52'),
(74, 'edit_portfolio_categories', 'portfolio_categories', '2019-12-08 02:22:52', '2019-12-08 02:22:52'),
(75, 'add_portfolio_categories', 'portfolio_categories', '2019-12-08 02:22:52', '2019-12-08 02:22:52'),
(76, 'delete_portfolio_categories', 'portfolio_categories', '2019-12-08 02:22:52', '2019-12-08 02:22:52'),
(77, 'browse_portfolios', 'portfolios', '2019-12-08 02:24:42', '2019-12-08 02:24:42'),
(78, 'read_portfolios', 'portfolios', '2019-12-08 02:24:42', '2019-12-08 02:24:42'),
(79, 'edit_portfolios', 'portfolios', '2019-12-08 02:24:42', '2019-12-08 02:24:42'),
(80, 'add_portfolios', 'portfolios', '2019-12-08 02:24:42', '2019-12-08 02:24:42'),
(81, 'delete_portfolios', 'portfolios', '2019-12-08 02:24:42', '2019-12-08 02:24:42'),
(87, 'browse_newsletters', 'newsletters', '2019-12-08 07:34:30', '2019-12-08 07:34:30'),
(88, 'read_newsletters', 'newsletters', '2019-12-08 07:34:30', '2019-12-08 07:34:30'),
(89, 'edit_newsletters', 'newsletters', '2019-12-08 07:34:30', '2019-12-08 07:34:30'),
(90, 'add_newsletters', 'newsletters', '2019-12-08 07:34:30', '2019-12-08 07:34:30'),
(91, 'delete_newsletters', 'newsletters', '2019-12-08 07:34:30', '2019-12-08 07:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(87, 1),
(88, 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `portfolio_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `cover`, `images`, `created_at`, `updated_at`, `portfolio_category_id`) VALUES
(2, 'Lorem Design', 'portfolios\\December2019\\UB2ucIc2QNBI38xXc60J.png', '[\"portfolios\\\\December2019\\\\9haHBs4SuVK8GDPAnbip.png\",\"portfolios\\\\December2019\\\\wT3AeUbaDBdAt4Jmdlt1.png\",\"portfolios\\\\December2019\\\\qRsAxnOf0RAAkB8HsPdM.png\",\"portfolios\\\\December2019\\\\R9HLfc6rnxwQRb0sbmEd.png\",\"portfolios\\\\December2019\\\\89hQucfU0tJRlvajhEHG.png\",\"portfolios\\\\December2019\\\\Jonr2UAv9FNakJgXfKsT.png\",\"portfolios\\\\December2019\\\\IT6snVRg9ScG3b9ZeKDN.png\"]', '2019-12-08 02:28:03', '2019-12-08 02:28:03', 1),
(3, 'Upholstery Work', 'portfolios\\December2019\\LJwrw8x2HF38vk0qAfQT.png', '[\"portfolios\\\\December2019\\\\5cHwUOh53ONVEOnpl7Dm.png\",\"portfolios\\\\December2019\\\\wP4sAQtFSe2pRweZvNR2.png\",\"portfolios\\\\December2019\\\\vuK9jyorashVGMEJQ5te.png\",\"portfolios\\\\December2019\\\\vmeUqa7m2C8VzqBk0fuk.png\"]', '2019-12-08 02:34:58', '2019-12-08 02:34:58', 1),
(4, 'Alegria Municipal Commercial Center', 'portfolios\\December2019\\sxamQf9mwqun2VPdZQR5.png', '[\"portfolios\\\\December2019\\\\MSYu4eZ2YQLgk9W3BgLL.png\",\"portfolios\\\\December2019\\\\6rCsHeaGa4a4KWKEROeY.png\",\"portfolios\\\\December2019\\\\LR9ldZWdbFFJeVxOAumf.png\"]', '2019-12-08 02:36:25', '2019-12-08 02:36:25', 3);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_categories`
--

CREATE TABLE `portfolio_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Interior Design & Upholstery', '2019-12-08 02:19:32', '2019-12-08 02:19:32'),
(2, 'Installation', '2019-12-08 02:19:37', '2019-12-08 02:19:37'),
(3, 'Construction', '2019-12-08 02:19:41', '2019-12-08 02:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-07 02:15:27', '2019-12-07 02:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-12-07 02:15:15', '2019-12-07 02:15:15'),
(2, 'user', 'Normal User', '2019-12-07 02:15:15', '2019-12-07 02:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CLADDING INSULATION', '2019-12-07 03:53:37', '2019-12-07 03:53:37'),
(2, 'DUCTING INSULATION', '2019-12-07 03:53:46', '2019-12-07 03:53:46'),
(3, 'TANK CLEANING', '2019-12-07 03:53:52', '2019-12-07 03:53:52'),
(4, 'PAINTING WORKS', '2019-12-07 03:53:58', '2019-12-07 03:53:58'),
(5, 'SANDBLASTING', '2019-12-07 03:54:07', '2019-12-07 03:54:07'),
(6, 'CIVIL WORKS', '2019-12-07 03:54:13', '2019-12-07 03:54:13'),
(7, 'MECHANICAL WORKS', '2019-12-07 03:54:19', '2019-12-07 03:54:19'),
(8, 'ELECTRICAL WORKS', '2019-12-07 03:54:24', '2019-12-07 03:54:24'),
(9, 'AUXILIARY', '2019-12-07 03:54:30', '2019-12-07 03:54:30'),
(10, 'INTERIOR SOLUTION', '2019-12-07 03:54:35', '2019-12-07 03:54:35'),
(11, 'FABRICATION', '2019-12-07 03:54:40', '2019-12-07 03:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'MML ENGINEERING SERVICES AND SUPPLY', '', 'text', 1, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\December2019\\z5Uen3Sh9dzAj15DJMia.png', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(16, 'site.description', 'Site Description', '<h2>We provide<br><span>Best Quality</span><br> service!</h2>', NULL, 'text', 7, 'Site'),
(17, 'content.about_us', 'About Us', '<p>MML Engineering Services and Supply, was established in November 2016 . The company was personally managed by the Owner Mr. Marlou Asis Laurente.</p>\r\n<p>Having been graduated in Bachelor of Science in Marine Transportation with several years of ONBOARD experience and besides the owner had successfully managed their Family Business which engaged in variuos field in CONTRACTING/TRADING and SERVICES.</p>\r\n<p>Mr. Laurente decided to separate from their family business and established MML Engineering Services and Supply which is currently undertaking several projects both in Civil/structural, Marine and Industrial.&nbsp;</p>', NULL, 'rich_text_box', 8, 'Content'),
(19, 'content.vission', 'Vission', 'To become one of the best dependable companies in providing the best quality service in the field of engineering and marine services and producing the best results for the clients.', NULL, 'text_area', 9, 'Content'),
(20, 'content.mission', 'Mission', 'We are committed in creating positive business relationships in helping the clients throughout the course of the projects.', NULL, 'text_area', 10, 'Content'),
(21, 'content.objective', 'Objective', 'To provide quality services at a competitive market price and safeguard the customer-clients with a well trained workforce.', NULL, 'text_area', 11, 'Content'),
(23, 'content.safety_policies', 'Safety Policies', '<p><strong>Obligations</strong></p>\r\n<p>Management is firmly committed to a policy enabling all work activities to be carried out safely, and with all possible measures taken to remove (or at least reduce) risks to the health, safety and welfare of workers, contractors, authorized visitors, and anyone else who may be affected by our operations.</p>\r\n<p><strong>Responsibilities</strong></p>\r\n<ul>\r\n<li><strong>Management:</strong></li>\r\n</ul>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Will provide and maintain as far as possible:</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>a safe working environment&nbsp; &nbsp;</li>\r\n<li>safe systems of work</li>\r\n<li>facilities for the welfare of workers</li>\r\n<li>&nbsp;</li>\r\n<li>information, instruction, training and supervision that is reasonably necessary to ensure that each worker is safe from injury and risks to health</li>\r\n<li>a commitment to consult and co-operate with workers in all matters relating to health and safety in the workplace</li>\r\n<li>a commitment to continually improve our performance through effective safety management.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li><strong>Workers:</strong></li>\r\n</ul>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Each worker has an obligation to:</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>comply with safe work practices, with the intent of avoiding injury to themselves and others and damage to plant and equipment</li>\r\n<li>take reasonable care of the health and safety of themselves and others</li>\r\n<li>wear personal protective equipment and clothing where necessary</li>\r\n<li>comply with any direction given by management for health and safety</li>\r\n<li>not misuse or interfere with anything provided for health and safety</li>\r\n<li>report all accidents and incidents on the job immediately, no matter how trivial</li>\r\n<li>report all known or observed hazards to their supervisor or manager.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', NULL, 'rich_text_box', 12, 'Content'),
(24, 'content.quality_policy_statement', 'Quality Policy Statement', '<p>Quality is important to our business because we value our customers. We strive to provide our customers with products and services which meet their expectations.</p>\r\n<p>We are committed to regular gathering and monitoring of customer feedback. The company&amp;#39;s orientation is geared towards continuous improvement .</p>\r\n<p>The company\'s materials and services will be responsibly outsourced.</p>\r\n<p>Although the Supervisor has ultimate responsibility for Quality, all workers have a responsibility within their own areas of work to help ensure that Quality is embedded within the whole of the company.</p>', NULL, 'rich_text_box', 13, 'Content'),
(26, 'site.icon', 'Icon', 'settings\\December2019\\d2BWrfImvkBYCdNI5M67.png', NULL, 'image', 6, 'Site'),
(27, 'site.google_map', 'Google Map', '<iframe src=\"https://maps.google.com/maps?q=Brgy%20San%20Antonio%20Cebu%20city&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" style=\"border:0; width: 100%; height: 312px;\" allowfullscreen></iframe>', NULL, 'text_area', 15, 'Site'),
(28, 'company.street_address', 'Street Address', '199 Sesame Steet', NULL, 'text', 16, 'Company'),
(29, 'company.brgy_address', 'Brgy. Address', 'Brgy. San Antonio, Cebu City', NULL, 'text', 17, 'Company'),
(30, 'company.country', 'Country', 'Philippines', NULL, 'text', 18, 'Company'),
(31, 'company.phone', 'Phone', '09064303598 / 09339432579', NULL, 'text', 19, 'Company'),
(32, 'company.email', 'Email', 'mml7777website@gmail.com', NULL, 'text', 20, 'Company'),
(33, 'content.organizational_chart', 'Organizational Chart', 'settings\\December2019\\JA0uK039MunxlwsnNJ4n.png', NULL, 'image', 21, 'Content'),
(35, 'content.newsletter', 'Newsletter', 'Subscribe to received latest news and updates directly from us.', NULL, 'text_area', 22, 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-12-07 02:15:27', '2019-12-07 02:15:27'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-12-07 02:15:27', '2019-12-07 02:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$vqDeDXzgH94CUhsW7B4ySuGwmP2EGWRkm1JTGj1CssXFPLF9QQELy', 'm99hLWAKSozs3yVsjmts8A625rpQAQNWVaA8ElnlXhVkV2s4qJijveBpRRqU', NULL, '2019-12-07 02:15:27', '2019-12-07 02:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_permits`
--
ALTER TABLE `business_permits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_portfolio_category_id_foreign` (`portfolio_category_id`);

--
-- Indexes for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business_permits`
--
ALTER TABLE `business_permits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_portfolio_category_id_foreign` FOREIGN KEY (`portfolio_category_id`) REFERENCES `portfolio_categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
