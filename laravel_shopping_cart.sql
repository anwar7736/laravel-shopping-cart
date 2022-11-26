-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 09:57 AM
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
(8, '2022_11_25_053923_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `charge` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
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
  `discount` double(8,2) NOT NULL,
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
(2, 2, 19, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
(3, 3, 12, '2022-11-26 00:24:12', '2022-11-26 00:24:12'),
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
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Male',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Dhaka',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `city`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Sylvester Kuhn', 'elza.huels@example.org', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PIfUmEdcaW', '2022-11-27 06:59:21', '2022-11-27 06:59:21'),
(3, 'Merritt Howe', 'dwitting@example.com', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9ZiPY50KvU', '2022-11-27 06:59:21', '2022-11-27 06:59:21'),
(4, 'Ronaldo Cruickshank', 'sschuppe@example.org', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FCIZ0y4ESk', '2022-11-27 06:59:21', '2022-11-27 06:59:21'),
(5, 'Prof. Alberta Volkman V', 'florida.jones@example.net', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cqnuxyBQeY', '2022-11-27 06:59:21', '2022-11-27 06:59:21'),
(6, 'Cydney Jakubowski', 'aschiller@example.org', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0rcLt4uf59', '2022-11-27 06:59:21', '2022-11-27 06:59:21'),
(7, 'Davion Kovacek', 'zhalvorson@example.com', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QuMoINDCLm', '2022-11-27 06:59:21', '2022-11-27 06:59:21'),
(8, 'Dr. Mike Dickinson', 'dlarson@example.com', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fHaBPFFjYK', '2022-11-27 06:59:21', '2022-11-27 06:59:21'),
(9, 'London Wyman DVM', 'antonette74@example.net', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WKItUwPzsT', '2022-11-27 06:59:21', '2022-11-27 06:59:21'),
(10, 'Prof. Emilio Spinka', 'breana16@example.net', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dEk5dezt2e', '2022-11-27 06:59:21', '2022-11-27 06:59:21'),
(11, 'Sienna Nitzsche', 'pschiller@example.org', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vRtc0o0VAC', '2022-11-25 07:00:07', '2022-11-25 07:00:07'),
(12, 'Roberta Sawayn', 'solson@example.org', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OA8wbVMH1H', '2022-11-25 07:00:07', '2022-11-25 07:00:07'),
(13, 'Karlee Reichel', 'cristobal85@example.net', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DziYszBsSE', '2022-11-25 07:00:07', '2022-11-25 07:00:07'),
(14, 'Esperanza Ortiz', 'hbraun@example.net', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rj1ojx5r54', '2022-11-25 07:00:07', '2022-11-25 07:00:07'),
(15, 'Victor O\'Reilly', 'moriah74@example.com', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WyrUxwqu5R', '2022-11-25 07:00:07', '2022-11-25 07:00:07'),
(16, 'Demario Crona V', 'george57@example.net', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '76mVC9JLMh', '2022-11-25 07:00:07', '2022-11-25 07:00:07'),
(17, 'Sonia Orn Sr.', 'akeem62@example.net', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PlaUJBN7lj', '2022-11-25 07:00:07', '2022-11-25 07:00:07'),
(18, 'Al Blick', 'jacklyn93@example.org', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C8PrRgi1ax', '2022-11-25 07:00:07', '2022-11-25 07:00:07'),
(19, 'Abdul Bergnaum', 'pearline88@example.com', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pc9wfaX2Jj', '2022-11-25 07:00:07', '2022-11-25 07:00:07'),
(20, 'Hettie Runolfsson', 'lokuneva@example.org', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wfSec8HrdQ', '2022-11-25 07:00:07', '2022-11-25 07:00:07'),
(21, 'Prof. Marcella Turner DVM', 'langworth.savion@example.com', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2lhGVZUyTX', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(22, 'Prof. Emile Mitchell II', 'eheaney@example.net', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oxSmQxsLCT', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(23, 'Miss Aglae Towne', 'huel.rodrick@example.org', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HjVWqKFNzX', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(24, 'Jed Kozey', 'gregoria.kovacek@example.com', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tk2IOrLeGp', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(25, 'Kale Conroy', 'jarvis79@example.net', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SMJTqXPRkV', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(26, 'Dianna Klocko', 'era31@example.org', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RCeeMMamke', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(27, 'Coleman Cummerata MD', 'emery08@example.com', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2pIEE8RXB3', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(28, 'Neva Swift', 'marisa74@example.com', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b5UZo2vsqn', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(29, 'Eric Jones PhD', 'uglover@example.org', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l33H5vuYqd', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(30, 'Kasey Stamm MD', 'ova.hudson@example.net', 'Female', 'Khulna', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WGOxBHl3Wr', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(31, 'Arlo Fisher', 'emard.courtney@example.com', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L7yp1GfIbl', '2022-11-16 07:00:29', '2022-11-16 07:00:29'),
(32, 'Jennings Rempel', 'qkuphal@example.net', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OWPjCPopge', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(33, 'Dr. Sylvan Collins Jr.', 'madisen34@example.org', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WGNzl0pWUD', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(34, 'Randi Pfannerstill', 'matilda.kovacek@example.net', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o56Bv2e00R', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(35, 'Christiana Flatley', 'hunter.mcglynn@example.org', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6iv3MNKcvW', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(36, 'Dr. Maria Ruecker', 'von.graham@example.org', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DRV7mDkj03', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(37, 'Ms. Shaylee Mertz', 'rosalia44@example.org', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RQ8Gm1j9sb', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(38, 'Ms. Malvina Nienow', 'dorothy03@example.com', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ohlgCMcuK8', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(39, 'Aisha Kiehn II', 'brandon82@example.com', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2rKLiWIrnX', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(40, 'Jaylan Cremin', 'drussel@example.org', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NyFNLx5Q3y', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(41, 'Paige Swift', 'preston50@example.org', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YwD2uTUrTY', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(42, 'Ms. Jailyn Koch I', 'ugraham@example.com', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pG6kwDAWiG', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(43, 'Jeff Gutkowski', 'angelina24@example.com', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C4LYed7unR', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(44, 'Hadley Bosco', 'ortiz.mavis@example.org', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CnxXBgu1tS', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(45, 'Prof. Clotilde Kemmer', 'mabelle34@example.com', 'Female', 'Rajshahi', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sh5xzGAIWp', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(46, 'Flavio Hyatt', 'ltremblay@example.org', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KRSmIjmg5N', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(47, 'Dedrick Hintz', 'chaya.hand@example.net', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fMM7ZWTQLH', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(48, 'Sarah Rippin', 'koepp.donnell@example.net', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qWEXULdQlu', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(49, 'Chaya Lind', 'sheila57@example.com', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TIZXhgnW34', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(50, 'Pearl Maggio II', 'rhiannon.murray@example.net', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3PzG2gb3Z5', '2022-11-11 07:00:55', '2022-11-11 07:00:55'),
(51, 'Lexus Herzog', 'iboehm@example.com', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hx2wc0hXKs', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(52, 'Alexys Douglas', 'runolfsdottir.carolyn@example.net', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iV6dagbIdz', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(53, 'Jessica Carroll II', 'dennis17@example.com', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c8z9tEWuyN', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(54, 'Marc Conn V', 'nels71@example.net', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sihBwGdUaG', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(55, 'Dr. Kaitlin Corwin MD', 'gavin73@example.net', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QgjxMNiqua', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(56, 'Ryley Kohler II', 'benjamin.gorczany@example.org', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q9sioPxWSP', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(57, 'Lizzie Cassin', 'odessa46@example.org', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V4aJTD9NMT', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(58, 'Gabrielle Beier', 'zschmeler@example.net', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WGf0DHGG02', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(59, 'Miss Bria Boyle', 'brown.viola@example.org', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xRrYxjPjEi', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(60, 'Mr. Chandler Kuhlman IV', 'nella30@example.com', 'Others', 'Chittagong', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OIodnSzYlA', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(61, 'Eryn Lindgren', 'slabadie@example.org', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GyD7vrHuq8', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(62, 'Madyson Hackett', 'darron.gerlach@example.com', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xxZWwwiz5I', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(63, 'Itzel Kuhn', 'marquis.feest@example.com', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gbnjF8zbLL', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(64, 'Brenden Wisoky', 'pattie86@example.com', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HSlNyoShAu', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(65, 'Mrs. Leanna Huels', 'dfisher@example.com', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ChLiPxoZLk', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(66, 'Milton Bode V', 'willy47@example.org', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ABi1TkVvfo', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(67, 'Beth Hane', 'miguel68@example.com', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ac9msY3VEi', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(68, 'Elton Botsford', 'hartmann.geraldine@example.com', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ekx7sLCuaG', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(69, 'Dorothea Hagenes DVM', 'keyshawn.breitenberg@example.net', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wgC34G3qml', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(70, 'Henderson Cruickshank', 'jedediah46@example.com', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm53flRrOLQ', '2022-10-26 07:01:17', '2022-10-26 07:01:17'),
(71, 'Sabrina Mitchell', 'nickolas27@example.net', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MwiwAXglWn', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(72, 'Alena Schulist', 'jazmyne.jacobson@example.com', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6L7j3wYDlw', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(73, 'Brady Hermann DDS', 'esta.welch@example.net', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1k2R33xtF1', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(74, 'Rosendo Hand', 'mstroman@example.com', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a1ruMT6e0p', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(75, 'Moses Kohler', 'tillman93@example.com', 'Others', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z7RsaC1nu5', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(76, 'Ms. Vena Kuphal II', 'sylvan.olson@example.org', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2Jhsct8BOd', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(77, 'Karine Doyle', 'laura.casper@example.com', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rrvxmeSmih', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(78, 'Prof. Riley Conn DVM', 'santino.oconnell@example.net', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v39H8kGtsI', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(79, 'Fausto Lind', 'braun.nicklaus@example.com', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1fglK3eguS', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(80, 'Tom Bahringer', 'hackett.jaquan@example.com', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g95y0WZI8U', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(81, 'Americo Kuvalis', 'lea99@example.com', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NuykfgAjpE', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(82, 'Leila Kreiger', 'ifunk@example.org', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BzCthBb5Nh', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(83, 'David Gottlieb', 'armstrong.kane@example.org', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rP2eirYbxm', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(84, 'Gideon Stark', 'lynch.lyric@example.com', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fEwnOaClQN', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(85, 'Madalyn Osinski', 'verda.heller@example.com', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3CkwZO4V5v', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(86, 'Katharina O\'Hara', 'auer.reed@example.org', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1za5ljcWFB', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(87, 'Emory Buckridge', 'toney33@example.org', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3DrZa2s3Ht', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(88, 'Dr. Selina Dicki PhD', 'qhackett@example.net', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PlhlYEf8mN', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(89, 'Nella Klocko', 'willis.romaguera@example.net', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JiMHgy373F', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(90, 'Amely Rath', 'scotty.upton@example.net', 'Male', 'Rangpur', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iaDdGpVO9I', '2022-11-06 07:01:45', '2022-11-06 07:01:45'),
(91, 'Aleen Mosciski', 'lambert55@example.com', 'Male', 'Dhaka', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'saaA8fwZR7', '2022-11-26 00:25:29', '2022-11-26 00:25:29'),
(92, 'Antonetta Cartwright', 'ebeer@example.com', 'Others', 'Mymensingh', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wKWIgEGZrX', '2022-11-26 00:25:29', '2022-11-26 00:25:29'),
(93, 'Meagan Williamson', 'amanda65@example.net', 'Others', 'Mymensingh', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QmVDWC64om', '2022-11-26 00:25:29', '2022-11-26 00:25:29'),
(94, 'Dr. Ida Greenholt II', 'dlubowitz@example.com', 'Others', 'Mymensingh', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zd3CTnYsCQ', '2022-11-26 00:25:29', '2022-11-26 00:25:29'),
(95, 'Payton Jacobson', 'mccullough.jaeden@example.com', 'Others', 'Mymensingh', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YQ8pii1C7F', '2022-11-26 00:25:29', '2022-11-26 00:25:29'),
(96, 'Mr. Hudson Mann DDS', 'ulangosh@example.org', 'Others', 'Mymensingh', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E01dUOPEEF', '2022-11-26 00:25:29', '2022-11-26 00:25:29'),
(97, 'Mozell Murray', 'shayne.frami@example.com', 'Others', 'Mymensingh', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EGldaGC37r', '2022-11-26 00:25:29', '2022-11-26 00:25:29'),
(98, 'Mrs. Kenya Feil III', 'eugene99@example.org', 'Others', 'Mymensingh', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kps5qLD1Rl', '2022-11-26 00:25:29', '2022-11-26 00:25:29'),
(99, 'Stephanie Carter', 'francisco.ryan@example.net', 'Others', 'Mymensingh', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AR4AEo8lKi', '2022-11-26 00:25:29', '2022-11-26 00:25:29'),
(100, 'Uriah Keeling', 'bogan.brenda@example.net', 'Others', 'Mymensingh', '2022-11-26 00:25:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vr3DyI0uWc', '2022-11-26 00:25:29', '2022-11-26 00:25:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

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
