-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 05:50 PM
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
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `seat_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `bus_id`, `user_id`, `seat_no`, `price`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A1', '350', 'pending', '2022-12-26 16:31:32', '2022-12-26 16:31:32'),
(2, 1, 2, 'A2', '350', 'pending', '2022-12-26 16:31:32', '2022-12-26 16:31:32'),
(3, 1, 40, 'A3', '350', 'pending', '2022-12-26 16:31:32', '2022-12-26 16:31:32'),
(4, 1, 40, 'A4', '350', 'pending', '2022-12-26 16:31:32', '2022-12-26 16:31:32'),
(5, 1, 26, 'B1', '350', 'pending', '2022-12-26 16:31:32', '2022-12-26 16:31:32'),
(6, 1, 17, 'B5', '350', 'pending', '2022-12-26 16:31:32', '2022-12-26 16:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_seat` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `bus_no`, `license_no`, `route`, `arrival`, `departure`, `arrival_time`, `departure_time`, `driver`, `helper`, `total_seat`, `price`, `created_at`, `updated_at`) VALUES
(1, '123456', 'LIC123456', 'Dhaka-Faridpur', 'Dhaka', 'Faridpur', '9:00 AM', '12:00 PM', 'Mr. X', 'Mr. Y', 60, 350.00, '2022-12-26 16:29:25', '2022-12-26 16:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `user_id`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 7, 'https://source.unsplash.com/random/200x200?sig=29', '2022-12-26 09:38:23', '2022-12-26 09:38:23'),
(2, 40, 'https://source.unsplash.com/random/200x200?sig=20', '2022-12-26 09:38:23', '2022-12-26 09:38:23'),
(3, 29, 'https://source.unsplash.com/random/200x200?sig=28', '2022-12-26 09:38:23', '2022-12-26 09:38:23'),
(4, 13, 'https://source.unsplash.com/random/200x200?sig=29', '2022-12-26 09:38:23', '2022-12-26 09:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chelsey Schmitt', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(2, 'Earl Armstrong', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(3, 'Layne Trantow', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(4, 'Gust Wyman', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(5, 'Jane Emmerich', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(6, 'Dr. Orie Cruickshank', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(7, 'Mr. Gaylord Bogan', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(8, 'Mr. Jasper Strosin DDS', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(9, 'Madonna Harvey PhD', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(10, 'Kamren D\'Amore', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(11, 'Wilson Sanford', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(12, 'Brown Dare', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(13, 'Herta Bauch V', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(14, 'Prof. Hudson Feest', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(15, 'Mia Kohler', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(16, 'Prof. Shanelle Pfeffer', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(17, 'Maybell Larson', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(18, 'Jaron Lebsack', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(19, 'Prof. Aiden Balistreri', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(20, 'Zoie Fahey', '2022-12-24 14:42:01', '2022-12-24 14:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `categoryables`
--

CREATE TABLE `categoryables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `categoryable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoryables`
--

INSERT INTO `categoryables` (`id`, `category_id`, `categoryable_type`, `categoryable_id`, `created_at`, `updated_at`) VALUES
(3, 1, 'products', 1, NULL, NULL),
(4, 1, 'posts', 1, NULL, NULL),
(5, 2, 'products', 1, NULL, NULL),
(6, 2, 'posts', 1, NULL, NULL),
(10, 3, 'posts', 2, NULL, NULL),
(11, 4, 'posts', 2, NULL, NULL),
(12, 5, 'posts', 2, NULL, NULL),
(13, 4, 'posts', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_reply` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `commentable_type`, `commentable_id`, `comment`, `is_reply`, `created_at`, `updated_at`) VALUES
(1, 8, 'posts', 1, 'Quam sunt magni non voluptatem laboriosam harum nesciunt. Doloremque eos consequuntur atque dolor. Aut illum voluptatem et quia dignissimos ad modi. Quae neque ipsa aut tempora et.', 1, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(2, 24, 'comments', 1, 'Rerum laudantium itaque eum accusamus. Est et saepe reiciendis assumenda. Voluptatum temporibus vitae sunt. Voluptatem et similique quo beatae reprehenderit consequuntur. Voluptatem suscipit expedita quaerat error beatae nobis exercitationem enim.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(3, 27, 'posts', 13, 'Ex iure ipsam explicabo. Eos sit enim voluptate minus ducimus adipisci eos est. Totam fugiat est pariatur magni est laboriosam. Sequi sunt eos accusamus praesentium fuga eos.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(4, 20, 'posts', 15, 'Blanditiis dolores omnis quaerat accusamus ut aut molestiae. Nisi dolorum aut blanditiis qui. Quibusdam voluptates voluptas quisquam et veniam harum.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(5, 19, 'posts', 5, 'Ea quaerat ab dicta molestias veniam dolorum nesciunt unde. Et distinctio ut odio commodi corporis.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(6, 20, 'posts', 10, 'Doloribus quidem cum tempora ut dolor. Voluptatem consequuntur nemo doloremque aut. Voluptas dolor reiciendis fugiat sunt eius velit dolor.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(7, 24, 'posts', 13, 'Provident ducimus possimus maxime voluptate. Voluptas eum et excepturi placeat adipisci. Reiciendis et sint est porro voluptatem sint explicabo esse. Perferendis dolore sit ut et molestiae. Tenetur quis non amet culpa accusamus neque.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(8, 41, 'posts', 9, 'Laborum molestiae omnis sed qui ut excepturi illum. Non veritatis iste ut occaecati voluptate qui. Minus ut optio officiis ut. Tempora aut et deleniti aut ipsa libero repellat.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(9, 26, 'posts', 19, 'Quia laudantium velit explicabo aliquid aut modi adipisci. Cumque aspernatur facere quos illum sit sed. Non modi minima eum necessitatibus assumenda iste veniam ipsum.', 1, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(10, 14, 'posts', 16, 'Ab adipisci blanditiis delectus doloribus omnis reprehenderit. Officiis voluptates laboriosam consequatur asperiores magnam.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(11, 34, 'posts', 18, 'Distinctio sit doloribus et ullam amet aut et. Earum quis consequuntur eos excepturi alias quos sunt. Quidem veritatis recusandae voluptatem.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(12, 28, 'posts', 6, 'Minus et dolor eaque ipsam eius. Harum soluta vitae qui praesentium. Et aliquid porro unde libero ut eaque. Et rerum et ullam tempora fugit provident quia.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(13, 32, 'posts', 9, 'Cumque dolorum qui ad omnis praesentium. Sint illo asperiores eos facere et. Illum explicabo aut adipisci. Eveniet commodi qui voluptates.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(14, 28, 'posts', 13, 'Culpa illo dicta sit perspiciatis eum. Minima possimus rerum at eius sit. Fuga voluptatem quia reprehenderit velit qui voluptate.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(15, 11, 'posts', 9, 'Magni consequatur dolores voluptate et culpa eligendi. Quas sint aut labore praesentium molestias temporibus explicabo. Quae aut sunt eos sed similique consequatur qui. Eligendi quibusdam et unde deserunt in.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(16, 10, 'posts', 11, 'Ab est qui quia et incidunt est. Sapiente sit sunt quo est velit at. Placeat similique aut omnis et quasi dolore non consequatur.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(17, 10, 'posts', 1, 'In aut dolorem animi vel. Quo eveniet odit corporis et nesciunt voluptatibus saepe. Excepturi molestiae omnis ipsum illum.', 1, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(18, 22, 'posts', 13, 'Velit laboriosam tenetur ducimus velit. Incidunt quos laudantium asperiores aut deserunt voluptate et. Facere doloremque assumenda adipisci totam aliquid. Ipsam iusto laudantium rem odio cumque recusandae quod.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(19, 38, 'posts', 7, 'Voluptas excepturi vel enim corporis eum asperiores ea. Quis expedita quod saepe velit recusandae. Et delectus cupiditate cumque et explicabo. Non sapiente commodi autem quo facilis quo numquam.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(20, 3, 'posts', 10, 'Est debitis aut consequatur magni quae necessitatibus. Numquam sed et facilis eveniet qui. Quia temporibus minima aut aut. Aliquam voluptas modi eos blanditiis.', 0, '2022-12-25 09:41:04', '2022-12-25 09:41:04'),
(21, 10, 'posts', 6, 'Quia ullam quibusdam sint alias. Vel nobis quia quisquam quod.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(22, 12, 'posts', 5, 'Qui fugiat eligendi voluptatem tempore corporis. Est omnis voluptatem ut perspiciatis perspiciatis sed id porro. Et et adipisci et fuga veniam numquam ipsam. Consequuntur velit ut quia molestias fugit ducimus tempore.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(23, 7, 'posts', 20, 'Dolorum sapiente esse eum et fugit. Et quibusdam excepturi qui voluptas sunt sed. Autem itaque sapiente doloribus minus sint eveniet eum.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(24, 25, 'posts', 5, 'Cum doloremque voluptas ad nemo velit esse. Atque quo illum qui voluptas. Molestiae ea sapiente recusandae voluptatibus.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(25, 9, 'posts', 18, 'Explicabo repudiandae optio velit sapiente nesciunt eos. Tempore veniam dolorum veritatis assumenda nobis. Quas rerum nulla eligendi porro.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(26, 22, 'posts', 8, 'Unde voluptatem corporis quas reiciendis saepe sapiente. Debitis qui ipsa excepturi et. Porro qui recusandae doloremque laudantium.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(27, 32, 'posts', 18, 'Nulla dicta nemo aut magnam nihil sit qui. Ab est perspiciatis earum. Fugiat rerum praesentium ipsa voluptates aut.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(28, 14, 'posts', 20, 'Vel ut eligendi quia dolorem quasi ipsam. Dolorem iusto aspernatur in laudantium non eos. Quo doloremque sint explicabo et vel cum. Officiis maiores labore velit ratione voluptas occaecati nihil.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(29, 36, 'posts', 10, 'Earum et aut accusantium dolorem ipsum quae aperiam non. Quod ut dolorem et. Sed distinctio hic laborum quis maxime laboriosam. Doloremque itaque recusandae debitis quo earum quo.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(30, 39, 'posts', 18, 'Dolor aut velit ut temporibus quia. Repellendus amet aperiam hic est officiis animi nemo. Dolores quia labore illum. Iste fuga dolor numquam maxime. Ullam fuga possimus error omnis commodi quos qui sed.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(31, 12, 'posts', 16, 'Animi repudiandae voluptas rerum nisi a dolores. Voluptatem veniam rem quae enim saepe qui dolor. Officia accusamus facere animi doloremque minus id sit.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(32, 26, 'posts', 18, 'Voluptatibus qui dolorum sunt recusandae non voluptas rerum. Repudiandae minima eos qui neque. Provident dolor facilis non reiciendis. Consequatur eveniet voluptas libero quo est eos error ab. Repellendus nihil ut quam pariatur eos cum eligendi.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(33, 31, 'posts', 15, 'Sed cumque accusantium aut fugiat maxime id ut consectetur. Qui vitae est assumenda ipsa cupiditate quam possimus placeat. Magni voluptate blanditiis eum et.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(34, 35, 'posts', 20, 'Quo eos est delectus. Quis dolor accusamus non nihil. Omnis voluptas neque aut. Natus nihil omnis reprehenderit quam voluptatem cum.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(35, 33, 'posts', 8, 'Modi velit doloremque et necessitatibus. Quas eveniet exercitationem sit numquam aliquid. Id perspiciatis facilis eum in ut. Reprehenderit doloribus explicabo neque eos temporibus esse. Reprehenderit rerum natus fuga id ipsam.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(36, 35, 'posts', 20, 'Delectus rerum illum porro eveniet. Earum voluptate autem esse minima.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(37, 25, 'posts', 11, 'Dolore aliquid cumque et quam. Et in asperiores architecto sed. Doloribus voluptatum quos aut nulla voluptas saepe.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(38, 38, 'posts', 9, 'Saepe ipsum minus ut. Dolores qui odit ut modi sed. Consequatur aliquid commodi deleniti quo nihil officia iste.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(39, 41, 'posts', 7, 'Sunt cupiditate blanditiis qui ex. Ab et qui consectetur consequatur debitis voluptatem. Sequi ab est aut omnis sit praesentium animi. Quis officia ut alias ea.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(40, 16, 'posts', 13, 'Nulla asperiores voluptatem dolores corrupti aliquid natus odit. Aut vero asperiores at praesentium tenetur fugiat molestiae. Impedit numquam dolor molestiae corrupti.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(41, 13, 'posts', 17, 'Ut quaerat placeat qui dolorum. In omnis eum animi vel. Enim possimus dolor voluptatum sint.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(42, 22, 'posts', 15, 'Quia et dolor dolores ut veniam. Id illum perferendis rerum atque sapiente consequuntur. Qui recusandae quia iste accusantium.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(43, 9, 'posts', 10, 'Eius quisquam quod nemo quasi asperiores sit voluptate occaecati. Modi facere hic et et pariatur.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(44, 27, 'posts', 12, 'Adipisci esse enim animi. Qui voluptas et perspiciatis nemo. Ex porro molestiae eos voluptas distinctio reiciendis aut vero.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(45, 40, 'posts', 14, 'Atque qui qui qui quia quia. Ut dolorum est sed tempore labore adipisci et et. Aut enim rerum delectus. Sit mollitia doloribus ipsam numquam ullam et.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(46, 26, 'posts', 13, 'Dolorem et voluptate repudiandae sed quia delectus saepe ratione. Et aut pariatur consequatur nihil asperiores. Rerum labore dolorem ut atque molestiae sit. Quia eveniet ex ipsum quo.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(47, 34, 'posts', 6, 'Iste sint harum consequatur nihil placeat molestiae. Quia aperiam quis quia dicta ducimus occaecati rerum. Aperiam maxime qui alias modi non ut suscipit.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(48, 34, 'posts', 13, 'Eveniet quo adipisci fuga. Ut excepturi earum asperiores corporis qui. Exercitationem explicabo sit et nihil ipsum aut voluptatem.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(49, 10, 'posts', 9, 'Ipsa reprehenderit voluptate quas. Veritatis aliquid ab ullam reiciendis ut sunt nihil incidunt. Nihil aut voluptatem assumenda facilis molestias et dolores. Asperiores dolorem fugit quam sint. Voluptatum voluptas consequatur cumque amet.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05'),
(50, 18, 'posts', 16, 'Dolor voluptatem porro delectus laborum est perspiciatis delectus neque. Ipsam tempore tempore autem qui consequatur nostrum libero. Doloribus aspernatur rerum in ipsam laudantium qui non.', 0, '2022-12-25 09:41:05', '2022-12-25 09:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, '3362', 'El Salvador', '2022-12-24 11:29:52', '2022-12-24 11:29:52'),
(2, '7111', 'Myanmar', '2022-12-24 11:29:52', '2022-12-24 11:29:52'),
(3, '3781', 'Cook Islands', '2022-12-24 11:29:52', '2022-12-24 11:29:52'),
(4, '7614', 'Papua New Guinea', '2022-12-24 11:29:52', '2022-12-24 11:29:52'),
(5, '6211', 'Saint Kitts and Nevis', '2022-12-24 11:29:52', '2022-12-24 11:29:52'),
(6, '1900', 'Suriname', '2022-12-24 11:29:52', '2022-12-24 11:29:52'),
(7, '9513', 'Congo', '2022-12-24 11:29:52', '2022-12-24 11:29:52'),
(8, '2379', 'Tanzania', '2022-12-24 11:29:52', '2022-12-24 11:29:52'),
(9, '9884', 'Venezuela', '2022-12-24 11:29:52', '2022-12-24 11:29:52'),
(10, '4443', 'Liberia', '2022-12-24 11:29:52', '2022-12-24 11:29:52'),
(11, '2258', 'Guatemala', '2022-12-24 11:30:58', '2022-12-24 11:30:58'),
(12, '7452', 'Guyana', '2022-12-24 11:30:58', '2022-12-24 11:30:58'),
(13, '4284', 'Costa Rica', '2022-12-24 11:30:58', '2022-12-24 11:30:58'),
(14, '2314', 'Nauru', '2022-12-24 11:30:58', '2022-12-24 11:30:58'),
(15, '7234', 'Bermuda', '2022-12-24 11:30:58', '2022-12-24 11:30:58'),
(16, '8263', 'Djibouti', '2022-12-24 11:30:58', '2022-12-24 11:30:58'),
(17, '6195', 'Togo', '2022-12-24 11:30:58', '2022-12-24 11:30:58'),
(18, '4457', 'Mongolia', '2022-12-24 11:30:58', '2022-12-24 11:30:58'),
(19, '2049', 'Dominican Republic', '2022-12-24 11:30:58', '2022-12-24 11:30:58'),
(20, '9707', 'Faroe Islands', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(21, '2590', 'Azerbaijan', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(22, '5878', 'Belarus', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(23, '8031', 'Liechtenstein', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(24, '8926', 'Vietnam', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(25, '7149', 'Nigeria', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(26, '2091', 'Ecuador', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(27, '2928', 'Philippines', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(28, '5934', 'Palestinian Territories', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(29, '6334', 'Morocco', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(30, '9538', 'Cameroon', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(31, '2432', 'Liberia', '2022-12-24 14:41:59', '2022-12-24 14:41:59'),
(32, '2415', 'Trinidad and Tobago', '2022-12-24 14:41:59', '2022-12-24 14:41:59'),
(33, '6376', 'Bangladesh', '2022-12-24 14:41:59', '2022-12-24 14:41:59'),
(34, '7540', 'Kazakhstan', '2022-12-24 14:41:59', '2022-12-24 14:41:59'),
(35, '6984', 'Japan', '2022-12-24 14:41:59', '2022-12-24 14:41:59'),
(36, '7538', 'Netherlands', '2022-12-24 14:41:59', '2022-12-24 14:41:59'),
(37, '3026', 'Egypt', '2022-12-24 14:41:59', '2022-12-24 14:41:59'),
(38, '4281', 'Malta', '2022-12-24 14:41:59', '2022-12-24 14:41:59'),
(39, '9675', 'Cayman Islands', '2022-12-24 14:41:59', '2022-12-24 14:41:59'),
(40, '3724', 'Solomon Islands', '2022-12-24 14:41:59', '2022-12-24 14:41:59');

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `imageable_type`, `imageable_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'users', 21, 'https://source.unsplash.com/random/200x200?sig=1', NULL, NULL),
(2, 'users', 21, 'https://source.unsplash.com/random/200x200?sig=2', NULL, NULL),
(3, 'users', 2, 'https://source.unsplash.com/random/200x200?sig=3', NULL, NULL),
(4, 'users', 3, 'https://source.unsplash.com/random/200x200?sig=4', NULL, NULL),
(5, 'products', 1, 'https://source.unsplash.com/random/200x200?sig=5', NULL, NULL),
(6, 'users', 5, 'https://source.unsplash.com/random/200x200?sig=6', NULL, NULL),
(7, 'products', 1, 'https://source.unsplash.com/random/200x200?sig=7', NULL, NULL);

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
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `likeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likeable_id` bigint(20) UNSIGNED NOT NULL,
  `liked` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `likeable_type`, `likeable_id`, `liked`, `created_at`, `updated_at`) VALUES
(1, 4, 'comments', 17, 1, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(2, 1, 'posts', 10, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(3, 29, 'posts', 6, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(4, 2, 'posts', 2, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(5, 6, 'posts', 1, 1, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(6, 24, 'posts', 7, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(7, 9, 'posts', 4, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(8, 8, 'posts', 9, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(9, 34, 'posts', 1, 1, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(10, 14, 'posts', 4, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(11, 6, 'posts', 9, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(12, 25, 'posts', 15, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(13, 25, 'posts', 13, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(14, 38, 'posts', 10, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(15, 6, 'posts', 18, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(16, 26, 'posts', 1, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(17, 30, 'posts', 18, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(18, 37, 'posts', 7, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(19, 39, 'posts', 9, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(20, 35, 'posts', 17, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(21, 30, 'posts', 6, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(22, 12, 'posts', 13, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(23, 16, 'posts', 1, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(24, 38, 'posts', 7, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(25, 40, 'posts', 15, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(26, 32, 'posts', 9, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(27, 14, 'posts', 13, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(28, 33, 'posts', 8, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(29, 38, 'posts', 4, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(30, 36, 'posts', 17, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(31, 41, 'posts', 1, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(32, 13, 'posts', 6, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(33, 27, 'posts', 11, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(34, 12, 'posts', 5, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(35, 35, 'posts', 18, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(36, 23, 'posts', 8, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(37, 1, 'posts', 12, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(38, 9, 'posts', 17, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(39, 29, 'posts', 10, 0, '2022-12-25 09:41:02', '2022-12-25 09:41:02'),
(40, 12, 'posts', 9, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03'),
(41, 3, 'posts', 16, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03'),
(42, 15, 'posts', 11, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03'),
(43, 5, 'posts', 3, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03'),
(44, 36, 'posts', 15, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03'),
(45, 6, 'posts', 20, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03'),
(46, 4, 'posts', 16, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03'),
(47, 3, 'posts', 2, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03'),
(48, 7, 'posts', 6, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03'),
(49, 19, 'posts', 18, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03'),
(50, 29, 'posts', 8, 0, '2022-12-25 09:41:03', '2022-12-25 09:41:03');

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
(19, '2022_12_10_143949_create_results_table', 2),
(20, '2022_12_23_171133_create_countries_table', 3),
(21, '2022_12_24_170042_create_phones_table', 3),
(22, '2022_12_24_181939_create_roles_table', 4),
(25, '2022_12_24_182018_create_role_user_table', 6),
(26, '2022_12_24_193106_create_images_table', 7),
(27, '2022_12_24_201956_create_categories_table', 8),
(28, '2022_12_24_202513_create_categoryable_table', 9),
(29, '2022_12_24_203000_create_posts_table', 9),
(30, '2022_12_25_152808_create_likes_table', 10),
(31, '2022_12_25_152846_create_comments_table', 10),
(32, '2022_12_26_152814_create_candidates_table', 11),
(33, '2022_12_26_152849_create_votes_table', 11),
(34, '2022_12_26_162107_create_buses_table', 12),
(35, '2022_12_26_162121_create_bookings_table', 12);

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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_no`, `amount`, `charge`, `discount`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 21, 'INV1549073107', 948.00, 0.00, 0.00, 948.00, 'pending', '2022-12-24 13:09:29', '2022-12-24 13:09:29'),
(2, 21, 'INV3486477117', 169.00, 0.00, 0.00, 169.00, 'pending', '2022-12-24 13:17:11', '2022-12-24 13:17:11');

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

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 4, 89.00, 0.00, 356.00, '2022-12-24 13:09:29', '2022-12-24 13:09:29'),
(2, 1, 4, 6, 92.00, 0.00, 552.00, '2022-12-24 13:09:29', '2022-12-24 13:09:29'),
(3, 1, 9, 2, 20.00, 0.00, 40.00, '2022-12-24 13:09:29', '2022-12-24 13:09:29'),
(4, 2, 1, 1, 58.00, 0.00, 58.00, '2022-12-24 13:17:11', '2022-12-24 13:17:11'),
(5, 2, 7, 1, 28.00, 0.00, 28.00, '2022-12-24 13:17:11', '2022-12-24 13:17:11'),
(6, 2, 10, 1, 22.00, 0.00, 22.00, '2022-12-24 13:17:11', '2022-12-24 13:17:11'),
(7, 2, 11, 1, 61.00, 0.00, 61.00, '2022-12-24 13:17:11', '2022-12-24 13:17:11');

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
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `user_id`, `phone`, `created_at`, `updated_at`) VALUES
(1, 11, '+14013519211', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(2, 10, '+1 (872) 467-5843', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(3, 3, '(321) 635-5173', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(4, 8, '+1 (934) 344-5660', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(7, 7, '+1-631-493-8973', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(8, 12, '+1-609-298-9162', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(11, 2, '1-650-635-1106', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(13, 4, '+1-409-915-2491', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(14, 1, '+1-531-883-5221', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(15, 9, '+17375550239', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(16, 5, '317.795.3075', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(18, 6, '+1-352-774-9629', '2022-12-24 11:30:59', '2022-12-24 11:30:59'),
(21, 20, '01795700838', '2022-12-24 11:55:23', '2022-12-24 11:55:23'),
(27, 14, '1-440-918-6385', '2022-12-24 13:41:50', '2022-12-24 13:41:50'),
(28, 11, '+1 (941) 565-1230', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(29, 3, '+1.863.262.3140', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(30, 24, '+1 (586) 687-6522', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(31, 9, '870.855.7674', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(32, 30, '+18548299783', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(33, 5, '(231) 268-6003', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(34, 27, '+1-928-249-3355', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(35, 3, '1-352-976-5420', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(36, 29, '+1.909.753.3181', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(37, 9, '(352) 230-5893', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(38, 8, '1-951-475-2471', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(39, 18, '313.413.1176', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(40, 2, '1-240-321-4809', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(41, 28, '+1-352-350-5221', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(42, 15, '1-425-728-4008', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(43, 28, '360.213.0304', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(44, 3, '225-652-8952', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(45, 30, '984.980.5024', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(46, 23, '+1-660-228-8153', '2022-12-24 13:41:51', '2022-12-24 13:41:51'),
(47, 24, '724-223-4385', '2022-12-24 14:41:59', '2022-12-24 14:41:59'),
(48, 24, '+1-972-280-8254', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(49, 27, '539.554.7649', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(50, 10, '1-606-686-5486', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(51, 29, '845-933-2021', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(52, 2, '203.378.6399', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(53, 31, '(703) 421-9448', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(54, 17, '+1-805-940-2648', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(55, 10, '1-310-915-0629', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(56, 26, '1-952-608-3901', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(57, 2, '+1.689.889.7153', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(58, 28, '1-708-910-9775', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(59, 4, '539.646.6829', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(60, 5, '251.387.6286', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(61, 6, '+1.804.252.8999', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(62, 26, '541-775-7308', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(63, 6, '(432) 466-5963', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(64, 19, '+1 (405) 356-4976', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(65, 31, '+12834889459', '2022-12-24 14:42:00', '2022-12-24 14:42:00'),
(66, 2, '413.359.1013', '2022-12-24 14:42:01', '2022-12-24 14:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Frankie Russel', 'Aut assumenda sed expedita. Ut provident laudantium excepturi quisquam ullam vitae sint. Accusamus eum velit quis quia. Saepe nesciunt modi iusto culpa. Quia voluptatem quibusdam et quasi eius autem.', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(2, 6, 'Kim Baumbach', 'Consequuntur dolores sint velit iusto quam. Voluptatum facilis libero asperiores cupiditate unde vitae. Esse quo consequatur ut quae provident.', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(3, 2, 'Fiona Borer', 'Aut est illum ipsam provident officia dolores autem. Aliquid quas minima aliquid et cupiditate. Debitis blanditiis molestiae quam aperiam quisquam qui. Ducimus recusandae temporibus ut.', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(4, 21, 'Prof. Kurtis Roob', 'Itaque quibusdam non dignissimos similique eos molestiae. Non modi delectus est qui illo. Voluptatem reprehenderit quibusdam magni ea. Enim perferendis in sed magnam sed non.', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(5, 3, 'Dr. Felipa McKenzie Sr.', 'Doloribus omnis iure eum dicta est laudantium et. Debitis est quia dolorem et vero repellat vero. Officia debitis amet rerum autem occaecati minima voluptatem.', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(6, 21, 'Mr. Abner Flatley', 'Ducimus quam pariatur pariatur. Et commodi earum saepe fugit officiis similique voluptatum autem. Saepe non sit quia quod odio voluptatem numquam. Quidem ad nam qui quos quisquam. Ea qui fuga ut dolores molestiae labore.', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(7, 5, 'Pearline Koss V', 'Eos consequuntur nulla id rerum sit dolores. Aut nesciunt vitae dicta esse et repellendus maxime. Et aut deleniti laboriosam distinctio quis id. Incidunt quia dicta optio.', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(8, 21, 'Mr. Rashawn Kuhlman III', 'Enim recusandae quis itaque vel doloribus magni. Ut soluta enim quibusdam non labore temporibus. Omnis impedit tempore placeat velit aut. Esse accusantium accusamus perferendis exercitationem dicta quod et. Nihil sint nam ex et.', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(9, 21, 'Darwin Jenkins', 'Ullam odio et labore eveniet labore voluptas. Laborum voluptatem ad autem voluptas. Repellendus rerum non magni quos odio omnis sed.', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(10, 21, 'Aditya Predovic', 'Neque modi in veritatis recusandae nam. Nesciunt eum at inventore omnis qui fugit voluptatibus consequatur. Tempora cupiditate ea natus.', '2022-12-24 14:42:01', '2022-12-24 14:42:01'),
(11, 21, 'Wanda Lind', 'Est iste assumenda cumque officia dolorum optio aut eius. Et dolores aut magni temporibus eos tenetur. Maxime praesentium consequatur dolorem iusto sunt qui. Repellat voluptas ducimus eum in.', '2022-12-24 14:42:02', '2022-12-24 14:42:02'),
(12, 10, 'Tamia Schneider', 'Sequi qui et aut nisi ex dignissimos sint. Saepe vitae fugit vel. Rem molestiae commodi ut omnis minus voluptate. Excepturi autem nihil aut autem.', '2022-12-24 14:42:02', '2022-12-24 14:42:02'),
(13, 21, 'Mrs. Amely Bartoletti DDS', 'Est quas rerum eligendi et. Est odio placeat eligendi aut. Incidunt similique autem velit ex exercitationem voluptatum sed. Enim sunt molestiae voluptates labore aut officiis ut.', '2022-12-24 14:42:02', '2022-12-24 14:42:02'),
(14, 21, 'Mrs. Josefina Green', 'Itaque vero est tempora consequuntur et et aut. Doloremque molestiae eligendi atque explicabo ut nobis aut. Quisquam quia quos dolore aliquid facilis repellat aut in.', '2022-12-24 14:42:02', '2022-12-24 14:42:02'),
(15, 21, 'Elissa Stoltenberg', 'Aut a vero neque id. Sapiente repellendus recusandae minus sint.', '2022-12-24 14:42:02', '2022-12-24 14:42:02'),
(16, 21, 'Prof. Ernest Gutmann DVM', 'Excepturi impedit tempora provident nihil pariatur ipsam. Voluptas et possimus accusantium nemo voluptatem nisi. Ipsam voluptatem ut est et animi aliquid sunt. Magni impedit deserunt dolorem ex nam est in ea.', '2022-12-24 14:42:02', '2022-12-24 14:42:02'),
(17, 7, 'Lemuel Kilback', 'Itaque laudantium voluptas quos temporibus fuga quidem. Aspernatur ipsa excepturi ex id occaecati eligendi est atque. Quibusdam mollitia nulla quas ut assumenda quia. Quia quod voluptatem vel quis molestias sint est.', '2022-12-24 14:42:02', '2022-12-24 14:42:02'),
(18, 21, 'Orin Johnson', 'Quaerat nobis ut voluptatem laudantium. Unde sequi nemo iure cupiditate ipsam voluptate. Debitis nam eaque et exercitationem labore enim qui.', '2022-12-24 14:42:02', '2022-12-24 14:42:02'),
(19, 21, 'Dr. Reymundo Lebsack II', 'Officiis odit et iure cumque velit numquam sit. Aliquam beatae impedit quia pariatur et. Sed aut dolore est inventore consequuntur laborum rerum.', '2022-12-24 14:42:02', '2022-12-24 14:42:02'),
(20, 2, 'Dr. Jon Lubowitz', 'Officia voluptas in recusandae molestias excepturi repellendus ea. Tempore omnis quaerat est cupiditate omnis neque. Et non aut occaecati rem rerum ipsam dicta.', '2022-12-24 14:42:02', '2022-12-24 14:42:02');

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
(1, 1, 19, '2022-12-10 09:12:53', '2022-12-24 13:17:11'),
(2, 2, 19, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(3, 3, 13, '2022-12-10 09:12:53', '2022-12-24 13:09:29'),
(4, 4, 11, '2022-12-10 09:12:53', '2022-12-24 13:09:29'),
(5, 5, 14, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(6, 6, 16, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(7, 7, 10, '2022-12-10 09:12:53', '2022-12-24 13:17:11'),
(8, 8, 14, '2022-12-10 09:12:53', '2022-12-10 09:12:53'),
(9, 9, 13, '2022-12-10 09:12:53', '2022-12-24 13:09:29'),
(10, 10, 12, '2022-12-10 09:12:53', '2022-12-24 13:17:11'),
(11, 11, 10, '2022-12-10 09:12:53', '2022-12-24 13:17:11'),
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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'engineer', NULL, NULL),
(2, 'designer', NULL, NULL),
(3, 'developer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-12-26 12:38:01', '2022-12-24 12:38:01', '2022-12-24 12:38:01'),
(3, 1, '2022-12-26 12:39:13', '2022-12-24 12:39:13', '2022-12-24 12:39:13'),
(4, 3, '2022-12-26 12:39:23', '2022-12-24 12:39:23', '2022-12-24 12:39:23'),
(1, 3, '2022-12-24 18:52:03', '2022-12-24 12:52:03', '2022-12-24 12:52:03'),
(2, 2, '2022-12-24 18:52:20', '2022-12-24 12:52:20', '2022-12-24 12:52:20'),
(1, 2, '2022-12-24 18:52:40', '2022-12-24 12:52:40', '2022-12-24 12:52:40'),
(3, 3, '2022-12-24 18:53:59', '2022-12-24 12:53:59', '2022-12-24 12:53:59'),
(21, 3, '2022-12-24 19:23:31', '2022-12-24 13:23:31', '2022-12-24 13:23:31');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `gender`, `city`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prof. Tyrique Schiller', 'xzavier.kirlin@example.org', '$2y$10$lmiNYfHSaF/01o68B7CGL.oZATLvcF4./UjMXIvd.Cdx.yccEoJbu', NULL, 'Male', 'Dhaka', '2022-12-24 11:29:51', 'UpLvI03wjA', '2022-12-24 11:29:51', '2022-12-24 11:29:51', NULL),
(2, 'Precious Jakubowski II', 'whahn@example.com', '$2y$10$5Hwyl8V1DsMsSdZXUAB.OuVcTUTpjPpNHjxuuP8532pQvtwhWYEIq', NULL, 'Male', 'Dhaka', '2022-12-24 11:29:51', '9SywELVBOf', '2022-12-24 11:29:51', '2022-12-24 11:29:51', NULL),
(3, 'Frederique Skiles Jr.', 'hahn.bettye@example.org', '$2y$10$uc8WJXWq5Z7zv3Dgs3FMKe9Cno0iNcJE.n0f8do07Q/fbhmfIDzTu', NULL, 'Male', 'Dhaka', '2022-12-24 11:29:51', '4xe5WOBgP9', '2022-12-24 11:29:52', '2022-12-24 11:29:52', NULL),
(4, 'Selina Mohr', 'hfritsch@example.net', '$2y$10$gJdKvB7VNX1P7gv2c0iGSOSh4FPYwH6tMFg35mUaA.JdR5d9uLLyK', NULL, 'Male', 'Dhaka', '2022-12-24 11:29:51', '1CBtdg9vvT', '2022-12-24 11:29:52', '2022-12-24 11:29:52', NULL),
(5, 'Lon Bogisich', 'amely57@example.net', '$2y$10$WvP7c/dIk7vG1W/7miN3beyQK8d3tdfw/19vxcnIBa3u0J2wTiOZy', NULL, 'Male', 'Dhaka', '2022-12-24 11:29:51', 'xBbMUb8xNN', '2022-12-24 11:29:52', '2022-12-24 11:29:52', NULL),
(6, 'Gretchen Schultz', 'fadel.joy@example.org', '$2y$10$usSxKD9HEUcD/7wgd5YF7upa2BfowZwytUoqXg0ODsFg2ArN.c2je', NULL, 'Male', 'Dhaka', '2022-12-24 11:29:51', 'TmEBfRmxYa', '2022-12-24 11:29:52', '2022-12-24 11:29:52', NULL),
(7, 'Prof. Darlene Gusikowski', 'howard.carroll@example.com', '$2y$10$N.N/Aw5OO/m/yuc4zGZvCeYNjGfwCmV2bxktKDogL.AYqljyZlkqe', NULL, 'Male', 'Dhaka', '2022-12-24 11:29:51', '9OcA17XCrn', '2022-12-24 11:29:52', '2022-12-24 11:29:52', NULL),
(8, 'Emmy Kuphal', 'uwill@example.com', '$2y$10$mpFIstu3SybKJWTTZeq6U.GaYq09INf4V/dDopiSBJvMVMW9sMGoy', NULL, 'Male', 'Dhaka', '2022-12-24 11:29:51', 'NHDkfgffQ2', '2022-12-24 11:29:52', '2022-12-24 11:29:52', NULL),
(9, 'Llewellyn Bernier', 'littel.loren@example.com', '$2y$10$iVG8lzUleH3qBvZ.Swo0ReaUW0RzWqKtI6PbnIbdLim83qSZHTEWu', NULL, 'Male', 'Dhaka', '2022-12-24 11:29:51', 'bSUeKQz1KT', '2022-12-24 11:29:52', '2022-12-24 11:29:52', NULL),
(10, 'Ari Renner', 'nbarrows@example.org', '$2y$10$svt1Sw/6F8JF8JHgTm61GOEa/QUTWUiWZgnPVNqNrJTgUaZCBeztC', NULL, 'Male', 'Dhaka', '2022-12-24 11:29:51', 'jg1D4r8L0B', '2022-12-24 11:29:52', '2022-12-24 11:29:52', NULL),
(11, 'Dr. Trent Deckow', 'javon.bechtelar@example.net', '$2y$10$j8pjxh/WKynnsFaicjQnoekJSrv2T/0VN5BIxje3bvsj/yNEb0V1K', NULL, 'Male', 'Dhaka', '2022-12-24 11:30:57', 'FkgLpyOBaT', '2022-12-24 11:30:58', '2022-12-24 11:30:58', NULL),
(12, 'Ms. Yesenia Schuppe II', 'delfina.jast@example.org', '$2y$10$PICb4UATJSRDv6RsWd82VuiTHTMJVU5nnT7927YJ.TOwvrX9CLPle', NULL, 'Male', 'Dhaka', '2022-12-24 11:30:57', 'qMovHEQeWH', '2022-12-24 11:30:58', '2022-12-24 11:30:58', NULL),
(13, 'Isaias Robel', 'fhand@example.net', '$2y$10$4mj4lgQQtQnuInzevk4rBuQXBxch2JjMe3lpaKlQfosToiMKq4HG.', NULL, 'Male', 'Dhaka', '2022-12-24 11:30:57', 'Mji1bC2nDc', '2022-12-24 11:30:58', '2022-12-24 11:30:58', NULL),
(14, 'Madeline Gleichner', 'kuhn.elisa@example.net', '$2y$10$cOUwvOs42j09T71v10sosemuVMegiQCM5B3BAPFsRKq67mzWKAdrK', NULL, 'Male', 'Dhaka', '2022-12-24 11:30:57', 'At2OHFo8ex', '2022-12-24 11:30:58', '2022-12-24 11:30:58', NULL),
(15, 'Lesley Kihn', 'mreilly@example.com', '$2y$10$8KsmNPKMaSr6gD3pGWgfxeZuU9XsSZNcdteI6LxQl31L7J9k6x/Gm', NULL, 'Male', 'Dhaka', '2022-12-24 11:30:57', 'Nzk2DbxRD3', '2022-12-24 11:30:58', '2022-12-24 11:30:58', NULL),
(16, 'Dusty Rau', 'alayna64@example.net', '$2y$10$NIngRxEfUnrfY9EvZIW4du3Sg.xmlZkn6k8uXVx0NQ/XrD6CEgWPS', NULL, 'Male', 'Dhaka', '2022-12-24 11:30:57', 'E0qG6hgCNn', '2022-12-24 11:30:58', '2022-12-24 11:30:58', NULL),
(17, 'Dallas Fisher PhD', 'cpaucek@example.com', '$2y$10$ofoCtGnH7tSh87BkImsmUOo2M4xdXtiBwlCQc2Bv4fWWmdSVri9Nq', NULL, 'Male', 'Dhaka', '2022-12-24 11:30:58', 'VxqiLor5aq', '2022-12-24 11:30:58', '2022-12-24 11:30:58', NULL),
(18, 'Emmanuelle Waters', 'maryse47@example.net', '$2y$10$ZX/3MokkuzyLWwt4CAggDuKoMmy0mJHUf8lIv5lshd0hxM4krMDMG', NULL, 'Male', 'Dhaka', '2022-12-24 11:30:58', 'mahgzklvnE', '2022-12-24 11:30:58', '2022-12-24 11:30:58', NULL),
(19, 'Ona Armstrong', 'graham.jackie@example.org', '$2y$10$sXjKMLdozdT3Y4ULQG.mB.IjotcstgLu.oGa.djHqE9ih31Q7suE6', NULL, 'Male', 'Dhaka', '2022-12-24 11:30:58', 'UvcP4i3uQK', '2022-12-24 11:30:58', '2022-12-24 11:30:58', NULL),
(20, 'Dr. Mollie Ankunding Sr.', 'rhett96@example.net', '$2y$10$JHSKH1xn8pY3FZyO2n/wNuSQd3vUhF8F/w1Zb10EoJj9VmxKnVz3W', NULL, 'Male', 'Dhaka', '2022-12-24 11:30:58', 'FPPqko0Stu', '2022-12-24 11:30:58', '2022-12-24 11:30:58', NULL),
(21, 'Md Anwar Hossain', 'anwar@gmail.com', '$2y$10$ej7m.Yqy3Xw/SW/QtKNCmeHuYJW0nLDF7Fx8zeLO5q9yuDCInfluS', NULL, 'Male', 'Dhaka', NULL, NULL, '2022-12-24 13:08:53', '2022-12-24 13:08:53', NULL),
(22, 'Mr. Hector Kris', 'timmy.price@example.com', '$2y$10$hrNqNIaCqJGcPaNPkW2rvOXoPtQq5aejbAbIaysswRRWfHiCuzYK.', NULL, 'Male', 'Dhaka', '2022-12-24 13:41:49', '3t9jhVKXoe', '2022-12-24 13:41:50', '2022-12-24 13:41:50', NULL),
(23, 'Bridie Lind MD', 'arno.haag@example.com', '$2y$10$sYbh4b/uPqJi8Jl2tas/0eBhCZBTOkigTEsezkbFqnKEZeETzsGI.', NULL, 'Male', 'Dhaka', '2022-12-24 13:41:49', 'xiS4gjrixN', '2022-12-24 13:41:50', '2022-12-24 13:41:50', NULL),
(24, 'Frederic Stroman II', 'ibechtelar@example.net', '$2y$10$YWvjFXKoFt7MG1ntVeFDjuSWvI9D/dRTNac5wlNu8/rxwoRabq1XG', NULL, 'Male', 'Dhaka', '2022-12-24 13:41:49', 'enTMj4aSts', '2022-12-24 13:41:50', '2022-12-24 13:41:50', NULL),
(25, 'Stephania Eichmann', 'victor56@example.net', '$2y$10$l63opHJd.kWFN7TcPu9JwebrSIavJEVc665OMbbJBaVLLSuRD//36', NULL, 'Male', 'Dhaka', '2022-12-24 13:41:49', 'uMIzmwyAyn', '2022-12-24 13:41:50', '2022-12-24 13:41:50', NULL),
(26, 'Cheyanne Stoltenberg IV', 'bertha.hudson@example.org', '$2y$10$upPO24TvGIXMXZXlDHPtnu13gEim8KY3OytFlL4rfquwF28jOiwAe', NULL, 'Male', 'Dhaka', '2022-12-24 13:41:49', 'ZWQWCFFQI7', '2022-12-24 13:41:50', '2022-12-24 13:41:50', NULL),
(27, 'Miss Orpha Cummings', 'garry37@example.com', '$2y$10$4Q/O/KnJk.tYbnE4Uv4GyeJmWzV1zwskRD5SB9JiNJsocCWv.Jal6', NULL, 'Male', 'Dhaka', '2022-12-24 13:41:49', 'IFE1GszFHv', '2022-12-24 13:41:50', '2022-12-24 13:41:50', NULL),
(28, 'Eveline Gleason', 'lina.jones@example.net', '$2y$10$VPhe0diAWjLkFCAeSGyo8uRRmFknaUSUCCj3NPSJnmhl1.76NsGKq', NULL, 'Male', 'Dhaka', '2022-12-24 13:41:49', 'Pqt2OBYHpK', '2022-12-24 13:41:50', '2022-12-24 13:41:50', NULL),
(29, 'Greg Shields', 'bbeahan@example.net', '$2y$10$qe5nCEGRrVThT1g6qNswFOkxc6Vel.Vp.ayi6DbruoaC1tTThqvRy', NULL, 'Male', 'Dhaka', '2022-12-24 13:41:49', 'DHwqHEqz7G', '2022-12-24 13:41:50', '2022-12-24 13:41:50', NULL),
(30, 'Kiera Nolan', 'sprice@example.com', '$2y$10$vers4EXyP2BKHSwBX3lv1uhK2.Z0FrSkNgtrXAxy9iMXXS2U01oYy', NULL, 'Male', 'Dhaka', '2022-12-24 13:41:49', '0EzAXi8Q6d', '2022-12-24 13:41:50', '2022-12-24 13:41:50', NULL),
(31, 'Dr. Joel Altenwerth', 'prenner@example.org', '$2y$10$ZRiSNJ8yxvpXVPxfzMZM/e2aUYFocAzGeaomCgVfrVrnU5sjn842u', NULL, 'Male', 'Dhaka', '2022-12-24 13:41:49', 'onZJpKpYTI', '2022-12-24 13:41:50', '2022-12-24 13:41:50', NULL),
(32, 'Miss Dorothea Larkin', 'dtromp@example.org', '$2y$10$NicKyNBOpWSZpru4WzhAAesEsdrMHFkMtPgs.sOJzrY5IIj9E3IFi', NULL, 'Male', 'Dhaka', '2022-12-24 14:41:58', 'IF28gVJD9g', '2022-12-24 14:41:59', '2022-12-24 14:41:59', NULL),
(33, 'Modesto Haley', 'volkman.audrey@example.com', '$2y$10$MyG2Tqd.Ruo5x9NWQ951duJ3u5CgZw8NZulPWW9P.YyMxrQ1z5Fo.', NULL, 'Male', 'Dhaka', '2022-12-24 14:41:58', 'QuEeMTTwv1', '2022-12-24 14:41:59', '2022-12-24 14:41:59', NULL),
(34, 'Rebeka Grimes', 'hhansen@example.org', '$2y$10$q9Ag8i7P9szc2gQUu8mhKustNwdfdCmJQ8x24QFbBFcM.dWjXpqKe', NULL, 'Male', 'Dhaka', '2022-12-24 14:41:58', '6wwYJelsPI', '2022-12-24 14:41:59', '2022-12-24 14:41:59', NULL),
(35, 'Asha Gleason', 'brath@example.com', '$2y$10$MidIl8qY8Mcg6yFHrlT0N./Nzu0rCjUk7l6.Z.rqmcMXzB5gsNjzC', NULL, 'Male', 'Dhaka', '2022-12-24 14:41:58', 'PBj3nXPuaf', '2022-12-24 14:41:59', '2022-12-24 14:41:59', NULL),
(36, 'Dr. Afton Tremblay', 'dubuque.cheyenne@example.net', '$2y$10$PqhlqwG0XduO6pI7uuGIMOX2nbg9ImcjADwZwfg2Wo6yhOUf6L6OO', NULL, 'Male', 'Dhaka', '2022-12-24 14:41:58', 'rStWbkXYhc', '2022-12-24 14:41:59', '2022-12-24 14:41:59', NULL),
(37, 'Miss Carlie Schoen DVM', 'peggie.murazik@example.net', '$2y$10$4iIGJtYPA3bOiKxI6lspN.B1ugFrMXB.fW9ndA4cZbff9Y9B7V2Pa', NULL, 'Male', 'Dhaka', '2022-12-24 14:41:58', '0IreXmJxn7', '2022-12-24 14:41:59', '2022-12-24 14:41:59', NULL),
(38, 'Chesley Bednar', 'slangosh@example.net', '$2y$10$tJ/mAQcDom.XhNSePwMd3uTkFs4ZCU7yRFUu2VSZ3UZMm40FsiHmm', NULL, 'Male', 'Dhaka', '2022-12-24 14:41:58', 'hfmSFWU30x', '2022-12-24 14:41:59', '2022-12-24 14:41:59', NULL),
(39, 'Dr. Juliet Donnelly PhD', 'bobby90@example.org', '$2y$10$evL4pWttKpPw9a1IE/SJUeNAT4zakiRhkkFSSo3MDvUlv4hHa6ue.', NULL, 'Male', 'Dhaka', '2022-12-24 14:41:58', 'eKclgS0ooa', '2022-12-24 14:41:59', '2022-12-24 14:41:59', NULL),
(40, 'Ms. Verda Adams V', 'rachel.hickle@example.org', '$2y$10$U4geK/BSTpl9w1j8w/mHJe0S5CLKn.Jy.lxBfL.r7PM/iEaLdKQVm', NULL, 'Male', 'Dhaka', '2022-12-24 14:41:59', 'x6ehc7059G', '2022-12-24 14:41:59', '2022-12-24 14:41:59', NULL),
(41, 'Shaniya Donnelly', 'sylvia.hudson@example.net', '$2y$10$gzdZcv0PAFJojc68McNQr.OhaAdGBCLNRVvwfbhId63ypkMP7OGOC', NULL, 'Male', 'Dhaka', '2022-12-24 14:41:59', 'BK0U5BS9n5', '2022-12-24 14:41:59', '2022-12-24 14:41:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `candidate_id`, `created_at`, `updated_at`) VALUES
(2, 24, 4, '2022-12-26 09:39:38', '2022-12-26 09:39:38'),
(3, 36, 4, '2022-12-26 09:39:38', '2022-12-26 09:39:38'),
(6, 33, 2, '2022-12-26 09:39:38', '2022-12-26 09:39:38'),
(7, 14, 1, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(9, 9, 1, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(11, 15, 2, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(14, 34, 1, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(15, 27, 1, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(16, 25, 3, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(17, 4, 2, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(18, 2, 2, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(21, 41, 1, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(22, 29, 3, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(25, 10, 2, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(26, 13, 3, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(29, 6, 2, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(30, 12, 2, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(31, 3, 3, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(32, 31, 3, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(33, 38, 1, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(34, 19, 3, '2022-12-26 09:39:39', '2022-12-26 09:39:39'),
(36, 17, 2, '2022-12-26 09:39:40', '2022-12-26 09:39:40'),
(39, 11, 3, '2022-12-26 09:39:40', '2022-12-26 09:39:40'),
(40, 8, 1, '2022-12-26 09:39:40', '2022-12-26 09:39:40'),
(42, 18, 2, '2022-12-26 09:39:40', '2022-12-26 09:39:40'),
(43, 16, 2, '2022-12-26 09:39:40', '2022-12-26 09:39:40'),
(44, 31, 3, '2022-12-26 09:39:40', '2022-12-26 09:39:40'),
(46, 1, 1, '2022-12-26 09:39:40', '2022-12-26 09:39:40'),
(47, 7, 3, '2022-12-26 09:39:40', '2022-12-26 09:39:40'),
(48, 5, 2, '2022-12-26 09:39:40', '2022-12-26 09:39:40'),
(49, 40, 2, '2022-12-26 09:39:40', '2022-12-26 09:39:40'),
(50, 21, 1, '2022-12-26 09:39:40', '2022-12-26 09:39:40');

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
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_bus_id_foreign` (`bus_id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidates_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `categoryables`
--
ALTER TABLE `categoryables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

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
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_likeable_type_likeable_id_index` (`likeable_type`,`likeable_id`);

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
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phones_phone_unique` (`phone`),
  ADD KEY `phones_user_id_foreign` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_user_id_foreign` (`user_id`),
  ADD KEY `votes_candidate_id_foreign` (`candidate_id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categoryables`
--
ALTER TABLE `categoryables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_question_option_id_foreign` FOREIGN KEY (`question_option_id`) REFERENCES `question_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_board_id_foreign` FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_institute_id_foreign` FOREIGN KEY (`institute_id`) REFERENCES `institutes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
