-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 08:46 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capshall`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `menu_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` smallint(6) NOT NULL,
  `menu_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `created_at`, `updated_at`, `image`, `title`, `description`, `price`, `category`) VALUES
(1, NULL, NULL, '1.jpg', 'vvbUe', '0SHtp,lbXbX1VkUaHKKvf,tudQLTl1r4', 200, 'tAdYt'),
(2, NULL, NULL, '2.jpg', 'i2R03', 'FpzZX,nRbo9HuuNq4TSVF,3EfsqrsANK', 200, 'ihc3o'),
(3, NULL, NULL, '3.jpg', '5WDEc', 'JnWZH,bvQZEaKEkjlpbYV,nsrLvRr24m', 200, 'mNJPS'),
(4, NULL, NULL, '4.jpg', 'h7ZSn', 'bWz7S,PxUqOTbPR7AkVFa,3fWAUTeT38', 200, '4eRow'),
(5, NULL, NULL, '5.jpg', 'T0z1P', 'njEwW,MpoYsINAR7XnURE,eiTktQlFxx', 200, 'oXN2L'),
(6, NULL, NULL, '1.jpg', 'cQEAC', 'jTVBU,TXwqMgBnkzEo28N,DYbFuWT8V8', 200, 'bfVZW'),
(7, NULL, NULL, '2.jpg', 'fG0IQ', 'fw2CP,dvUepCoPF5aM8Eo,QYevrnjwI3', 200, 'fa9DE'),
(8, NULL, NULL, '3.jpg', 'QtmOV', 'w7uP3,o4Z4jqAD4J4Ry5Y,i2CHkt1ht1', 200, 'Q4LDD'),
(9, NULL, NULL, '4.jpg', 'Lglmz', 'EsYYj,DLgEZQy5tNCTRJh,Ho08Xvb5dt', 200, 'Nva7w'),
(10, NULL, NULL, '5.jpg', 'A6JNM', 'N2QTz,8SPfxkoGYmOSzTn,RcWOdFVe5u', 200, 'u5pwE'),
(11, NULL, NULL, '1.jpg', '76jVn', 'DStwm,cRVpy8F3LLY5sXv,oUx4rWw4ON', 200, 'Z1Ju9'),
(12, NULL, NULL, '2.jpg', 'mInHz', '8BzEs,Y7XZR0uDndYVSh1,dAXaRO0LcP', 200, 'h1LSR');

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_04_13_232851_create_menu_table', 1),
(11, '2022_04_14_045016_add_columns_to_carts_table', 2),
(12, '2022_04_14_054318_add_columns_to_carts_table', 3),
(13, '2022_04_14_061449_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `orderItems` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`orderItems`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `orderItems`) VALUES
(1, '2022-04-14 05:29:58', '2022-04-14 05:29:58', '[{\"id\":5,\"created_at\":\"2022-04-14T05:48:38.000000Z\",\"updated_at\":\"2022-04-14T05:48:38.000000Z\",\"menu_title\":\"i2R03\",\"menu_id\":2,\"menu_image\":\"2.jpg\",\"menu_price\":200},{\"id\":6,\"created_at\":\"2022-04-14T05:49:12.000000Z\",\"updated_at\":\"2022-04-14T05:49:12.000000Z\",\"menu_title\":\"h7ZSn\",\"menu_id\":4,\"menu_image\":\"4.jpg\",\"menu_price\":200},{\"id\":7,\"created_at\":\"2022-04-14T06:05:25.000000Z\",\"updated_at\":\"2022-04-14T06:05:25.000000Z\",\"menu_title\":\"h7ZSn\",\"menu_id\":4,\"menu_image\":\"4.jpg\",\"menu_price\":200}]'),
(2, '2022-04-14 05:33:31', '2022-04-14 05:33:31', '[{\"id\":8,\"created_at\":\"2022-04-14T06:33:20.000000Z\",\"updated_at\":\"2022-04-14T06:33:20.000000Z\",\"menu_title\":\"5WDEc\",\"menu_id\":3,\"menu_image\":\"3.jpg\",\"menu_price\":200}]'),
(3, '2022-04-14 05:38:14', '2022-04-14 05:38:14', '[{\"id\":9,\"created_at\":\"2022-04-14T06:37:09.000000Z\",\"updated_at\":\"2022-04-14T06:37:09.000000Z\",\"menu_title\":\"5WDEc\",\"menu_id\":3,\"menu_image\":\"3.jpg\",\"menu_price\":200},{\"id\":10,\"created_at\":\"2022-04-14T06:37:15.000000Z\",\"updated_at\":\"2022-04-14T06:37:15.000000Z\",\"menu_title\":\"h7ZSn\",\"menu_id\":4,\"menu_image\":\"4.jpg\",\"menu_price\":200}]');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
