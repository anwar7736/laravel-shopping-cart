-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 09:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_shopping_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_attend` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `is_attend`, `created_at`, `updated_at`) VALUES
(58, 4135, 1, '2022-12-07 13:31:10', '2022-12-08 13:31:10'),
(59, 4136, 1, '2022-12-07 13:31:10', '2022-12-08 13:31:10'),
(60, 4137, 0, '2022-12-07 13:31:10', '2022-12-08 13:31:10'),
(61, 4138, 1, '2022-12-07 13:31:10', '2022-12-08 13:31:10'),
(62, 4139, 0, '2022-12-07 13:31:10', '2022-12-08 13:31:10'),
(63, 4140, 1, '2022-12-07 13:31:10', '2022-12-08 13:31:10'),
(64, 4141, 1, '2022-12-07 13:31:10', '2022-12-08 13:31:10'),
(65, 4142, 1, '2022-12-07 13:31:10', '2022-12-08 13:31:10'),
(66, 4143, 0, '2022-12-07 13:31:10', '2022-12-08 13:31:10'),
(67, 4144, 1, '2022-12-07 13:31:10', '2022-12-08 13:31:10'),
(68, 4135, 1, '2022-12-06 13:31:10', '2022-12-08 13:31:10'),
(69, 4136, 1, '2022-12-06 13:31:10', '2022-12-08 13:31:10'),
(70, 4137, 0, '2022-12-06 13:31:10', '2022-12-08 13:31:10'),
(71, 4138, 1, '2022-12-06 13:31:10', '2022-12-08 13:31:10'),
(72, 4139, 0, '2022-12-06 13:31:10', '2022-12-08 13:31:10'),
(73, 4140, 1, '2022-12-06 13:31:10', '2022-12-08 13:31:10'),
(74, 4141, 1, '2022-12-06 13:31:10', '2022-12-08 13:31:10'),
(75, 4142, 1, '2022-12-06 13:31:10', '2022-12-08 13:31:10'),
(76, 4143, 0, '2022-12-06 13:31:10', '2022-12-08 13:31:10'),
(77, 4144, 1, '2022-12-06 13:31:10', '2022-12-08 13:31:10'),
(78, 4135, 0, '2022-12-05 13:31:10', '2022-12-08 14:02:29'),
(79, 4136, 1, '2022-12-05 13:31:10', '2022-12-08 14:02:29'),
(80, 4137, 1, '2022-12-05 13:31:10', '2022-12-08 14:02:29'),
(81, 4138, 0, '2022-12-05 13:31:10', '2022-12-08 14:02:29'),
(82, 4139, 1, '2022-12-05 13:31:10', '2022-12-08 14:02:29'),
(83, 4140, 0, '2022-12-05 13:31:10', '2022-12-08 14:02:29'),
(84, 4141, 1, '2022-12-05 13:31:10', '2022-12-08 14:02:29'),
(85, 4142, 1, '2022-12-05 13:31:10', '2022-12-08 14:02:30'),
(86, 4143, 1, '2022-12-05 13:31:10', '2022-12-08 14:02:30'),
(87, 4144, 0, '2022-12-05 13:31:10', '2022-12-08 14:02:30'),
(98, 4135, 1, '2022-12-08 14:13:42', '2022-12-08 14:14:50'),
(99, 4136, 1, '2022-12-08 14:13:42', '2022-12-08 14:14:50'),
(100, 4137, 1, '2022-12-08 14:13:42', '2022-12-08 14:14:50'),
(101, 4138, 1, '2022-12-08 14:13:42', '2022-12-08 14:14:50'),
(102, 4139, 1, '2022-12-08 14:13:42', '2022-12-08 14:14:50'),
(103, 4140, 1, '2022-12-08 14:13:42', '2022-12-08 14:14:50'),
(104, 4141, 1, '2022-12-08 14:13:42', '2022-12-08 14:14:50'),
(105, 4142, 1, '2022-12-08 14:13:42', '2022-12-08 14:14:50'),
(106, 4143, 1, '2022-12-08 14:13:42', '2022-12-08 14:14:50'),
(107, 4144, 1, '2022-12-08 14:13:42', '2022-12-08 14:14:50');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_25_053748_create_products_table', 1),
(6, '2022_11_25_053847_create_product_stocks_table', 1),
(7, '2022_11_25_053906_create_orders_table', 1),
(8, '2022_11_25_053923_create_order_details_table', 1),
(10, '2022_12_05_151832_create_jobs_table', 2),
(11, '2022_12_08_182133_create_attendances_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `charge` double(8,2) DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `total` double(8,2) NOT NULL,
  `status` enum('pending','completed','delivered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'DhqYZxKwfcAFxmG', NULL, 56.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(2, '0m8nqklymg9Fmpc', NULL, 75.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(3, 'EAdUKJxpMJxH8ru', NULL, 74.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(4, 'fUOhD9lqZP58nVw', NULL, 31.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(5, 'aBOGAGvQkQP0yCV', NULL, 18.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(6, 'jrNNeRsrDwyRgpU', NULL, 42.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(7, 'IlF1ECdgm9QgH5N', NULL, 78.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(8, 'Kh8nwdDnRgLO3QX', NULL, 36.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(9, 'ZxJEitwuUZINxYU', NULL, 82.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(10, 'snFXZ6EgVhmgkRC', NULL, 80.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(11, 'igXYdPayXYdwzme', NULL, 50.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(12, 'l5rmVO5LLnigOZo', NULL, 36.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(13, '0EPMJ2AGk83vgFa', NULL, 44.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(14, '4hmNp30D832tRKJ', NULL, 14.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(15, 'iROWX7A01t2SQsJ', NULL, 92.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(16, '8VJ8uaCzDNsCF0F', NULL, 84.00, NULL, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(17, 'IQs7EsWdu7T22Ks', NULL, 60.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(18, 'ODjAeF7VRqI0Rvx', NULL, 67.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(19, 'th8GBmz329zPjxO', NULL, 59.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(20, '2MXjGcI23ymA2oP', NULL, 47.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(21, '49IP4e5w21buY6L', NULL, 77.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(22, 'wgUPe4F7EVgg2zL', NULL, 68.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(23, 'w0fhlLtzlCpC3A2', NULL, 87.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(24, '7OabpMdK3xmnME7', NULL, 25.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(25, 'VYT4sLzL5KPJeZo', NULL, 66.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(26, '5a1WGHhgHaMc4xl', NULL, 31.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(27, '9dHirjC3qXkuPDb', NULL, 28.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(28, '6BbsT4WMN3HssHC', NULL, 47.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(29, '4hODvV1kmJkvvdf', NULL, 41.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(30, 'dSJwz4MknijPFXm', NULL, 99.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(31, 'jW6ttLyuR24AXeA', NULL, 70.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(32, 'E1S7xJCqgVszOFL', NULL, 88.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(33, 'Qi8sai4bEhh03nr', NULL, 67.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(34, 'xe69sbFGLGuKGtT', NULL, 41.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(35, '5Eu6ypzPUfitLjj', NULL, 15.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(36, 'GPytCRy7jQsfu9j', NULL, 32.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(37, 'zTCu61r96jPZbW0', NULL, 96.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(38, 'XpBRe64ah8KJYDS', NULL, 65.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(39, 'RwVBygVI1yUvUAZ', NULL, 80.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(40, 'sP80Gz7smWE44dA', NULL, 64.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(41, 'iuaELYbyxL9ir7y', NULL, 52.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(42, 'FdzFlcTfkntnHwa', NULL, 74.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(43, '0hJKRc3GMWWrAMV', NULL, 64.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(44, 'fGe6tN7YhnzLcdi', NULL, 52.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(45, 'JYLxWjgh6HdsWgH', NULL, 11.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(46, 'Bpd4W88eTlFjjxj', NULL, 40.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(47, 'nMKeK0MgcrlX8kB', NULL, 14.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(48, 's5td09ud7WATbbI', NULL, 68.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(49, 'cuB3IjckGJvBJ38', NULL, 84.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(50, 'dcWWg0j6MBruwHj', NULL, 91.00, NULL, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(51, '4Yr0c5EL6jYtjYI', NULL, 63.00, NULL, '2022-11-26 00:24:14', '2022-11-26 00:24:14'),
(52, 'IOxjX4o0OqWO0mU', NULL, 82.00, NULL, '2022-11-26 00:24:14', '2022-11-26 00:24:14'),
(53, 'T9fIHGhVGj45h8S', NULL, 28.00, NULL, '2022-11-26 00:24:14', '2022-11-26 00:24:14'),
(54, 'sUoqp9xWgH58bei', NULL, 86.00, NULL, '2022-11-26 00:24:15', '2022-11-26 00:24:15'),
(55, 'fTyfmPdPwGtnlyD', NULL, 39.00, NULL, '2022-11-26 00:24:16', '2022-11-26 00:24:16'),
(56, 'E8dDElYyfQByz2z', NULL, 39.00, NULL, '2022-11-26 00:24:17', '2022-11-26 00:24:17'),
(57, 'YksLHItg8eqIKUK', NULL, 55.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(58, 'le7f5kLnXqJdmeS', NULL, 10.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(59, 'Tt64Lmpk8A1cfey', NULL, 65.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(60, 'OdsRQH7VZSYhUXG', NULL, 53.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(61, 'voUmAGwWiLD9Axn', NULL, 75.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(62, 'sLWyURLgpLq7N49', NULL, 92.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(63, 'tLV8Luje8URKYAM', NULL, 19.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(64, 'b9ay83SHfRmM72r', NULL, 56.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(65, 'ne0IK1X8wioYvQS', NULL, 21.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(66, 'fEZY2oBFKO7LnJ6', NULL, 93.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(67, 'SwC4cyUlhAX2R0N', NULL, 82.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(68, 'Y4WqiGtGNVBNIO7', NULL, 71.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(69, 'mMboOYtUkRCYvNy', NULL, 32.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(70, 'PRs1xuhPtDHJB8n', NULL, 36.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(71, 'pTdJBntvw9nQwnQ', NULL, 41.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(72, 'FdklgHnEKspxpuk', NULL, 35.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(73, 'OiyPZjZB26rflAM', NULL, 38.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(74, '0WfUd5ZsCmIvgnQ', NULL, 33.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(75, 'GvUZNrF10Nok1xu', NULL, 63.00, NULL, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(76, 'JWTsLlWXjhIms2m', NULL, 83.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(77, '4nQsIptgKM7r73u', NULL, 33.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(78, 'pNiCMYp5RgPQmWp', NULL, 45.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(79, 'BdEp9Y8qBUbuZzz', NULL, 80.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(80, 'oaPs49TBOTl5ONd', NULL, 70.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(81, 'XMlH2Z5XjkLKLK0', NULL, 95.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(82, 'cXGaRTLcL97EYcE', NULL, 38.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(83, 'HAfaVvBj4a41Wgi', NULL, 59.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(84, 'WLXgoVOhLUi6lDq', NULL, 13.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(85, 'LvDVUkmucO07WA9', NULL, 33.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(86, '51tQLD27BOwThHe', NULL, 57.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(87, 'oszX6eMTcdHUFuE', NULL, 57.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(88, 'YPDurh7zKx75AKm', NULL, 93.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(89, 't0zwvLBNdqpgyT9', NULL, 35.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(90, 'h1vMeFe4qtJ0sYF', NULL, 17.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(91, 'CGIhhQQt1MIIjMk', NULL, 72.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(92, '4BoGujcQ7dMFD5t', NULL, 23.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(93, 'RPjtHTAspuBnNQm', NULL, 88.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(94, '98ayaby90tXwbe4', NULL, 52.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(95, 'qO4CMaRJSGifRMR', NULL, 87.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(96, 'iFo8s1S8IdmQKs2', NULL, 37.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(97, 'ZfwENB4Eu4Rocyt', NULL, 80.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(98, 'b0PFJaZqkmKMiaI', NULL, 87.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(99, 'rY8rmXBa8XhhiZ4', NULL, 81.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(100, 'cax17N1YCTHYjVl', NULL, 80.00, NULL, '2022-11-26 00:24:19', '2022-11-26 00:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 19, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(2, 2, 18, '2022-11-26 00:24:12', '2022-12-02 05:32:59'),
(3, 3, 6, '2022-11-26 00:24:12', '2022-12-02 05:32:59'),
(4, 4, 17, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(5, 5, 18, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(6, 6, 14, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(7, 7, 17, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(8, 8, 12, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(9, 9, 16, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(10, 10, 20, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(11, 11, 20, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(12, 12, 18, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(13, 13, 15, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(14, 14, 18, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(15, 15, 18, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(16, 16, 15, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(17, 17, 11, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(18, 18, 12, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(19, 19, 16, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(20, 20, 19, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(21, 21, 13, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(22, 22, 14, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(23, 23, 14, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(24, 24, 14, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(25, 25, 17, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(26, 26, 10, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(27, 27, 10, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(28, 28, 16, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(29, 29, 11, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(30, 30, 12, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(31, 31, 12, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(32, 32, 11, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(33, 33, 20, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(34, 34, 11, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(35, 35, 16, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(36, 36, 20, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(37, 37, 20, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(38, 38, 16, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(39, 39, 14, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(40, 40, 12, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(41, 41, 12, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(42, 42, 19, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(43, 43, 10, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(44, 44, 17, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(45, 45, 16, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(46, 46, 11, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(47, 47, 13, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(48, 48, 12, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(49, 49, 11, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(50, 50, 13, '2022-11-26 00:24:13', '2022-11-26 00:24:13'),
(51, 51, 12, '2022-11-26 00:24:14', '2022-11-26 00:24:14'),
(52, 52, 20, '2022-11-26 00:24:14', '2022-11-26 00:24:14'),
(53, 53, 16, '2022-11-26 00:24:14', '2022-11-26 00:24:14'),
(54, 54, 10, '2022-11-26 00:24:16', '2022-11-26 00:24:16'),
(55, 55, 13, '2022-11-26 00:24:16', '2022-11-26 00:24:16'),
(56, 56, 17, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(57, 57, 12, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(58, 58, 16, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(59, 59, 10, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(60, 60, 20, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(61, 61, 13, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(62, 62, 13, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(63, 63, 11, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(64, 64, 20, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(65, 65, 10, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(66, 66, 20, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(67, 67, 20, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(68, 68, 14, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(69, 69, 14, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(70, 70, 16, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(71, 71, 19, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(72, 72, 14, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(73, 73, 18, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(74, 74, 20, '2022-11-26 00:24:18', '2022-11-26 00:24:18'),
(75, 75, 18, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(76, 76, 13, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(77, 77, 11, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(78, 78, 14, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(79, 79, 13, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(80, 80, 18, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(81, 81, 11, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(82, 82, 18, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(83, 83, 16, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(84, 84, 18, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(85, 85, 10, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(86, 86, 10, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(87, 87, 11, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(88, 88, 10, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(89, 89, 20, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(90, 90, 20, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(91, 91, 13, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(92, 92, 16, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(93, 93, 17, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(94, 94, 20, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(95, 95, 13, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(96, 96, 10, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(97, 97, 16, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(98, 98, 19, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(99, 99, 19, '2022-11-26 00:24:19', '2022-11-26 00:24:19'),
(100, 100, 11, '2022-11-26 00:24:19', '2022-11-26 00:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Male',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Dhaka',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `gender`, `city`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4135, 'Alvis Grady', 'imertz@example.com', '$2y$10$PItJK9jzSboG7R5xYvtfz.Eh7fHqC00Fz29XpZ/ytk5SizgNoPBP.', NULL, 'Male', 'Dhaka', '2022-12-08 12:28:33', 'OfHoTe8hQP', '2022-12-08 12:28:34', '2022-12-08 12:28:34', NULL),
(4136, 'Zula Labadie II', 'otorp@example.net', '$2y$10$M25zDyeGlGYGDXPtRdlOZeAS3heRn7BPxUyAl1iJ85nwg8W0PYcOC', NULL, 'Male', 'Dhaka', '2022-12-08 12:28:33', 'n9PvTPgMlM', '2022-12-08 12:28:34', '2022-12-08 12:28:34', NULL),
(4137, 'Ivory Welch II', 'ugleason@example.net', '$2y$10$tC4ipeiWLoFnUthNNc0eZeyoC2svfatZry5SllhRa6WV5PEGhbWd2', NULL, 'Male', 'Dhaka', '2022-12-08 12:28:33', 'zCntB6xfez', '2022-12-08 12:28:34', '2022-12-08 12:28:34', NULL),
(4138, 'Mr. Arvel Gulgowski', 'leannon.fernando@example.com', '$2y$10$vQ2gvgQ1iymBLOELJwsOqejt2C27QXBPTieYIbY.Y3Bmj.7suKKIO', NULL, 'Male', 'Dhaka', '2022-12-08 12:28:33', 'AWnHFa9b38', '2022-12-08 12:28:34', '2022-12-08 12:28:34', NULL),
(4139, 'Mortimer Becker', 'eunice79@example.com', '$2y$10$WZ.Y/uS1m.dteLpjyCjX0ugQEiiJLXEhAZ3GYH.VZ99EgWT9pISFK', NULL, 'Male', 'Dhaka', '2022-12-08 12:28:33', 'CBTsleOQf8', '2022-12-08 12:28:34', '2022-12-08 12:28:34', NULL),
(4140, 'Estelle Torp', 'nienow.dena@example.net', '$2y$10$ZnD.MSQJyee2e4mlgWk7l.nL7ocGNKBZnY2pCqP.D3X.8ZLnBJan2', NULL, 'Male', 'Dhaka', '2022-12-08 12:28:33', 'gcnTzwsPJL', '2022-12-08 12:28:34', '2022-12-08 12:28:34', NULL),
(4141, 'Prof. Anabel Paucek PhD', 'kuhlman.rebekah@example.com', '$2y$10$APWo2gbRymDGmJkVpZz1KON5TgiOOIdppnmTDCO1gaOM6vSBze9IC', NULL, 'Male', 'Dhaka', '2022-12-08 12:28:33', 'mhZUm8oIbg', '2022-12-08 12:28:34', '2022-12-08 12:28:34', NULL),
(4142, 'Reina Keebler', 'jrogahn@example.org', '$2y$10$KB8hQ3jQYw63krSjIlBZ3uDd3N3qdDS4ncXQ/wYa3sD5/nyhycbO2', NULL, 'Male', 'Dhaka', '2022-12-08 12:28:34', '2yY6G4u4iW', '2022-12-08 12:28:34', '2022-12-08 12:28:34', NULL),
(4143, 'Milan McCullough', 'ryley.barton@example.com', '$2y$10$7mN99oC7KfEdbR0yJw1HcOdXmKB7yg1Yy.ilcCgPdNCV7qSwXfm7e', NULL, 'Male', 'Dhaka', '2022-12-08 12:28:34', 'PKOBjyzExI', '2022-12-08 12:28:34', '2022-12-08 12:28:34', NULL),
(4144, 'Bell Ward', 'jaden69@example.org', '$2y$10$wPDhrFAHZnDYX5QaGNKZwuiR3.ucjimI0wbw6Ru9lThoc643bHmzW', NULL, 'Male', 'Dhaka', '2022-12-08 12:28:34', 'AQLe4kwaLH', '2022-12-08 12:28:35', '2022-12-08 12:28:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_invoice_no_unique` (`invoice_no`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4145;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
