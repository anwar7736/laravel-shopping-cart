-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 07:53 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SSC/Dakhil/Equivalent', NULL, NULL);

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
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'TALMA NAZIMUDDIN HIGH SCHOOL', NULL, NULL);

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
(13, '2022_12_09_133012_create_exam_results_table', 1),
(14, '2022_12_10_142143_create_boards_table', 1),
(15, '2022_12_10_143330_create_subjects_table', 1),
(16, '2022_12_10_143406_create_institutes_table', 1),
(17, '2022_12_10_145652_create_exam_types_table', 1),
(18, '2022_12_10_142446_create_students_table', 2),
(19, '2022_12_10_143949_create_results_table', 2);

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
(1, 'GqgGrkNVZJaywTt', NULL, 58.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(2, 'LXSR2t0EGiHDYRs', NULL, 13.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(3, 'EVoEqvVNAxwVR1P', NULL, 89.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(4, '7N9DE2IJydmIB33', NULL, 92.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(5, '2Ze3wMEcqsP8Okl', NULL, 70.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(6, '9JJpvVBwsv1Hzrr', NULL, 33.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(7, '6b0jJEzNgmpS4oz', NULL, 28.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(8, 'hxwDnDVwPimOYUf', NULL, 82.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(9, 'kOKhfZnM8BTNhyS', NULL, 20.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(10, '28n3Pm18pAXj1S3', NULL, 22.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(11, 'oGWJpCl5qRXvFGi', NULL, 61.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(12, '6ThQlYA8hudtaEn', NULL, 50.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(13, 'S3QVCQqk63GZMOA', NULL, 85.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(14, 'xuzNTW2mjakdeOI', NULL, 82.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(15, 'CU7YlCipYZ9aLWI', NULL, 99.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(16, '6knzPjLGMWuW2JL', NULL, 57.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(17, 'E9pyLyXat0JoSrM', NULL, 64.00, NULL, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(18, 'oTVmxtNnWjx1KZ6', NULL, 47.00, NULL, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(19, 'UMaanYJnFpxlb7G', NULL, 49.00, NULL, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(20, 'SWTSXrevETqZ1Xl', NULL, 88.00, NULL, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(21, 'IxpGuTNmMKI50N8', NULL, 89.00, NULL, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(22, 'wAAvuO9RhvpWMgl', NULL, 29.00, NULL, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(23, '18vRQc4oN8de2Oi', NULL, 71.00, NULL, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(24, 'cEHTRKg1iy0vmND', NULL, 74.00, NULL, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(25, '1iFBAACwpYS4f2F', NULL, 100.00, NULL, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(26, '5khf3u8YjjXbl8d', NULL, 94.00, NULL, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(27, 'iznTGPqSOkKvi6d', NULL, 71.00, NULL, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(28, '2QAIFI4NPziNF27', NULL, 58.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(29, '9Atr5CHWxOxjk1q', NULL, 52.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(30, 'AgYfKjBMdrd4PlQ', NULL, 26.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(31, 'rmoAJ1BNxTwOCWw', NULL, 32.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(32, 'BcJaKsZ1wpbMbUq', NULL, 15.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(33, 'UlU4VLa5Ap2Jdeo', NULL, 39.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(34, '1sDxUWMYfjEOZQE', NULL, 61.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(35, 'vwDWejpJn0FPxTy', NULL, 98.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(36, 'ijRbZxEGh1rj3MX', NULL, 73.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(37, 'WN9WSjhvH1SMsg2', NULL, 73.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(38, '0xaFdTUd5aHaNRm', NULL, 23.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(39, 'tRuo2LPpprTbwof', NULL, 26.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(40, 'FQFsd1buKwgX8iG', NULL, 45.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(41, '6ANGZY9G9wDaVuq', NULL, 35.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(42, 'zwHafTcKkIBXcsO', NULL, 35.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(43, 'Z1Z4wxnPOzaSf17', NULL, 32.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(44, 'Zst1GIzlaBhcI4X', NULL, 97.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(45, 'NMINWxqACdjq62b', NULL, 74.00, NULL, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(46, 'clIJx6myiRBpHRU', NULL, 86.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(47, 'HnmlGcOfuOjZDe7', NULL, 61.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(48, 'Vd49VovBaofyeaf', NULL, 88.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(49, 'oTARLzmPryWepEF', NULL, 23.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(50, 'aJqXfiRpqbSMggH', NULL, 75.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(51, '8bwK40bucvgxJo6', NULL, 96.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(52, 'a4CWou75uorNCx8', NULL, 68.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(53, 'gmLLaNUGLZDgO4U', NULL, 28.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(54, 'y25aX1mudAfptHn', NULL, 56.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(55, 'xNlv98zWO2fcVTn', NULL, 49.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(56, 'ZTbd4e5ED4LSyhr', NULL, 28.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(57, 'V1xqdVS3MOn8QK3', NULL, 23.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(58, 'M8HEULf5NZ6vcuT', NULL, 96.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(59, 's41PUxx7HE1E30l', NULL, 48.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(60, 'FnvD3QeDMTqpZmg', NULL, 30.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(61, '23AJac5Qdqo0UrP', NULL, 71.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(62, 'BU1Q38QpJyMUKLv', NULL, 73.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(63, 'TMRRuvsBnLghhW2', NULL, 87.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(64, 'yH30lRYtBxybvyS', NULL, 63.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(65, 'NT02Xh3DmwIdBYc', NULL, 33.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(66, 'FoC1vtIZpiLsmWw', NULL, 80.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(67, 'CVGJAZJM77QuEkB', NULL, 37.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(68, 'm1TlKx8aabyqW9h', NULL, 84.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(69, '1LeKw4Z5ZkwvRbo', NULL, 92.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(70, '6H7q1pz5ekM6j5G', NULL, 72.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(71, 'C4vBduCVtLQSQCE', NULL, 88.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(72, 'o7qISnIYhP5HS4a', NULL, 60.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(73, 'J6A1qQRDixR0QCG', NULL, 15.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(74, '2ZSBY0IP9SB8QeV', NULL, 41.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(75, 'fKXbXvocKibzeCF', NULL, 86.00, NULL, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(76, 'HOjAmNJcGO1yUR4', NULL, 42.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(77, 'yjns1qyCWsl5W5j', NULL, 41.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(78, 'emECmxJCeK8b8vI', NULL, 94.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(79, 'SJmXJbgwaMFT1pF', NULL, 97.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(80, 'i2sTWhNK0CQJdz9', NULL, 85.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(81, 'ZoHTZBb3bDBbqs6', NULL, 89.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(82, 'Vp856CEaIbH9CiX', NULL, 21.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(83, 'hCSfW2KcU83wZhb', NULL, 45.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(84, 'kMTrpv4dlTpQx49', NULL, 44.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(85, '7WydraumgYn3ggI', NULL, 79.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(86, 'afz261xHLAhtKh2', NULL, 81.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(87, 'gAzlCgaMruuLwrW', NULL, 32.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(88, '8ghaJRwTktywLnJ', NULL, 36.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(89, 'hUOYI98KoPkvpLZ', NULL, 11.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(90, '8h0Kn5zn3rzcFE5', NULL, 81.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(91, 'czpy7Fpd4b2ZDro', NULL, 47.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(92, 'unNyfdtgUky2Bjz', NULL, 45.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(93, '5tvNwJD97B68Hnq', NULL, 38.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(94, 'hFTvRLX3oYAuWqt', NULL, 46.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(95, 'p4TbL2Z4R7QYQaY', NULL, 84.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(96, 'jrtgjbDAIzHD3IR', NULL, 82.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(97, 'U5x1GO9VbUu858M', NULL, 44.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(98, '3YswzQWOhPqjfim', NULL, 58.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(99, 'FqLsgBXqbEak8H5', NULL, 23.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(100, 'upHfyn4WkSltF3p', NULL, 57.00, NULL, '2022-12-10 09:12:57', '2022-12-10 09:12:57');

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
(1, 1, 20, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(2, 2, 19, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(3, 3, 17, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(4, 4, 17, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(5, 5, 14, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(6, 6, 16, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(7, 7, 11, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(8, 8, 14, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(9, 9, 15, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(10, 10, 13, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(11, 11, 11, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(12, 12, 15, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(13, 13, 14, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(14, 14, 19, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(15, 15, 13, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(16, 16, 10, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(17, 17, 16, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(18, 18, 13, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(19, 19, 14, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(20, 20, 14, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(21, 21, 19, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(22, 22, 12, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(23, 23, 15, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(24, 24, 17, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(25, 25, 14, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(26, 26, 18, '2022-12-10 09:12:54', '2022-12-10 09:12:54'),
(27, 27, 14, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(28, 28, 18, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(29, 29, 13, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(30, 30, 18, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(31, 31, 19, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(32, 32, 17, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(33, 33, 15, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(34, 34, 18, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(35, 35, 15, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(36, 36, 20, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(37, 37, 20, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(38, 38, 11, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(39, 39, 20, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(40, 40, 18, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(41, 41, 15, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(42, 42, 12, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(43, 43, 15, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(44, 44, 12, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(45, 45, 18, '2022-12-10 09:12:55', '2022-12-10 09:12:55'),
(46, 46, 19, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(47, 47, 12, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(48, 48, 17, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(49, 49, 18, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(50, 50, 14, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(51, 51, 10, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(52, 52, 15, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(53, 53, 17, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(54, 54, 14, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(55, 55, 11, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(56, 56, 16, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(57, 57, 15, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(58, 58, 12, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(59, 59, 20, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(60, 60, 11, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(61, 61, 20, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(62, 62, 12, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(63, 63, 11, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(64, 64, 19, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(65, 65, 10, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(66, 66, 18, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(67, 67, 18, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(68, 68, 13, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(69, 69, 13, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(70, 70, 13, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(71, 71, 14, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(72, 72, 11, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(73, 73, 17, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(74, 74, 18, '2022-12-10 09:12:56', '2022-12-10 09:12:56'),
(75, 75, 20, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(76, 76, 11, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(77, 77, 17, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(78, 78, 11, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(79, 79, 13, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(80, 80, 19, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(81, 81, 12, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(82, 82, 15, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(83, 83, 20, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(84, 84, 12, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(85, 85, 16, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(86, 86, 20, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(87, 87, 11, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(88, 88, 13, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(89, 89, 10, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(90, 90, 12, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(91, 91, 19, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(92, 92, 18, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(93, 93, 16, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(94, 94, 14, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(95, 95, 14, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(96, 96, 16, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(97, 97, 20, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(98, 98, 20, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(99, 99, 13, '2022-12-10 09:12:57', '2022-12-10 09:12:57'),
(100, 100, 14, '2022-12-10 09:12:57', '2022-12-10 09:12:57');

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

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_id` bigint(20) UNSIGNED NOT NULL,
  `exam_type_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `marks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `year`, `board_id`, `exam_type_id`, `student_id`, `subject_id`, `marks`, `created_at`, `updated_at`) VALUES
(1, '2012', 1, 1, 1, 1, 72, NULL, NULL),
(2, '2012', 1, 1, 1, 2, 63, NULL, NULL),
(3, '2012', 1, 1, 1, 3, 81, NULL, NULL),
(4, '2012', 1, 1, 1, 4, 71, NULL, NULL),
(5, '2012', 1, 1, 1, 5, 82, NULL, NULL),
(6, '2012', 1, 1, 1, 6, 63, NULL, NULL),
(7, '2012', 1, 1, 1, 7, 74, NULL, NULL),
(8, '2012', 1, 1, 1, 8, 73, NULL, NULL),
(9, '2012', 1, 1, 1, 9, 83, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll` int(11) NOT NULL,
  `reg` int(11) NOT NULL,
  `board_id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `f_name`, `m_name`, `roll`, `reg`, `board_id`, `group`, `type`, `dob`, `institute_id`, `created_at`, `updated_at`) VALUES
(1, 'MD. ANWAR HOSSAIN', 'MD. ABJAL MOLLA', 'SALEHA BEGUM', 143552, 773620, 1, 'SCIENCE', 'REGULAR', '01-03-1996', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, '101', 'BANGLA', NULL, NULL),
(2, '107', 'ENGLISH', NULL, NULL),
(3, '109', 'MATHEMATICS', NULL, NULL),
(4, '145', 'SOCIAL SCIENCE', NULL, NULL),
(5, '111', 'RELIGION (ISLAM)', NULL, NULL),
(6, '136', 'PHYSICS', NULL, NULL),
(7, '137', 'CHEMISTRY', NULL, NULL),
(8, '138', 'BIOLOGY', NULL, NULL),
(9, '126', 'HIGHER MATHEMATICS', NULL, NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `boards_name_unique` (`name`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_results_user_id_foreign` (`user_id`),
  ADD KEY `exam_results_question_id_foreign` (`question_id`),
  ADD KEY `exam_results_question_option_id_foreign` (`question_option_id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `institutes_name_unique` (`name`);

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
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_board_id_foreign` (`board_id`),
  ADD KEY `results_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_board_id_foreign` (`board_id`),
  ADD KEY `students_institute_id_foreign` (`institute_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_code_unique` (`code`),
  ADD UNIQUE KEY `subjects_name_unique` (`name`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_board_id_foreign` FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_board_id_foreign` FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_institute_id_foreign` FOREIGN KEY (`institute_id`) REFERENCES `institutes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
