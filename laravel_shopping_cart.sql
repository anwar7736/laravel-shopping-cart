-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 07:37 PM
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
(1, 1, 1, '2022-12-09 07:46:41', '2022-12-09 07:47:22'),
(2, 2, 1, '2022-12-09 07:46:41', '2022-12-09 07:47:22'),
(3, 3, 1, '2022-12-09 07:46:41', '2022-12-09 07:47:22'),
(4, 4, 1, '2022-12-09 07:46:41', '2022-12-09 07:47:22'),
(5, 5, 1, '2022-12-09 07:46:41', '2022-12-09 07:47:22'),
(6, 6, 1, '2022-12-09 07:46:41', '2022-12-09 07:47:22'),
(7, 7, 0, '2022-12-09 07:46:41', '2022-12-09 07:47:22'),
(8, 8, 1, '2022-12-09 07:46:41', '2022-12-09 07:47:22'),
(9, 9, 0, '2022-12-09 07:46:41', '2022-12-09 07:47:22'),
(10, 10, 1, '2022-12-09 07:46:41', '2022-12-09 07:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `question_option_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `user_id`, `question_id`, `question_option_id`, `created_at`, `updated_at`) VALUES
(31, 11, 1, 3, '2022-12-09 12:31:00', '2022-12-09 12:31:00'),
(32, 11, 2, 10, '2022-12-09 12:31:00', '2022-12-09 12:31:00'),
(33, 11, 3, 13, '2022-12-09 12:31:00', '2022-12-09 12:31:00'),
(34, 11, 4, 19, '2022-12-09 12:31:01', '2022-12-09 12:31:01'),
(35, 11, 5, 24, '2022-12-09 12:31:01', '2022-12-09 12:31:01'),
(36, 12, 1, 3, '2022-12-09 12:32:07', '2022-12-09 12:32:07'),
(37, 12, 2, 10, '2022-12-09 12:32:07', '2022-12-09 12:32:07'),
(38, 12, 3, 13, '2022-12-09 12:32:07', '2022-12-09 12:32:07'),
(39, 12, 4, 19, '2022-12-09 12:32:07', '2022-12-09 12:32:07'),
(40, 12, 5, 24, '2022-12-09 12:32:07', '2022-12-09 12:32:07');

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
(9, '2022_12_05_151832_create_jobs_table', 1),
(10, '2022_12_08_182133_create_attendances_table', 1),
(11, '2022_12_09_132831_create_questions_table', 1),
(12, '2022_12_09_132937_create_question_options_table', 1),
(13, '2022_12_09_133012_create_exam_results_table', 1);

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
(1, 'iKxlajEhPB8EXus', NULL, 34.00, NULL, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(2, 'LLaptT7MJgsQZXe', NULL, 45.00, NULL, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(3, '22PQlGcrEu4jxuV', NULL, 48.00, NULL, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(4, 'O6RAYAucZVIypHw', NULL, 100.00, NULL, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(5, 'Xt7StKV78zO9TAg', NULL, 37.00, NULL, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(6, 'L5hfpmPuGKUme9Y', NULL, 77.00, NULL, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(7, 'pePvnnOdjYxG8JE', NULL, 19.00, NULL, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(8, 'dNI2kV0RNkyOcgA', NULL, 93.00, NULL, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(9, 'AR6FH4L9Np9rXoQ', NULL, 40.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(10, 'AE6rEmqfH6IQHxt', NULL, 77.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(11, 'hBgacWFJYM1VvFN', NULL, 77.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(12, 'xWzfhtQh4QYqRqp', NULL, 94.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(13, 'XNXVSZpXZuK4s3W', NULL, 15.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(14, '4P5jYy5xY7aWGgR', NULL, 36.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(15, '5gxYxKdHiI1iSHO', NULL, 55.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(16, '4AuysSGot0IL8ta', NULL, 45.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(17, '0R6coN4NqAt6ajU', NULL, 94.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(18, 'YMfpZsSZgNGwuRj', NULL, 54.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(19, 'V63HTiLDYbiH6PF', NULL, 16.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(20, 'On9Bivx1rB1lfZx', NULL, 87.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(21, 'dg941YJmxdOFI2f', NULL, 76.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(22, 'oDh3S6Sw1atBTe8', NULL, 25.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(23, 'Pcm7txNp2qwvTze', NULL, 100.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(24, 'GvBdSDGWYcjxoZ0', NULL, 54.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(25, 'RLeZmyK2WutiDgH', NULL, 80.00, NULL, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(26, 'GbikfxKhMMnjT7f', NULL, 22.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(27, 'WVfQXKxBEu8HK8q', NULL, 60.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(28, 'NqZafLAifUV4iHf', NULL, 72.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(29, 'PzQq881LHmCWaqb', NULL, 71.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(30, '8liUO6bAUCJjo2u', NULL, 39.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(31, 'zVtIwdRkodDFtyf', NULL, 98.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(32, 'SVtrj7H2JXPhkGO', NULL, 42.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(33, 's27eb28aCsTywqq', NULL, 91.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(34, 'WI6Cs9WXdRgBetH', NULL, 12.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(35, 'eqpdpaxzLoeBJbT', NULL, 35.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(36, 'MxioEjEzhfBqzPY', NULL, 36.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(37, 'Fjvu6MI4YHOeedz', NULL, 43.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(38, 'fcIRYCBIR881vWg', NULL, 75.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(39, 'XsBOc45CcV0iErW', NULL, 18.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(40, '8rvRoB8Kaag16BP', NULL, 77.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(41, 'YCAQDgNMM132Vxx', NULL, 21.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(42, 'CKMVMgiKhzEAogy', NULL, 36.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(43, 'elgvYbwcJooI6Tq', NULL, 30.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(44, 'RfrOZKw7VGVLDpU', NULL, 85.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(45, 'BnxeNap3o2ly41l', NULL, 68.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(46, 'hfWb9kmOLhmOPgu', NULL, 80.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(47, 'oRLcpGOTMqIx16z', NULL, 89.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(48, 'WahmU8CqSPYFx8K', NULL, 97.00, NULL, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(49, 'XhYtTw4TDGhjr4Z', NULL, 45.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(50, 'jVAau6gEZdegNWv', NULL, 42.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(51, 'yrR1hbF9NMHlp3A', NULL, 69.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(52, 'rt11XTlfrM7rKqg', NULL, 76.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(53, 'okxdoTOmIRv4KeC', NULL, 93.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(54, 'OyY4rU8HawQEQEz', NULL, 21.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(55, '8eX5fjvGno7nePh', NULL, 56.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(56, 'jrPVSdilelctOCA', NULL, 77.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(57, 'vBc5KkUKcJsr3pL', NULL, 35.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(58, 'aJCzOgpJVIzjL2t', NULL, 21.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(59, '7bEp0IitdTQDlfX', NULL, 37.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(60, 'NLqUiaxFssCCPpv', NULL, 76.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(61, '7RdK6zL1K1NYpLl', NULL, 11.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(62, 'D1scBwskgDVVQVn', NULL, 14.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(63, 'q4i0KRtTpRqbuu3', NULL, 25.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(64, 'b875PTZaHSHUWEc', NULL, 40.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(65, 'NEM79smk1fYpYrL', NULL, 64.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(66, 'MF69kAsPNUm1ooT', NULL, 18.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(67, 'ln0LVIAustUTjv8', NULL, 94.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(68, 'StH4VRKVqs38Uqi', NULL, 26.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(69, '8bBKwU3Od5hlMHy', NULL, 80.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(70, 'JO0vHxkosVM6iSr', NULL, 46.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(71, 'K7E6BNLtBp6U3iO', NULL, 29.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(72, 'Fo1jQWhCpFS9gDb', NULL, 27.00, NULL, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(73, 'VW2r9xsBgFYN9xZ', NULL, 33.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(74, 'Zu2VqHBW6GNQkzT', NULL, 71.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(75, 'X5G6VJKJlHoSe9K', NULL, 85.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(76, '0LVTnG62HbdoDN8', NULL, 27.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(77, 'beNZJSgJ30Ly8eo', NULL, 39.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(78, 'YTKE5u2pUzAAWWn', NULL, 55.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(79, 'kktqokPsbdFuDxh', NULL, 20.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(80, 'zkI1JXgMKTZMkXD', NULL, 32.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(81, 'y9V1qXCfEjJqCjd', NULL, 90.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(82, 'y4xHEyRVKnaWRIb', NULL, 22.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(83, 'h4vcjgfb2toYoPL', NULL, 34.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(84, 'GCAhZ20kxGoxk6V', NULL, 66.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(85, 'glt8EP2pfkn4CO5', NULL, 13.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(86, 'XEFUvRsQN3knddW', NULL, 95.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(87, '08LnximEjk0k6VX', NULL, 40.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(88, 'N6jbhXnGzpKjm9c', NULL, 86.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(89, 'D4N4SGB8uUBZiPs', NULL, 72.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(90, '0Rw9eGXcoBzODSz', NULL, 30.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(91, 'ClnKjHwEz0ngl5C', NULL, 24.00, NULL, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(92, 'VUn7mq2KB3zq51P', NULL, 71.00, NULL, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(93, 'ZJ3deYeo4YI2gni', NULL, 89.00, NULL, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(94, '79P95x0bgzCcNXb', NULL, 29.00, NULL, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(95, 'DPyQYOUkKgPJYYd', NULL, 19.00, NULL, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(96, 'KfNwJ2f1jtiDlaM', NULL, 87.00, NULL, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(97, 'dP1eZ6c1FwSRpXI', NULL, 38.00, NULL, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(98, 'pzBlfZsBj3wlFZP', NULL, 74.00, NULL, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(99, 'tAjoMhr4Sae4bYQ', NULL, 93.00, NULL, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(100, 'N8nsMxkHbn1igzF', NULL, 84.00, NULL, '2022-12-09 07:45:08', '2022-12-09 07:45:08');

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
(1, 1, 14, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(2, 2, 17, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(3, 3, 12, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(4, 4, 15, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(5, 5, 13, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(6, 6, 20, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(7, 7, 14, '2022-12-09 07:45:03', '2022-12-09 07:45:03'),
(8, 8, 15, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(9, 9, 20, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(10, 10, 15, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(11, 11, 17, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(12, 12, 15, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(13, 13, 13, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(14, 14, 10, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(15, 15, 12, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(16, 16, 16, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(17, 17, 12, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(18, 18, 13, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(19, 19, 12, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(20, 20, 10, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(21, 21, 20, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(22, 22, 10, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(23, 23, 20, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(24, 24, 10, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(25, 25, 20, '2022-12-09 07:45:04', '2022-12-09 07:45:04'),
(26, 26, 11, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(27, 27, 15, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(28, 28, 20, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(29, 29, 20, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(30, 30, 12, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(31, 31, 17, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(32, 32, 11, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(33, 33, 13, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(34, 34, 18, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(35, 35, 13, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(36, 36, 14, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(37, 37, 16, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(38, 38, 13, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(39, 39, 12, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(40, 40, 11, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(41, 41, 14, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(42, 42, 10, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(43, 43, 13, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(44, 44, 14, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(45, 45, 20, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(46, 46, 14, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(47, 47, 16, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(48, 48, 10, '2022-12-09 07:45:05', '2022-12-09 07:45:05'),
(49, 49, 18, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(50, 50, 17, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(51, 51, 16, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(52, 52, 18, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(53, 53, 20, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(54, 54, 15, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(55, 55, 18, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(56, 56, 19, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(57, 57, 13, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(58, 58, 17, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(59, 59, 20, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(60, 60, 11, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(61, 61, 16, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(62, 62, 18, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(63, 63, 20, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(64, 64, 18, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(65, 65, 13, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(66, 66, 10, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(67, 67, 12, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(68, 68, 17, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(69, 69, 11, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(70, 70, 12, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(71, 71, 12, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(72, 72, 10, '2022-12-09 07:45:06', '2022-12-09 07:45:06'),
(73, 73, 14, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(74, 74, 10, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(75, 75, 19, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(76, 76, 13, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(77, 77, 13, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(78, 78, 15, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(79, 79, 14, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(80, 80, 18, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(81, 81, 18, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(82, 82, 15, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(83, 83, 19, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(84, 84, 14, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(85, 85, 15, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(86, 86, 10, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(87, 87, 19, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(88, 88, 17, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(89, 89, 20, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(90, 90, 17, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(91, 91, 16, '2022-12-09 07:45:07', '2022-12-09 07:45:07'),
(92, 92, 10, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(93, 93, 15, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(94, 94, 17, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(95, 95, 14, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(96, 96, 18, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(97, 97, 16, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(98, 98, 16, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(99, 99, 10, '2022-12-09 07:45:08', '2022-12-09 07:45:08'),
(100, 100, 18, '2022-12-09 07:45:08', '2022-12-09 07:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `created_at`, `updated_at`) VALUES
(1, 'What is the full meaning of HTML?', NULL, NULL),
(2, 'What is the full meaning of CSS?', NULL, NULL),
(3, 'What is the full meaning of PHP?', NULL, NULL),
(4, 'What is the full meaning of SQL?', NULL, NULL),
(5, 'What is the full meaning of USB?', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `option`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hyper Text Transfer Language', 0, NULL, NULL),
(2, 1, 'Hyper Text Transfer Protocol', 0, NULL, NULL),
(3, 1, 'Hyper Text Markup Language', 1, NULL, NULL),
(4, 1, 'Hyper Text Manipulation Language', 0, NULL, NULL),
(9, 2, 'Cascading Styling Style', 0, NULL, NULL),
(10, 2, 'Cascading Style Sheet', 1, NULL, NULL),
(11, 2, 'Cascading Simple Style', 0, NULL, NULL),
(12, 2, 'Cascading Style System', 0, NULL, NULL),
(13, 3, 'Hypertext Preprocessor', 1, NULL, NULL),
(14, 3, 'Pretext Hypertext Preprocessor', 0, NULL, NULL),
(15, 3, 'Personal Home Processor', 0, NULL, NULL),
(16, 3, 'None of the above', 0, NULL, NULL),
(17, 4, 'Sample Query Language', 0, NULL, NULL),
(18, 4, 'Structured Query List', 0, NULL, NULL),
(19, 4, 'Structured Query Language', 1, NULL, NULL),
(20, 4, 'Sample Query List', 0, NULL, NULL),
(21, 5, 'Unshielded System Board', 0, NULL, NULL),
(22, 5, 'Universal System Board', 0, NULL, NULL),
(23, 5, 'Unidentified System Bus', 0, NULL, NULL),
(24, 5, 'Universal Serial Bus', 1, NULL, NULL);

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
(1, 'Devonte Ziemann', 'vzboncak@example.com', '$2y$10$Ur6jCoxFcRwo1uPmNFeVUeTKQOrF92bFMaC6CMsYouD6hnmpl3eW2', NULL, 'Male', 'Dhaka', '2022-12-09 07:45:13', 'l337OdhWqQ', '2022-12-09 07:45:14', '2022-12-09 07:45:14', NULL),
(2, 'Andres Bergstrom', 'seamus63@example.net', '$2y$10$yhz1oXpuP46G42GzWj5LJucr56u80z6T2Gw5rm2u.84Km/W2LF7Ya', NULL, 'Male', 'Dhaka', '2022-12-09 07:45:13', 'h8b3S1LKN7', '2022-12-09 07:45:14', '2022-12-09 07:45:14', NULL),
(3, 'Prof. Jerod Ruecker Sr.', 'kelly.kunde@example.com', '$2y$10$MMFsBhS3nGnmBv7SD9Pqu.vxo81doyWap8T3C/uWvqIT07uMKKxKe', NULL, 'Male', 'Dhaka', '2022-12-09 07:45:13', 'Qw5VlxnldN', '2022-12-09 07:45:14', '2022-12-09 07:45:14', NULL),
(4, 'Tillman Balistreri', 'america.fadel@example.net', '$2y$10$659IdqPWXrCQJHrlbgKAKuK2M9.11Zx8VWc/ZU7CbPIBK7odiv0ya', NULL, 'Male', 'Dhaka', '2022-12-09 07:45:13', 'HqDIOkJ9iD', '2022-12-09 07:45:14', '2022-12-09 07:45:14', NULL),
(5, 'Angeline Dickens', 'kane.feest@example.org', '$2y$10$r31WoO7bZPlrFmP0FxDNfOk6Gj4y8ky8wp9lnasECvq28xO.TqJd6', NULL, 'Male', 'Dhaka', '2022-12-09 07:45:13', '6C72FBD2qQ', '2022-12-09 07:45:14', '2022-12-09 07:45:14', NULL),
(6, 'Kenyon Cole', 'devon.davis@example.com', '$2y$10$Hp2wKOCx7iCFKRZwIa1EZebVspGcWY7Zb6NYIL7niH9eqQc3SKRem', NULL, 'Male', 'Dhaka', '2022-12-09 07:45:13', 'XVhgZCkSg9', '2022-12-09 07:45:14', '2022-12-09 07:45:14', NULL),
(7, 'Prof. Watson Nitzsche', 'fkessler@example.org', '$2y$10$fGcOvGm4Z9dwsVBlGol22OQac7yOc45YWmuggF9VXZ4V6WikkSKrK', NULL, 'Male', 'Dhaka', '2022-12-09 07:45:13', '6SYPERKmAw', '2022-12-09 07:45:14', '2022-12-09 07:45:14', NULL),
(8, 'Adella Kerluke', 'rebekah.lesch@example.net', '$2y$10$JBIFXMQAeQ1JO1vAkWyXzuLMmXO51AjT5Rtw5DY.qZSYkg6mLjQrq', NULL, 'Male', 'Dhaka', '2022-12-09 07:45:13', 'vqn9K7083O', '2022-12-09 07:45:14', '2022-12-09 07:45:14', NULL),
(9, 'Elisa Ryan', 'savanah.sipes@example.com', '$2y$10$GSg8/ur9MsVcslHvEEuGIusLR1l.UzNMS.VJm6SRcFBsFW.4Vwjri', NULL, 'Male', 'Dhaka', '2022-12-09 07:45:14', 'qqiZKAGWGU', '2022-12-09 07:45:14', '2022-12-09 07:45:14', NULL),
(10, 'Garett Senger', 'ghyatt@example.net', '$2y$10$BEFJCEDge2eJ/g3oeNbHbOj76DXg8v.5gTOgHx8Jt8Mk5JoR5B8ZK', NULL, 'Male', 'Dhaka', '2022-12-09 07:45:14', 'KhTVcOGcJy', '2022-12-09 07:45:14', '2022-12-09 07:45:14', NULL),
(11, 'Md Anwar Hossain', 'anwar@gmail.com', '$2y$10$lO4xasT5ebUU2BjGf5knt.kS1As89HIY0TJKIwdsS51O5ANwNyiEa', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-09 09:51:20', '2022-12-09 09:51:20', NULL),
(12, 'Md Anwar Hossain', 'anwar20@gmail.com', '$2y$10$CEOkJ7hF5yB2KuNa0x/fwOS6YgL19nwWERkJhwnuivBBp48zNO.Em', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-09 12:31:51', '2022-12-09 12:31:51', NULL);

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
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_results_user_id_foreign` (`user_id`),
  ADD KEY `exam_results_question_id_foreign` (`question_id`),
  ADD KEY `exam_results_question_option_id_foreign` (`question_option_id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `questions_question_unique` (`question`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_options_option_unique` (`option`),
  ADD KEY `question_options_question_id_foreign` (`question_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_question_option_id_foreign` FOREIGN KEY (`question_option_id`) REFERENCES `question_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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

--
-- Constraints for table `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `question_options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
