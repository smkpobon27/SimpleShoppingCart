-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2017 at 07:34 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `addressline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `addressline`, `city`, `state`, `zip`, `country`, `phone`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'dsf', 'dsfsdf', 'fsdf', 334, 'sdfsf', 434, '2017-05-19 14:22:17', '2017-05-19 14:22:17', 2),
(2, 'dfdsf', 'dsfsdf', 'fsd', 323, 'dfsf', 3223, '2017-05-20 00:07:26', '2017-05-20 00:07:26', 2),
(3, 'dfdsf', 'dsfsdf', 'fsd', 323, 'dfsf', 3223, '2017-05-20 00:08:21', '2017-05-20 00:08:21', 2),
(4, 'cv', 'dsf', 'sdfs', 34, 'dsf', 342, '2017-05-20 00:09:20', '2017-05-20 00:09:20', 2),
(5, 'cv', 'dsf', 'sdfs', 34, 'dsf', 342, '2017-05-20 00:20:32', '2017-05-20 00:20:32', 2),
(6, 'cv', 'dsf', 'sdfs', 34, 'dsf', 342, '2017-05-20 00:28:36', '2017-05-20 00:28:36', 2),
(7, 'cv', 'dsf', 'sdfs', 34, 'dsf', 342, '2017-05-20 01:36:32', '2017-05-20 01:36:32', 2),
(8, 'dfsdf', 'sfsf', 'sdfsdf', 234, 'dfsdf', 3223, '2017-05-20 01:39:42', '2017-05-20 01:39:42', 2),
(9, 'dfsdf', 'sfsf', 'sdfsdf', 234, 'dfsdf', 3223, '2017-05-20 01:51:47', '2017-05-20 01:51:47', 2),
(10, 're', 'fgdg', 'gdfg', 3442, 'ffg', 234234, '2017-05-20 03:23:24', '2017-05-20 03:23:24', 2),
(11, 'dfsdf', 'sfsf', 'sfsf', 323, 'cvxv', 234242422, '2017-05-20 09:41:03', '2017-05-20 09:41:03', 2),
(12, 'fgdfg', 'fdgdg', 'fdgfg', 4545, 'fgfdg', 45464564, '2017-05-20 09:43:34', '2017-05-20 09:43:34', 2),
(13, 'fgdfg', 'fdgdg', 'dgdg', 4534, 'fgdfg', 345353, '2017-05-20 09:46:23', '2017-05-20 09:46:23', 2),
(14, 'dfsdf', 'sdfs', 'sdfsf', 34324, 'gdfg', 435345, '2017-05-20 09:47:54', '2017-05-20 09:47:54', 2),
(15, 'sdsdf', 'sdfsdf', 'sdfsdf', 3432, 'dgdfg', 43543, '2017-05-20 09:53:15', '2017-05-20 09:53:15', 2),
(16, 'sdfsd', 'sdfsdf', 'sdfdsf', 34232, 'dsfsf', 3234, '2017-05-20 09:56:34', '2017-05-20 09:56:34', 2),
(17, 'saasd', 'asda', 'asdad', 123123, 'sadad', 213123, '2017-05-20 09:59:38', '2017-05-20 09:59:38', 2),
(18, 'dsfsdf', 'sdfsf', 'sdfsf', 23423, 'sdfsf', 234234, '2017-05-20 10:09:48', '2017-05-20 10:09:48', 2),
(19, 'adasd', 'adad', 'asdad', 2312, 'sdadad', 21312, '2017-05-20 10:11:10', '2017-05-20 10:11:10', 2),
(20, 'sdsdf', 'sdfsf', 'sdfsff', 3242, 'dsdfsdf', 2323, '2017-05-20 10:12:39', '2017-05-20 10:12:39', 2),
(21, 'csdsd', 'dfsdf', 'sdfsf', 2323, 'dadasd', 21123, '2017-05-20 10:13:43', '2017-05-20 10:13:43', 2),
(22, 'sadsd', 'asdasd', 'adasd', 23123, 'dqwqd', 12313, '2017-05-20 10:14:54', '2017-05-20 10:14:54', 2),
(23, 'gggggggggg', 'gggggggggg', 'ggggggg', 4343, 'gggggggg', 344444, '2017-05-20 12:35:39', '2017-05-20 12:35:39', 1),
(24, 'ggggg', 'gggg', 'ggggg', 234, 'fff', 3444, '2017-07-14 10:59:30', '2017-07-14 10:59:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'man', NULL, NULL),
(2, 'women', NULL, NULL),
(3, 'child', '2017-05-19 08:25:26', '2017-05-19 08:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2017_05_17_154016_create_downloads_table', 1),
(9, '2017_05_18_210016_create_products_table', 1),
(10, '2017_05_18_210523_create_categories_table', 1),
(12, '2017_05_19_095704_add_price_to_product_table', 2),
(13, '2017_05_19_183626_add_admin_column_to_users', 3),
(14, '2017_05_19_200020_create_addresses_table', 4),
(15, '2017_05_19_200956_add_user_id_column_to_addresses', 5),
(16, '2017_05_20_145821_create_orders_table', 6),
(17, '2017_05_20_150454_create_order_product_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `delivered` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `delivered`, `created_at`, `updated_at`) VALUES
(1, 2, 56, 1, '2017-05-20 09:41:26', '2017-05-20 14:50:38'),
(2, 2, 56, 0, '2017-05-20 09:44:18', '2017-05-20 14:50:03'),
(3, 2, 28, 1, '2017-05-20 09:46:38', '2017-05-20 14:28:49'),
(4, 2, 28, 1, '2017-05-20 09:48:09', '2017-05-20 14:32:45'),
(5, 2, 28, 1, '2017-05-20 09:53:30', '2017-05-20 14:31:09'),
(6, 2, 28, 1, '2017-05-20 09:56:50', '2017-05-20 14:28:54'),
(7, 2, 28, 1, '2017-05-20 09:59:58', '2017-05-20 14:40:09'),
(8, 2, 28, 1, '2017-05-20 10:15:09', '2017-05-20 14:31:07'),
(9, 1, 237, 1, '2017-05-20 12:35:56', '2017-05-20 14:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `product_id`, `order_id`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(1, 6, 8, 1, 23.00, NULL, NULL),
(2, 6, 9, 2, 46.00, NULL, NULL),
(3, 8, 9, 3, 150.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `size`, `price`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(9, 'T shirt', 'Nice T-shirt', 'medium', '150', 'mc.jpg', 1, '2017-07-14 11:24:48', '2017-07-14 11:24:48'),
(10, 'Second T-Shirt', 'good', 'large', '133', 'shirt-102.jpg', 1, '2017-07-14 11:25:58', '2017-07-14 11:25:58'),
(11, 'Third T-shirt', 'Good shirt', 'small', '400', 'shirt-104.jpg', 2, '2017-07-14 11:27:12', '2017-07-14 11:27:12'),
(12, 'Fourth T-shirt', 'Nice shirt for woman', 'large', '200', 'shirt-105.jpg', 2, '2017-07-14 11:28:33', '2017-07-14 11:28:33'),
(13, 'Baby T-shirt', 'Nice shirt for baby', 'small', '300', 'shirt-108.jpg', 3, '2017-07-14 11:29:30', '2017-07-14 11:29:30'),
(14, 'Child T-shirt', 'T-shirt for child', 'small', '100', 'shirt-107.jpg', 3, '2017-07-14 11:30:08', '2017-07-14 11:30:08'),
(15, 'Man T-shirt', 'T-shirt for man', 'medium', '200', 'shirt-106.jpg', 1, '2017-07-14 11:31:37', '2017-07-14 11:31:37'),
(16, 'New T-shirt', 'Best T-shirt', 'large', '330', 'shirt-1011.jpg', 1, '2017-07-14 11:32:31', '2017-07-14 11:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'smkpobon', 'smk@gmail.com', '$2y$10$AZJLZi8M1QoLeHARzjeD9OnDEToOmOv7JXO7BbsFhTi1plI40usfu', 'XwcLofjh6SHnI8HKTqgROQK5zPkrzB2E5srHb0qglk9qkposvec0zJ2Pzns0', '2017-05-19 03:24:26', '2017-05-19 03:24:26', 1),
(2, 'karim', 's@gmail.com', '$2y$10$M2oiQrQ7zA.YfRE8/.hUmOpbsZVKCklkteu0lJVjUf3ZjKQhU6VqC', 'g12Gp0joPZVcmf6dNVzJBI8jTX8FjLychrW8OBhxgrOk5KxcubxmVW0Bit7A', '2017-05-19 12:55:30', '2017-05-19 12:55:30', NULL),
(3, 'smk Pobon', 'smkpobonru@gmail.com', '$2y$10$7V2ymrZpPQQ389bb3HICPO0MOSP33Ei5vj/jCcRZ5zKdXvB/JIRyO', NULL, '2017-05-20 14:22:19', '2017-05-20 14:22:19', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
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
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
