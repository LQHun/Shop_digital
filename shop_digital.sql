-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 05:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_digital`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_image`, `brand_description`, `brand_status`, `created_at`, `updated_at`) VALUES
(284, 'Xiaomi', '510.jpg', 'Chào mừng bạn đến với trang web chính thức của Xiaomi Việt Nam để khám phá các mẫu điện thoại Xiaomi, và các sản phẩm phổ biến khác.', 0, '2023-04-07 17:00:00', '2023-05-12 17:00:00'),
(286, 'Samsung', '65.jpg', 'Khám phá công nghệ hàng đầu thế giới tại Samsung Việt Nam và mua sắm các sản phẩm chính hãng như Điện thoại di động, TiVi, thiết bị gia dụng và hơn thế nữa.', 0, '2023-04-07 17:00:00', '2023-05-12 17:00:00'),
(290, 'Apple', '121.jpg', 'Discover the innovative world of Apple and shop everything iPhone, iPad, Apple Watch, Mac, and Apple TV, plus explore accessories, entertainment, ...', 0, '2023-04-07 17:00:00', '2023-05-12 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `id_product`, `id_customer`, `quantity`, `name`, `phone`, `email`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 1, 'hung', '0373245418', '', 'loc binh', NULL, 'delivering', '2023-03-24 01:48:47', '2023-03-24 08:45:29'),
(3, 3, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, 'just order', '2023-03-24 06:29:00', NULL),
(4, 7, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', 'Up ROM tiếng việt', 'just order', '2023-03-24 06:36:25', NULL),
(5, 7, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', 'Up ROM tiếng việt', 'just order', '2023-03-24 06:36:55', NULL),
(6, 7, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', 'Up ROM tiếng việt', 'just order', '2023-03-24 06:37:37', NULL),
(7, 7, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', 'Up ROM tiếng việt', 'done', '2023-03-24 06:43:32', '2023-03-25 22:13:31'),
(8, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, 'preparing', '2023-04-09 08:28:22', '2023-04-09 08:35:08'),
(9, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, 'preparing', '2023-04-09 08:28:35', '2023-04-09 08:35:11'),
(10, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, 'preparing', '2023-04-09 08:29:59', '2023-04-09 08:35:15'),
(11, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, 'preparing', '2023-04-09 08:30:19', '2023-04-09 08:35:19'),
(13, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:37:59', NULL),
(15, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:42:56', NULL),
(16, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:42:56', NULL),
(17, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:43:55', NULL),
(18, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:43:55', NULL),
(19, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:45:09', NULL),
(20, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:45:09', NULL),
(21, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:45:54', NULL),
(22, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:45:54', NULL),
(23, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:46:29', NULL),
(24, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:46:29', NULL),
(25, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:50:05', NULL),
(26, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:50:05', NULL),
(27, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:50:48', NULL),
(28, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:50:48', NULL),
(29, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:51:14', NULL),
(30, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:51:14', NULL),
(31, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:52:59', NULL),
(32, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:52:59', NULL),
(33, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:55:22', NULL),
(34, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:55:22', NULL),
(35, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:55:47', NULL),
(36, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:55:47', NULL),
(37, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:56:29', NULL),
(38, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:56:29', NULL),
(39, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:56:48', NULL),
(40, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:56:48', NULL),
(41, 517, 84, 1, 'a', '123', 'hang@123', '123', NULL, NULL, '2023-04-09 08:58:12', NULL),
(42, 517, NULL, 1, 'ly hung', '0373245418', 'kutngay113@gmail.com', 'loc binh', NULL, NULL, '2023-04-09 08:58:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_image`, `category_description`, `category_status`, `created_at`, `updated_at`) VALUES
(282, 'Smart phone', '609.jpg', 'No', 0, '2023-04-07 17:00:00', '2023-05-12 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_07_20_153924_create_products_table', 1),
(5, '2022_07_21_141209_create_categories_table', 1),
(6, '2022_07_21_141316_create_brands_table', 1),
(7, '2022_07_28_130446_create_users_table', 1),
(8, '2022_08_08_073522_create_carts_table', 1),
(9, '2022_09_10_123615_create_comments_table', 1);

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
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_brand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_status` int(11) NOT NULL DEFAULT 0,
  `product_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_brand_id`, `product_category_id`, `product_description`, `product_image`, `product_status`, `product_date`, `created_at`, `updated_at`) VALUES
(517, 'Xiaomi Redmi 10A', '13017962', '284', '282', 'Doloremque assumenda fuga quibusdam. Omnis consectetur natus ea totam aut quas illum iste. Deleniti a temporibus est reiciendis.', '123.jpg', 0, '2023-04-08', NULL, NULL),
(519, 'IPhone 14', '46717401', '290', '282', 'Ullam animi quae id laudantium autem quia est totam. Et consequatur in suscipit et totam tenetur aut. Nam sit dolorum est debitis. Libero velit facilis quia qui qui.', '986.jpg', 0, '2023-04-08', '2023-04-08 09:24:21', '2023-04-08 09:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `address`, `phone`, `position`, `created_at`, `updated_at`) VALUES
(1, 'hung', 'hung@123', '202cb962ac59075b964b07152d234b70', '123', '123', 0, NULL, NULL),
(2, 'a', 'hang@123', '202cb962ac59075b964b07152d234b70', '123', '123', 1, NULL, NULL),
(3, 'canti', 'anhdaywi@gmail.com', '202cb962ac59075b964b07152d234b70', 'lang son', '0373245418', 1, '2023-04-08 09:01:32', NULL),
(4, 'canti', 'anhdaywiaa@gmail.com', '202cb962ac59075b964b07152d234b70', 'lang son', '0373245418', 1, '2023-04-08 09:03:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=642;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
