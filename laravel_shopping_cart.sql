-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 11:46 PM
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
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Male',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Dhaka',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `city`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3927, 'Keagan Hauck', 'okon.ernestine@example.com', 'Male', 'Dhaka', NULL, '$2y$10$621hcGTmI74p5qYKD7zT.OCNXYplxYpu/8/qV5/JDek64RnCu.6Tq', NULL, '2022-12-02 04:30:39', '2022-12-02 04:30:39'),
(3928, 'Ms. Bridgette Halvorson', 'jaeden11@example.org', 'Male', 'Dhaka', NULL, '$2y$10$xcXANFuGFWjtaBgKI78lQeDlw.qfG2aQGeMlztBp.5tl0KbWY3E1y', NULL, '2022-12-02 04:30:39', '2022-12-02 04:30:39'),
(3929, 'Prof. Olga Collier', 'ludie27@example.org', 'Male', 'Dhaka', NULL, '$2y$10$KlpRr7dgErFByXS3wtcw.ec7fKbByp60qlBTCh1/pkaMryB47BCA6', NULL, '2022-12-02 04:30:39', '2022-12-02 04:30:39'),
(3930, 'Dr. Gardner Sauer DVM', 'may.paucek@example.org', 'Male', 'Dhaka', NULL, '$2y$10$btfY6yD7PsjXAne31/VXqeUb4ycu9wZ0C6TxbY5uI.2ov14B0qge.', NULL, '2022-12-02 04:30:39', '2022-12-02 04:30:39'),
(3931, 'Veda Johnston', 'myriam24@example.net', 'Male', 'Dhaka', NULL, '$2y$10$vaNBlq2vxdyTGO0nXr/you4hihXt9EQJNEybSkIc14uiMtAPCj5Cm', NULL, '2022-12-02 04:30:39', '2022-12-02 04:30:39'),
(3932, 'Elisa Heathcote', 'abbie64@example.com', 'Male', 'Dhaka', NULL, '$2y$10$.4QNwC5qKRIY8Dx4IeYfaerFEcvO0KJ8B8I5tZb3SNDBWI1.zqxuK', NULL, '2022-12-02 04:30:39', '2022-12-02 04:30:39'),
(3933, 'Sandy Koch', 'tyson.cartwright@example.net', 'Male', 'Dhaka', NULL, '$2y$10$4.TmSudMYvtA0tfOgepwZOWiulGk0lbrzGvC3gExBUQLbEsx7QiMi', NULL, '2022-12-02 04:30:40', '2022-12-02 04:30:40'),
(3934, 'Kieran Leffler', 'johathan.kemmer@example.org', 'Male', 'Dhaka', NULL, '$2y$10$IGhlJySo9.U7sAENl4yT7.LwstRkNplsTSp9cRz2RVPqqKy83n8.i', NULL, '2022-12-02 04:30:40', '2022-12-02 04:30:40'),
(3935, 'Samson Hauck II', 'dulce13@example.net', 'Male', 'Dhaka', NULL, '$2y$10$XXli2CGMGhIpgRz4fcurV.1xhjGrMe3mtmuvWyNObLyrLFjiW4kOO', NULL, '2022-12-02 04:30:40', '2022-12-02 04:30:40'),
(3936, 'Dr. Darron Russel', 'jayne49@example.com', 'Male', 'Dhaka', NULL, '$2y$10$mmun3kCX9YIt93v3/C.H3eWccFicrOUJsyZ0K/ScAVAwPag1sK/WS', NULL, '2022-12-02 04:30:40', '2022-12-02 04:30:40'),
(3937, 'Ms. Hildegard Hilpert', 'johnathan.satterfield@example.com', 'Male', 'Dhaka', NULL, '$2y$10$CEYDv7hKrZR1BMVSLI2reuLgZiV3SPCsLhfZlQdupUB/dNX9j74IK', NULL, '2022-12-02 04:30:40', '2022-12-02 04:30:40'),
(3938, 'Eliseo Kulas', 'alex.lynch@example.org', 'Male', 'Dhaka', NULL, '$2y$10$feV14V3ftNAnrnP0tdLfN./PM1Cc11mLMfLilf6l2FRFcRuOoo7wm', NULL, '2022-12-02 04:30:40', '2022-12-02 04:30:40'),
(3939, 'Arne Bergnaum', 'francisca.schowalter@example.com', 'Male', 'Dhaka', NULL, '$2y$10$s.Za2xrmIo42qMfgYmAV4eLVVRPsUk6TIzZFQow6Q2jVq8sJ5nhSq', NULL, '2022-12-02 04:30:41', '2022-12-02 04:30:41'),
(3940, 'Orpha Lockman', 'dboehm@example.com', 'Male', 'Dhaka', NULL, '$2y$10$GpUOQiHPJYB.m9JnM0R0tuVFHNBuswrGsRe2AlrisqPQKQ8lRh7gO', NULL, '2022-12-02 04:30:41', '2022-12-02 04:30:41'),
(3941, 'Sadie Mante', 'bashirian.nash@example.com', 'Male', 'Dhaka', NULL, '$2y$10$aaGTWki29Hebe.4YqEGJO.ZWpMvQ0BhX1247kB9fvl6VikCKF3qla', NULL, '2022-12-02 04:30:41', '2022-12-02 04:30:41'),
(3942, 'Jettie Nitzsche', 'kjacobi@example.com', 'Male', 'Dhaka', NULL, '$2y$10$PYC9tYt/Lc0lZgv5LtjbuOH22ovSx1XZTrI8hgIIa4kVF7CYrgGCG', NULL, '2022-12-02 04:30:41', '2022-12-02 04:30:41'),
(3943, 'Danyka Price DVM', 'dyundt@example.net', 'Male', 'Dhaka', NULL, '$2y$10$2wOmZlhUQzzb6jKmumNEDOjNrw2nHEXnqNIjBrr/VI.rCWWO8Oak2', NULL, '2022-12-02 04:30:41', '2022-12-02 04:30:41'),
(3944, 'Katarina Powlowski', 'delfina58@example.org', 'Male', 'Dhaka', NULL, '$2y$10$lkVAeVkbjbTPxwDmFI8B/.Cn8O8fAPR9bfnzr9MSVZF.yf5xQPOnm', NULL, '2022-12-02 04:30:41', '2022-12-02 04:30:41'),
(3945, 'Alvena Lindgren', 'nick11@example.net', 'Male', 'Dhaka', NULL, '$2y$10$yIR98bzb9IV4M7VOSb7jf.aX21f7VuXRxhipO4vxQtewxtRv4DRjm', NULL, '2022-12-02 04:30:41', '2022-12-02 04:30:41'),
(3946, 'Dr. Loyce Wilkinson', 'fletcher60@example.com', 'Male', 'Dhaka', NULL, '$2y$10$7ICUKztvcnUosURhZyCLXO3cicnrEQu9bVPZf2J7Tnhh.mV9Cwp26', NULL, '2022-12-02 04:30:42', '2022-12-02 04:30:42'),
(3947, 'Prof. Louisa Okuneva DDS', 'robbie05@example.com', 'Male', 'Dhaka', NULL, '$2y$10$kugtpaj/722hS3pKNEYqoeNGCzLB558MRocxAo7DoOfPRlb3826Dm', NULL, '2022-12-02 04:30:42', '2022-12-02 04:30:42'),
(3948, 'Mr. Oswald Gaylord III', 'felix.walker@example.org', 'Male', 'Dhaka', NULL, '$2y$10$q4cI1XKrhv6vnZl9.HbdtOsPVKceAk7WDUkbs51uFhU49nhBhRlKe', NULL, '2022-12-02 04:30:42', '2022-12-02 04:30:42'),
(3949, 'Ernesto McDermott', 'parker.joana@example.org', 'Male', 'Dhaka', NULL, '$2y$10$uQKO7YqLWhaNJ0uxdJmLDuEl16j1sGRCzBSSvThNr.LXvVNMOs9aG', NULL, '2022-12-02 04:30:42', '2022-12-02 04:30:42'),
(3950, 'Kaci Harris', 'oconnell.tomas@example.com', 'Male', 'Dhaka', NULL, '$2y$10$etctaBB2PQH4vPN7FALi.Oy4k5AQCliBO6R1cqUHkqZ3p46Qj0Xa.', NULL, '2022-12-02 04:30:42', '2022-12-02 04:30:42'),
(3951, 'Francisco Mertz', 'freddy.hansen@example.net', 'Male', 'Dhaka', NULL, '$2y$10$khxx8yYnhA4HKqaTMkB94eC/dzSa6INLu/Hx5mHJGOeEGjTDTHs2S', NULL, '2022-12-02 04:30:42', '2022-12-02 04:30:42'),
(3952, 'Hilton Kunde', 'francesca11@example.com', 'Male', 'Dhaka', NULL, '$2y$10$MRFBN5uPOz/NMutvK19uqO5vUgEd6pEEjGsTPD1puhkp8TFyrHCmu', NULL, '2022-12-02 04:30:43', '2022-12-02 04:30:43'),
(3953, 'Steve McGlynn', 'jacobi.asha@example.net', 'Male', 'Dhaka', NULL, '$2y$10$jcjvA5joh8Py/RDanmY25eK7HWRL9u.Mz3axmfklma7qawbjhDS62', NULL, '2022-12-02 04:30:43', '2022-12-02 04:30:43'),
(3954, 'Prof. Jovan Braun', 'vmaggio@example.com', 'Male', 'Dhaka', NULL, '$2y$10$EOrpx7G1UVqYWkFxkTz6NeN44J0SMzKiGRYj0Xv7sw1I73E8B6Cw.', NULL, '2022-12-02 04:30:43', '2022-12-02 04:30:43'),
(3955, 'Nichole Wolf Jr.', 'murray.lew@example.net', 'Male', 'Dhaka', NULL, '$2y$10$.2.8pbBSRk2UmwHQimZxuucOrIdosrXLLh7kWDwiqAgMjgkfn0ZoC', NULL, '2022-12-02 04:30:43', '2022-12-02 04:30:43'),
(3956, 'Elyse Friesen', 'domenica37@example.net', 'Male', 'Dhaka', NULL, '$2y$10$eOu1/f53cFsfI48QO8ePA.ZjtXvIeMiWUjJrABr1BMZ1KUwdIVI2O', NULL, '2022-12-02 04:30:43', '2022-12-02 04:30:43'),
(3957, 'Prof. Maybell Murazik III', 'okeefe.claudia@example.com', 'Male', 'Dhaka', NULL, '$2y$10$jvAil.kf9Opv.HFm1u1TueHPMux6aEfpPJ7CmDI/u3FHoAbjF2L4m', NULL, '2022-12-02 04:30:44', '2022-12-02 04:30:44'),
(3958, 'Prof. Filiberto Langworth', 'ezequiel.hermann@example.com', 'Male', 'Dhaka', NULL, '$2y$10$bQdfNzKgnj5Qrot2jWVlBOq5NrBAwugi23OKIKtvZ.HV2oBiypg6K', NULL, '2022-12-02 04:30:44', '2022-12-02 04:30:44'),
(3959, 'Arlie Yost MD', 'rcorwin@example.net', 'Male', 'Dhaka', NULL, '$2y$10$CdOxSLvyhNiev4eXysBrTe1yj9qMdpDKfC/5Kx2w61cgt1RJDZsVe', NULL, '2022-12-02 04:30:44', '2022-12-02 04:30:44'),
(3960, 'Gussie Lakin I', 'becker.neil@example.org', 'Male', 'Dhaka', NULL, '$2y$10$75QDW78dWCpm8Z9Vl7oFduTzjp0lunN1NL7CHSd2paS6if2R1Zbgu', NULL, '2022-12-02 04:30:44', '2022-12-02 04:30:44'),
(3961, 'Jarred Weissnat V', 'oran83@example.net', 'Male', 'Dhaka', NULL, '$2y$10$On6YmTcFIkiO.STQzwI2xui0HMvQmgCPGz/H03x/vevLdIyaIAqny', NULL, '2022-12-02 04:30:44', '2022-12-02 04:30:44'),
(3962, 'Ms. Eileen Osinski Sr.', 'celestino45@example.net', 'Male', 'Dhaka', NULL, '$2y$10$EIoaqr87nGjhDx/l2g/AHOZnGMiOfcrjdL/ob787eozQ.30Ky1jUW', NULL, '2022-12-02 04:30:44', '2022-12-02 04:30:44'),
(3963, 'Eldridge Heaney', 'pkoelpin@example.org', 'Male', 'Dhaka', NULL, '$2y$10$VOyCqojiW20wRUJ5pfwtE..5USrtvjJcpEp597s60qKZVQSzLs0sS', NULL, '2022-12-02 04:30:44', '2022-12-02 04:30:44'),
(3964, 'Erna Daniel', 'jacobi.alvis@example.net', 'Male', 'Dhaka', NULL, '$2y$10$/pvxYjI6P4p1ESLY6tktaOZRWNk4E8HVc3rDewABEvLyBHL5/cWyW', NULL, '2022-12-02 04:30:45', '2022-12-02 04:30:45'),
(3965, 'Jordyn Marvin', 'elmira70@example.net', 'Male', 'Dhaka', NULL, '$2y$10$ZRP3xccxRXwx81MRWjLnNONf86HZ/4IXDqdVvj3Gzn.8GMVCKdhM.', NULL, '2022-12-02 04:30:45', '2022-12-02 04:30:45'),
(3966, 'John Lakin', 'bennie.wilderman@example.net', 'Male', 'Dhaka', NULL, '$2y$10$axThADGl9aPqLyFYwF5NIel3TYzwtMvp1QJwXyY007Pu6ICpTIfAu', NULL, '2022-12-02 04:30:45', '2022-12-02 04:30:45'),
(3967, 'Devin Murazik', 'mckenna.halvorson@example.com', 'Male', 'Dhaka', NULL, '$2y$10$6uAMO8UMkg/7CsqDb7iwAeZrbaNI2uuUINh1x/WP39adcEa/XshIu', NULL, '2022-12-02 04:30:45', '2022-12-02 04:30:45'),
(3968, 'Amie Lang', 'tito01@example.org', 'Male', 'Dhaka', NULL, '$2y$10$JH3RSAAqa/hDc698mkB9L.pisQaEU1VKL7d.TlgqdzCk58EEwaO4u', NULL, '2022-12-02 04:30:45', '2022-12-02 04:30:45'),
(3969, 'Rodolfo Bauch', 'mratke@example.com', 'Male', 'Dhaka', NULL, '$2y$10$rgFBI.lhyRxPcXMLTysck.AeLWs0c5azLMtxF0l.wvBdO1HWxdkeK', NULL, '2022-12-02 04:30:45', '2022-12-02 04:30:45'),
(3970, 'Mrs. Elna Hamill V', 'wterry@example.net', 'Male', 'Dhaka', NULL, '$2y$10$Mb0whvKHPTCRdcXpy5yT4eqUx4HLi/yS58jY14GpnO2Q3CMiIecCy', NULL, '2022-12-02 04:30:46', '2022-12-02 04:30:46'),
(3971, 'Irwin Hauck Jr.', 'karley.thiel@example.org', 'Male', 'Dhaka', NULL, '$2y$10$oneFYp/hvyabdjblustzTuc6d8MoxTcue3vHI8iVwYYWiBWfsSuOa', NULL, '2022-12-02 04:30:46', '2022-12-02 04:30:46'),
(3972, 'Flavio Keebler', 'coty23@example.com', 'Male', 'Dhaka', NULL, '$2y$10$nu4CNx2o.wvpGvgsV30VC.rOU56EP/yz/rX8pRBKC5OAfTaR9zeC.', NULL, '2022-12-02 04:30:46', '2022-12-02 04:30:46'),
(3973, 'Van Conroy', 'nebert@example.org', 'Male', 'Dhaka', NULL, '$2y$10$PnkwsYO9SW9kz/j7yTKIferkhRoKkr73aectQhCHZWhoIsMoB8RWi', NULL, '2022-12-02 04:30:46', '2022-12-02 04:30:46'),
(3974, 'Prof. Jordi Haag', 'breynolds@example.org', 'Male', 'Dhaka', NULL, '$2y$10$cDiIuCu7lvRlUqvp/Tmlge69Vw6B/Igs3s6I/x9DyqGRICmoCDwvq', NULL, '2022-12-02 04:30:46', '2022-12-02 04:30:46'),
(3975, 'Eleazar Kuhic DDS', 'amari.sporer@example.com', 'Male', 'Dhaka', NULL, '$2y$10$iQ3eyYlc3NYyuEU7vC5SUuML05pMLe.fjaitetlisY3v3cFBxShtW', NULL, '2022-12-02 04:30:46', '2022-12-02 04:30:46'),
(3976, 'Ressie Labadie', 'avery74@example.com', 'Male', 'Dhaka', NULL, '$2y$10$6HcBu3gCGqN6MBg79uwFhemDd3D5QBOaAoXAP7w8rqs59RmJskga6', NULL, '2022-12-02 04:30:47', '2022-12-02 04:30:47'),
(3977, 'Prof. Sam Sporer Jr.', 'johnny60@example.org', 'Male', 'Dhaka', NULL, '$2y$10$Bt/isLpNxdLupUeUUaPtAOeKKwYZxm8EWHFTWeowe.QrcdiTJZuQm', NULL, '2022-12-02 04:30:47', '2022-12-02 04:30:47'),
(3978, 'Trey Bergnaum', 'padberg.chyna@example.net', 'Male', 'Dhaka', NULL, '$2y$10$rATQ2GzhlQCvAGfKh5YHZuKlEN/fANZdLDC/EsMjXFBjSrpcZq5eW', NULL, '2022-12-02 04:30:47', '2022-12-02 04:30:47'),
(3979, 'Abagail Kirlin DDS', 'malinda97@example.org', 'Male', 'Dhaka', NULL, '$2y$10$T5KYBjUUwTPkDvNsKKU89eJ/tHlXbQAEDVO1WFeUgsZx43etFkfnq', NULL, '2022-12-02 04:30:47', '2022-12-02 04:30:47'),
(3980, 'Rosella Schneider', 'rogahn.darlene@example.org', 'Male', 'Dhaka', NULL, '$2y$10$oFdLnTvYIVs4seXx3NPGr.CTbhlb6vU57/RWqvoS342/oAt379Mqq', NULL, '2022-12-02 04:30:47', '2022-12-02 04:30:47'),
(3981, 'Adriana Cummings', 'anibal.mohr@example.net', 'Male', 'Dhaka', NULL, '$2y$10$np65QxlNVH3d00kXLklZuuoS4MtIoeqonYdrz2593rq32HL0dHReq', NULL, '2022-12-02 04:30:47', '2022-12-02 04:30:47'),
(3982, 'Shanie Kozey', 'nadams@example.com', 'Male', 'Dhaka', NULL, '$2y$10$cfRvZoPRoVHYUL9gBVlAFekJPr7Gt6pvO61zFOR6RC5odB2uCXZd.', NULL, '2022-12-02 04:30:47', '2022-12-02 04:30:47'),
(3983, 'Mrs. Eleanora Bradtke', 'zachery14@example.net', 'Male', 'Dhaka', NULL, '$2y$10$VoFSYg6Gh6Eiylm8IoSjg.FiFA.qoKJgTanLn5E9gGga6ZKkQGE8a', NULL, '2022-12-02 04:30:48', '2022-12-02 04:30:48'),
(3984, 'Barry Haag', 'zhudson@example.net', 'Male', 'Dhaka', NULL, '$2y$10$NLzr66PbcgIfJ9AY5g0U8u13GEKCO3A.DEdPC0RaOvQVnQVdwGJGW', NULL, '2022-12-02 04:30:48', '2022-12-02 04:30:48'),
(3985, 'Carter Grant', 'rheathcote@example.org', 'Male', 'Dhaka', NULL, '$2y$10$FUiRyoQorKFgfhn0bLFK9.K7DXVrnDHkX1bkmpfa6Ne7YCOuH1xLO', NULL, '2022-12-02 04:30:48', '2022-12-02 04:30:48'),
(3986, 'Ms. Kenna Beier', 'jacques.rosenbaum@example.net', 'Male', 'Dhaka', NULL, '$2y$10$FWdimVwXZ6.Bk3UUsBRaje1jUz.kE4wnoqFmqZRNIxAq/v6n6Yn7G', NULL, '2022-12-02 04:30:48', '2022-12-02 04:30:48'),
(3987, 'Destinee Zulauf II', 'runolfsdottir.rosemarie@example.org', 'Male', 'Dhaka', NULL, '$2y$10$w/x6TTAvmjrJTgJ27idXPOYZ3rt8pcDnv2kcZcl1yggl/0RfgqjHq', NULL, '2022-12-02 04:30:48', '2022-12-02 04:30:48'),
(3988, 'Madyson Johnston', 'sharon27@example.net', 'Male', 'Dhaka', NULL, '$2y$10$WNBbTeJV8Nq8sQpM8PnKeetdIkK9.R4AzY/g0d97Qy9IQwi6EaFWi', NULL, '2022-12-02 04:30:48', '2022-12-02 04:30:48'),
(3989, 'Heloise Lubowitz', 'ezequiel95@example.net', 'Male', 'Dhaka', NULL, '$2y$10$4sy9dvc8JY5kIV24K.o.vu6na2D823AuWbhxQUu6ofRmnSGxypmW6', NULL, '2022-12-02 04:30:49', '2022-12-02 04:30:49'),
(3990, 'Vernice Walsh', 'aurelie.christiansen@example.com', 'Male', 'Dhaka', NULL, '$2y$10$LjdyauBB6u0O/QzenCmwv.QFxYO7GPMirv.dSCftpsHcuImHg1cKO', NULL, '2022-12-02 04:30:49', '2022-12-02 04:30:49'),
(3991, 'Jose Okuneva IV', 'sophia83@example.com', 'Male', 'Dhaka', NULL, '$2y$10$kZp.pJNT1CD93Ufw8KybkuEm6mTuEJqkdY9vhSHGVg8XuiG0WS7Su', NULL, '2022-12-02 04:30:49', '2022-12-02 04:30:49'),
(3992, 'Dortha Quitzon', 'stuart.schuster@example.com', 'Male', 'Dhaka', NULL, '$2y$10$l99.HupLhBzA6507bOF51eRdkcrUJc3c6Xnh3YQtF9L0BDoQlL9DO', NULL, '2022-12-02 04:30:49', '2022-12-02 04:30:49'),
(3993, 'Erling Goyette I', 'mkeebler@example.com', 'Male', 'Dhaka', NULL, '$2y$10$NzZCFL65e/aa3ckLfte3p.T5ER6BCVsAAwr6yn17mRCIjf0oN/BXi', NULL, '2022-12-02 04:30:49', '2022-12-02 04:30:49'),
(3994, 'Robert Morissette', 'ykunze@example.org', 'Male', 'Dhaka', NULL, '$2y$10$YbN3DOVxtmoEZeOcDFvx.OHBCz5wegMPlBURvY.6am2OdwffLK1je', NULL, '2022-12-02 04:30:50', '2022-12-02 04:30:50'),
(3995, 'Maribel Weissnat DDS', 'pouros.braulio@example.net', 'Male', 'Dhaka', NULL, '$2y$10$Z.3aNk5kLA5YAJ83lfHa4udm.kA0PJPEm4Iv1t5bjuOTQY3DUSpe2', NULL, '2022-12-02 04:30:50', '2022-12-02 04:30:50'),
(3996, 'Adam Connelly MD', 'breitenberg.kenyatta@example.com', 'Male', 'Dhaka', NULL, '$2y$10$9RXkFLx3x24X47uJuCUwhexOM7px67J.Jy7ifzTuayCqHgDaJgYJG', NULL, '2022-12-02 04:30:50', '2022-12-02 04:30:50'),
(3997, 'Miss Patsy Murazik III', 'kuhn.precious@example.net', 'Male', 'Dhaka', NULL, '$2y$10$LmEv1DfUgJiq1MFnZgVUt.r3J92ie817y.q/SFW7OjfrsehVxZbxG', NULL, '2022-12-02 04:30:50', '2022-12-02 04:30:50'),
(3998, 'Iva Effertz', 'walter.vincent@example.org', 'Male', 'Dhaka', NULL, '$2y$10$IYiwxR20y.PZDdzvIq1YT.0No00d9idglLdaK16RGEd8RlwrqWOEG', NULL, '2022-12-02 04:30:50', '2022-12-02 04:30:50'),
(3999, 'Zachary Nitzsche', 'aufderhar.owen@example.com', 'Male', 'Dhaka', NULL, '$2y$10$O0mPKXdBfJeb/MBAR6G5beRsnWTAyDSMLcf2LO0k0kY09WGTnOXA.', NULL, '2022-12-02 04:30:50', '2022-12-02 04:30:50'),
(4000, 'Prof. Lois Prohaska V', 'fgoyette@example.org', 'Male', 'Dhaka', NULL, '$2y$10$uuzDW9ojWApAyowuvAYXDelbRR/7Si8NTdhryvwXWh8enp4JQM4HK', NULL, '2022-12-02 04:30:51', '2022-12-02 04:30:51'),
(4001, 'Reva Hermiston', 'general.bruen@example.net', 'Male', 'Dhaka', NULL, '$2y$10$8pNbdY73bm4M.U4IjVRANOxjKYLRY4FJCwPPfWtxY8FX4Ohng1Wse', NULL, '2022-12-02 04:30:51', '2022-12-02 04:30:51'),
(4002, 'Davion Robel', 'letitia34@example.org', 'Male', 'Dhaka', NULL, '$2y$10$geknrHGqgg.x55f2D8XRhOJ.2xU85M5kjfbK92JZAF.aeIIlfHiEe', NULL, '2022-12-02 04:30:51', '2022-12-02 04:30:51'),
(4003, 'Ella Volkman Jr.', 'rowe.gerard@example.com', 'Male', 'Dhaka', NULL, '$2y$10$Xdq0ViEypy9KIn7ZQowyD.6Pn7xGDsayAWH/2se64LCQzugtBD76C', NULL, '2022-12-02 04:30:51', '2022-12-02 04:30:51'),
(4004, 'Hassan Oberbrunner III', 'shanahan.kenton@example.com', 'Male', 'Dhaka', NULL, '$2y$10$NqFOfyVEHKih3.IR/oqeiumysnyaFMoU6XTGfo4tdos6FVafRsLQi', NULL, '2022-12-02 04:30:51', '2022-12-02 04:30:51'),
(4005, 'Johnny Hammes PhD', 'crooks.adaline@example.org', 'Male', 'Dhaka', NULL, '$2y$10$EmX6mJbkw/FIpSZtOD9i0.xisIHxJWhrtCMZXD7NzaiQcH/vxqMLe', NULL, '2022-12-02 04:30:51', '2022-12-02 04:30:51'),
(4006, 'Max Johnston', 'domingo.dach@example.net', 'Male', 'Dhaka', NULL, '$2y$10$OnsyL83XTGDCgU7oB2dd0.Dw91Px2KzYsm7GAoHT7Wnez.khDGcqG', NULL, '2022-12-02 04:30:52', '2022-12-02 04:30:52'),
(4007, 'Annette Kautzer', 'oheathcote@example.net', 'Male', 'Dhaka', NULL, '$2y$10$zmBoBmnsjGd9PDsvFTCqWe60vpkwdIvs8GHvHg2vSOmkWC1TeNT06', NULL, '2022-12-02 04:30:52', '2022-12-02 04:30:52'),
(4008, 'Cory Greenfelder', 'nikolas50@example.net', 'Male', 'Dhaka', NULL, '$2y$10$cwhsO6Kk22fFqiCBv277jO7fNKahGbkN4SnRnsaRkdnpghzf7sKZS', NULL, '2022-12-02 04:30:52', '2022-12-02 04:30:52'),
(4009, 'Mrs. Brandy Borer Sr.', 'yundt.tom@example.org', 'Male', 'Dhaka', NULL, '$2y$10$z5AuO6RMLDIUCOYS9ve8/O0QZf3W3yPbwdMSPn3PmIRvtnfgbB21G', NULL, '2022-12-02 04:30:52', '2022-12-02 04:30:52'),
(4010, 'Jaylen Bruen II', 'alverta33@example.net', 'Male', 'Dhaka', NULL, '$2y$10$LVPH6akpQGw.32Gm5t0SN.YvPL7P955qW9ufyPUHvvIWS2LM7bp7O', NULL, '2022-12-02 04:30:52', '2022-12-02 04:30:52'),
(4011, 'Luna DuBuque', 'aolson@example.net', 'Male', 'Dhaka', NULL, '$2y$10$oPvZnOV65C0Gcur6lHSXd.5CD6ZX/YPdjNQYUQFv411Us3MZ/ScEq', NULL, '2022-12-02 04:30:52', '2022-12-02 04:30:52'),
(4012, 'Kieran Klocko', 'rossie.glover@example.net', 'Male', 'Dhaka', NULL, '$2y$10$yDUukYLs/gvpVHLVjvgnrOBJY63o2xiwg36SNRyYwcxPZkOfMKDBS', NULL, '2022-12-02 04:30:53', '2022-12-02 04:30:53'),
(4013, 'Miss Alvena Swift', 'uprice@example.com', 'Male', 'Dhaka', NULL, '$2y$10$63LGDM66GaSXhDYNs3VKNeBIXjgti15LtkZdGOtiirZGdmPAm0znC', NULL, '2022-12-02 04:30:53', '2022-12-02 04:30:53'),
(4014, 'Destany Runte Jr.', 'luis.corwin@example.net', 'Male', 'Dhaka', NULL, '$2y$10$.jsm4F/ZbkCucGGdaSkqN.HVlafbnbeJh4EzMiecAr/DFzypa1QzO', NULL, '2022-12-02 04:30:53', '2022-12-02 04:30:53'),
(4015, 'Austyn Koepp MD', 'wmcclure@example.net', 'Male', 'Dhaka', NULL, '$2y$10$KkS18UktpNgNm4KH37PwOuHTgAcEvT6828qvOXr3Q/.nkRgtxPwQC', NULL, '2022-12-02 04:30:53', '2022-12-02 04:30:53'),
(4016, 'Donavon Lang', 'rutherford.carol@example.com', 'Male', 'Dhaka', NULL, '$2y$10$wmkOdvDA7/10YPX3WXacGObt2vvoF5GtYr2oi7Dg5aNgbWjRIzOXK', NULL, '2022-12-02 04:30:53', '2022-12-02 04:30:53'),
(4017, 'Reanna Terry', 'bert30@example.com', 'Male', 'Dhaka', NULL, '$2y$10$SkYl5C6ajwW8.rIsTxwF9egT4duckAQ1P5nJtfVc/X7mpTeVHlgfG', NULL, '2022-12-02 04:30:54', '2022-12-02 04:30:54'),
(4018, 'Hailee Deckow MD', 'russel.jaren@example.net', 'Male', 'Dhaka', NULL, '$2y$10$hS50yaAM4jFB6hZub4qJQ.zPmAbJmOARYuDN4fFuMAaHyP.IlXeZ2', NULL, '2022-12-02 04:30:54', '2022-12-02 04:30:54'),
(4019, 'Dr. Maxime Leuschke', 'ikuhlman@example.net', 'Male', 'Dhaka', NULL, '$2y$10$WoPjuRG/5n/Ro2KDHABUV.1ytr8fWnedZFoLq0IpVf76r48MlXPIu', NULL, '2022-12-02 04:30:54', '2022-12-02 04:30:54'),
(4020, 'Van Ankunding', 'cornell.jerde@example.org', 'Male', 'Dhaka', NULL, '$2y$10$LtRBvTCzjJi9Q3vbCMw6BeiwiufduvSWNyFuVQQtdNBLWQTum0wDK', NULL, '2022-12-02 04:30:54', '2022-12-02 04:30:54'),
(4021, 'Dr. Ray Parisian', 'marvin.ohara@example.org', 'Male', 'Dhaka', NULL, '$2y$10$q49nw8/eTbeCMfjxy5q9kuJxXlljkrkTlE2xQd8tBlrvW0kI/5p6K', NULL, '2022-12-02 04:30:54', '2022-12-02 04:30:54'),
(4026, 'Md Anwar Hossain', 'anwar@gmail.com', 'Male', 'Dhaka', NULL, '$2y$10$jcvGLDjvACnb8g3uEXdTJ.AVbhtTTjUlEd0uePRjhvT1ukIQF73cS', NULL, '2022-12-02 16:46:06', '2022-12-02 16:46:06');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4027;

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
