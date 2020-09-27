-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2020 at 12:54 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

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
(3, '2020_09_22_092135_products', 1),
(4, '2020_09_23_174001_create_notifications_table', 2),
(5, '2020_09_25_150637_orders', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('00630034-a2b9-47e0-8885-e15e252c5d1d', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 05:09:21', '2020-09-25 05:09:21'),
('0332f4dc-6e7a-4244-a985-4c7459f1e004', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 10:19:58', '2020-09-25 10:19:58'),
('05bbb45d-647d-4c7d-be41-096b4c3cf0b0', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 10:15:43', '2020-09-25 10:15:43'),
('0c360c4f-c90c-495e-bbb3-ee3a7c09c064', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 10:15:44', '2020-09-25 10:15:44'),
('1e9c2388-6aa4-4801-b866-63e470363e32', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 00:38:30', '2020-09-25 00:38:30'),
('21572a26-fc62-410c-bc13-27945ee8f7a9', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 16:11:10', '2020-09-25 16:11:10'),
('288f6b69-e4c7-4ab7-9cc5-b52c9004d74d', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 08:45:54', '2020-09-25 08:45:54'),
('2cebf6e0-c350-4f0e-a149-e64bee7b0e6e', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 16:02:04', '2020-09-25 16:02:04'),
('336e4f20-502c-42af-9197-a68628d06dcf', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 04:29:51', '2020-09-25 04:29:51'),
('514050b0-33f9-4b42-9064-0bff652187df', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 11:44:39', '2020-09-25 11:44:39'),
('52b5567c-d18c-4cf1-a48a-9e5c568ec2de', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 09:43:07', '2020-09-25 09:43:07'),
('65fd5f4f-4ed5-4ab4-bf85-28b848fda1b1', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 04:28:30', '2020-09-25 04:28:30'),
('7417bd51-2b84-4db2-80e2-f264bd691bcb', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 12:29:57', '2020-09-25 12:29:57'),
('74a9250f-3cb1-4474-946c-3a8b7664cc71', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 15:59:54', '2020-09-25 15:59:54'),
('74b8330e-053a-4f85-9f74-64e6eb382cd5', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 00:41:25', '2020-09-25 00:41:25'),
('75adf4a3-fac3-4fab-aba7-d42f2b811203', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-26 00:28:23', '2020-09-26 00:28:23'),
('7656d572-3e22-4191-9b7b-6d8e681aeff6', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 00:40:54', '2020-09-25 00:40:54'),
('771a5bc7-4e3c-4924-82d9-e844957768c1', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 13:23:09', '2020-09-25 13:23:09'),
('7a884f48-5c5a-4b19-a422-1294316775b9', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 08:36:53', '2020-09-25 08:36:53'),
('8b61724f-36a7-4d8c-a6b4-a7d1cc6a3d56', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 08:39:13', '2020-09-25 08:39:13'),
('8bd3adef-23b5-4de0-b4ab-05f172459e8e', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 15:25:46', '2020-09-25 15:25:46'),
('8f1e08e0-29e4-4a71-8e14-87bfdfe99553', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 04:59:41', '2020-09-25 04:59:41'),
('9545a7d8-c3a2-4545-bde3-500fd1063ea2', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 00:40:36', '2020-09-25 00:40:36'),
('a07b5b82-ca9d-4432-a646-ea3f46d47c65', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 04:35:41', '2020-09-25 04:35:41'),
('a1f4cce3-d5b7-48bd-a469-a835a5bc7be8', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 12:55:02', '2020-09-25 12:55:02'),
('a7afa1ed-eb41-4b17-8d23-95a423832326', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 13:55:01', '2020-09-25 13:55:01'),
('aaa31a22-a93c-4100-b7f9-9dad210d3bc4', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 08:20:39', '2020-09-25 08:20:39'),
('aac8caa1-1f0c-45e7-ab6f-a2824f039397', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 15:31:49', '2020-09-25 15:31:49'),
('ab395381-8826-40cc-8601-6227ec3899b1', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-26 00:27:52', '2020-09-26 00:27:52'),
('ade9bdb8-5f1c-424a-83cf-369998d179bc', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 15:28:32', '2020-09-25 15:28:32'),
('b92ba691-3f6b-4ce8-be2d-f0d3da04a5b7', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 10:28:08', '2020-09-25 10:28:08'),
('bb3d9ffa-f087-4617-b08c-824ed645d0f7', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-26 00:35:28', '2020-09-26 00:35:28'),
('c0165f1d-e63e-41c4-b1ef-7d6d8d8f7a32', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 04:36:43', '2020-09-25 04:36:43'),
('c986603c-3cde-4f35-a0ea-ee5942dd5fa3', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 08:49:00', '2020-09-25 08:49:00'),
('d45a011b-476e-40b7-badd-e475cb5fb56c', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 15:53:09', '2020-09-25 15:53:09'),
('dbb9aa66-5c49-4c88-99fd-778ccfbf0557', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 04:59:21', '2020-09-25 04:59:21'),
('f11367c0-094d-4b93-95f9-a9de5b75aa6f', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 09:36:05', '2020-09-25 09:36:05'),
('f2927b3d-7a37-4887-a2af-20128f94d765', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 04:28:29', '2020-09-25 04:28:29'),
('fb23fafa-4b64-4fae-93ca-74eb40ef8b5b', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 12:29:45', '2020-09-25 12:29:45'),
('fb2bfd7a-3a7c-4280-821a-5a89af14de6e', 'App\\Notifications\\usernotification', 'App\\User', 1, '{\"data\":\"hello  customer\"}', NULL, '2020-09-25 08:20:41', '2020-09-25 08:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Uid` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `p_id`, `Uid`, `created_at`, `updated_at`) VALUES
(4, '1', 2, '2020-09-25 12:55:07', '2020-09-25 12:55:07'),
(5, '1', 2, '2020-09-25 13:23:15', '2020-09-25 13:23:15'),
(6, '2', 1, '2020-09-26 00:33:02', '2020-09-26 00:33:02');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `P_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `P_name`, `S_name`, `Area`, `price`, `created_at`, `updated_at`) VALUES
(1, 'rice', 'tahsin enterprise store', 'nawabganj', 60, NULL, NULL),
(2, 'potato', 'fahim store.ltd', 'banglamotor', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `Image`, `created_at`, `updated_at`) VALUES
(1, 'Tahsin', 'tahsin@gmail.com', '$2y$10$PXI9BS48nKt.HAXr.4Jpa.8XtGcaKO2ekWER/HWHTEekQ.sU26wZ2', NULL, '2020-09-22 03:28:54', '2020-09-26 00:33:48'),
(2, 'Rony', 'rony@gmail.com', '$2y$10$tSH4.IUYcZLYyv6SoTKeCOioYJXUFwsV1haodxY1UqxlCGMHtnqhy', NULL, '2020-09-22 03:45:21', '2020-09-22 03:45:37'),
(3, 'Ruma', 'ruma@gmail.com', '$2y$10$.FysTTMBWEgKrB7VQFygEOQO/a/ABBwPMOINaFZPlRgHDllrZPPDK', NULL, '2020-09-25 00:31:04', '2020-09-25 00:31:40'),
(4, 'Noyon', 'noyon@gmil.com', '$2y$10$iJQWihmZ9vV0/wOjLYB.GOmZtzXmzg2qw25bjErAgRq8soEswySP2', NULL, '2020-09-25 00:41:17', '2020-09-25 00:41:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_s_name_unique` (`S_name`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
