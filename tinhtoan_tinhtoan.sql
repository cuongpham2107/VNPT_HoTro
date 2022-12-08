-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2022 at 10:30 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tinhtoan_tinhtoan`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banner-2', 'banners/December2022/2MEAvFLpFsBnQEGia9lW.jpg', 'banner', 'ACTIVE', '2021-10-07 03:16:00', '2022-12-07 08:00:43'),
(2, 'Banner-1', 'banners/December2022/D7hPZiksr9rWqVVQ1tKS.jpg', 'banner', 'ACTIVE', '2021-10-07 03:17:00', '2022-12-07 08:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Bài viết', 'bai-viet', '2021-10-05 20:45:13', '2021-11-26 21:14:09'),
(2, NULL, 1, 'Internet - Truyền hình', 'internet-truyenhinh', '2021-10-05 20:45:13', '2022-12-07 08:21:19'),
(3, NULL, 1, 'Hỗ trợ', 'ho-tro', '2022-01-03 01:30:45', '2022-12-07 08:20:33'),
(4, NULL, 1, 'Gói cước', 'goi-cuoc', '2022-12-07 08:21:32', '2022-12-07 08:21:32');

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
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
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
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
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
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"upsize\":true,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"1000\",\"height\":\"700\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
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
(56, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Tên sản phẩm', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:products,slug\"}}', 3),
(59, 7, 'excerpt', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(60, 7, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(61, 7, 'image', 'image', 'Ảnh', 0, 0, 1, 1, 1, 1, '{}', 6),
(62, 7, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(63, 7, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(64, 7, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(65, 7, 'price', 'number', 'Giá', 0, 1, 1, 1, 1, 1, '{}', 10),
(66, 7, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 11),
(67, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(68, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 8, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 2),
(70, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:staticdatas,slug\"}}', 3),
(71, 8, 'description', 'rich_text_box', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(72, 8, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(73, 8, 'image', 'image', 'Ảnh', 0, 0, 1, 1, 1, 1, '{}', 6),
(74, 8, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(75, 8, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(76, 8, 'type', 'select_dropdown', 'Loại', 0, 1, 1, 1, 1, 1, '{\"default\":\"ho-tro\",\"options\":{\"ho-tro\":\"H\\u1ed7 tr\\u1ee3\",\"cac-ung-dung\":\"C\\u00e1c \\u1ee9ng d\\u1ee5ng\"}}', 9),
(77, 8, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 10),
(78, 8, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 11),
(79, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(80, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 9, 'name', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(82, 9, 'image', 'image', 'Ảnh', 0, 0, 1, 1, 1, 1, '{}', 3),
(83, 9, 'type', 'select_dropdown', 'Loại', 0, 1, 1, 1, 1, 1, '{\"default\":\"banner\",\"options\":{\"banner\":\"Banner\"}}', 4),
(84, 9, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 5),
(85, 9, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 6),
(86, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(87, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 10, 'name', 'text', 'Họ tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 10, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(90, 10, 'phone', 'text', 'Điện thoại', 0, 1, 1, 1, 1, 1, '{}', 4),
(91, 10, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 5),
(92, 10, 'content', 'text_area', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(93, 10, 'created_at', 'timestamp', 'Ngày nhận', 0, 1, 1, 1, 0, 1, '{}', 7),
(94, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(95, 8, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 13),
(96, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 11, 'name', 'text', 'Họ và tên', 1, 1, 1, 1, 1, 1, '{}', 2),
(98, 11, 'position', 'text', 'Chức vụ', 0, 1, 1, 1, 1, 1, '{}', 3),
(99, 11, 'experience', 'text', 'Kinh nghiệm', 0, 1, 1, 1, 1, 1, '{}', 4),
(100, 11, 'created_at', 'timestamp', 'Ngày tạo', 0, 0, 0, 0, 0, 0, '{}', 5),
(101, 11, 'updated_at', 'timestamp', 'Ngày cập  nhật', 0, 0, 0, 0, 0, 0, '{}', 6),
(102, 11, 'image', 'image', 'Ảnh', 0, 1, 1, 1, 1, 1, '{\"upsize\":true,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"400\"}}]}', 7);

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
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-10-05 20:45:12', '2021-10-05 20:45:12'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-10-05 20:45:12', '2021-10-05 20:45:12'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-10-05 20:45:12', '2021-10-05 20:45:12'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-05 20:45:14', '2022-01-03 02:29:51'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(7, 'products', 'products', 'Sản phẩm', 'Danh sách sản phẩm', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(8, 'staticdatas', 'staticdatas', 'Static Data', 'Static Data', NULL, 'App\\Staticdata', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-07 00:56:09', '2022-12-07 08:57:14'),
(9, 'banners', 'banners', 'Banner', 'Banners', NULL, 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(10, 'feedbacks', 'feedbacks', 'Phản hồi', 'Phản hồi', NULL, 'App\\Feedback', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-08 01:08:58', '2021-10-08 01:14:20'),
(11, 'personnels', 'personnels', 'Nhân sự', 'Nhân sự', NULL, 'App\\Personnel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-03 19:44:37', '2022-01-04 07:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `phone`, `title`, `content`, `created_at`, `updated_at`) VALUES
(18, 'anonymous', 'admin@admin.com', 'anonymous', 'contact', NULL, '2022-01-04 07:26:30', '2022-01-04 07:26:30'),
(21, 'anonymous', 'admin@admin.com', 'anonymous', 'contact', NULL, '2022-01-04 07:38:44', '2022-01-04 07:38:44'),
(23, 'anonymous', 'mikhail213@96dc.asia', 'anonymous', 'contact', NULL, '2022-01-04 07:44:17', '2022-01-04 07:44:17'),
(24, 'anonymous', 'cuongpham2107@gmail.com', 'anonymous', 'contact', NULL, '2022-01-04 07:44:30', '2022-01-04 07:44:30'),
(26, 'anonymous', 'acb@gmail.com', 'anonymous', 'contact', NULL, '2022-01-04 08:06:26', '2022-01-04 08:06:26');

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
(1, 'admin', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(2, 'Home menu', '2022-01-02 20:29:49', '2022-01-02 20:29:49');

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
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-10-05 20:45:13', '2021-10-05 20:45:13', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 11, '2021-10-05 20:45:13', '2022-01-03 21:16:11', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', NULL, 10, '2021-10-05 20:45:13', '2022-01-03 21:16:11', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 12, '2021-10-05 20:45:13', '2022-01-03 21:16:11', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 13, '2021-10-05 20:45:13', '2022-01-03 21:16:11', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-10-05 20:45:13', '2021-10-06 02:18:54', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-10-05 20:45:13', '2021-10-06 02:18:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-10-05 20:45:13', '2021-10-06 02:18:55', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-10-05 20:45:13', '2021-10-06 02:18:55', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-10-05 20:45:13', '2022-01-03 21:16:11', 'voyager.settings.index', NULL),
(11, 1, 'Danh mục bài viết', '', '_self', 'voyager-categories', '#000000', NULL, 4, '2021-10-05 20:45:13', '2021-10-07 03:00:07', 'voyager.categories.index', 'null'),
(12, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', NULL, 5, '2021-10-05 20:45:14', '2021-10-07 03:00:07', 'voyager.posts.index', 'null'),
(13, 1, 'Trang', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2021-10-05 20:45:14', '2021-10-07 03:00:07', 'voyager.pages.index', 'null'),
(15, 1, 'Static Data', '', '_self', 'voyager-thumb-tack', '#000000', NULL, 8, '2021-10-07 00:56:09', '2022-01-03 21:16:11', 'voyager.staticdatas.index', 'null'),
(16, 1, 'Banners', '', '_self', 'voyager-photos', '#000000', NULL, 2, '2021-10-07 02:58:44', '2021-10-07 03:00:07', 'voyager.banners.index', 'null'),
(17, 1, 'Phản hồi', '', '_self', 'voyager-paper-plane', '#000000', NULL, 9, '2021-10-08 01:08:58', '2022-01-03 21:16:11', 'voyager.feedbacks.index', 'null'),
(18, 2, 'Trang chủ', '/', '_self', NULL, '#000000', NULL, 1, '2022-01-02 20:30:26', '2022-01-02 20:32:23', NULL, ''),
(19, 2, 'Giới thiệu', '/gioi-thieu', '_self', NULL, '#000000', NULL, 2, '2022-01-02 20:32:13', '2022-01-03 06:09:12', NULL, ''),
(21, 2, 'Hỗ trợ', '/category/ho-tro', '_self', NULL, '#000000', NULL, 5, '2022-01-02 20:32:48', '2022-12-07 08:24:30', NULL, ''),
(24, 2, 'Bài viết', '/category/bai-viet', '_self', NULL, '#000000', NULL, 6, '2022-01-02 20:33:23', '2022-12-07 08:48:50', NULL, ''),
(25, 2, 'Liên hệ', 'lien-he', '_self', NULL, '#000000', NULL, 7, '2022-01-02 20:33:36', '2022-01-04 21:46:16', NULL, ''),
(26, 2, 'Gói cước', '/category/goi-cuoc', '_self', NULL, '#000000', NULL, 4, '2022-01-02 20:33:43', '2022-12-07 08:24:10', NULL, ''),
(29, 2, 'Internet - Truyền hình', '/category/internet-truyenhinh', '_self', NULL, '#000000', NULL, 3, '2022-01-04 20:48:18', '2022-12-07 08:23:47', NULL, '');

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
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'Liên hệ', 'Liên hệ', '<p>Li&ecirc;n hệ</p>', NULL, 'contact', 'liên hệ', 'liên hệ', 'ACTIVE', '2021-10-06 21:45:42', '2021-10-06 21:45:42'),
(4, 1, 'Giới thiệu ở trang chủ', 'NGÀNH, NGHỀ KINH DOANH CHÍNH CỦA VNPT', '<p><strong>Đầu tư t&agrave;i ch&iacute;nh<br /></strong>👉 C&aacute;c sản phẩm, vụ viễn th&ocirc;ng, c&ocirc;ng nghệ th&ocirc;ng tin, truyền th&ocirc;ng đa phương tiện<br /><strong>Kinh doanh<br /></strong>👉 C&aacute;c sản phẩm, vụ viễn th&ocirc;ng, c&ocirc;ng nghệ th&ocirc;ng tin, truyền th&ocirc;ng đa phương tiện Quảng c&aacute;o<br /><strong>Quảng c&aacute;o<br /></strong>👉 Nghi&ecirc;n cứu thị trường, tổ chức hội nghị, hội thảo, triển l&atilde;m li&ecirc;n quan đến ng&agrave;nh nghề kinh doanh ch&iacute;nh<br /><strong>Tư vấn khảo s&aacute;t<br /></strong>👉 Thiết kế, lắp đặt, khai t&aacute;c, bảo dưỡng, sửa chữa, cho thu&ecirc; c&ocirc;ng tr&igrave;nh, thiết bị viễn th&ocirc;ng, c&ocirc;ng nghệ th&ocirc;ng tin</p>\r\n<p>&nbsp;</p>', 'pages/December2022/ZZyMBVH1qgEAaG9yEiRT.jpg', 'about-home', 'About home', 'About home', 'ACTIVE', '2021-10-07 03:30:42', '2022-12-07 08:09:15'),
(7, 1, 'Giới thiệu', 'Giới thiệu chung', '<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">1. T&ecirc;n đầy đủ:</span>&nbsp;Tập đo&agrave;n Bưu ch&iacute;nh Viễn th&ocirc;ng Việt Nam.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">2.&nbsp;T&ecirc;n giao dịch quốc tế:</span>&nbsp;Vietnam Posts and Telecommunications Group (VNPT).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">3. Địa chỉ li&ecirc;n hệ:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Trụ sở ch&iacute;nh: T&ograve;a nh&agrave; VNPT, số 57 Huỳnh Th&uacute;c Kh&aacute;ng, P. L&aacute;ng Hạ, Q. Đống Đa, TP. H&agrave; Nội</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Văn ph&ograve;ng: 84-24 3 774 1091- Fax: 84-24 3 774 1093</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Website: https://vnpt.com.vn.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Email: vanphong@vnpt.vn</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: none 0px; vertical-align: baseline; background: transparent;\"><img style=\"box-sizing: border-box; vertical-align: baseline; border: 0px; margin: 0px auto; padding: 0px; outline: 0px; background: transparent; width: 509.312px; display: block; height: auto !important;\" src=\"https://cms.vnpt.com.vn/News/~/Design/images/bieutuong3.jpg\" alt=\"\" /></em></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">4. Điều lệ tổ chức v&agrave; hoạt động:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Với những đ&oacute;ng g&oacute;p v&agrave; th&agrave;nh tựu đ&atilde; đạt được trong c&ocirc;ng cuộc x&acirc;y dựng chủ nghĩa X&atilde; hội v&agrave; Bảo vệ Tổ quốc, VNPT đ&atilde; vinh dự được Chủ tịch nước phong tặng danh hiệu Anh h&ugrave;ng lao động thời kỳ 1999 - 2009 v&agrave;o ng&agrave;y 22/12/2009.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- VNPT vừa l&agrave; nh&agrave; cung cấp dịch vụ đầu ti&ecirc;n đặt nền m&oacute;ng cho sự ph&aacute;t triển của ng&agrave;nh Bưu ch&iacute;nh, Viễn th&ocirc;ng Việt Nam, vừa l&agrave; tập đo&agrave;n c&oacute; vai tr&ograve; chủ chốt trong việc đưa Việt Nam trở th&agrave;nh 1 trong 10 quốc gia c&oacute; tốc độ ph&aacute;t triển Bưu ch&iacute;nh Viễn th&ocirc;ng nhanh nhất to&agrave;n cầu.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Th&aacute;ng 1/2006, VNPT ch&iacute;nh thức trở th&agrave;nh Tập đo&agrave;n Bưu ch&iacute;nh Viễn th&ocirc;ng Việt Nam thay thế cho m&ocirc; h&igrave;nh Tổng c&ocirc;ng ty cũ theo quyết định số 06/2006/QĐ-TTg của Thủ tướng Ch&iacute;nh phủ, với chiến lược ph&aacute;t triển theo m&ocirc; h&igrave;nh tập đo&agrave;n kinh tế chủ lực của Việt Nam, kinh doanh đa ng&agrave;nh nghề, đa lĩnh vực, đa sở hữu, trong đ&oacute; Bưu ch&iacute;nh - Viễn th&ocirc;ng - CNTT l&agrave; n&ograve;ng cốt.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Ng&agrave;y 24/6/2010, C&ocirc;ng ty mẹ - Tập đo&agrave;n Bưu ch&iacute;nh Viễn th&ocirc;ng Việt Nam chuyển đổi hoạt động sang m&ocirc; h&igrave;nh C&ocirc;ng ty tr&aacute;ch nhiệm Hữu hạn một th&agrave;nh vi&ecirc;n do Nh&agrave; nước l&agrave;m chủ sở hữu theo quyết định số 955/QĐ-TTg của Thủ tướng Ch&iacute;nh phủ.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Theo Quyết định số 888/QĐ-TTg ng&agrave;y 10/6/2014 của Thủ tướng Ch&iacute;nh phủ, VNPT đ&atilde; thực hiện t&aacute;i cơ cấu tổ chức. Sau khi t&aacute;i cấu tr&uacute;c doanh nghiệp, hiện với gần 40 ngh&igrave;n c&aacute;n bộ c&ocirc;ng nh&acirc;n vi&ecirc;n, hạ tầng c&ocirc;ng nghệ viễn th&ocirc;ng ti&ecirc;n tiến, mạng lưới dịch vụ phủ s&oacute;ng to&agrave;n bộ 63 tỉnh th&agrave;nh tr&ecirc;n cả nước, VNPT tự h&agrave;o l&agrave; nh&agrave; cung cấp dịch vụ bưu ch&iacute;nh, viễn th&ocirc;ng số 1 tại Việt Nam, phục vụ khoảng 30 triệu thu&ecirc; bao di động, gần 10 triệu thu&ecirc; bao điện thoại cố định v&agrave; khoảng h&agrave;ng chục triệu người sử dụng Internet.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">5. Lĩnh vực kinh doanh:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Dịch vụ v&agrave; sản phẩm viễn th&ocirc;ng, c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; truyền th&ocirc;ng đa phương tiện;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Khảo s&aacute;t, tư vấn, thiết kế, lắp đặt, khai th&aacute;c, bảo dưỡng, sửa chữa, cho thu&ecirc; c&aacute;c c&ocirc;ng tr&igrave;nh viễn th&ocirc;ng, c&ocirc;ng nghệ th&ocirc;ng tin;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Nghi&ecirc;n cứu, ph&aacute;t triển, chế tạo, sản xuất thiết bị, sản phẩm viễn th&ocirc;ng, c&ocirc;ng nghệ th&ocirc;ng tin;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Thương mại, ph&acirc;n phối c&aacute;c sản phẩm thiết bị viễn th&ocirc;ng, c&ocirc;ng nghệ th&ocirc;ng tin;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Dịch vụ quảng c&aacute;o, nghi&ecirc;n cứu thị trường, tổ chức hội nghị hội thảo, triển l&atilde;m li&ecirc;n quan đến lĩnh vực viễn th&ocirc;ng, c&ocirc;ng nghệ th&ocirc;ng tin;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Kinh doanh bất động sản, cho thu&ecirc; văn ph&ograve;ng;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Dịch vụ t&agrave;i ch&iacute;nh trong lĩnh vực viễn th&ocirc;ng, c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; truyền th&ocirc;ng đa phương tiện.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">6. Slogan:&nbsp;</span>VNPT - Cuộc sống đ&iacute;ch thực</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">7. Logo:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: none 0px; vertical-align: baseline; background: transparent;\"><img style=\"box-sizing: border-box; vertical-align: baseline; border: 0px; margin: 2px 10px; padding: 0px; outline: 0px; background: transparent; width: 100px; display: block; height: 102px; float: left;\" src=\"https://cms.vnpt.com.vn/News/~/Design/images/logo.jpg\" alt=\"\" /></em></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Logo VNPT m&ocirc; phỏng chuyển động của vệ tinh xoay quanh địa cầu, vẽ n&ecirc;n h&igrave;nh chữ V l&agrave; chữ c&aacute;i đầu ti&ecirc;n trong t&ecirc;n viết tắt VNPT. Sự uyển chuyển của h&igrave;nh khối kết hợp ng&ocirc;n ngữ &acirc;m dương thể hiện sự vận động kh&ocirc;ng ngừng của th&ocirc;ng tin, sự bền vững c&ugrave;ng sự hội nhập thế giới với khoa học v&agrave; c&ocirc;ng nghệ hiện đại.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">8. C&aacute;c giải thưởng</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">Kh&ocirc;ng chỉ l&agrave; niềm tự h&agrave;o của người Việt Nam, VNPT đang vươn m&igrave;nh ra thị trường quốc tế v&agrave; khẳng định vị tr&iacute;, thương hiệu của một doanh nghiệp h&agrave;ng đầu.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">Trong hơn 70 năm ph&aacute;t triển, VNPT đ&atilde; nhận nhiều danh hiệu, giải thưởng cao qu&yacute;. Trong đ&oacute; nổi bật phải kể tới:</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Danh hiệu Anh h&ugrave;ng Lao động năm 2009.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Giải thưởng quốc tế \"Băng rộng thay đổi cuộc sống\" năm 2011.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Đứng thứ 25 trong Top 500 doanh nghiệp lớn nhất Việt Nam 2017 (VNR500).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Đứng thứ 3 top 50 thương hiệu c&oacute; gi&aacute; trị nhất Việt Nam 2017 của Brand Finance với gi&aacute; trị thương hiệu đạt 726 triệu USD.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Được International Finance Magazine (IMF) b&igrave;nh chọn v&agrave; trao giải thưởng \"Nh&agrave; cung cấp băng rộng tốt nhất Việt Nam năm 2017\" v&agrave; \"Nh&agrave; cung cấp c&aacute;c dịch vụ ICT tốt nhất Việt Nam 2017\".</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Được b&igrave;nh chọn l&agrave; \"Thương hiệu Quốc gia\", \"Thương hiệu nổi tiếng\", \"Top 5 doanh nghiệp h&agrave;ng đầu Việt Nam\".</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Top 3 thương hiệu gi&aacute; trị nhất Việt Nam năm 2018 do Forbes Việt Nam trao tặng.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Đứng thứ 3 Top 50 thương hiệu c&oacute; gi&aacute; trị nhất Việt Nam 2018 do Brand Finance c&ocirc;ng bố với gi&aacute; trị thương hiệu đạt l&agrave; 1.339 triệu USD.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- VNPT được vinh danh tại Stevie Awards 2019 với 7 giải thưởng quốc tế lớn thuộc c&aacute;c hạng mục sản phẩm c&ocirc;ng nghệ th&ocirc;ng tin tốt nhất năm. Trong đ&oacute; c&oacute; 1 giải V&agrave;ng cho giải ph&aacute;p Trục li&ecirc;n th&ocirc;ng văn bản quốc gia v&agrave; 6 giải Đồng cho c&aacute;c sản phẩm VNPT Smart Ads, VNPT Check, VNPT HIS, VNPT Cloud Contact Center VCC, VNPT Smart Cloud, VNPT Pharmacy.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Đứng thứ 2 trong Top 10 thương hiệu lớn nhất Việt Nam năm 2019 do Brand Finance c&ocirc;ng bố với gi&aacute; trị thương hiệu đạt 1,683 tỷ USD.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- VNPT đ&atilde; vinh dự được Tạp ch&iacute; chuy&ecirc;n ng&agrave;nh T&agrave;i ch&iacute;nh - Ng&acirc;n h&agrave;ng c&oacute; trụ sở ch&iacute;nh tại thủ đ&ocirc; Lu&acirc;n Đ&ocirc;n, Vương quốc Anh với đối tượng độc giả tr&ecirc;n 20 quốc gia tr&ecirc;n thế giới trao hai giải thưởng lớn: Nh&agrave; cung cấp sản phẩm v&agrave; dịch vụ chuyển đổi kỹ thuật số s&aacute;ng tạo nhất - Việt Nam 2019 v&agrave; Nh&agrave; cung cấp sản phẩm kỹ thuật số tốt nhất &ndash; Ch&iacute;nh phủ điện tử - 2019.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Theo bảng xếp hạng Top 150 nh&agrave; mạng c&oacute; gi&aacute; trị lớn nhất thế giới năm 2020 (Telecoms 150) do Brand Finance - Tổ chức chuy&ecirc;n xếp hạng thương hiệu c&oacute; trụ sở ở London UK c&ocirc;ng bố, VNPT c&oacute; gi&aacute; trị thương hiệu tăng ấn tượng nhất với tốc độ tới 42% v&agrave; đạt con số 2,4 tỷ USD. Thương hiệu của VNPT cũng tăng 17 bậc, từ vị tr&iacute; 72 năm 2019 tăng l&ecirc;n vị tr&iacute; 55.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Theo danh s&aacute;ch những đơn vị viễn th&ocirc;ng - c&ocirc;ng nghệ tr&ecirc;n thế giới đạt được chứng chỉ MEF 3.0 vừa được Diễn đ&agrave;n Metro Ethernet Forum (MEF) c&ocirc;ng bố, Tập đo&agrave;n VNPT đ&atilde; vinh dự l&agrave; đơn vị duy nhất của Việt Nam 2 năm li&ecirc;n tiếp đạt được chứng chỉ n&agrave;y.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Tập đo&agrave;n Bưu ch&iacute;nh Viễn th&ocirc;ng Việt Nam (VNPT) đ&atilde; vinh dự được Hiệp hội Phần mềm v&agrave; Dịch vụ CNTT Việt Nam (VINASA) trao Danh hiệu Sao Khu&ecirc; 2020 cho 8 sản phẩm, giải ph&aacute;p phần mềm thương mại ti&ecirc;u biểu trong c&aacute;c lĩnh vực Ch&iacute;nh phủ điện tử, quản l&yacute; doanh nghiệp, ứng dụng c&ocirc;ng nghệ mới trong cuộc CMCN 4.0&hellip; Bao gồm: Hệ sinh th&aacute;i Gi&aacute;o dục th&ocirc;ng minh Smart Education - vnEdu 4.0; Hệ thống cổng th&ocirc;ng tin vnPortal; Nền tảng quản l&yacute; phản &aacute;nh v&agrave; tương t&aacute;c trực tuyến - VNPT ORIM-X; Giải ph&aacute;p VNPT - K&yacute; số; VNPT GIS PLATFORM - Nền tảng quản l&yacute; v&agrave; ph&acirc;n t&iacute;ch dữ liệu kh&ocirc;ng gian; Giải ph&aacute;p định danh v&agrave; x&aacute;c thực điện tử - VNPT eKYC; Bộ thiết bị Easy Mesh Accesss Point iGate EW12S v&agrave; hệ thống quản l&yacute; Cloud Mesh Controller; Hệ thống quản trị Hồ sơ t&agrave;i liệu số h&oacute;a.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Theo danh s&aacute;ch giải thưởng Stevie Awards ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương 2020 được c&ocirc;ng bố, Tập đo&agrave;n Bưu ch&iacute;nh Viễn th&ocirc;ng Việt Nam (VNPT) vinh dự nhận được 15 giải thưởng. Cụ thể, 3 giải V&agrave;ng gồm: VNPT Invoice (H&oacute;a đơn điện tử) - Giải thưởng đột ph&aacute; về Quản l&yacute; t&agrave;i ch&iacute;nh; VNPT HIS (Dịch vụ phần mềm quản l&yacute; bệnh viện) - Giải thưởng đột ph&aacute; về y tế; Smart Press (Phần mềm quản trị t&ograve;a soạn v&agrave; nội dung) - Giải thưởng s&aacute;ng tạo trong ứng dụng th&ocirc;ng tin chung hoặc th&ocirc;ng tin b&aacute;o ch&iacute;. 3 giải Bạc gồm: VNPT Smart Cloud (Dịch vụ cho thu&ecirc; m&aacute;y chủ ảo tr&ecirc;n nền điện to&aacute;n đ&aacute;m m&acirc;y); VNPT K&yacute; số (Giải ph&aacute;p VNPT K&yacute; số) ; VNPT Pharmacy (Phần mềm quản l&yacute; nh&agrave; thuốc). 9 giải Đồng gồm: VNPT Cloud Contact Center (Dịch vụ tổng đ&agrave;i chăm s&oacute;c kh&aacute;ch h&agrave;ng đa k&ecirc;nh hợp nhất); VNPT e-cabinet (Ph&ograve;ng họp kh&ocirc;ng giấy tờ); Cổng dịch vụ c&ocirc;ng Quốc gia ; VNPT Pay (Dịch vụ thanh to&aacute;n điện tử) ; Mobin; TelecomAPI; Meclip; MCCS v&agrave; VNPT - eKyc (Giải ph&aacute;p định danh x&aacute;c thực điện tử).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- VNPT tiếp tục được vinh danh tại Giải thưởng Kinh doanh Quốc tế 2020 (International Business Awards - IBA Stevie Awards) với 5 giải thưởng lớn d&agrave;nh cho c&aacute;c giải ph&aacute;p ch&iacute;nh phủ điện tử. Cụ thể, VNPT sở hữu 1 giải V&agrave;ng hạng mục giải ph&aacute;p quản l&yacute; c&ocirc;ng nghệ th&ocirc;ng tin d&agrave;nh cho Hệ thống th&ocirc;ng tin b&aacute;o c&aacute;o v&agrave; chỉ đạo điều h&agrave;nh (VNPT VSR), 2 giải Bạc d&agrave;nh cho ứng dụng khai b&aacute;o y tế (NCOVI) ở hạng mục c&ocirc;ng nghệ quản l&yacute; sức khỏe v&agrave; Giải ph&aacute;p hệ thống ph&ograve;ng họp kh&ocirc;ng giấy tờ (VNPT eCabinet) ở hạng mục giải ph&aacute;p mạng lưới kết nối. VNPT nhận được 2 giải đồng với Giải ph&aacute;p định danh v&agrave; x&aacute;c thực điện tử (VNPT eKYC) ở hạng mục giải ph&aacute;p bảo mật truy cập v&agrave; danh t&iacute;nh v&agrave; Hệ thống cổng th&ocirc;ng tin điện tử (VNPT vnPortal) ở hạng mục quy tr&igrave;nh số tự động.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Tại Giải thưởng Stevie Awards Asia - Pacific 2021 (Giải thưởng Stevie Awards ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương) c&ocirc;ng bố v&agrave;o th&aacute;ng 7/2021, VNPT được vinh danh với 12 giải thưởng danh gi&aacute;. VNPT cũng l&agrave; Tập đo&agrave;n c&ocirc;ng nghệ duy nhất của Việt Nam đạt giải thưởng n&agrave;y li&ecirc;n tục 4 năm liền. VNPT được đ&aacute;nh gi&aacute; cao về sự đột ph&aacute; v&agrave; s&aacute;ng tạo với 3 giải V&agrave;ng cho giải ph&aacute;p học trực tuyến VNPT elearning, bệnh &aacute;n điện tử VNPT EMR v&agrave; Hệ thống b&aacute;o c&aacute;o th&ocirc;ng minh VNPT VSR. VNPT c&ograve;n đạt 2 giải Bạc gồm giải thưởng đổi mới trong truyền h&igrave;nh, giải tr&iacute; My TV, giải thưởng đổi mới s&aacute;ng tạo trong ứng dụng c&ocirc;ng nghệ v&agrave;o hoạt động quản trị t&agrave;i năng VNPT TAMS v&agrave; 7 giải Đồng d&agrave;nh cho c&aacute;c giải ph&aacute;p nền tảng thanh to&aacute;n VNPT, Tổng đ&agrave;i VSCC, Hợp đồng điện tử VNPT eContract, Hệ thống Quản l&yacute; chuỗi gi&aacute; trị n&ocirc;ng sản - VNPT Trace, Hồ sơ sức khỏe điện tử VNPT EHR, phần mềm chuẩn đo&aacute;n h&igrave;nh ảnh VNPT RIS/PACS v&agrave; Giải ph&aacute;p hệ thống th&ocirc;ng tin quản l&yacute; t&ograve;a nh&agrave; VNPT BMIS.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Tại Giải thưởng C&ocirc;ng nghệ th&ocirc;ng tin (IT World Awards 2021), VNPT l&agrave; đơn vị đoạt nhiều giải thưởng nhất, gồm 4 giải v&agrave;ng d&agrave;nh cho c&aacute;c sản phẩm: VNPT Trace (Hệ thống quản l&yacute; chuỗi gi&aacute; trị n&ocirc;ng sản) ở hạng mục giải ph&aacute;p c&ocirc;ng nghệ lĩnh vực n&ocirc;ng nghiệp; ứng dụng My VNPT (hỗ trợ người d&ugrave;ng quản l&yacute; c&aacute;c dịch vụ của VNPT) ở hạng mục giải ph&aacute;p c&ocirc;ng nghệ d&agrave;nh cho kh&aacute;ch h&agrave;ng c&aacute; nh&acirc;n; VNPT VSR (Hệ thống b&aacute;o c&aacute;o th&ocirc;ng minh) ở hạng mục giải ph&aacute;p c&ocirc;ng nghệ d&agrave;nh cho ch&iacute;nh phủ v&agrave; eZozo (Dịch vụ phần mềm quản l&yacute; nh&agrave; h&agrave;ng) ở hạng mục giải ph&aacute;p c&ocirc;ng nghệ d&agrave;nh cho kh&aacute;ch sạn, du lịch. Ngo&agrave;i ra, VNPT c&ograve;n đoạt 1 giải bạc d&agrave;nh cho VNPT LMS (Hệ thống quản l&yacute; học tập) ở hạng mục giải ph&aacute;p c&ocirc;ng nghệ cho gi&aacute;o dục v&agrave; 1 giải đồng cho VnCare (Hệ thống đăng k&yacute; v&agrave; kh&aacute;m bệnh từ xa). Đặc biệt, VNPT c&ograve;n đạt 1 Giải v&agrave;ng cho VNPT Digital Marketing (Giải ph&aacute;p marketing số) tại hạng mục giải ph&aacute;p quản l&yacute; chiến dịch truyền th&ocirc;ng đa k&ecirc;nh; 1 giải đồng cho VNPT Smart IR (Giải ph&aacute;p bảo mật) ở hạng mục giải ph&aacute;p bảo mật; v&agrave; 2 sản phẩm: VNPT IoT (Nền tảng kết nối internet vạn vật) sở hữu giải Bạc v&agrave; Giải ph&aacute;p SmartVision nhận giải Đồng c&ugrave;ng tại hạng mục Tr&iacute; tuệ nh&acirc;n tạo (AI).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Tại Giải thưởng Kinh doanh Quốc tế 2021 (Stevie Awards International Business Awards), VNPT đ&atilde; nhận 7 giải thưởng lớn cho c&aacute;c sản phẩm dịch vụ gồm 1 giải v&agrave;ng d&agrave;nh cho Hệ thống phần mềm hỗ trợ học trực tuyến (VNPT LMS) ở hạng mục Giải ph&aacute;p học trực tuyến; 4 giải bạc thuộc về Phần mềm kế to&aacute;n doanh nghiệp vừa v&agrave; nhỏ (VNPT ASME) ở hạng mục Quản l&yacute; t&agrave;i ch&iacute;nh, Giải ph&aacute;p điểm danh bằng khu&ocirc;n mặt (VNPT vnFace) ở hạng mục sản phẩm B2B, Giải ph&aacute;p (VNPT Smartvision) ở hạng mục AI v&agrave; Nền tảng quản l&yacute; định danh v&agrave; x&aacute;c thực sinh trắc học (VNPT BioID) ở hạng mục giải ph&aacute;p t&agrave;i ch&iacute;nh số. Hai giải đồng c&ograve;n lại thuộc về Hệ thống kiểm so&aacute;t t&ograve;a nh&agrave; (VNPT BACS) ở hạng mục AI v&agrave; Nền tảng thanh to&aacute;n ở hạng mục Giải ph&aacute;p thanh to&aacute;n.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Tại Giải thưởng C&ocirc;ng nghệ Th&ocirc;ng tin thế giới (IT World Awards 2022), Tập đo&agrave;n đ&atilde; vinh dự đạt 5 giải v&agrave;ng, 4 giải bạc v&agrave; 3 giải đồng. Trong đ&oacute;, 2 giải v&agrave;ng d&agrave;nh cho phần mềm quản l&yacute; an sinh x&atilde; hội (VNPT ASXH) v&agrave; nền tảng thanh to&aacute;n (Payment Platform); 3 giải v&agrave;ng cho c&aacute;c giải ph&aacute;p hỗ trợ doanh nghiệp gồm giải ph&aacute;p họp trực tuyến &ldquo;made in Vietnam&rdquo; VNPT Gomeet, Phần mềm Quản trị tổng thể doanh nghiệp One Business v&agrave; hệ thống tuyển sinh vnEdu Enrollment; 4 giải bạc gồm VNPT eContract ở hạng mục CRM, Payment Platform ở hạng mục SPDV d&agrave;nh cho ch&iacute;nh phủ, VNPT Home &amp; Clinic ở hạng mục SPDV d&agrave;nh cho y tế, vnCare; 3 giải đồng thuộc về Hồ sơ quản l&yacute; hoạt động gi&aacute;o dục vnEdu-ERMS, giải ph&aacute;p giọng n&oacute;i th&ocirc;ng minh VNPT Smart Voice v&agrave; ứng dụng nhận diện khu&ocirc;n mặt vnFace.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- Tại giải thưởng Stevie Awards ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương 2022, VNPT đ&atilde; xuất sắc trở th&agrave;nh doanh nghiệp Việt Nam đạt nhiều giải thưởng nhất với 5 giải ph&aacute;p c&ocirc;ng nghệ th&ocirc;ng tin d&agrave;nh cho kh&aacute;ch h&agrave;ng doanh nghiệp v&agrave; kh&aacute;ch h&agrave;ng c&aacute; nh&acirc;n bao gồm 1 giải v&agrave;ng d&agrave;nh cho VNPT SmartCA (dịch vụ chứng thực chữ k&yacute; số c&ocirc;ng cộng theo m&ocirc; h&igrave;nh k&yacute; số từ xa) ở hạng mục s&aacute;ng tạo cho B2B, 2 giải bạc d&agrave;nh cho tổng đ&agrave;i ảo VCC v&agrave; vnSocial; 2 giải đồng thuộc về VNPT Money v&agrave; vnEdu Enrollment.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 6px 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; text-align: justify;\">- VNPT đ&atilde; nhận 4 giải thưởng lớn tại cuộc thi bảo mật quốc tế Cyber Security Global Excellence Awards gồm 2 giải v&agrave;ng cho Nền tảng nhận diện h&igrave;nh ảnh bằng c&ocirc;ng nghệ Tr&iacute; tuệ nh&acirc;n tạo (VNPT Smart Vision) v&agrave; Phần mềm giải ph&aacute;p hỗ trợ chăm s&oacute;c, tư vấn kh&aacute;ch h&agrave;ng (VNPT Smartbot), 2 giải đồng thuộc về Phần mềm bảo vệ nh&acirc;n hệ điều h&agrave;nh IoT (VNPT IoT Guard) v&agrave; Dịch vụ Kiểm thử x&acirc;m nhập (VNPT Pentest).</p>', 'pages/December2022/iIKD97Lrhnbx4m2k3fP3.jpg', 'about', 'Mang trong mình sứ mệnh là cầu nối giữa gia đình có nhu cầu và những người giúp việc, đây cũng là một trong những mục tiêu hoạt động của công ty An Phương chúng tôi.', 'thuê người giúp việc, giúp việc tại Thái Nguyên', 'INACTIVE', '2022-01-03 06:23:21', '2022-12-07 08:11:25');

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
(1, 'browse_admin', NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(2, 'browse_bread', NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(3, 'browse_database', NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(4, 'browse_media', NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(5, 'browse_compass', NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(6, 'browse_menus', 'menus', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(7, 'read_menus', 'menus', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(8, 'edit_menus', 'menus', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(9, 'add_menus', 'menus', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(10, 'delete_menus', 'menus', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(11, 'browse_roles', 'roles', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(12, 'read_roles', 'roles', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(13, 'edit_roles', 'roles', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(14, 'add_roles', 'roles', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(15, 'delete_roles', 'roles', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(16, 'browse_users', 'users', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(17, 'read_users', 'users', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(18, 'edit_users', 'users', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(19, 'add_users', 'users', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(20, 'delete_users', 'users', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(21, 'browse_settings', 'settings', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(22, 'read_settings', 'settings', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(23, 'edit_settings', 'settings', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(24, 'add_settings', 'settings', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(25, 'delete_settings', 'settings', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(26, 'browse_categories', 'categories', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(27, 'read_categories', 'categories', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(28, 'edit_categories', 'categories', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(29, 'add_categories', 'categories', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(30, 'delete_categories', 'categories', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(31, 'browse_posts', 'posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(32, 'read_posts', 'posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(33, 'edit_posts', 'posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(34, 'add_posts', 'posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(35, 'delete_posts', 'posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(36, 'browse_pages', 'pages', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(37, 'read_pages', 'pages', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(38, 'edit_pages', 'pages', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(39, 'add_pages', 'pages', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(40, 'delete_pages', 'pages', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(41, 'browse_products', 'products', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(42, 'read_products', 'products', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(43, 'edit_products', 'products', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(44, 'add_products', 'products', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(45, 'delete_products', 'products', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(46, 'browse_staticdatas', 'staticdatas', '2021-10-07 00:56:09', '2021-10-07 00:56:09'),
(47, 'read_staticdatas', 'staticdatas', '2021-10-07 00:56:09', '2021-10-07 00:56:09'),
(48, 'edit_staticdatas', 'staticdatas', '2021-10-07 00:56:09', '2021-10-07 00:56:09'),
(49, 'add_staticdatas', 'staticdatas', '2021-10-07 00:56:09', '2021-10-07 00:56:09'),
(50, 'delete_staticdatas', 'staticdatas', '2021-10-07 00:56:09', '2021-10-07 00:56:09'),
(51, 'browse_banners', 'banners', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(52, 'read_banners', 'banners', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(53, 'edit_banners', 'banners', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(54, 'add_banners', 'banners', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(55, 'delete_banners', 'banners', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(56, 'browse_feedbacks', 'feedbacks', '2021-10-08 01:08:58', '2021-10-08 01:08:58'),
(57, 'read_feedbacks', 'feedbacks', '2021-10-08 01:08:58', '2021-10-08 01:08:58'),
(58, 'edit_feedbacks', 'feedbacks', '2021-10-08 01:08:58', '2021-10-08 01:08:58'),
(59, 'add_feedbacks', 'feedbacks', '2021-10-08 01:08:58', '2021-10-08 01:08:58'),
(60, 'delete_feedbacks', 'feedbacks', '2021-10-08 01:08:58', '2021-10-08 01:08:58'),
(61, 'browse_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37'),
(62, 'read_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37'),
(63, 'edit_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37'),
(64, 'add_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37'),
(65, 'delete_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37');

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
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(22, 2),
(22, 3),
(23, 1),
(23, 2),
(23, 3),
(24, 1),
(24, 2),
(24, 3),
(25, 1),
(25, 2),
(25, 3),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(28, 2),
(28, 3),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(32, 3),
(33, 1),
(33, 2),
(33, 3),
(34, 1),
(34, 2),
(34, 3),
(35, 1),
(35, 2),
(35, 3),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(38, 3),
(39, 1),
(39, 2),
(39, 3),
(40, 1),
(40, 2),
(40, 3),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 2),
(49, 3),
(50, 1),
(50, 2),
(50, 3),
(51, 1),
(51, 2),
(51, 3),
(52, 1),
(52, 2),
(52, 3),
(53, 1),
(53, 2),
(53, 3),
(54, 1),
(54, 2),
(54, 3),
(55, 1),
(55, 2),
(55, 3),
(56, 1),
(56, 2),
(56, 3),
(57, 1),
(57, 2),
(57, 3),
(58, 1),
(58, 2),
(58, 3),
(59, 1),
(59, 2),
(59, 3),
(60, 1),
(60, 2),
(60, 3),
(61, 1),
(61, 2),
(61, 3),
(62, 1),
(62, 2),
(62, 3),
(63, 1),
(63, 2),
(63, 3),
(64, 1),
(64, 2),
(64, 3),
(65, 1),
(65, 2),
(65, 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personnels`
--

CREATE TABLE `personnels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personnels`
--

INSERT INTO `personnels` (`id`, `name`, `position`, `experience`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Trương Tuyết  Nhung', 'Nhân viên tạp vụ', '10 năm', '2022-01-03 19:50:00', '2022-01-04 08:09:52', 'personnels/January2022/NrNFiSmDLqXxG6DBIBdf.png'),
(2, 'Trương Thu Hương', 'Nhân viên vệ sinh', NULL, '2022-01-03 19:52:00', '2022-01-04 08:09:28', 'personnels/January2022/lmkDVBnwqQSJB7fD6Ayn.png'),
(3, 'Hoàng Kim Ngọc', 'Kỹ thuật viên vệ sinh công nghiệp', NULL, '2022-01-03 19:53:00', '2022-01-04 07:30:10', 'personnels/January2022/arkvZbNuucl4iTq8e3qO.png');

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
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 4, 1, 'Roaming châu Á không giới hạn Data với loạt gói cước RUx mới của VinaPhone', NULL, 'Các gói cước RUx mới của VinaPhone bao gồm RU110, RU250 và RU600', '<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif;\"><span style=\"font-size: 16px;\">C&aacute;c g&oacute;i cước RUx mới của VinaPhone bao gồm RU110, RU250 v&agrave; RU600 với nhiều lựa chọn dung lượng Data Roaming tốc độ cao v&agrave; số lượng ng&agrave;y sử dụng, sẽ gi&uacute;p kh&aacute;ch h&agrave;ng thỏa th&iacute;ch online khi lưu tr&uacute; tại nhiều nước ch&acirc;u &Aacute;. Đặc biệt, khi hết dung lượng tốc độ cao, kh&aacute;ch h&agrave;ng đăng k&yacute; g&oacute;i RUx sẽ vẫn c&oacute; thể truy cập kh&ocirc;ng giới hạn tốc độ thường.&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif;\"><span style=\"font-size: 16px;\">Cụ thể, với g&oacute;i RU110 chỉ 110.000đ, kh&aacute;ch h&agrave;ng sẽ c&oacute; 1.5GB Roaming tốc độ cao sử dụng trong 3 ng&agrave;y. Với g&oacute;i RU250 chỉ 250.000đ/7 ng&agrave;y, dung lượng được tăng l&ecirc;n 3.5GB. Để sử dụng nhiều dung lượng tốc độ cao hơn, kh&aacute;ch h&agrave;ng c&oacute; thể chọn g&oacute;i RU600 với 8GB chỉ 600.000đ/15 ng&agrave;y.&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif;\"><span style=\"font-size: 16px;\">C&aacute;c g&oacute;i RUx mới của VinaPhone được &aacute;p dụng với tất cả thu&ecirc; bao trả trước v&agrave; trả sau với quốc gia v&agrave; mạng &aacute;p dụng như sau:</span></span></p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; border: 1px solid; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; height: 339px; width: 86.245%;\" width=\"859\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"8%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">STT</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"15%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Quốc gia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"18%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Mạng</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"24%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">T&ecirc;n mạng hiển thị tr&ecirc;n thiết bị di động</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">&Aacute;p dụng với TB trả trước</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">&Aacute;p dụng với TB trả sau</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"8%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">1</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"15%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Hong Kong</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"18%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Hutchison Hong Kong</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"24%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Hutchison Hong Kong (3)</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"8%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">2</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"15%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Indonesia</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"18%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Indosat</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"24%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">INDOSAT</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"8%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">3</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"15%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Japan</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"18%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">NTT Docomo</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"24%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">DOCOMO/</p>\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">NTT DOCOMO</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"8%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">4</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"15%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Korea</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"18%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">KT</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"24%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">KT (Olleh)</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"8%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">5</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"15%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Philippines</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"18%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Smart</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"24%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Smart</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"8%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">6</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"15%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Singapore</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"18%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">StarHub</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"24%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">StarHub</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"8%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">7</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"15%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Taiwan</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"18%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Far Eastone</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"24%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">FET, FarEasTone</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">&nbsp;</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"8%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">8</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"15%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Thailand</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"18%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">TRUE H</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"24%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">TRUE-H</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid;\" width=\"16%\">\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">x</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif;\"><span style=\"font-size: 16px;\">Để sử dụng dịch vụ Roaming (Chuyển v&ugrave;ng quốc tế), trước khi ra nước ngo&agrave;i, kh&aacute;ch h&agrave;ng h&atilde;y soạn DK CVQT gửi 9123. Để đăng k&yacute; g&oacute;i cước, kh&aacute;ch h&agrave;ng soạn th&ecirc;m tin nhắn với c&uacute; ph&aacute;p T&ecirc;n g&oacute;i gửi 9123 (v&iacute; dụ: RU110 gửi 9123).</span></span></p>', 'posts/December2022/wPGbnzSXfYmURRyqhTuT.jpg', 'roaming-chau-a-khong-gioi-han-data-voi-loat-goi-cuoc-rux-moi-cua-vinaphone', NULL, NULL, 'PUBLISHED', 1, '2022-01-03 01:45:07', '2022-12-07 09:14:01'),
(6, 4, 1, '“Cháy” cùng World Cup với gói cước ưu đãi VÔ CỰC của VinaPhone', NULL, 'ới trọn bộ ưu đãi thoại và Data bất tận, gói VÔ CỰC chỉ có giá 10.000đ/24h.', '<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"color: #000000; font-family: Arial;\"><span style=\"font-size: 14.6667px; white-space: pre-wrap;\">Với kh&aacute;ch h&agrave;ng đang t&igrave;m kiếm 1 g&oacute;i cước ng&agrave;y đ&aacute;p ứng trọn vẹn nhu cầu Data v&agrave; nghe gọi, g&oacute;i cước V&Ocirc; CỰC của VinaPhone l&agrave; một trong những lựa chọn l&yacute; tưởng nhất hiện nay. Kh&ocirc;ng chỉ c&oacute; dung lượng tốc độ cao cực khủng l&ecirc;n đến 5GB/ng&agrave;y, g&oacute;i cước c&ograve;n cho ph&eacute;p kh&aacute;ch h&agrave;ng truy cập kh&ocirc;ng giới hạn dung lượng ở tốc độ thường. Như vậy, kh&aacute;ch h&agrave;ng c&oacute; thể xem trọn vẹn c&aacute;c trận đấu World Cup cũng như thỏa th&iacute;ch online, l&agrave;m việc v&agrave; giải tr&iacute; ho&agrave;n to&agrave;n kh&ocirc;ng lo ph&aacute;t sinh th&ecirc;m chi ph&iacute;. B&ecirc;n cạnh đ&oacute;, đăng k&yacute; g&oacute;i cước V&Ocirc; CỰC, kh&aacute;ch h&agrave;ng c&ograve;n được miễn ph&iacute; ho&agrave;n to&agrave;n c&aacute;c cuộc gọi nội mạng c&oacute; thời lượng dưới 20 ph&uacute;t. G&oacute;i cước cũng cung cấp th&ecirc;m 5 ph&uacute;t gọi ngoại mạng cho kh&aacute;ch h&agrave;ng c&oacute; nhu cầu li&ecirc;n lạc. Với trọn bộ ưu đ&atilde;i thoại v&agrave; Data bất tận, g&oacute;i V&Ocirc; CỰC chỉ c&oacute; gi&aacute; 10.000đ/24h. Mọi thu&ecirc; bao trả trước của VinaPhone hiện đều c&oacute; thể đăng k&yacute;. Để tận hưởng g&oacute;i cước V&Ocirc; CỰC, kh&aacute;ch h&agrave;ng h&atilde;y soạn tin nhắn theo c&uacute; ph&aacute;p DK VOCUC gửi 900 hoặc VOCUC gửi 900. Kh&aacute;ch h&agrave;ng cũng c&oacute; thể đăng k&yacute; online tại link: https://shop.vnpt.vn/chi-tiet-goi/vocuc.html Th&ocirc;ng tin chi tiết v&agrave; hỗ trợ giải đ&aacute;p, kh&aacute;ch h&agrave;ng vui l&ograve;ng gọi đến tổng đ&agrave;i 18001091</span></span></p>', 'posts/December2022/7xHZkmJxbjSkO0G3Eoq1.jpg', 'chay-cung-world-cup-voi-goi-cuoc-uu-dai-vo-cuc-cua-vinaphone', NULL, NULL, 'PUBLISHED', 1, '2022-01-03 01:52:17', '2022-12-07 09:14:13'),
(7, 4, 1, 'Internet VNPT nhanh hơn tới 2 lần – Giá không đổi', NULL, 'VNPT chính thức nâng tốc độ tất cả các gói cước Home lên tới 2 lần với mức giá không thay đổi', '<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">Từ ng&agrave;y 10/12/2022, VNPT ch&iacute;nh thức n&acirc;ng tốc độ tất cả c&aacute;c g&oacute;i cước Home l&ecirc;n tới 2 lần với mức gi&aacute; kh&ocirc;ng thay đổi. Từ nay, bạn c&oacute; thể thoải m&aacute;i lướt net với tốc độ si&ecirc;u đỉnh, si&ecirc;u &ldquo;mượt m&agrave;&rdquo; m&agrave; kh&ocirc;ng phải &ldquo;lăn tăn&rdquo; về gi&aacute;. Vừa NHANH &ndash; vừa RẺ, đ&oacute; chỉ c&oacute; thể l&agrave; c&aacute;c g&oacute;i Home của VNPT. G&oacute;i cước internet Home 1 với tốc độ được nh&acirc;n đ&ocirc;i cực &ldquo;sốc&rdquo;, từ 40Mbps l&ecirc;n đến 80Mbps, giữ nguy&ecirc;n mức gi&aacute; 165k/th&aacute;ng, đăng k&yacute; 6 th&aacute;ng tặng 1 th&aacute;ng, 12 th&aacute;ng tặng 3 th&aacute;ng sử dụng. G&oacute;i cước Internet &ndash; Truyền h&igrave;nh Home TV2 được n&acirc;ng tốc độ từ 80Mbps l&ecirc;n đến 120Mbps, t&iacute;ch hợp t&iacute;nh năng xem miễn ph&iacute; 180 k&ecirc;nh truyền h&igrave;nh MyTV đặc sắc. Đăng k&yacute; 6 th&aacute;ng tặng 1 th&aacute;ng, 12 th&aacute;ng tặng 3 th&aacute;ng sử dụng, với mức gi&aacute; kh&ocirc;ng thể hấp dẫn hơn, chỉ 190k/th&aacute;ng. Kh&ocirc;ng chỉ n&acirc;ng tốc độ, c&aacute;c g&oacute;i cước Home của VNPT c&ograve;n t&iacute;ch hợp th&ecirc;m thiết bị như: wifi mesh, camera, gi&uacute;p tăng cảm gi&aacute;c trải nghiệm của kh&aacute;ch h&agrave;ng khi sử dụng. G&oacute;i cước Home 3 Super, tốc độ internet 150Mbps, trang bị k&egrave;m 01 thiết bị wifi mesh. G&oacute;i cước Home TV4 Super, t&oacute;c độ internet 250Mbps, miễn ph&iacute; xem 180 k&ecirc;nh truyền h&igrave;nh MyTV, trang bị k&egrave;m 02 thiết bị wifi mesh. G&oacute;i cước Home TV Super Safe, tốc độ internet 150Mbps, miễn ph&iacute; xem 180 k&ecirc;nh truyền h&igrave;nh MyTV, trang bị k&egrave;m 01 thiết bị wifi mesh, 02 thiết bị camera. Với c&aacute;c g&oacute;i cước t&iacute;ch hợp thiết bị của VNPT, bạn vừa sở hữu một đường truyền internet nhanh, xuy&ecirc;n tường, xuy&ecirc;n tầng, kh&ocirc;ng ngại vật cản, kh&ocirc;ng lo giật lag, đồng thời c&ograve;n c&oacute; thể đảm bảo an ninh, an to&agrave;n cho c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh. V&agrave; c&ograve;n rất nhiều c&aacute;c g&oacute;i cước si&ecirc;u Ưu đ&atilde;i, si&ecirc;u Hấp dẫn kh&aacute;c nữa&hellip; Đặc biệt, chương tr&igrave;nh n&acirc;ng tốc độ được &aacute;p dụng cho tất cả đối tượng kh&aacute;ch h&agrave;ng, bao gồm kh&aacute;ch h&agrave;ng mới v&agrave; kh&aacute;ch h&agrave;ng hiện đ&atilde; c&oacute; g&oacute;i cước. Đ&acirc;y l&agrave; một điểm đặc biệt so với chương tr&igrave;nh của nh&agrave; mạng kh&aacute;c, thể hiện sự tận t&acirc;m s&acirc;u sắc, phục vụ chu đ&aacute;o của VNPT đối với kh&aacute;ch h&agrave;ng. Đồng thời, VNPT đ&atilde; rất &ldquo;t&acirc;m l&yacute;&rdquo; khi triển khai chương tr&igrave;nh N&acirc;ng tốc độ c&aacute;c g&oacute;i cước Home tr&ugrave;ng khớp với khoảng thời gian diễn ra giải b&oacute;ng đ&aacute; to&agrave;n cầu World Cup. Đ&acirc;y l&agrave; giải đấu với những trận cầu c&oacute; một kh&ocirc;ng hai, những ch&acirc;n s&uacute;t số 1 thế giới, những khoảnh khắc kinh điển kh&ocirc;ng lặp lại lần thứ 2 trong lịch sử. Trải nghiệm trọn vẹn cảm gi&aacute;c sống động, rực lửa trong từng trận đấu World Cup c&ugrave;ng đường truyền internet mượt m&agrave;, nhanh l&agrave; điều n&ecirc;n l&agrave;m. Bạn đừng chần chừ, h&atilde;y chọn ngay cho m&igrave;nh một g&oacute;i cước Home th&iacute;ch hợp bạn nh&eacute;!</span></span></p>', 'posts/December2022/59r34HdRH2VDgJx7G5Ry.jpg', 'internet-vnpt-nhanh-hon-toi-2-lan-gia-khong-doi', NULL, NULL, 'PUBLISHED', 1, '2022-01-03 02:01:43', '2022-12-07 09:14:28'),
(10, 4, 2, 'Home Tiết Kiệm', NULL, 'Tiết kiệm tới 50% chi phí khi đăng ký gói cước combo truyền hình + internet + di động', '<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span class=\"MsoHyperlink\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">Home Tiết kiệm : 239.000đ/ th&aacute;ng (đ&atilde; VAT)</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">(Gi&aacute; chỉ từ 191.200đ/th&aacute;ng khi đ&oacute;ng trước cước)</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">&nbsp;</span></p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; border: 1px solid; color: #ffffff; font-family: Roboto; font-size: 16px; background-color: #2074bc; height: 114px;\" width=\"775\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 266.719px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Gi&aacute; g&oacute;i 1 th&aacute;ng (c&oacute; VAT)</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 507.281px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">239.000 (*)</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 266.719px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Gi&aacute; g&oacute;i 6 th&aacute;ng (c&oacute; VAT)</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 507.281px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">1.434.000 &ndash; Ưu đ&atilde;i tặng th&ecirc;m 1 th&aacute;ng (*)</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 266.719px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Gi&aacute; g&oacute;i 12 th&aacute;ng&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">(c&oacute; VAT)</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 507.281px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">2.868.000 &ndash; Ưu đ&atilde;i tặng th&ecirc;m 3 th&aacute;ng (*)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">(*) Gi&aacute; g&oacute;i chưa bao gồm Set-top-box cho TV th&ocirc;ng thường.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">&Aacute;p dụng cho KH đăng k&yacute; mới từ 19/07/2021.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">*Thiết bị mua th&ecirc;m (Add-on) c&ugrave;ng g&oacute;i cước:</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">Wifi Mesh VNPT - Thiết bị khuếch đại t&iacute;n hiệu Wifi (d&agrave;nh cho c&aacute;c ng&ocirc;i nh&agrave;/căn hộ c&oacute; diện t&iacute;ch lớn)</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">(Gi&aacute; chỉ từ 20.000đ/th&aacute;ng khi đ&oacute;ng trước cước)</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%; tab-stops: 14.15pt;\"><span lang=\"EN-GB\" style=\"color: black; mso-themecolor: text1; mso-ansi-language: EN-GB;\">&nbsp;</span></p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; border: 1px solid; color: #ffffff; font-family: Roboto; font-size: 16px; background-color: #2074bc; height: 138px;\" width=\"774\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 221.234px; height: 66px;\" rowspan=\"2\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">G&oacute;i cước</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 551.766px; height: 33px;\" colspan=\"2\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Chu kỳ g&oacute;i cước</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 203.078px; height: 33px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">6/</span><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">7/8</span><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">/9</span><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">&nbsp;</span>th&aacute;ng</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 348.688px; height: 33px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">12/14/</span><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">15/16</span><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">/17/18<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">&nbsp;</span></span><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">th&aacute;ng</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 221.234px; height: 63px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Gi&aacute; 01 thiết bị Wifi Mesh (đồng - c&oacute; VAT)</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 203.078px; height: 63px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">180.000</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 348.688px; height: 63px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">360.000</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Khi sử dụng g&oacute;i Home Combo, kh&aacute;ch h&agrave;ng c&oacute; thể th&ecirc;m th&agrave;nh vi&ecirc;n v&agrave;o nh&oacute;m để sử dụng chung data v&agrave; gọi nội nh&oacute;m miễn ph&iacute; giữa c&aacute;c th&agrave;nh vi&ecirc;n.</p>\r\n<p>&nbsp;</p>\r\n<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng tải App MyVNPT để sử dụng g&oacute;i hoặc thực hiện c&aacute;c c&uacute; ph&aacute;p tin nhắn sử dụng như sau:</p>\r\n<p>&nbsp;</p>\r\n<p>- Chủ nh&oacute;m th&ecirc;m th&agrave;nh vi&ecirc;n v&agrave;o nh&oacute;m: THEM &lt;số thu&ecirc; bao&gt; gửi 888</p>\r\n<p>&nbsp;</p>\r\n<p>- Chủ nh&oacute;m hủy th&agrave;nh vi&ecirc;n trong nh&oacute;m: HUYTV &lt;số thu&ecirc; bao&gt; gửi 888</p>\r\n<p>&nbsp;</p>\r\n<p>- Thay đổi chủ nh&oacute;m: THAYDOI &lt;Số thu&ecirc; bao chủ nh&oacute;m mới&gt; gửi 888</p>\r\n<p>&nbsp;</p>\r\n<p>- Kiểm tra dung lượng g&oacute;i: KTTH gửi 888</p>\r\n<p>&nbsp;</p>\r\n<p>- Chủ nh&oacute;m kiểm tra số th&agrave;nh vi&ecirc;n: TRACUUTV gửi 888</p>\r\n<p>&nbsp;</p>\r\n<p>- Chủ nh&oacute;m giới hạn lưu lượng th&agrave;nh vi&ecirc;n: GHLL SOTHUEBAO X gửi 888</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;(X l&agrave; số dung lượng data giới hạn, đơn vị MB)</p>\r\n<p>&nbsp;</p>\r\n<p>- Chủ nh&oacute;m mua g&oacute;i MT: Soạn DK &lt;t&ecirc;n g&oacute;i&gt; gửi 888</p>\r\n<p>&nbsp;</p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; border: 1px solid; color: #ffffff; width: 970px; margin-top: 20px; margin-bottom: 40px; font-family: roboto; font-size: 16px; background-color: #2074bc;\" width=\"837\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"80\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">T&ecirc;n g&oacute;i</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"139\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Gi&aacute; g&oacute;i</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"180\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Dung lượng miễn ph&iacute;</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"80\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">MT25</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"139\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">25.000</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"180\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">4 GB</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"80\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">MT35</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"139\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">35.000</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"180\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">6 GB</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"80\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">MT75</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"139\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">75.000</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"180\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">12 GB</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"80\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">MT135</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"139\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">135.000</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; padding: 5px 8px; text-align: center;\" width=\"180\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; font-family: roboto; line-height: 24px;\">25 GB</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'posts/December2022/7oNf08r7mIlSi25brKmB.jpg', 'home-tiet-kiem', NULL, NULL, 'PUBLISHED', 0, '2022-12-07 08:30:50', '2022-12-07 08:39:42');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(11, 4, 2, 'Home Kết Nối', NULL, 'Tiết kiệm tới 50% chi phí khi đăng ký gói cước combo truyền hình + internet + di động', '<p>Home Kết Nối l&agrave; g&oacute;i cước bao gồm Internet 100Mbps, Di động, MyTV v&agrave; dịch vụ nội dung, ph&ugrave; hợp với gia đ&igrave;nh từ 4 - 5 th&agrave;nh vi&ecirc;n c&oacute; nhu cầu giao tiếp, kết nối li&ecirc;n tục kh&ocirc;ng giới hạn mọi l&uacute;c mọi nơi, gi&aacute; cước chỉ từ 255.200đ/1 th&aacute;ng. B&agrave;i viết sau sẽ cung cấp th&ecirc;m th&ocirc;ng tin chi tiết về c&aacute;c ưu đ&atilde;i c&oacute; trong g&oacute;i cước!</p>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 10px 0cm 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000; font-family: Verdana, Geneva, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Th&ocirc;ng tin chi tiết g&oacute;i cước Home Kết Nối</span></span></span></span></p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; border: 0.5pt solid windowtext; color: #000000; font-family: Verdana, Geneva, sans-serif; font-size: 16px; text-align: justify; width: 812px; height: 503px;\" border=\"1\" cellspacing=\"0\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 36pt; text-align: left; vertical-align: middle; width: 436.344px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">1. FiberVNN</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 36pt; vertical-align: middle; width: 374.656px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; color: #cc0000;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">100 Mbps</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; height: 60pt; text-align: left; vertical-align: middle; width: 436.344px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">Ưu đ&atilde;i Tốc độ cao Fiber</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; height: 60pt; text-align: left; vertical-align: middle; width: 374.656px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">Đường truyền tốc độ 200Mpbs v&agrave;o c&aacute;c ứng dụng OTT, Zalo, MyTV, MyTV Net</span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 33.75pt; vertical-align: middle; width: 436.344px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">2. MyTV&nbsp;</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 33.75pt; vertical-align: middle; width: 374.656px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">N&acirc;ng cao</span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; height: 28.5pt; vertical-align: middle; width: 436.344px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">3. Data chia sẻ</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; height: 28.5pt; vertical-align: middle; width: 374.656px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; color: red;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">30 GB</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 30.75pt; vertical-align: middle; width: 436.344px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">4. Thoại nh&oacute;m&nbsp;</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 30.75pt; text-align: left; vertical-align: middle; width: 374.656px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">Thoại nội nh&oacute;m giữa c&aacute;c thu&ecirc; bao di động th&agrave;nh vi&ecirc;n</span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 28.5pt; vertical-align: middle; width: 436.344px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; color: red;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">Thoại nội mạng chia sẻ&nbsp;</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 28.5pt; vertical-align: middle; width: 374.656px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; color: red;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">1.000 ph&uacute;t thoại nội mạng</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 30pt; text-align: left; vertical-align: middle; width: 436.344px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">Ứng dụng MyTVnet (</span></span></span></span><em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">d&agrave;nh ri&ecirc;ng cho chủ nh&oacute;m</em><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">)</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 30pt; vertical-align: middle; width: 374.656px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">&nbsp;Data truy cập + Ch&ugrave;m k&ecirc;nh tin tức&nbsp; (110 k&ecirc;nh) + Net Kids</span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 30pt; text-align: left; vertical-align: middle; width: 436.344px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">Sử dụng DV GTGT (</span></span></span></span><em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">d&agrave;nh ri&ecirc;ng cho chủ nh&oacute;m</em><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">)</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 30pt; vertical-align: middle; width: 374.656px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">Data truy cập dịch vụ Zalo .</span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 39.75pt; text-align: left; vertical-align: middle; width: 436.344px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">Số lượng th&agrave;nh vi&ecirc;n</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 39.75pt; text-align: left; vertical-align: middle; width: 374.656px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">Tối đa 5 th&agrave;nh vi&ecirc;n (đ&atilde; bao gồm chủ nh&oacute;m)</span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 54.75pt; text-align: left; vertical-align: middle; width: 436.344px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">N&acirc;ng cấp tốc độ&nbsp;</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; background-color: whitesmoke; height: 54.75pt; text-align: left; vertical-align: middle; width: 374.656px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; font-family: Verdana, sans-serif;\">N&acirc;ng tốc độ&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; color: red;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\">100 Mbps -&gt; 150Mbps</span></span></span></span><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\">&nbsp;(G&oacute;i Home Combo 2): Cước ph&iacute; cộng th&ecirc;m v&agrave;o gi&aacute; g&oacute;i:&nbsp;</span></span></span><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent; color: red;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14.6667px; vertical-align: baseline; background: transparent;\">49.000đ/th&aacute;ng</span></span></span></span></span></span></span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'posts/December2022/g6tUvfFoTEAJeyJ1BP5A.jpg', 'home-ket-noi', NULL, NULL, 'PUBLISHED', 0, '2022-12-07 08:33:02', '2022-12-07 08:39:56');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(12, 4, 2, 'Home Giải Trí', NULL, 'Gói cước combo bao gồm truyền hình + internet + di động\r\nInternet tốc độ 100 Mbps\r\n30GB data 3G/4G', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #000000; font-family: Verdana, Geneva, sans-serif;\"><strong>Ưu đ&atilde;i sử dụng</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #000000; font-family: Verdana, Geneva, sans-serif;\">&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #000000; font-family: Verdana, Geneva, sans-serif;\">- Tốc độ internet: 100 Mbps&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #000000; font-family: Verdana, Geneva, sans-serif;\">- Miễn ph&iacute; thoại nội nh&oacute;m, chia sẻ data trong nh&oacute;m</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #000000; font-family: Verdana, Geneva, sans-serif;\">- Truyền h&igrave;nh MyTV n&acirc;ng cao l&ecirc;n tới 177 k&ecirc;nh, bao gồm VTCCab, QNET, HBO</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #000000; font-family: Verdana, Geneva, sans-serif;\">- 30GB data chia sẻ</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #000000; font-family: Verdana, Geneva, sans-serif;\">- MIỄN PH&Iacute; Data truy cập ứng dụng MyTV OTT</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #000000; font-family: Verdana, Geneva, sans-serif;\"><strong>&nbsp;</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"color: #000000; font-family: Verdana, Geneva, sans-serif;\"><strong>Ch&iacute;nh s&aacute;ch gi&aacute;</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000; font-family: Verdana, Geneva, sans-serif; text-align: justify;\">&nbsp;</p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; border: none; color: #000000; font-family: Verdana, Geneva, sans-serif; font-size: 16px; text-align: justify; width: 790px; height: 561px;\" border=\"3\" cellspacing=\"0\" align=\"center\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #f8cbad; height: 35.1pt; text-align: left; vertical-align: middle; width: 789px;\" colspan=\"3\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Gi&aacute; cước khi MyTV sử dụng APP</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 526px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">G&oacute;i 1 th&aacute;ng&nbsp;</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: whitesmoke; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: #002060;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">299,000</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\" rowspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">G&oacute;i 6 th&aacute;ng (tặng 1)</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Trọn g&oacute;i</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: whitesmoke; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: #002060;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">1,794,000</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Đơn gi&aacute;</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: whitesmoke; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: red;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">256,285</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\" rowspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">G&oacute;i 12 th&aacute;ng (tặng 3)</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Trọn g&oacute;i</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: whitesmoke; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: #002060;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">3,588,000</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Đơn gi&aacute;</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: whitesmoke; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: red;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">239,200</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #f8cbad; height: 35.1pt; text-align: left; vertical-align: middle; width: 789px;\" colspan=\"3\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Gi&aacute; cước khi MyTV sử dụng STB&nbsp;</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 526px;\" colspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">G&oacute;i 1 th&aacute;ng&nbsp;</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: whitesmoke; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: #002060;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">334,000</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\" rowspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">G&oacute;i 6 th&aacute;ng (tặng 1)</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Trọn g&oacute;i</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: whitesmoke; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: #002060;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">2,004,000</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Đơn gi&aacute;</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: whitesmoke; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: red;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">286,285</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\" rowspan=\"2\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">G&oacute;i 12 th&aacute;ng (tặng 3)</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Trọn g&oacute;i</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: whitesmoke; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: #002060;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">4,008,000</span></span></span></span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: #00b0f0; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Đơn gi&aacute;</span></span></span></span></td>\r\n<td style=\"box-sizing: border-box; border: 1px solid #000000; background-color: whitesmoke; height: 35.1pt; text-align: center; vertical-align: middle; width: 263px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: Verdana, Geneva, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: red;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">267,200<br /><br /></span></span></span></span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'posts/December2022/q8WEg2CwZJmGpN69yX0G.jpg', 'home-giai-tri', NULL, NULL, 'PUBLISHED', 0, '2022-12-07 08:34:59', '2022-12-07 08:40:13'),
(13, 4, 4, 'VÔ CỰC', NULL, '5GB data (hết dung lượng hạ băng thông)\r\nMiễn phí cuộc gọi di động nội mạng dưới 20 phút', '<p>Ưu đ&atilde;i g&oacute;i cước</p>\r\n<p>- 5 GB data (hết dung lượng hạ băng th&ocirc;ng)</p>\r\n<p>- Miễn ph&iacute; cuộc gọi di động nội mạng dưới 20 ph&uacute;t</p>\r\n<p>- 5 ph&uacute;t gọi di động ngoại mạng</p>\r\n<p>Gi&aacute; cước: 10.000đ/ng&agrave;y</p>\r\n<p>C&uacute; ph&aacute;p đăng k&yacute;: DK VOCUC gửi 900 hoặc VOCUC gửi 900</p>\r\n<p>C&uacute; ph&aacute;p huỷ: HUY VOCUC gửi 900</p>\r\n<p>C&uacute; ph&aacute;p tra cứu: TRACUU VOCUC gửi 900</p>\r\n<p>Điều kiện đăng k&yacute; g&oacute;i cước</p>\r\n<p>- &Aacute;p dụng cho thu&ecirc; bao di động trả trước</p>\r\n<p>Gia hạn g&oacute;i cước</p>\r\n<p>G&oacute;i cước tự động gia hạn. (Nếu t&agrave;i khoản kh&ocirc;ng đủ tiền để gia hạn, g&oacute;i cước sẽ tự hủy)</p>', 'posts/December2022/CrY4tkKFfpX0gOvVRMWw.jpg', 'vo-cuc', NULL, NULL, 'PUBLISHED', 0, '2022-12-07 08:36:51', '2022-12-07 08:36:51'),
(14, 4, 4, 'Đỉnh TV159', NULL, '4GB/ngày\r\n1.500 phút nội mạng VinaPhone + 200 phút ngoại mạng + 200SMS nội mạng\r\nMyTV gói chuẩn hơn 140 kênh', '<p>Ưu đ&atilde;i:&nbsp;</p>\r\n<p>- 4GB/ng&agrave;y (hết dung lượng dừng truy cập)</p>\r\n<p>- 1.500 ph&uacute;t nội mạng VinaPhone + 200 ph&uacute;t ngoại mạng + 200SMS nội mạng</p>\r\n<p>- Truyền h&igrave;nh MyTV g&oacute;i chuẩn hơn 140 k&ecirc;nh bao gồm ch&ugrave;m k&ecirc;nh VTVCab + kho VOD giải tr&iacute; đặc sắc&nbsp;&nbsp;</p>\r\n<p>Đăng k&yacute;:&nbsp;</p>\r\n<p>- Đăng k&yacute; qua SMS</p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; border: 1px solid; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; height: 161px;\" width=\"846\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 281.031px; height: 24px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Ti&ecirc;u ch&iacute;</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 283.328px; height: 24px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">C&uacute; ph&aacute;p</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 280.641px; height: 24px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Gửi tới</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 281.031px; height: 24px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Đăng k&yacute; g&oacute;i cước</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 283.328px; height: 24px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">D159V hoặc DK D159V</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 280.641px; height: 134px;\" rowspan=\"3\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">900 (Tin nhắn miễn ph&iacute;)</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 281.031px; height: 46px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Kiểm tra dung lượng v&agrave; ph&uacute;t gọi g&oacute;i cước đang sử dụng</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 283.328px; height: 46px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">TRACUU D159V</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 281.031px; height: 64px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Hủy g&oacute;i cước</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 283.328px; height: 64px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">HUY D159V</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Gi&aacute; cước: 159.000đ/th&aacute;ng</p>\r\n<p>Quy định chung:&nbsp;</p>\r\n<p>- Gi&aacute; g&oacute;i cước đ&atilde; bao gồm thuế GTGT&nbsp;</p>\r\n<p>- Thời gian cam kết 18 th&aacute;ng. Trong thời gian cam kết, kh&ocirc;ng được chuyển mạng.&nbsp;</p>\r\n<p>- G&oacute;i cước được gia hạn tự động khi hết chu kỳ cam kết.</p>\r\n<p>- Thời hạn sử dụng của g&oacute;i phụ thuộc v&agrave;o thời hạn sử dụng của T&agrave;i khoản ch&iacute;nh. Nếu T&agrave;i khoản ch&iacute;nh bị kh&oacute;a th&igrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng sử dụng được c&aacute;c quyền lợi c&ograve;n lại, kh&aacute;ch h&agrave;ng phải nạp tiền th&igrave; mới tiếp tục được sử dụng.</p>\r\n<p>- C&aacute;c thu&ecirc; bao VinaPhone đ&atilde; đăng k&yacute; mua g&oacute;i cước th&agrave;nh c&ocirc;ng nhưng chuyển đổi từ c&aacute;c g&oacute;i cước trả trước sang c&aacute;c g&oacute;i cước trả sau th&igrave; quyền lợi của g&oacute;i sẽ bị huỷ, kh&aacute;ch h&agrave;ng kh&ocirc;ng được ho&agrave;n lại cước đăng k&yacute;.</p>', 'posts/December2022/WZn0eodK1EWl436a3sJP.jpg', 'dinh-tv159', NULL, NULL, 'PUBLISHED', 0, '2022-12-07 08:38:40', '2022-12-07 08:39:13'),
(15, 4, 4, 'DIGI129', NULL, '2GB/ngày\r\n1.000 phút nội mạng VinaPhone + 50 phút ngoại mạng\r\nMiễn phí 3G/4G khi truy cập app MyTV', '<p>Ưu đ&atilde;i:&nbsp;</p>\r\n<p>- 2GB/ng&agrave;y&nbsp;</p>\r\n<p>- 1.000 ph&uacute;t nội mạng VinaPhone + 50 ph&uacute;t ngoại mạng&nbsp;</p>\r\n<p>- Truyền h&igrave;nh MyTV OTT 144 k&ecirc;nh (SD+HD) + kho VOD giải tr&iacute; đặc sắc sử dụng tr&ecirc;n thiết bị Smartphone&nbsp;</p>\r\n<p>- Trải nghiệm dịch vụ: &acirc;m nhạc, phim ảnh, y tế, sức khỏe&nbsp;</p>\r\n<p>- Miễn ph&iacute; 3G/4G khi truy cập app MyTV&nbsp;</p>\r\n<p>Đăng k&yacute;:&nbsp;</p>\r\n<p>- Đăng k&yacute; qua SMS:&nbsp;</p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; border: 1px solid; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; height: 137px;\" width=\"783\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 260.656px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Ti&ecirc;u ch&iacute;</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 260.656px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">C&uacute; ph&aacute;p</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 260.688px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Gửi tới</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 260.656px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Đăng k&yacute; g&oacute;i cước</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 260.656px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">DIGI129</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 260.688px;\" rowspan=\"3\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">9588 (Tin nhắn miễn ph&iacute;)</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 260.656px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Kiểm tra dung lượng v&agrave; ph&uacute;t gọi g&oacute;i cước đang sử dụng</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 260.656px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">TRACUUHST</p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td style=\"box-sizing: border-box; border: 1px solid; width: 260.656px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Hủy g&oacute;i cước</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; border: 1px solid; text-align: center; width: 260.656px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">HUY&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">DIGI129</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>- Đăng k&yacute; qua ứng dụng MyVNPT&nbsp;</p>\r\n<p>Gi&aacute; cước: 129.000đ/th&aacute;ng</p>\r\n<p>Quy định chung:&nbsp;</p>\r\n<p>- Gi&aacute; g&oacute;i cước đ&atilde; bao gồm thuế GTGT&nbsp;</p>\r\n<p>- Sau khi hết lưu lượng data tốc độ cao, hạ băng th&ocirc;ng 512 Kbps/512Kbps&nbsp;</p>\r\n<p>- Lưu lượng Data tốc độ cao của g&oacute;i kh&ocirc;ng bao gồm Data truy cập dịch vụ nội dung số&nbsp;</p>\r\n<p>- C&aacute;c g&oacute;i cước được gia hạn tự động.&nbsp;</p>', 'posts/December2022/sEOX0eKiPZX8daOvRdum.jpg', 'digi129', NULL, NULL, 'PUBLISHED', 0, '2022-12-07 08:43:32', '2022-12-07 08:43:32'),
(16, 4, 3, 'Tôi đang dùng máy Ipad có sử dụng sim của Vinaphone để truy cập Internet, khi sim hết tiền tôi muốn nạp thẻ để sử dụng tôi phải làm như thế nào?', NULL, NULL, '<p>Bạn c&oacute; thể nạp thẻ bằng c&aacute;ch truy cập v&agrave;o địa chỉ web: http://naptien.vinaphone.com.vn, từ m&aacute;y IPad hoặc truy cập Internet qua địa chỉ tr&ecirc;n v&agrave;o phần nạp tiền bằng user v&agrave; pass của Vinaportal , sau đ&oacute; nhập 12 m&atilde; số b&iacute; mật của thẻ c&agrave;o để nạp tiền Ngo&agrave;i ra từ m&agrave;n h&igrave;nh Ipad bạn chọn C&agrave;i đặt -&gt; Chọn ứng dụng Sim -&gt; v&agrave;o mục Tiện &iacute;ch -&gt; Chọn Tra cứu v&agrave;o mục Nạp tiền. 1</p>', 'posts/December2022/LSMGkvLVdJA7pKQEcTnW.png', 'toi-dang-dung-may-ipad-co-su-dung-sim-cua-vinaphone-de-truy-cap-internet-khi-sim-het-tien-toi-muon-nap-the-de-su-dung-toi-phai-lam-nhu-the-nao', NULL, NULL, 'PUBLISHED', 0, '2022-12-07 09:17:44', '2022-12-07 09:17:44'),
(17, 4, 3, 'Tôi mua thẻ cào của Vinaphone nhưng khi cào để nạp tiền tôi thấy có 14 mã số bí mật thay bằng 12 mã số như trước đây? Đây có phải là thẻ giả hay không?', NULL, NULL, '<p>Từ ng&agrave;y 25/11/2011 Vinaphone c&oacute; c&ocirc;ng văn số 5537/VNP-KD, ng&agrave;y 25/11/2011 về việc th&ocirc;ng b&aacute;o tăng độ d&agrave;i m&atilde; thẻ từ 12 chữ số l&ecirc;n 14 chữ số. Do đ&oacute; trường hợp thẻ c&agrave;o của bạn c&oacute; 14 m&atilde; số b&iacute; mật l&agrave; ho&agrave;n to&agrave;n hợp lệ. Trong trường hợp bạn kh&ocirc;ng nạp được thẻ bạn c&oacute; thể gọi điện l&ecirc;n Tổng đ&agrave;i của Vinaphone 18001091 hoặc 9191 để kiểm tra t&igrave;nh trạng của m&igrave;nh.</p>', 'posts/December2022/4CvUUUQKyHRwYSDGMu4z.png', 'toi-mua-the-cao-cua-vinaphone-nhung-khi-cao-de-nap-tien-toi-thay-co-14-ma-so-bi-mat-thay-bang-12-ma-so-nhu-truoc-day-day-co-phai-la-the-gia-hay-khong', NULL, NULL, 'PUBLISHED', 0, '2022-12-07 09:23:21', '2022-12-07 09:23:21'),
(18, 4, 3, 'Tôi đang sử dụng thuê bao Ezcom trả trước của Vinaphone nhưng chưa biết cách nạp tiền vào tài khoản để sử dụng. Tôi có thể thao tác như thế nào để nạp được tiền cho thuê bao EZcom của mình?', NULL, NULL, '<p>Để nạp thẻ v&agrave;o thu&ecirc; bao EZcom bạn c&oacute; thể l&agrave;m theo c&aacute;c c&aacute;ch như sau: C&aacute;ch 1: - Với USB ZTE chọn Account sau đ&oacute; bấm c&acirc;u lệnh nạp tiền *100* m&atilde; số b&iacute; mật của thẻ nạp#OK v&agrave;o &ocirc; trống - Với Với USB Huawei Chọn USSD sau đ&oacute; c&acirc;u lệnh nạp tiền *100* m&atilde; số b&iacute; mật của thẻ nạp# v&agrave;o &ocirc; trống, sau đ&oacute; bấm Send C&aacute;ch 2: Nạp thẻ qua trang web: http://naptien.vinaphone.com.vn, trong trường hợp n&agrave;y bạn c&oacute; thể truy cập đia chỉ tr&ecirc;n từ m&aacute;y di động khi đ&oacute; trang web tự động nhận dạng số thu&ecirc; bao của bạn v&agrave; tiếp tục bạn v&agrave;o mục nạp tiền để nạp thẻ cho thu&ecirc; bao của m&igrave;nh. Bạn c&oacute; thể nạp cho ch&iacute;nh thu&ecirc; bao của m&igrave;nh hoặc cho thu&ecirc; bao kh&aacute;c bằng c&aacute;ch nhập số thu&ecirc; bao v&agrave; nhập m&atilde; số b&iacute; mật của thẻ nạp, cuối c&ugrave;ng nhập chuỗi k&yacute; tự x&aacute;c nhận bấm nạp tiền để ho&agrave;n th&agrave;nh. C&aacute;ch 3: Bạn c&oacute; thể lắp Sim EZcom của m&igrave;nh v&agrave;o điện thoại di động v&agrave; thao t&aacute;c nạp thẻ như th&ocirc;ng thường: - Gọi 900 nghe hướng dẫn của hệ thống sau đ&oacute; bấm số 2 để nạp thẻ - Nạp qua h&igrave;nh thức USSD: bấm *100* m&atilde; số b&iacute; mật #OK</p>', 'posts/December2022/ATsgucsnGsv0OtDmpIQG.png', 'toi-dang-su-dung-thue-bao-ezcom-tra-truoc-cua-vinaphone-nhung-chua-biet-cach-nap-tien-vao-tai-khoan-de-su-dung-toi-co-the-thao-tac-nhu-the-nao-de-nap-duoc-tien-cho-thue-bao-ezcom-cua-minh', NULL, NULL, 'PUBLISHED', 0, '2022-12-07 09:23:54', '2022-12-07 09:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `excerpt`, `body`, `image`, `meta_description`, `meta_keywords`, `status`, `price`, `created_at`, `updated_at`) VALUES
(3, 'Giỏ Hoa Quả', 'gio-hoa-qua', 'Giỏ Hoa Quả', '<p>Giỏ Hoa Quả</p>', 'products/November2021/kbEMeWx7GxTGlvhATWl9.jpg', 'Giỏ Hoa Quả', 'gio hoa qua', 'ACTIVE', 150000, '2021-10-31 19:48:00', '2021-10-31 19:48:40'),
(4, 'Hạt Tiêu', 'hat-tieu', '100% tiêu đen, không tạp chất, tiêu được chọn lựa kỹ, không vụn dăm, chắc hạt, cay nồng đặc trưng. Không chất bảo quản. Không độn hạt bông gòn, hạt đu đủ, hạt cà phê non. Không tẩm bùn, sỏi, bột mì để tăng trọng lượng.', '<p>C&Ocirc;NG DỤNG SẢN PHẨM</p>\r\n<p>- Ti&ecirc;u đen xay l&agrave; sản phẩm n&ocirc;ng nghiệp tuyệt vời được sử dụng trong hầu hết c&aacute;c m&oacute;n ăn của nhiều nền ẩm thực kh&aacute;c nhau, chỉ với một lượng nhỏ ti&ecirc;u thi đ&atilde; gi&uacute;p m&oacute;n ăn dậy m&ugrave;i thơm quyến rũ.</p>\r\n<p>- Đặc biệt ti&ecirc;u c&ograve;n l&agrave; b&iacute; quyết tuyệt vời để khử đi m&ugrave;i tanh cho nhiều nguy&ecirc;n liệu chế biến.</p>\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n<p>- Ti&ecirc;u đen xay Vipep l&agrave; nh&atilde;n hiệu duy nhất truy xuất được nguồn gốc từ vườn trồng cho đến nh&agrave; m&aacute;y.</p>\r\n<p>- Sản phẩm được chế biến tr&ecirc;n d&acirc;y truyền đạt ti&ecirc;u chuẩn ISO 22000 v&agrave; cam kết kh&ocirc;ng chứa dư lượng thuốc bảo vệ thực vật. Mỗi hạt ti&ecirc;u đều được người n&ocirc;ng d&acirc;n chọn lựa kỹ lưỡng nhằm mang đến sản phẩm c&oacute; chất lượng tốt nhất tới tay người sử dụng.</p>\r\n<p>- Sản phẩm đ&atilde; v&agrave; đang được xuất sang c&aacute;c thị trường như Mỹ, Nhật v&agrave; &Uacute;c.</p>\r\n<p>- Ti&ecirc;u đen xay được đ&oacute;ng g&oacute;i trong hộp bắt mắt v&agrave; kh&ocirc;ng chứa hương liệu cũng như chất bảo quản.</p>', 'products/November2021/CGf3tSkSHGLCTLNYDAus.jpg', 'Hạt Tiêu', 'hat tieu', 'ACTIVE', 150000, '2021-10-31 19:49:00', '2021-11-26 23:36:45'),
(5, 'Lạp Xưởng', 'lap-xuong', 'Lạp xưởng heo, lạp xưởng tôm Cần Giuộc (lạp xưởng nem) được làm theo phương thức truyền thống, với nguyên liệu thịt/tôm đất thượng hạng & được ướp rượu Mai Quế Lộ', '<p>Để c&oacute; m&oacute;n lạp xưởng ngon người ta phải chọn những miếng thịt nạc, tươi n&oacute;ng, đem xay rồi ướp với rượu mai quế lộ, tỏi, đường, ti&ecirc;u hột&hellip; Ri&ecirc;ng mỡ th&igrave; xắt nhỏ cỡ hạt lựu rồi ướp với đường c&ugrave;ng gia vị cho đến l&uacute;c c&oacute; độ trong th&igrave; mới đem trộn với thịt. Lạp xưởng nổi bật với ti&ecirc;u ch&iacute; kh&ocirc;ng qu&aacute; nhiều mỡ như những loại th&ocirc;ng thường, cắn một miếng c&oacute; cảm gi&aacute;c như đang cắn một miếng thịt tươi c&oacute; vị mặn mặn, ngọt ngọt h&ograve;a lẫn với m&ugrave;i ti&ecirc;u thơm lừng, cay cay.</p>\r\n<p>Lạp xưởng t&ocirc;m c&oacute; nguy&ecirc;n liệu ch&iacute;nh l&agrave; thịt con t&ocirc;m đất địa phương, theo tỷ lệ t&ocirc;m 60%, thịt v&agrave; mỡ 20% n&ecirc;n th&iacute;ch hợp với người cần khẩu phần &iacute;t b&eacute;o. Người s&agrave;nh ăn lấy lạp xưởng t&ocirc;m nướng tr&ecirc;n bếp than hay lăn (chi&ecirc;n) với nước, m&agrave; nước dừa th&igrave; c&agrave;ng ngon. Cho nước v&agrave;o xăm xắp canh lửa nhỏ rồi d&ugrave;ng đũa trở đều cho đến khi cạn nước th&igrave; chiếc lạp xưởng cũng đ&atilde; ch&iacute;n b&oacute;ng nhẫy, v&agrave;ng ruộm nh&igrave;n đ&atilde; mắt. Lạp xưởng t&ocirc;m tươi để &iacute;t ng&agrave;y cho l&ecirc;n men vừa c&oacute; hương vị như nem chua vừa c&oacute; c&aacute;i ngọt b&eacute;o của thịt nạc, ăn &iacute;t ng&aacute;n m&agrave; đưa cay cũng rất tuyệt.</p>', 'products/November2021/QWOVsYSZYvcgV8LWx0po.jpg', 'Lạp Xưởng', 'lap xuong', 'ACTIVE', 150000, '2021-10-31 19:50:00', '2021-11-26 21:01:21'),
(6, 'Nước Mắm', 'nuoc-mam', '95% tinh cốt nước mắm cá cơm Phú Quốc, 40 độ đạm \"Đậm Ngon\". 3 KHÔNG: không thêm chất bảo quản, không đường tổng hợp, không màu tổng hợp. Đã xuất khẩu thị trường Mỹ', '<p>Nhắc m&oacute;n Việt kh&ocirc;ng thể thiếu Vị Xưa - nước mắm truyền thống Ph&uacute; Quốc l&agrave;m n&ecirc;n sự kh&aacute;c biệt của m&oacute;n Việt. Vị Xưa tự h&agrave;o với nguồn nước mắm được ủ chượp bằng phương ph&aacute;p thủ c&ocirc;ng từ c&aacute; cơm tươi v&agrave; muối biển, tạo n&ecirc;n từng giọt Vị Xưa s&oacute;ng s&aacute;nh, vị ngon đậm đ&agrave; của nước mắm xưa. Nhờ vậy n&ecirc;m m&oacute;n Việt n&agrave;o cũng chuẩn, chấm m&oacute;n Việt n&agrave;o cũng ngon.&nbsp;</p>\r\n<p>Vị Xưa tự h&agrave;o kh&ocirc;ng chỉ phục vụ người ti&ecirc;u d&ugrave;ng trong nước m&agrave; c&ograve;n được b&agrave; con kiều b&agrave;o đ&oacute;n nhận v&agrave; tin d&ugrave;ng l&agrave; minh chứng cho một chất lượng Nước mắm Vị Xưa vượt trội.</p>\r\n<p><strong>NHẮC M&Oacute;N VIỆT, NHỚ VỊ XƯA</strong></p>\r\n<p>Điểm mạnh của sản phẩm:</p>\r\n<p>1. H&igrave;nh th&agrave;nh từ v&ugrave;ng biển Ph&uacute; Quốc</p>\r\n<p>Trong h&agrave;ng trăm l&agrave;ng mắm trải d&agrave;i từ Bắc đến Nam, Ph&uacute; Quốc l&agrave; nơi quy tụ những nh&agrave; th&ugrave;ng nổi tiếng bậc nhất với hơn 200 năm tuổi nghề. Tại Ph&uacute; Quốc, c&aacute; cơm than v&agrave; c&aacute; cơm sọc ti&ecirc;u l&agrave; nguy&ecirc;n liệu ch&iacute;nh l&agrave;m n&ecirc;n những giọt nước mắm đậm đ&agrave;, cao cấp.&nbsp;</p>\r\n<p>H&agrave;nh tr&igrave;nh Vị Xưa ra đời v&agrave; g&igrave;n giữ hương vị nước mắm truyền thống bắt đầu từ những ng&agrave;y th&aacute;ng l&ecirc;nh đ&ecirc;nh tr&ecirc;n biển, đ&aacute;nh bắt những mẻ c&aacute; cơm b&eacute;o tốt dồi d&agrave;o.&nbsp;</p>\r\n<p>Sau khi đ&aacute;nh bắt, c&aacute; cơm được tiến h&agrave;nh ướp muối ngay giữa biển nhằm giữ trọn vị tươi ngon của c&aacute; khi cập bến đất liền.</p>\r\n<p>Trở về đất liền, ngư d&acirc;n bắt tay ngay v&agrave;o c&ocirc;ng đoạn ủ chượp với c&ocirc;ng thức truyền thống 3 c&aacute; - 1 muối suốt 12 th&aacute;ng r&ograve;ng để cho ra những giọt nước mắm thơm ngon, đậm đ&agrave;, ngọt hậu, &aacute;nh m&agrave;u n&acirc;u c&aacute;nh gi&aacute;n thật đẹp.</p>\r\n<p>Nước mắm Vị Xưa được ủ chượp theo phương thức truyền thống tại nh&agrave; th&ugrave;ng Ph&uacute; Quốc với c&aacute;c th&ugrave;ng chượp gỗ lớn. Từ th&ugrave;ng gỗ n&agrave;y những giọt nước mắm thượng hạng được k&eacute;o r&uacute;t v&agrave; vận chuyển về nh&agrave; m&aacute;y hiện đại để chiết r&oacute;t v&agrave; đ&oacute;ng chai th&agrave;nh phẩm, cho ra những chai nước mắm Vị Xưa cao cấp 40 độ đạm.</p>\r\n<p>2. Quy tr&igrave;nh sản xuất đạt ti&ecirc;u chuẩn quốc tế ISO</p>\r\n<p>Tại nh&agrave; m&aacute;y, nước mắm nguồn được kiểm tra nghi&ecirc;m ngặt, đạt chất lượng theo ti&ecirc;u chuẩn Nước mắm Việt Nam mới được đưa v&agrave;o chiết r&oacute;t v&agrave; đ&oacute;ng chai thủy tinh tự động.&nbsp;</p>\r\n<p>Trước khi đến tay người ti&ecirc;u d&ugrave;ng, nước mắm Vị Xưa cao cấp 40 độ đạm phải được xử l&yacute; theo ti&ecirc;u chuẩn 3 kh&ocirc;ng: Kh&ocirc;ng chất bảo quản, Kh&ocirc;ng m&agrave;u tổng hợp, Kh&ocirc;ng đường tổng hợp v&agrave; được thanh tr&ugrave;ng nhằm đảm bảo an to&agrave;n.</p>\r\n<p>Vị Xưa được sản xuất trong nh&agrave; m&aacute;y đạt ti&ecirc;u chuẩn quản l&yacute; Quốc tế ISO 22000, ISO 9001, ISO 14001, ISO 45001. Cam kết đem đến cho người d&ugrave;ng d&ograve;ng sản phẩm thơm ngon, chất lượng v&agrave; an to&agrave;n nhất</p>\r\n<p>3. Hương vị đậm ngon g&acirc;y bao thương nhớ!</p>\r\n<p>Với 95% tinh cốt c&aacute; cơm Ph&uacute; Quốc, Vị Xưa giữ trọn vẹn hương vị đậm ngon 40 độ đạm của nước mắm xưa, đem lại cho người d&ugrave;ng một trải nghiệm mới v&ocirc; c&ugrave;ng đẳng cấp nhưng vẫn giữ được chất v&agrave; hồn tu&yacute; của Nước mắm xưa.&nbsp;</p>\r\n<p>Vị Xưa vừa mang hương vị đặc trưng của c&aacute; cơm Ph&uacute; Quốc, vừa l&agrave; gia vị đậm ngon tuyệt vời để n&ecirc;m chấm cho m&oacute;n ăn th&ecirc;m đậm đ&agrave;, thơm lừng v&agrave; bắt mắt.</p>\r\n<p>Mỗi bữa cơm chỉ cần c&oacute; một ch&uacute;t nước mắm Vị Xưa c&ugrave;ng ch&eacute;n cơm trắng n&oacute;ng hổi cũng đủ để ta cảm nhận được dư vị của m&oacute;n cơm nh&agrave;. Hay đơn giản l&agrave; ch&eacute;n mắm tỏi ớt dậy hương, chấm m&oacute;n n&agrave;o cũng ngon v&agrave; hấp dẫn</p>\r\n<p>Chỉ nước mắm ngon mới được tin d&ugrave;ng v&agrave; chỉ l&agrave;m bằng t&igrave;nh y&ecirc;u mới đủ sức n&iacute;u ch&acirc;n người thưởng thức. H&igrave;nh th&agrave;nh từ t&igrave;nh y&ecirc;u v&agrave; t&acirc;m huyết của những người l&agrave;m nghề truyền thống, Vị xưa xứng danh l&agrave; loại gia vị mang quốc hồn, quốc tu&yacute; của d&acirc;n tộc.</p>', 'products/November2021/12sWuvT3iwZ846Xmlf7I.jpg', 'Nước Mắm', 'nuoc mam', 'ACTIVE', 150000, '2021-10-31 19:50:00', '2021-11-26 23:51:36'),
(7, 'Muối Chấm Hải Sản', 'muoi-cham-hai-san', 'Nước chấm hải sản 300ml được đặc chế bằng những nguyên liệu sạch như ớt, nước cốt chanh và lá chanh non cộng với công thức gia truyền được chế biến thủ công nhằm kích thích vị giác khi ăn.', '<p>Với sự h&ograve;a quyện của c&aacute;c gia vị c&ugrave;ng l&aacute; chanh v&agrave; chanh tươi, đảm bảo vị tanh của hải sản ho&agrave;n to&agrave;n biến mất, bữa đại tiệc hải sản m&agrave; h&ocirc;ng c&oacute; VUA NƯỚC CHẤM th&igrave; chỉ như bức tranh đẹp m&agrave; kh&ocirc;ng c&oacute; m&agrave;u th&ocirc;i, v&ocirc; vị....</p>\r\n<p>Ăn lẩu , ăn nướng, ăn hải sản , ăn ch&acirc;n g&agrave; c&aacute;i g&igrave; cũng ngon hết trơn &yacute;. M&agrave; c&oacute; lẽ mng cũng nghe được c&acirc;u \" Trong ẩm thực Ch&acirc;u &Aacute; nước chấm chiếm đến 60% độ ngon của m&oacute;n ăn \" , n&oacute; ngang ngửa với c&aacute;c loại sauce trong ẩm thực ch&acirc;u &Acirc;u vậy, m&oacute;n ăn c&oacute; ngon tới đ&acirc;u m&agrave; nước chấm hay sốt kh&ocirc;ng đặc sắc cũng mất hết cả vị ngon ạ.</p>', 'products/November2021/BAwyMWeU2yNajf0ReBB1.jpg', 'Muối Chấm Hải Sản', 'Muối Chấm Hải Sản', 'ACTIVE', 150000, '2021-10-31 19:51:00', '2021-11-26 20:54:27'),
(8, 'Tôm Sú', 'tom-su', 'Tôm sú được nuôi tại môi trường sạch, tôm ngon dễ ăn nên được nhiều khách hàng ưa chuộng. \r\nSize : 30-35 con/kg.', '<p>T&ocirc;m s&uacute; sống được nu&ocirc;i th&acirc;m canh trong c&aacute;c hồ ở v&ugrave;ng miền t&acirc;y ở Bạc Li&ecirc;u ...T&ocirc;m nu&ocirc;i trong m&ocirc;i trường tự nhi&ecirc;n v&agrave; cho ăn thực phẩm sạch n&ecirc;n thịt t&ocirc;m rất ngọt v&agrave; săn chắc.</p>\r\n<p><img src=\"https://bio-organic.com.vn/storage/products/November2021/t&ocirc;m-s&uacute;.jpg\" alt=\"\" width=\"100%\" /></p>', 'products/November2021/cafbeiERSSzVCQUJMvpf.jpg', 'Tôm Sú', 'Tôm Sú', 'ACTIVE', 150000, '2021-10-31 19:52:00', '2021-11-26 20:52:25'),
(9, 'Đậu Phụ', 'dau-phu', 'Đậu phụ nổi tiếng với vị thơm, mát, ngậy, béo của từng lát đậu. Để làm nên những bìa đậu mềm mịn, ngậy, béo, những người thợ phải bắt đầu công việc từ sáng sớm tinh mơ mỗi ngày. Đãi đậu tương quyết định 50% thành công của mẻ đậu. Sau khi chọn và sơ chế đậu tương kỹ càng, tỉ mỉ, bước tiếp theo là chế biến cũng phải thật tinh, thật khéo, để lấy được phần cốt đậu', '<p>Sản xuất từ đỗ tương v&agrave; được thanh tr&ugrave;ng</p>\r\n<p>Ăn liền, chi&ecirc;n, hấp, thả lẩu, nấu canh hoặc chế biến t&ugrave;y th&iacute;ch</p>\r\n<p>An to&agrave;n, tiện lợi, dinh dưỡng, hợp vệ sinh</p>', 'products/November2021/ZveZ7e4ZRdUJdWY6Ygki.jpg', 'Đậu Phụ', 'Đậu Phụ', 'ACTIVE', 150000, '2021-10-31 19:54:00', '2021-11-26 23:43:25'),
(10, 'Hạt Maca', 'hat-maca', 'Hạt Macca sấy nứt size 19-21 có nguồn gốc xuất sứ từ Tây Nguyên – Việt Nam \r\nĐược tuyển chọn một cách kỹ lưỡng để hạt có độ thơm ngon và hoàn hảo nhất có thể .\r\nTất cả các hạt đều đã được sấy giòn được tách nứt thủ công sẵn .\r\nTrên mỗi hạt đều có các khe nứt để dễ dàng tách sử dụng tách bằng dụng cụ có trong mỗi hộp Macca Tây Nguyên thành phẩm.', '<p><strong>Chất Lượng Sản Phẩm</strong>:</p>\r\n<p style=\"padding-left: 40px;\">- Hạt m&agrave;u n&acirc;u v&agrave; nh&acirc;n b&ecirc;n trong hạt m&agrave;u trắng : hạt macca size 19-21 sấy nứt được bao bọc bởi một lớp vỏ n&acirc;u gỗ ph&iacute;a ngo&agrave;i hạt v&agrave; hạt đ&atilde; được l&agrave; nứt sẵn do vậy khi sử dụng ta chỉ cần d&ugrave;ng dụng cụ t&aacute;ch hạt để lấy lớp hạt nh&acirc;n m&agrave;u trắng b&ecirc;n trong hạt để sử dụng.</p>\r\n<p style=\"padding-left: 40px;\">- Hạt c&oacute; k&iacute;ch thước đường k&iacute;nh 19 &ndash; 21 mm : Nghĩa l&agrave; đường k&iacute;nh được t&iacute;nh cho mỗi hạt macca th&agrave;nh phẩm với k&iacute;ch thước hạt sẽ từ 19 mm đến 21 mm.</p>\r\n<p style=\"padding-left: 40px;\">- Sản Phẩm đ&atilde; được sấy gi&ograve;n : tất cả 100% sản phẩm macca size 19 - 21 mm đều trải qua một qu&aacute; tr&igrave;nh sấy gi&ograve;n với một thời gian k&eacute;o d&agrave;i từ 100h - 120h sấy li&ecirc;n tục khi hạt c&ograve;n độ ẩm 30% đến khi hạt sấy gi&ograve;n đạt độ ẩm 1%.</p>\r\n<p style=\"padding-left: 40px;\">- Tất cả hạt Macca trong sản phẩm đạt tỷ lệ ho&agrave;n hảo &gt; 96% : tỷ lệ tr&ecirc;n c&oacute; nghĩa l&agrave; với 100 hạt macca khi kh&aacute;ch h&agrave;ng sử dụng th&igrave; c&oacute; tr&ecirc;n 96 hạt đạt tỷ lệ ho&agrave;n hảo nhất.</p>\r\n<p style=\"padding-left: 40px;\">- M&ugrave;i vị sản phẩm ăn c&oacute; ch&uacute;t b&eacute;o nhẹ , thơm v&agrave; ch&uacute;t ngọt tự nhi&ecirc;n của hạt : Đ&acirc;y l&agrave; m&ugrave;i vị đặc trưng của hạt macca khi thu hoạc đạt độ ch&iacute;n v&agrave; khi chế biến với c&ocirc;ng nghệ ph&ugrave; hợp với với hạt để đạt th&agrave;nh phần dinh dưỡng tốt nhất.</p>\r\n<p><strong>H&igrave;nh Thức Đ&oacute;ng G&oacute;i</strong> : .</p>\r\n<p style=\"padding-left: 40px;\">- Được đ&oacute;ng t&uacute;i Pa h&uacute;t ch&acirc;n kh&ocirc;ng , v&agrave; sử dụng hộp giấy l&agrave; lớp hộp b&ecirc;n ngo&agrave;i</p>\r\n<p style=\"padding-left: 40px;\">- Trong mỗi hộp c&oacute; 01 c&aacute;i dụng cụ khui hạt&nbsp; v&agrave; 01 t&uacute;i h&uacute;t ẩm</p>\r\n<p style=\"padding-left: 40px;\">- Trọng lượng mỗi hộp l&agrave; 500g</p>\r\n<p style=\"padding-left: 40px;\">- Hạt được sấy bằng điện 100% , giảm t&aacute;c động tới m&ocirc;i trường so với những phương ph&aacute;p truyền thống</p>\r\n<p style=\"padding-left: 40px;\">- 100% Hạt nhi&ecirc;n liệu đầu v&agrave;o được tuyển chọn kỹ c&agrave;ng trước khi đưa v&agrave;o d&acirc;y truyền chế biến</p>\r\n<p style=\"padding-left: 40px;\">- Sản xuất tại Việt Nam</p>', 'products/November2021/kqNlgecyTU8Ipr74E0Ag.jpg', 'Hạt Maca', 'Hạt Maca', 'ACTIVE', 150000, '2021-10-31 19:54:00', '2021-11-26 23:48:27'),
(11, 'Nước Mắm Nguyên Chất', 'nuoc-mam-nguyen-chat', 'Kế thừa công thức 300 năm từ Làng Chài Xưa, nước mắm Tĩn là loại nước mắm rin nguyên chất được kéo rút trực tiếp từ thùng gỗ chín chậm với cá cơm than con to béo, tươi rói và muối tinh khiết. Được ủ chượp tự nhiên trong 12 tháng, để cho ra những giọt nước mắm đặc sánh, thơm ngon với hậu vị béo ngọt vô cùng tuyệt hảo. Đặc biệt, nước mắm được đựng trong tĩn gốm đậy kín, tránh tiếp xúc với ánh nắng mặt trời nên được lên men lần thứ 2, tạo nên hương vị đậm đà đặc trưng.', '<p>Được ủ chượp tự nhi&ecirc;n trong 12 th&aacute;ng, đ&ecirc;̉ cho ra những giọt nước mắm đặc sánh, thơm ngon với h&acirc;̣u vị béo ngọt v&ocirc; cùng tuy&ecirc;̣t hảo</p>\r\n<p>Đặc bi&ecirc;̣t, nước mắm được đựng trong tĩn g&ocirc;́m đ&acirc;̣y kín, tránh ti&ecirc;́p xúc với ánh nắng mặt trời n&ecirc;n được l&ecirc;n men l&acirc;̀n thứ 2, tạo n&ecirc;n hương vị đ&acirc;̣m đà đặc trưng.</p>\r\n<p>Ngoài ra, tĩn g&ocirc;́m còn được thi&ecirc;́t k&ecirc;́ với quai x&aacute;ch d&acirc;y thừng độc đ&aacute;o, vừa mang vẻ c&ocirc;̉ xưa những toát l&ecirc;n sự sang trọng, r&acirc;́t&nbsp; th&iacute;ch hợp l&agrave;m qu&agrave; biếu tặng hoặc các bu&ocirc;̉i ti&ecirc;̣c đãi kh&aacute;ch qu&yacute;.</p>\r\n<p>Th&ocirc;ng tin sản phẩm:</p>\r\n<ul>\r\n<li>Nước mắm Rin&nbsp;</li>\r\n<li>Đạm cá: 41N (Độ đạm tự nhi&ecirc;n)</li>\r\n<li>Loại chai: 500ml/ b&igrave;nh gốm</li>\r\n<li>Hạn sử dụng: 24 th&aacute;ng&nbsp;</li>\r\n</ul>', 'products/November2021/a4yCDJS5w8yopYI9KTi9.jpg', 'Nước Mắm Nguyên Chất', 'Nước Mắm Nguyên Chất', 'ACTIVE', 150000, '2021-10-31 19:55:00', '2021-11-26 20:47:42'),
(12, 'Xà Lách Đà Lạt', 'xa-lach-da-lat', 'Là một kho cung cấp chất xơ, giàu cellulose nên xà lách còn giúp ruột có thêm chút gì để… co bóp, nhờ đó giúp thoát khỏi tình trạng táo bón. Cải xà lách còn có một đặc tính “ăn tiền” khác là có thể giúp mang lại “giấc điệp” vì có chứa một chất gây ngủ là letucarium. Đối với bệnh nhân tiểu đường, xà lách là một loại thực phẩm lý tưởng vì thuộc nhóm rau cải có thành phần carbohydrate thấp hơn 3%. Xà lách còn chứa một hàm lượng đáng kể chất sắt nên là một loại thực phẩm rất tốt cho những người bị thiếu máu do thiếu sắt', '<p>X&agrave; l&aacute;ch Carol c&oacute; xoăn tr&ograve;n c&oacute; m&agrave;u xanh đậm. Khi ăn X&agrave; l&aacute;ch Carol bạn sẽ cảm nhận được vị ngon ngọt trong từng l&aacute; x&aacute; l&aacute;ch.</p>\r\n<p>Loại x&agrave; l&aacute;ch n&agrave;y rất nhiều người ưa chuộng bởi khi ăn rất gi&ograve;n v&agrave; tươi m&aacute;t. X&agrave; l&aacute;ch carol sạch ăn sẽ c&oacute; vị hơi đắng hơn b&igrave;nh thường một ch&uacute;t, nhưng khi h&ocirc; biến th&agrave;nh m&oacute;n salad dầu giấm th&igrave; m&ugrave;i vị sẽ rất tuyệt.</p>\r\n<p>X&agrave; l&aacute;ch Carol c&ograve;n hỗ trợ ti&ecirc;u h&oacute;a v&agrave; tốt cho gan, giảm nguy cơ mắc bệnh tim mạch, nhồi m&aacute;u cơ tim, ung thư, đau cột sống, thiếu m&aacute;u v&agrave; chứng mất ngủ do căng thẳng.</p>\r\n<p>D&ugrave; l&agrave; loại n&agrave;o th&igrave; x&agrave; l&aacute;ch cũng l&agrave; loại rau cải rất gi&agrave;u chất dinh dưỡng. Cứ 100 gam x&agrave; l&aacute;ch sẽ cung cấp khoảng 2,2 gam carbohydrate, 1,2 gam chất xơ, 90 gam nước, 166 microgram vitamin A, 73 microgram folate (vitamin B9). X&agrave; l&aacute;ch c&ograve;n chứa rất nhiều muối kho&aacute;ng với những nguy&ecirc;n tố kiềm, nhờ đ&oacute; gi&uacute;p cơ thể &ldquo;dọn dẹp&rdquo; m&aacute;u, gi&uacute;p tinh thần tỉnh t&aacute;o v&agrave; gi&uacute;p cơ thể tr&aacute;nh được nhiều bệnh tật.</p>\r\n<p>Nước &eacute;p x&agrave; l&aacute;ch c&ograve;n c&oacute; t&aacute;c dụng giải nhiệt. Do chứa một h&agrave;m lượng cao magnesium n&ecirc;n nước &eacute;p x&agrave; l&aacute;ch c&oacute; một năng lực si&ecirc;u ph&agrave;m trong việc hồi phục c&aacute;c m&ocirc; cơ, tăng cường chức năng n&atilde;o. Y học d&acirc;n gian phương T&acirc;y cho rằng d&ugrave;ng dịch &eacute;p x&agrave; l&aacute;ch pha với tinh dầu hoa hồng thoa v&agrave;o tr&aacute;n v&agrave; th&aacute;i dương sẽ gi&uacute;p cắt những cơn đau đầu.</p>', 'products/November2021/fH2wiurqQItJok4yiLv4.jpg', 'Xà Lách Đà Lạt', 'Xà Lách Đà Lạt', 'ACTIVE', 150000, '2021-10-31 19:56:00', '2021-11-26 20:45:04'),
(13, 'Bí Đỏ', 'bi-do', 'Bí ngô hay bí đỏ (phương ngữ Nam bộ gọi là bí rợ) là một loại cây dây thuộc chi Cucurbita, họ Bầu bí .', '<p>B&iacute; ng&ocirc; c&acirc;n nặng từ 0,45 kg trở l&ecirc;n v&agrave; c&oacute; thể nặng đến hơn 450 kg.</p>\r\n<p>B&iacute; c&oacute; h&igrave;nh cầu hoặc h&igrave;nh trụ, ch&iacute;n th&igrave; m&agrave;u v&agrave;ng cam,[5] B&ecirc;n ngo&agrave;i c&oacute; kh&iacute;a chia th&agrave;nh từng m&uacute;i. Ruột b&iacute; c&oacute; nhiều hột. Hạt dẹp, h&igrave;nh bầu dục c&oacute; chứa nhiều dầu.</p>\r\n<p>Trong c&aacute;c loại quả chứa h&agrave;m lượng dinh dưỡng cao, b&iacute; đỏ được xếp ở vị tr&iacute; đầu ti&ecirc;n. Trong b&iacute; đỏ c&oacute; chứa sắt, kali, phosphor, nước, protein thực vật, gluxit,.. c&aacute;c axit b&eacute;o linoleic, c&ugrave;ng c&aacute;c vitamin C, vitamin B1, B2, B5, B6, PP. Ăn b&iacute; đỏ rất tốt cho n&atilde;o bộ, l&agrave;m tăng cường miễn dịch, gi&uacute;p tim khỏe mạnh, mắt s&aacute;ng, cho giấc ngủ ngon hơn v&agrave; hỗ trợ cho việc chăm s&oacute;c da cũng như l&agrave;m đẹp, gi&uacute;p giảm c&acirc;n...</p>\r\n<p>Quả b&iacute; đỏ gi&agrave;u beta caroten tiền vitamin A, chứa 85 - 91% nước, chất đạm 0,8 - 2 g, chất b&eacute;o 0,1 - 0,5 g, chất bột đường 3,3 - 11 g, năng lượng 85 -170 kJ/100 g</p>', 'products/November2021/2KtooekRvxFxDPjJTKrL.jpg', 'Bí Đỏ', 'Bí Đỏ', 'ACTIVE', 150000, '2021-10-31 19:57:00', '2021-11-26 20:42:10');

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
(1, 'admin', 'Administrator', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(2, 'content', 'Content', '2021-10-05 20:45:13', '2022-01-04 20:16:44'),
(3, 'manager', 'Manager', '2022-01-04 20:14:50', '2022-01-04 20:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'VNPT', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Website Chăm sóc khách hàng của VNPT', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/December2022/2AVo26AedEzb8nv9kmYk.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'VNPT', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to VNPT', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '154154562547-i796g1cfim7d871nh0vanqo3nol0b56a.apps.googleusercontent.com', '', 'text', 1, 'Admin'),
(11, 'site.Image-breadcrumb', 'Image breadcrumb', 'settings\\October2021\\pVseo50SoMaojpH7M3x4.png', NULL, 'image', 6, 'Site'),
(12, 'site.map', 'Google map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3710.02249583834!2d105.8041923153197!3d21.585044973929598!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31352738b1bf08a3%3A0x515f4860ede9e108!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiAmIFRydXnhu4FuIHRow7RuZyBUaMOhaSBOZ3V5w6pu!5e0!3m2!1svi!2s!4v1670430513049!5m2!1svi!2s\" width=\"100%\" height=\"250\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'text', 7, 'Site'),
(13, 'site.phone', 'Điện thoại', '0123456789', NULL, 'text', 8, 'Site'),
(14, 'site.email', 'Email', 'vnpt@gmail.com', NULL, 'text', 9, 'Site'),
(15, 'site.fax', 'Fax', NULL, NULL, 'text', 10, 'Site'),
(16, 'site.address', 'Address', 'Thành phố Thái Nguyên, Tỉnh Thái Nguyên, Việt Nam', NULL, 'text', 11, 'Site'),
(17, 'site.website', 'Website', 'vnpt.vn', NULL, 'text', 12, 'Site'),
(18, 'site.favicon', 'Favicon', 'settings/November2021/LMeVPrd49OUEuo36Vd0e.png', NULL, 'image', 13, 'Site'),
(19, 'social-network.facebook', 'Facebook', 'https://www.facebook.com', NULL, 'text', 14, 'social network'),
(20, 'social-network.gmail', 'Gmail', NULL, NULL, 'text', 15, 'social network'),
(21, 'social-network.youtube', 'Youtube', NULL, NULL, 'text', 16, 'social network'),
(22, 'social-network.twitter', 'twitter', NULL, NULL, 'text', 17, 'social network'),
(23, 'social-network.google-plus', 'Google Plus', NULL, NULL, 'text', 18, 'social network'),
(24, 'social-network.linkedin', 'Linkedin', NULL, NULL, 'text', 19, 'social network'),
(25, 'site.content', 'Site content', NULL, NULL, 'text', 20, 'Site'),
(26, 'site.phone2', 'Điện thoại 2', NULL, NULL, 'text', 21, 'Site'),
(27, 'site.facebook_page_id', 'Facebbok Page ID', NULL, NULL, 'text', 22, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `staticdatas`
--

CREATE TABLE `staticdatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staticdatas`
--

INSERT INTO `staticdatas` (`id`, `title`, `slug`, `description`, `body`, `image`, `meta_description`, `meta_keywords`, `type`, `status`, `created_at`, `updated_at`, `url`) VALUES
(29, 'Tra cứu thuê bao', 'tra-cuu-thue-bao', NULL, NULL, 'staticdatas/December2022/YrnfAvrwuailGBon7xDS.png', NULL, NULL, 'ho-tro', 'ACTIVE', '2022-12-07 08:58:15', '2022-12-07 08:58:15', NULL),
(30, 'Thông tin liên hệ', 'thong-tin-lien-he', NULL, '<p>&nbsp;</p>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; border-spacing: 0px; border: 1px solid #dee2e6; width: 813px; margin-bottom: 1rem; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; height: 1332px;\">\r\n<thead style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<th class=\"text-center\" style=\"box-sizing: border-box; border-width: 1px 1px 2px; border-style: solid; border-color: #dee2e6; border-image: initial; padding: 0.75rem; vertical-align: bottom; text-align: center !important; width: 812px;\" colspan=\"4\">TỔNG HỢP C&Aacute;C K&Ecirc;NH HỖ TRỢ KH&Aacute;CH H&Agrave;NG CỦA VNPT</th>\r\n</tr>\r\n<tr class=\"text-center\" style=\"box-sizing: border-box; border: 1px solid; text-align: center !important;\">\r\n<th style=\"box-sizing: border-box; text-align: inherit; border-width: 1px 1px 2px; border-style: solid; border-color: #dee2e6; border-image: initial; padding: 0.75rem; vertical-align: bottom; width: 47.8125px;\">STT</th>\r\n<th style=\"box-sizing: border-box; text-align: inherit; border-width: 1px 1px 2px; border-style: solid; border-color: #dee2e6; border-image: initial; padding: 0.75rem; vertical-align: bottom; width: 162.812px;\">ĐẦU SỐ</th>\r\n<th style=\"box-sizing: border-box; text-align: inherit; border-width: 1px 1px 2px; border-style: solid; border-color: #dee2e6; border-image: initial; padding: 0.75rem; vertical-align: bottom; width: 82.8906px;\">TỔNG Đ&Agrave;I</th>\r\n<th style=\"box-sizing: border-box; text-align: inherit; border-width: 1px 1px 2px; border-style: solid; border-color: #dee2e6; border-image: initial; padding: 0.75rem; vertical-align: bottom; width: 518.484px;\">TH&Ocirc;NG TIN HỖ TRỢ</th>\r\n</tr>\r\n</thead>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 47.8125px;\">1</td>\r\n<td class=\"align-middle font-weight-bold\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; font-weight: 700 !important; width: 162.812px;\">18001091</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 82.8906px;\">Tổng đ&agrave;i tư vấn giải đ&aacute;p c&aacute;c Sản phẩm dịch vụ của mạng di động VinaPhone</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 518.484px;\">Nh&aacute;nh 1, 2, 3, 5 hỗ trợ 24/7. Nh&aacute;nh 4 phục vụ từ 7h00 - 21h00 h&agrave;ng ng&agrave;y (bao gồm cả ng&agrave;y Lễ Tết)<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 1:</span>&nbsp;Tư vấn hỗ trợ sử dụng c&aacute;c dịch vụ, ch&iacute;nh s&aacute;ch chăm s&oacute;c kh&aacute;ch h&agrave;ng VinaPhone<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 2:</span>&nbsp;Tiếp nhận phản &aacute;nh chất lượng dịch vụ, truy cập mạng, thanh to&aacute;n, t&iacute;nh cước, cuộc gọi v&agrave; tin nhắn r&aacute;c<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 3:</span>&nbsp;Hỗ trợ sử dụng V&iacute; VNPT Pay, Mobile Money, dịch vụ chuyển mạng giữ nguy&ecirc;n số (MNP), dịch vụ Vpoint<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 4:</span>&nbsp;Hỗ trợ Đại l&yacute;, Điểm b&aacute;n lẻ của VinaPhone v&agrave; c&aacute;c Trung t&acirc;m kinh doanh<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 5:</span>&nbsp;Hỗ trợ kiểm tra v&agrave; cập nhật th&ocirc;ng tin thu&ecirc; bao</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 47.8125px;\">2</td>\r\n<td class=\"align-middle font-weight-bold\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; font-weight: 700 !important; width: 162.812px;\">18001260</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 82.8906px;\">Tổng đ&agrave;i tư vấn giải đ&aacute;p c&aacute;c Sản phẩm dịch vụ c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; số h&oacute;a</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 518.484px;\">Hỗ trợ 24/7 (bao gồm cả ng&agrave;y Lễ Tết)<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 1:</span>&nbsp;Tư vấn giải đ&aacute;p về c&aacute;c dịch vụ doanh nghiệp, gi&aacute;o dục, ch&iacute;nh phủ số, y tế, chăm s&oacute;c sức khỏe, th&agrave;nh phố th&ocirc;ng minh, du lịch th&ocirc;ng minh v&agrave; c&aacute;c giải ph&aacute;p phần mềm kh&aacute;c.<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 2:</span>&nbsp;Tư vấn giải đ&aacute;p c&aacute;c dịch vụ điện to&aacute;n đ&aacute;m m&acirc;y, trung t&acirc;m dữ liệu, SMS Brandname v&agrave; nh&oacute;m dịch vụ 1800/1900<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 3:</span>&nbsp;Tư vấn giải đ&aacute;p c&aacute;c dịch vụ truyền dẫn, internet trực tiếp, thoại doanh nghiệp v&agrave; nh&oacute;m dịch vụ truyền h&igrave;nh<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 4:</span>&nbsp;Tiếp nhận, hỗ trợ kỹ thuật v&agrave; xử l&yacute; sự cố</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 47.8125px;\">3</td>\r\n<td class=\"align-middle font-weight-bold\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; font-weight: 700 !important; width: 162.812px;\">18001166</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 82.8906px;\">Tổng đ&agrave;i tư vấn giải đ&aacute;p c&aacute;c Sản phẩm dịch vụ Internet, My TV, Điện thoại cố định</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 518.484px;\">Nh&aacute;nh 1 hỗ trợ 24/7. Nh&aacute;nh 2 v&agrave; 3 hỗ trợ từ 7h00-21h00 (bao gồm cả ng&agrave;y Lễ Tết)<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 1:</span>&nbsp;Tiếp nhận b&aacute;o hỏng v&agrave; y&ecirc;u cầu sửa chữa<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 2:</span>&nbsp;Tư vấn ch&iacute;nh s&aacute;ch sản phẩm, đăng k&yacute; lắp đặt<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Nh&aacute;nh 3:</span>&nbsp;Phản &aacute;nh chất lượng dịch vụ, tiếp nhận y&ecirc;u cầu khiếu nại</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 47.8125px;\">4</td>\r\n<td class=\"align-middle font-weight-bold\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; font-weight: 700 !important; width: 162.812px;\">Số điện thoại gọi ra của VNPT</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 82.8906px;\">Số điện thoại gọi ra của VNPT</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 518.484px;\">-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">0888001091:</span>&nbsp;Số gọi ra hỗ trợ thu&ecirc; bao di động<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">0888000666:</span>&nbsp;Số gọi ra hỗ trợ thu&ecirc; bao Internet, MyTV v&agrave; Điện thoại cố định<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">0918001260:</span>&nbsp;Số gọi ra hỗ trợ thu&ecirc; bao dịch vụ C&ocirc;ng nghệ th&ocirc;ng tin<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">0911001091:</span>&nbsp;Số gọi ra để tư vấn g&oacute;i cước, dịch vụ</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 47.8125px;\">5</td>\r\n<td class=\"align-middle font-weight-bold\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; font-weight: 700 !important; width: 162.812px;\">Hỗ trợ kh&aacute;ch h&agrave;ng qua c&aacute;c k&ecirc;nh Online</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 82.8906px;\">Hỗ trợ kh&aacute;ch h&agrave;ng trực tuyến qua trang App / Website / Group / Fanpage của VNPT</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 518.484px;\">- Email: cskh@vnpt.vn. Thời gian phản hồi email từ 7h00&ndash;17h00 h&agrave;ng ng&agrave;y<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Fanpage Facebook:</span>&nbsp;VNPT - VinaPhone<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">App:</span>&nbsp;My VNPT /VNPT Pay/ VNPT Plus<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Website:</span><br style=\"box-sizing: border-box;\" />+&nbsp;<a style=\"box-sizing: border-box; color: #007bff; text-decoration-line: none; background: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline;\" href=\"https://www.vnpt.com.vn/\" target=\"_blank\" rel=\"noopener\">https://www.vnpt.com.vn</a><br style=\"box-sizing: border-box;\" />+&nbsp;<a style=\"box-sizing: border-box; color: #007bff; text-decoration-line: none; background: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline;\" href=\"https://www.vinaphone.com.vn/\" target=\"_blank\" rel=\"noopener\">https://www.vinaphone.com.vn</a><br style=\"box-sizing: border-box;\" />+&nbsp;<a style=\"box-sizing: border-box; color: #007bff; text-decoration-line: none; background: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline;\" href=\"https://vinaphoneplus.com.vn/\" target=\"_blank\" rel=\"noopener\">https://vinaphoneplus.com.vn</a><br style=\"box-sizing: border-box;\" />+&nbsp;<a style=\"box-sizing: border-box; color: #007bff; text-decoration-line: none; background: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline;\" href=\"https://vnptpay.vn/\" target=\"_blank\" rel=\"noopener\">https://vnptpay.vn</a><br style=\"box-sizing: border-box;\" />+&nbsp;<a style=\"box-sizing: border-box; color: #007bff; text-decoration-line: none; background: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline;\" href=\"https://mytv.com.vn/\" target=\"_blank\" rel=\"noopener\">https://mytv.com.vn</a><br style=\"box-sizing: border-box;\" />+&nbsp;<a style=\"box-sizing: border-box; color: #007bff; text-decoration-line: none; background: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline;\" href=\"https://shop.vnpt.vn/\" target=\"_blank\" rel=\"noopener\">https://shop.vnpt.vn</a><br style=\"box-sizing: border-box;\" />+&nbsp;<a style=\"box-sizing: border-box; color: #007bff; text-decoration-line: none; background: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline;\" href=\"https://my.vnpt.com.vn/\" target=\"_blank\" rel=\"noopener\">https://my.vnpt.com.vn</a><br style=\"box-sizing: border-box;\" />+&nbsp;<a style=\"box-sizing: border-box; color: #007bff; text-decoration-line: none; background: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline;\" href=\"https://onesme.vn/\" target=\"_blank\" rel=\"noopener\">https://onesme.vn</a><br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Zalo:</span>&nbsp;VNPT Vinaphone<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Instagram:</span>&nbsp;Vnptvinaphone.official<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Telegram:</span>&nbsp;TongDaiHoTroVnpt_bot<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Skype:</span>&nbsp;Tổng đ&agrave;i VNPT<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Group Hỗ trợ Facebook:&nbsp;</span>VNPT Hỗ trợ kh&aacute;ch h&agrave;ng Online<br style=\"box-sizing: border-box;\" />-&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent;\">Thời gian hỗ trợ</span><br style=\"box-sizing: border-box;\" />+ Thời gian l&agrave;m việc của Trợ l&yacute; ảo AMI: 24/7<br style=\"box-sizing: border-box;\" />+ Thời gian l&agrave;m việc của nh&acirc;n vi&ecirc;n hỗ trợ kh&aacute;ch h&agrave;ng online: 7h00-23h00 h&agrave;ng ng&agrave;y<br style=\"box-sizing: border-box;\" />+ C&aacute;c y&ecirc;u cầu của kh&aacute;ch h&agrave;ng chuyển đến từ sau 23h00 đến 07h00 h&agrave;ng ng&agrave;y sẽ được hỗ trợ trước 10h00 ng&agrave;y kế tiếp.</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; border: 1px solid;\">\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 47.8125px;\">6</td>\r\n<td class=\"align-middle font-weight-bold\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; font-weight: 700 !important; width: 162.812px;\">+84912481111</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 82.8906px;\">Tổng đ&agrave;i hỗ trợ Chuyển v&ugrave;ng quốc tế</td>\r\n<td class=\"align-middle\" style=\"box-sizing: border-box; border: 1px solid #dee2e6; vertical-align: top; padding: 0.75rem; width: 518.484px;\">Tư vấn, hỗ trợ dịch vụ Chuyển v&ugrave;ng quốc tế (roaming) (Miễn ph&iacute; trong nước v&agrave; quốc tế)</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'staticdatas/December2022/bbJw8BGLJePx0VbxxbjR.jpg', NULL, NULL, 'ho-tro', 'ACTIVE', '2022-12-07 08:59:00', '2022-12-07 09:03:53', NULL),
(31, 'Điểm giao dịch', 'diem-giao-dich', NULL, NULL, 'staticdatas/December2022/j3L8CodAtsP43A7XEhdb.jpg', NULL, NULL, 'ho-tro', 'ACTIVE', '2022-12-07 08:59:35', '2022-12-07 08:59:35', NULL);

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
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-10-05 20:45:14', '2021-10-05 20:45:14');

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
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(2, 3, 'VNPT', 'vnpt@admin.com', 'users/December2022/q65VmKtxPVGiDtP7y81C.png', NULL, '$2y$10$VQJhaN9.LBm6.qqF7TNNXe6udpzJAXz61tBb6dITzQAmHvDYuRsyG', 'vgaS8zjVkqZnzEAbqMXmLtKMNFqXhynewZuiRx7L3Ie504tA08EVebQRklQK', '{\"locale\":\"vi\"}', '2022-01-04 20:10:29', '2022-12-07 09:44:59'),
(3, 2, 'Nhập liệu', 'content@content.com', 'users/December2022/Jm23vhBNPQGCKG4P6jcV.png', NULL, '$2y$10$3hhQcBbnYq32bJnkGSkuu.Up/qYyj1srbouW5d2k80GznYVaEcFzy', 'Fhl35czFH1uMCPANr68cKcHn3UrpNF7KjWUNjoPvWg2jHSjninw4rLe8XyLQ', '{\"locale\":\"vi\"}', '2022-01-04 20:19:52', '2022-12-07 09:45:56'),
(4, 1, 'abc', 'your@email.com', 'users/December2022/AJa9mtcZNxYK6WqvIsGq.png', NULL, '$2y$10$ekuMliqoXKZygdUssn1FJ.T/799X93Q6iUnp87kFcAa6O2dLTYdny', NULL, '{\"locale\":\"en\"}', '2022-12-07 07:54:56', '2022-12-07 09:45:23');

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
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `staticdatas`
--
ALTER TABLE `staticdatas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staticdatas_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `staticdatas`
--
ALTER TABLE `staticdatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
