-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 09, 2022 at 06:40 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `eshopping_centre`
--

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `alias`, `description`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'laptops', NULL, NULL, 1, '2022-07-08 04:12:24', '2022-07-08 04:12:24'),
(2, 'Mac OS', 'mac-os', NULL, 1, 1, '2022-07-08 04:12:24', '2022-07-08 04:13:35'),
(3, 'Linux OS', 'linus-os', NULL, 1, 1, '2022-07-08 04:13:15', '2022-07-08 04:13:35'),
(4, 'Windows OS', 'windows-os', NULL, 1, 1, '2022-07-08 04:13:15', '2022-07-08 04:13:35'),
(5, 'Accessories', 'accessories', NULL, NULL, 1, '2022-07-08 04:14:23', '2022-07-08 04:14:23'),
(6, 'Mouse', 'mouse', NULL, 5, 1, '2022-07-08 04:14:23', '2022-07-08 04:15:18'),
(7, 'Keyboard', 'keyboard', NULL, 5, 1, '2022-07-08 04:14:57', '2022-07-08 04:15:18'),
(8, 'Connector', 'connector', NULL, 5, 1, '2022-07-08 04:14:57', '2022-07-08 04:15:18');

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `short_description`, `full_description`, `is_active`, `in_stock`, `icon_image_url`, `base_price`, `discount_percentage`, `discount_amount`, `currency`, `created_at`, `updated_at`) VALUES
(3, 'Lenevo SG3467 laptop', 'lenevo-SG3467-laptop', 'Lenevo SG3467 laptops are one of the unique in design & performance', NULL, 1, 1, NULL, 750, NULL, NULL, 'SGD', '2022-07-08 04:20:35', '2022-07-08 04:23:36'),
(4, 'HP Mouse - 4598', 'hp-mouse-4598', NULL, 'HP Mouse - 4598 is one of its sleek design & lightweight device.', 1, 1, NULL, 35, NULL, NULL, 'SGD', '2022-07-08 04:20:35', '2022-07-08 04:23:36'),
(5, 'Apple Air - 10', 'apple-air-10', 'Apple air 10 laptops are one of the unique in design & performance', NULL, 1, 1, NULL, 950, NULL, NULL, 'SGD', '2022-07-08 04:22:33', '2022-07-08 04:23:36'),
(6, ' Apple Mouse Wireless - 231', 'apple-mouse-wireless', NULL, 'Apple Mouse - 231 is one of its sleek design & lightweight device.', 1, 1, NULL, 125, NULL, NULL, 'SGD', '2022-07-08 04:22:33', '2022-07-08 04:23:36');

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`) VALUES
(1, 5, 1, '2022-07-08 04:24:59'),
(2, 5, 2, '2022-07-08 04:24:59'),
(3, 6, 5, '2022-07-08 04:25:28'),
(4, 6, 6, '2022-07-08 04:25:28'),
(5, 4, 6, '2022-07-08 04:25:52'),
(6, 3, 4, '2022-07-08 04:25:52');


--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'laptops', 1, '2022-07-08 04:16:13', '2022-07-08 04:16:13'),
(2, 'mouse', 1, '2022-07-08 04:16:13', '2022-07-08 04:16:13'),
(3, 'mac', 1, '2022-07-08 04:16:28', '2022-07-08 04:16:28'),
(4, 'windows', 1, '2022-07-08 04:16:28', '2022-07-08 04:16:28'),
(5, 'linux', 1, '2022-07-08 04:16:48', '2022-07-08 04:16:48'),
(6, 'keyboards', 1, '2022-07-08 04:16:48', '2022-07-08 04:16:48'),
(7, 'connectors', 1, '2022-07-08 04:17:06', '2022-07-08 04:17:06'),
(8, 'pc', 1, '2022-07-08 04:17:06', '2022-07-08 04:17:06');

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`) VALUES
(1, 5, 1, '2022-07-08 04:26:16'),
(2, 5, 3, '2022-07-08 04:26:16'),
(3, 6, 3, '2022-07-08 04:26:30'),
(4, 6, 2, '2022-07-08 04:26:30'),
(5, 4, 2, '2022-07-08 04:26:55'),
(6, 3, 1, '2022-07-08 04:26:55'),
(7, 3, 4, '2022-07-08 04:27:06');
