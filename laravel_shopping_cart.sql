-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 07:02 PM
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
(3957, 'Prof. Maybell Murazik III', 'okeefe.claudia@example.com', '$2y$10$jvAil.kf9Opv.HFm1u1TueHPMux6aEfpPJ7CmDI/u3FHoAbjF2L4m', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:44', '2022-12-03 09:12:21', '2022-12-03 09:12:21'),
(3968, 'Amie Lang', 'tito01@example.org', '$2y$10$JH3RSAAqa/hDc698mkB9L.pisQaEU1VKL7d.TlgqdzCk58EEwaO4u', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:45', '2022-12-03 09:05:27', NULL),
(3979, 'Abagail Kirlin DDS', 'malinda97@example.org', '$2y$10$T5KYBjUUwTPkDvNsKKU89eJ/tHlXbQAEDVO1WFeUgsZx43etFkfnq', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:47', '2022-12-03 09:08:51', NULL),
(3980, 'Rosella Schneider', 'rogahn.darlene@example.org', '$2y$10$oFdLnTvYIVs4seXx3NPGr.CTbhlb6vU57/RWqvoS342/oAt379Mqq', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:47', '2022-12-03 09:08:51', NULL),
(3981, 'Adriana Cummings', 'anibal.mohr@example.net', '$2y$10$np65QxlNVH3d00kXLklZuuoS4MtIoeqonYdrz2593rq32HL0dHReq', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:47', '2022-12-03 09:08:51', NULL),
(3982, 'Shanie Kozey', 'nadams@example.com', '$2y$10$cfRvZoPRoVHYUL9gBVlAFekJPr7Gt6pvO61zFOR6RC5odB2uCXZd.', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:47', '2022-12-03 09:08:51', NULL),
(3983, 'Mrs. Eleanora Bradtke', 'zachery14@example.net', '$2y$10$VoFSYg6Gh6Eiylm8IoSjg.FiFA.qoKJgTanLn5E9gGga6ZKkQGE8a', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:48', '2022-12-03 09:08:51', NULL),
(3984, 'Barry Haag', 'zhudson@example.net', '$2y$10$NLzr66PbcgIfJ9AY5g0U8u13GEKCO3A.DEdPC0RaOvQVnQVdwGJGW', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:48', '2022-12-03 09:08:51', NULL),
(3985, 'Carter Grant', 'rheathcote@example.org', '$2y$10$FUiRyoQorKFgfhn0bLFK9.K7DXVrnDHkX1bkmpfa6Ne7YCOuH1xLO', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:48', '2022-12-03 09:08:51', NULL),
(3986, 'Ms. Kenna Beier', 'jacques.rosenbaum@example.net', '$2y$10$FWdimVwXZ6.Bk3UUsBRaje1jUz.kE4wnoqFmqZRNIxAq/v6n6Yn7G', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:48', '2022-12-03 09:08:51', NULL),
(3987, 'Destinee Zulauf II', 'runolfsdottir.rosemarie@example.org', '$2y$10$w/x6TTAvmjrJTgJ27idXPOYZ3rt8pcDnv2kcZcl1yggl/0RfgqjHq', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:48', '2022-12-03 09:08:51', NULL),
(3988, 'Madyson Johnston', 'sharon27@example.net', '$2y$10$WNBbTeJV8Nq8sQpM8PnKeetdIkK9.R4AzY/g0d97Qy9IQwi6EaFWi', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:48', '2022-12-03 09:08:51', NULL),
(3989, 'Heloise Lubowitz', 'ezequiel95@example.net', '$2y$10$4sy9dvc8JY5kIV24K.o.vu6na2D823AuWbhxQUu6ofRmnSGxypmW6', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:49', '2022-12-03 09:08:51', NULL),
(3990, 'Vernice Walsh', 'aurelie.christiansen@example.com', '$2y$10$LjdyauBB6u0O/QzenCmwv.QFxYO7GPMirv.dSCftpsHcuImHg1cKO', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:49', '2022-12-03 09:08:51', NULL),
(3991, 'Jose Okuneva IV', 'sophia83@example.com', '$2y$10$kZp.pJNT1CD93Ufw8KybkuEm6mTuEJqkdY9vhSHGVg8XuiG0WS7Su', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:49', '2022-12-03 09:08:51', NULL),
(3992, 'Dortha Quitzon', 'stuart.schuster@example.com', '$2y$10$l99.HupLhBzA6507bOF51eRdkcrUJc3c6Xnh3YQtF9L0BDoQlL9DO', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:49', '2022-12-03 09:08:51', NULL),
(3993, 'Erling Goyette I', 'mkeebler@example.com', '$2y$10$NzZCFL65e/aa3ckLfte3p.T5ER6BCVsAAwr6yn17mRCIjf0oN/BXi', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:49', '2022-12-03 09:08:51', NULL),
(3994, 'Robert Morissette', 'ykunze@example.org', '$2y$10$YbN3DOVxtmoEZeOcDFvx.OHBCz5wegMPlBURvY.6am2OdwffLK1je', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:50', '2022-12-03 09:08:51', NULL),
(3995, 'Maribel Weissnat DDS', 'pouros.braulio@example.net', '$2y$10$Z.3aNk5kLA5YAJ83lfHa4udm.kA0PJPEm4Iv1t5bjuOTQY3DUSpe2', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:50', '2022-12-03 09:08:51', NULL),
(3996, 'Adam Connelly MD', 'breitenberg.kenyatta@example.com', '$2y$10$9RXkFLx3x24X47uJuCUwhexOM7px67J.Jy7ifzTuayCqHgDaJgYJG', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:50', '2022-12-03 09:08:51', NULL),
(3997, 'Miss Patsy Murazik III', 'kuhn.precious@example.net', '$2y$10$LmEv1DfUgJiq1MFnZgVUt.r3J92ie817y.q/SFW7OjfrsehVxZbxG', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:50', '2022-12-03 09:08:51', NULL),
(3998, 'Iva Effertz', 'walter.vincent@example.org', '$2y$10$IYiwxR20y.PZDdzvIq1YT.0No00d9idglLdaK16RGEd8RlwrqWOEG', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:50', '2022-12-03 09:08:51', NULL),
(3999, 'Zachary Nitzsche', 'aufderhar.owen@example.com', '$2y$10$O0mPKXdBfJeb/MBAR6G5beRsnWTAyDSMLcf2LO0k0kY09WGTnOXA.', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:50', '2022-12-03 09:08:51', NULL),
(4000, 'Prof. Lois Prohaska V', 'fgoyette@example.org', '$2y$10$uuzDW9ojWApAyowuvAYXDelbRR/7Si8NTdhryvwXWh8enp4JQM4HK', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:51', '2022-12-03 09:08:51', NULL),
(4001, 'Reva Hermiston', 'general.bruen@example.net', '$2y$10$8pNbdY73bm4M.U4IjVRANOxjKYLRY4FJCwPPfWtxY8FX4Ohng1Wse', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:51', '2022-12-03 09:08:51', NULL),
(4002, 'Davion Robel', 'letitia34@example.org', '$2y$10$geknrHGqgg.x55f2D8XRhOJ.2xU85M5kjfbK92JZAF.aeIIlfHiEe', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:51', '2022-12-03 09:08:51', NULL),
(4003, 'Ella Volkman Jr.', 'rowe.gerard@example.com', '$2y$10$Xdq0ViEypy9KIn7ZQowyD.6Pn7xGDsayAWH/2se64LCQzugtBD76C', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:51', '2022-12-03 09:08:51', NULL),
(4004, 'Hassan Oberbrunner III', 'shanahan.kenton@example.com', '$2y$10$NqFOfyVEHKih3.IR/oqeiumysnyaFMoU6XTGfo4tdos6FVafRsLQi', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:51', '2022-12-03 09:08:51', NULL),
(4005, 'Johnny Hammes PhD', 'crooks.adaline@example.org', '$2y$10$EmX6mJbkw/FIpSZtOD9i0.xisIHxJWhrtCMZXD7NzaiQcH/vxqMLe', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:51', '2022-12-03 09:08:51', NULL),
(4006, 'Max Johnston', 'domingo.dach@example.net', '$2y$10$OnsyL83XTGDCgU7oB2dd0.Dw91Px2KzYsm7GAoHT7Wnez.khDGcqG', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:52', '2022-12-03 09:08:51', NULL),
(4007, 'Annette Kautzer', 'oheathcote@example.net', '$2y$10$zmBoBmnsjGd9PDsvFTCqWe60vpkwdIvs8GHvHg2vSOmkWC1TeNT06', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:52', '2022-12-03 09:08:51', NULL),
(4008, 'Cory Greenfelder', 'nikolas50@example.net', '$2y$10$cwhsO6Kk22fFqiCBv277jO7fNKahGbkN4SnRnsaRkdnpghzf7sKZS', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:52', '2022-12-03 09:08:51', NULL),
(4009, 'Mrs. Brandy Borer Sr.', 'yundt.tom@example.org', '$2y$10$z5AuO6RMLDIUCOYS9ve8/O0QZf3W3yPbwdMSPn3PmIRvtnfgbB21G', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:52', '2022-12-03 09:08:51', NULL),
(4010, 'Jaylen Bruen II', 'alverta33@example.net', '$2y$10$LVPH6akpQGw.32Gm5t0SN.YvPL7P955qW9ufyPUHvvIWS2LM7bp7O', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:52', '2022-12-03 09:08:51', NULL),
(4011, 'Luna DuBuque', 'aolson@example.net', '$2y$10$oPvZnOV65C0Gcur6lHSXd.5CD6ZX/YPdjNQYUQFv411Us3MZ/ScEq', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:52', '2022-12-03 09:08:51', NULL),
(4012, 'Kieran Klocko', 'rossie.glover@example.net', '$2y$10$yDUukYLs/gvpVHLVjvgnrOBJY63o2xiwg36SNRyYwcxPZkOfMKDBS', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:53', '2022-12-03 09:08:51', NULL),
(4013, 'Miss Alvena Swift', 'uprice@example.com', '$2y$10$63LGDM66GaSXhDYNs3VKNeBIXjgti15LtkZdGOtiirZGdmPAm0znC', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:53', '2022-12-03 09:08:51', NULL),
(4014, 'Destany Runte Jr.', 'luis.corwin@example.net', '$2y$10$.jsm4F/ZbkCucGGdaSkqN.HVlafbnbeJh4EzMiecAr/DFzypa1QzO', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:53', '2022-12-03 09:08:51', NULL),
(4015, 'Austyn Koepp MD', 'wmcclure@example.net', '$2y$10$KkS18UktpNgNm4KH37PwOuHTgAcEvT6828qvOXr3Q/.nkRgtxPwQC', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:53', '2022-12-03 09:08:51', NULL),
(4016, 'Donavon Lang', 'rutherford.carol@example.com', '$2y$10$wmkOdvDA7/10YPX3WXacGObt2vvoF5GtYr2oi7Dg5aNgbWjRIzOXK', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:53', '2022-12-03 09:08:51', NULL),
(4017, 'Reanna Terry', 'bert30@example.com', '$2y$10$SkYl5C6ajwW8.rIsTxwF9egT4duckAQ1P5nJtfVc/X7mpTeVHlgfG', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:54', '2022-12-03 09:08:51', NULL),
(4018, 'Hailee Deckow MD', 'russel.jaren@example.net', '$2y$10$hS50yaAM4jFB6hZub4qJQ.zPmAbJmOARYuDN4fFuMAaHyP.IlXeZ2', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:54', '2022-12-03 09:08:51', NULL),
(4019, 'Dr. Maxime Leuschke', 'ikuhlman@example.net', '$2y$10$WoPjuRG/5n/Ro2KDHABUV.1ytr8fWnedZFoLq0IpVf76r48MlXPIu', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:54', '2022-12-03 09:08:51', NULL),
(4020, 'Van Ankunding', 'cornell.jerde@example.org', '$2y$10$LtRBvTCzjJi9Q3vbCMw6BeiwiufduvSWNyFuVQQtdNBLWQTum0wDK', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:54', '2022-12-03 09:08:51', NULL),
(4021, 'Dr. Ray Parisian', 'marvin.ohara@example.org', '$2y$10$q49nw8/eTbeCMfjxy5q9kuJxXlljkrkTlE2xQd8tBlrvW0kI/5p6K', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-02 04:30:54', '2022-12-03 09:08:51', NULL),
(4030, 'Md Anwar Hossain', 'anwarhossain7736@gmail.com', NULL, 'https://avatars.githubusercontent.com/u/78712716?v=4', 'Male', 'Dhaka', NULL, NULL, '2022-12-03 11:13:32', '2022-12-03 11:13:32', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4031;

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
