-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 02 2024 г., 22:23
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Dmitro`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int UNSIGNED NOT NULL DEFAULT '0',
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `email_verified`, `role`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 1, '1', NULL, '$2y$10$mTTdHZgnCbv52BgorKt0DetxslmmkdyPsbkaVKtHLbAfljgbTZttG', NULL, '2024-04-30 22:49:16', '2024-04-30 22:49:16'),
(3, 'names', 'super_admin', 'admins@gmail.com', 1, '1', NULL, '$2y$10$aHW5w3mtG8WsmL6YY.gtKOVnffAt9YkS4WqffydJKYBHk7e8ukqHe', 'E7P2nfW9kYyi1aCYVsb7iHQ9wjdC785NH29T2PfM4v9nwQ09U5k7QsLrRZBL', '2024-04-30 22:56:21', '2024-04-30 22:56:21');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `permission`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '', '2020-05-15 10:00:00', '2020-07-27 10:41:15'),
(2, 'Editor', '', '2020-05-16 00:34:16', '2020-07-27 10:42:52'),
(3, 'Admin', '', '2020-05-16 00:34:29', '2020-07-27 10:44:24');

-- --------------------------------------------------------

--
-- Структура таблицы `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_categories_id` int UNSIGNED NOT NULL,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_meta_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `blog_content`, `blog_categories_id`, `tags`, `image`, `meta_tags`, `meta_description`, `user_id`, `excerpt`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `slug`, `author`, `status`, `meta_title`, `created_at`, `updated_at`) VALUES
(1, 'New organization are added seal there', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 1, 'common,business', '167', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'new-organization-are-continually-added-and-seal-there-single', 'Sharifur', 'publish', NULL, '2020-06-09 03:28:08', '2021-07-11 20:09:11'),
(5, 'Was drawing natural fat respect husband', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 2, 'common,business', '166', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'was-drawing-natural-fat-respect-husband', 'Sharifur', 'publish', NULL, '2020-06-12 15:43:38', '2021-07-11 19:45:31'),
(6, 'In mr began music weeks after at begin', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 2, 'common,business', '164', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'in-mr-began-music-weeks-after-at-begin', 'Sharifur', 'publish', NULL, '2020-06-12 15:44:09', '2021-07-11 20:08:29'),
(7, 'Travelling every thing her eat  simply', '<p style=\"text-align: justify; \">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify; \">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 3, 'common,business', '163', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'travelling-everything-her-eat-reasonable-decisively-simplicity', 'Sharifur', 'publish', NULL, '2020-06-12 18:17:30', '2021-07-11 20:10:48'),
(15, 'These tried for way joy wrote witty', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 2, 'common,business', '172', 'meta tag', 'meta description', '7', 'Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing', NULL, NULL, NULL, 'these-tried-for-way-joy-wrote-witty', 'Sharifur', 'publish', NULL, '2020-07-27 16:44:27', '2022-02-27 17:09:52');

-- --------------------------------------------------------

--
-- Структура таблицы `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Startup Business', 'publish', '2020-06-09 02:29:04', '2020-06-09 02:29:04'),
(2, 'Ecommerce', 'publish', '2020-06-09 02:29:20', '2020-06-09 02:29:20'),
(3, 'Digital Marketing', 'publish', '2020-06-09 02:29:27', '2020-06-09 02:29:27');

-- --------------------------------------------------------

--
-- Структура таблицы `causes`
--

CREATE TABLE `causes` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_update_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cause_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `raised` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `faq` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deadline` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_gallery` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_meta_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `medical_document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emmergency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gift_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthly_donation_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `causes`
--

INSERT INTO `causes` (`id`, `cause_update_id`, `title`, `cause_content`, `amount`, `raised`, `status`, `image`, `meta_tags`, `meta_title`, `meta_description`, `slug`, `user_id`, `created_at`, `created_by`, `admin_id`, `faq`, `deadline`, `image_gallery`, `featured`, `categories_id`, `excerpt`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `updated_at`, `medical_document`, `emmergency`, `reward`, `gift_status`, `monthly_donation_status`) VALUES
(49, NULL, 'Допомога безпритульним тваринам', '<p><span style=\"color: rgb(236, 236, 236); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(33, 33, 33);\">Подаруйте їм надію на краще життя!</span><br></p>', '1000000', NULL, 'publish', '317', NULL, NULL, NULL, '2', 2, '2024-05-01 10:56:16', 'user', NULL, 'a:2:{s:5:\"title\";a:1:{i:0;s:4:\"test\";}s:11:\"description\";a:1:{i:0;s:4:\"test\";}}', '2024-05-26', NULL, NULL, 4, 'я', NULL, NULL, NULL, '2024-05-02 16:08:04', NULL, NULL, NULL, NULL, NULL),
(50, NULL, 'Фонд допомоги безпритульним тваринам', '<p>Допомога нашим меншим друзям</p>', '10000000', NULL, 'publish', '315', NULL, NULL, NULL, '2-3', 2, '2024-05-01 13:34:10', 'user', NULL, 'a:2:{s:5:\"title\";a:1:{i:0;s:4:\"test\";}s:11:\"description\";a:1:{i:0;s:4:\"test\";}}', '2024-05-30', NULL, NULL, 4, NULL, NULL, NULL, NULL, '2024-05-02 16:05:08', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cause_categories`
--

CREATE TABLE `cause_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cause_categories`
--

INSERT INTO `cause_categories` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Treatment', 'Simplicity affronting inquietude for now sympathize age. She meant could defer child. An lose at quit to life do dull.', '139', 'publish', '2021-02-20 22:38:20', '2021-06-22 16:09:52'),
(3, 'Emergency', 'Simplicity affronting inquietude for now sympathize age. She meant could defer child. An lose at quit to life do dull.', '145', 'publish', '2021-02-20 23:06:56', '2021-02-21 13:06:09'),
(4, 'Nonprofit', 'Simplicity affronting inquietude for now sympathize age. She meant could defer child. An lose at quit to life do dull.', '133', 'publish', '2021-02-20 23:08:08', '2021-02-21 13:06:02'),
(5, 'Financial Emergency', 'Simplicity affronting inquietude for now sympathize age. She meant could defer child. An lose at quit to life do dull.', '135', 'publish', '2021-02-20 23:08:48', '2021-02-21 13:05:55'),
(6, 'Environment', 'Simplicity affronting inquietude for now sympathize age. She meant  could defer child. An lose at quit to life do dull.', '140', 'publish', '2021-02-20 23:09:19', '2021-02-21 13:05:10'),
(8, 'Medical', 'Simplicity affronting inquietude for now sympathize age. She meant could defer child. An lose at quit to life do dull.', '133', 'publish', '2021-02-20 23:49:51', '2021-06-22 16:09:36');

-- --------------------------------------------------------

--
-- Структура таблицы `cause_gift`
--

CREATE TABLE `cause_gift` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_id` bigint NOT NULL,
  `gift_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cause_logs`
--

CREATE TABLE `cause_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `donation_withdraw_id` int DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_charge` int DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anonymous` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manual_payment_attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward_point` int DEFAULT NULL,
  `reward_amount` int DEFAULT NULL,
  `gift_id` bigint DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recuring_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recuring_token_verify` tinyint(1) NOT NULL DEFAULT '0',
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `added_in_raised_amount` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cause_updates`
--

CREATE TABLE `cause_updates` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `client_areas`
--

CREATE TABLE `client_areas` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `commented_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contact_info_items`
--

CREATE TABLE `contact_info_items` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `counterups`
--

CREATE TABLE `counterups` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `counterups`
--

INSERT INTO `counterups` (`id`, `icon`, `number`, `title`, `extra_text`, `created_at`, `updated_at`) VALUES
(1, 'flaticon-solidarity-1', '15700', 'Made Happy', '+', '2020-07-20 09:43:54', '2021-09-14 00:23:28'),
(2, 'flaticon-man', '2050', 'Total Volunteer', '+', '2020-07-20 09:46:28', '2021-09-14 00:23:24'),
(3, 'flaticon-location', '2050', 'Awards Won', '+', '2020-07-20 09:46:51', '2021-09-14 00:23:19'),
(4, 'flaticon-donation-2', '50000', 'Donation Completed', '+', '2020-07-20 09:47:58', '2021-09-14 00:23:15');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(229, 'United Kingdom', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(230, 'Україна', 'publish', '2022-08-13 06:46:21', '2024-05-02 04:47:14'),
(232, 'United States of America', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21');

-- --------------------------------------------------------

--
-- Структура таблицы `donation_withdraws`
--

CREATE TABLE `donation_withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `donation_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `payment_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_request_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_account_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_comment_by_user` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `additional_comment_by_admin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_receipt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_tickets` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `venue_location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `venue_phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `category_id`, `status`, `date`, `time`, `cost`, `available_tickets`, `image`, `organizer`, `organizer_email`, `organizer_website`, `organizer_phone`, `venue`, `slug`, `venue_location`, `venue_phone`, `meta_tags`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Brother set had private his outward resolve', '<p style=\"text-align: justify;\">Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p style=\"text-align: justify;\">Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p style=\"text-align: justify;\">Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law agebrother sending amongst why covered. Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p style=\"text-align: justify;\">Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p style=\"text-align: justify;\">Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use. Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '1', 'publish', '2022-12-14', '10:00AM - 12:00PM', '250', '247', '160', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'brother-set-had-private-his-letters-observe-outward-resolve', 'Dhaka,Bangladesh', NULL, NULL, NULL, NULL, '2020-07-20 15:58:56', '2023-01-18 09:38:57'),
(5, 'Now led tedious shy lasting females off.', '<p style=\"text-align: justify;\">Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p style=\"text-align: justify;\">Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p style=\"text-align: justify;\">Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law agebrother sending amongst why covered. Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p style=\"text-align: justify;\">Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p style=\"text-align: justify;\">Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use. Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '2', 'publish', '2022-11-25', '10:00AM - 12:00PM', '80', '-9865', '159', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'now-led-tedious-shy-lasting-females-off', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, NULL, '2020-07-20 16:55:23', '2023-01-08 05:40:14'),
(6, 'Consulted perpetual of pronounce me delivered', '<p style=\"text-align: justify;\">Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p style=\"text-align: justify;\">Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p style=\"text-align: justify;\">Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law agebrother sending amongst why covered. Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p style=\"text-align: justify;\">Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p style=\"text-align: justify;\">Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use. Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '2', 'publish', '2022-11-16', '10:00AM - 12:00PM', '152', '131', '158', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'consulted-perpetual-of-pronounce-me-delivered', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, NULL, '2020-07-20 17:08:41', '2023-01-27 17:18:55'),
(7, 'Lose away off why half led have near bed', '<p style=\"text-align: justify; \">Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p style=\"text-align: justify; \">Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p style=\"text-align: justify; \">Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law agebrother sending amongst why covered. Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p style=\"text-align: justify; \">Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p style=\"text-align: justify; \">Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use. Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '3', 'publish', '2023-03-24', '10:00AM - 12:00PM', '70', '90', '157', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'lose-away-off-why-half-led-have-near-bed', '4144 Lincoln Drive Chambersburg, PA 17201', '654165030', 'ddsfdsf,sadfadsf', NULL, 'asdfadsf', '2020-07-20 17:18:45', '2023-03-11 08:33:52');

-- --------------------------------------------------------

--
-- Структура таблицы `events_categories`
--

CREATE TABLE `events_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `events_categories`
--

INSERT INTO `events_categories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Celebration', 'publish', '2020-07-20 15:34:00', '2020-07-20 15:34:00'),
(2, 'Meetup', 'publish', '2020-07-20 15:34:06', '2020-07-20 15:34:06'),
(3, 'Seminar', 'publish', '2020-07-20 15:34:12', '2020-07-20 15:34:12'),
(8, 'Reunion', 'publish', '2020-07-20 15:35:23', '2021-06-21 14:46:28');

-- --------------------------------------------------------

--
-- Структура таблицы `event_attendances`
--

CREATE TABLE `event_attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `event_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `event_cost` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `event_payment_logs`
--

CREATE TABLE `event_payment_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_cost` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `track` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manual_payment_attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_open` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `status`, `is_open`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dashwood marianne in of entrance be on wondered', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:50:22', '2020-07-20 20:50:22'),
(2, 'Wondered sociable he carriage in speedily', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:50:27', '2020-07-20 20:51:40'),
(3, 'Not attention say frankness intention out dashwoods', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:50:30', '2020-07-20 20:52:14'),
(4, 'Stronger ecstatic as no judgment daughter speedily', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:52:18', '2020-07-20 20:52:41'),
(5, 'Worse downs nor might she court did nay forth', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:52:22', '2021-06-17 15:03:03');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratings` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `flag_reports`
--

CREATE TABLE `flag_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `gifts`
--

CREATE TABLE `gifts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `gifts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `delivery_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint NOT NULL,
  `creator_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `header_sliders`
--

CREATE TABLE `header_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `btn_01_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `header_sliders`
--

INSERT INTO `header_sliders` (`id`, `title`, `subtitle`, `description`, `btn_01_status`, `btn_01_text`, `btn_01_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Kindness & Humanity', 'Donate, Fundraise & Volunteer', 'Discourse unwilling am no described dejection incommode no listening before nature his parish boy.', 'on', 'Latest Cause', '#', '131', '2020-05-31 04:20:26', '2021-01-16 12:03:08'),
(5, 'Kindness & humanity', 'Donate, Fundraise & Volunteer', 'Discourse unwilling am no described dejection incommode no listening of. Before nature his parish boy.', 'on', 'Latest Cause', '#', '130', '2020-05-31 04:24:40', '2021-01-16 12:07:36');

-- --------------------------------------------------------

--
-- Структура таблицы `image_galleries`
--

CREATE TABLE `image_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `image_galleries`
--

INSERT INTO `image_galleries` (`id`, `image`, `title`, `created_at`, `updated_at`, `cat_id`) VALUES
(1, '172', 'Can curiosity may end shameless explained', '2020-07-20 11:07:35', '2021-03-03 17:16:51', 2),
(2, '168', 'True high on said mr on come', '2020-07-20 11:09:23', '2021-03-03 17:28:52', 3),
(3, '169', 'An do mr design at little myself', '2020-07-20 11:09:47', '2021-03-03 17:28:40', 2),
(4, '170', 'Attended of on stronger or mr pleasure', '2020-07-20 11:11:20', '2021-03-03 17:28:29', 2),
(5, '171', 'Rich four like real yet west get.', '2020-07-20 11:11:37', '2021-03-03 17:28:16', 1),
(9, '172', 'Before nature his parish boy', '2020-12-04 15:44:00', '2021-03-03 17:28:07', 3),
(16, '173', 'Virtually Build Your House In {color} Few Steps  {/color}', '2021-03-03 18:41:13', '2021-06-08 13:48:38', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `image_gallery_categories`
--

CREATE TABLE `image_gallery_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `image_gallery_categories`
--

INSERT INTO `image_gallery_categories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Education', 'publish', '2020-12-04 13:29:47', '2021-03-03 18:49:45'),
(2, 'Medicine', 'publish', '2020-12-04 13:44:20', '2021-03-03 18:49:30'),
(3, 'Food', 'publish', '2020-12-04 13:44:25', '2021-03-03 18:49:21'),
(13, 'House', 'publish', '2021-06-08 14:18:35', '2021-06-08 14:18:35');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibility` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employment_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `education_requirement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `job_context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `experience_requirement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `additional_requirement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `job_location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `salary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other_benefits` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `application_fee` decimal(10,0) DEFAULT NULL,
  `application_fee_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `position`, `company_name`, `category_id`, `vacancy`, `job_responsibility`, `employment_status`, `education_requirement`, `job_context`, `experience_requirement`, `additional_requirement`, `job_location`, `salary`, `other_benefits`, `email`, `status`, `deadline`, `meta_tags`, `slug`, `meta_description`, `application_fee`, `application_fee_status`, `created_at`, `updated_at`) VALUES
(1, 'Junior WordPress Developer', 'Junior Developer', 'xgenious', '8', '6', 'We are looking for some experienced developers with fluency in WordPress who will be able to develop code for complex, data intensive Website and e-commerce application.', 'full_time', 'Preferably B.Sc. in Computer Science or similar discipline.', 'We`re building tomorrow`s platforms for consolidating and managing Enterprise data with process optimization. Most enterprises are adopting automation whether it`s about office or industry. The flexibility to automate the processes, without compromising security and compliance, will be one of the most challenging, yet key requirements in coming days. This is where SoftoPark comes into the picture.\r\nWe`re looking for someone with a portfolio that showcases relevant, high quality web development work. You`ll have strong mathematical and problem-solving capabilities, an eye for detail, and a desire to produce high quality, clean and efficient code.', 'At least 5 year(s)', 'Both males and females are allowed to apply\r\nMust have clear concept on OOP\r\nProven work experience in developing large scale enterprise WordPress applications\r\nMust have experience on complex plugin, widget, theme development\r\nMust have knowledge on upgradation policy, performance, security of WordPress\r\nExperience in MySQL, jQuery, and at least one PHP-based MVC framework is required\r\nExperience in one or more PHP-based content management systems Magento or any other eCommerce is a plus point\r\nExperience in different kind of service and gateway integration will be highly regarded\r\nExperience in version control (git, svn etc) is expected\r\nShould be team player, self-motivated and take responsibility proactively', 'Bangkok, Thailand', 'Negotiable', '2 annual performance bonuses\r\nHealth and life insurance\r\nBreakfast, Lunch, Snacks\r\n2 days of weekend and annual paid leaves\r\nPublic holidays\r\nPicnic/Tour\r\nTransport', NULL, 'publish', '2023-04-06', NULL, 'junior-wordpress-developer', NULL, NULL, NULL, '2020-07-20 19:19:22', '2022-07-04 03:31:33'),
(2, 'Senior Laravel Developer', 'Junior Developer', 'xgenious', '2', '6', 'We are looking for some experienced developers with fluency in WordPress who will be able to develop code for complex, data intensive Website and e-commerce application.', 'full_time', 'Preferably B.Sc. in Computer Science or similar discipline.', 'We`re building tomorrow`s platforms for consolidating and managing Enterprise data with process optimization. Most enterprises are adopting automation whether it`s about office or industry. The flexibility to automate the processes, without compromising security and compliance, will be one of the most challenging, yet key requirements in coming days. This is where SoftoPark comes into the picture.\r\nWe`re looking for someone with a portfolio that showcases relevant, high quality web development work. You`ll have strong mathematical and problem-solving capabilities, an eye for detail, and a desire to produce high quality, clean and efficient code.', 'At least 5 year(s)', 'Both males and females are allowed to apply\r\nMust have clear concept on OOP\r\nProven work experience in developing large scale enterprise WordPress applications\r\nMust have experience on complex plugin, widget, theme development\r\nMust have knowledge on upgradation policy, performance, security of WordPress\r\nExperience in MySQL, jQuery, and at least one PHP-based MVC framework is required\r\nExperience in one or more PHP-based content management systems Magento or any other eCommerce is a plus point\r\nExperience in different kind of service and gateway integration will be highly regarded\r\nExperience in version control (git, svn etc) is expected\r\nShould be team player, self-motivated and take responsibility proactively', 'Bangkok, Thailand', 'Negotiable', '2 annual performance bonuses\r\nHealth and life insurance\r\nBreakfast, Lunch, Snacks\r\n2 days of weekend and annual paid leaves\r\nPublic holidays\r\nPicnic/Tour\r\nTransport', NULL, 'publish', '2022-11-15', NULL, 'senior-laravel-developer', NULL, '80', 'on', '2020-07-20 19:22:07', '2021-09-18 01:13:32'),
(3, 'Graphic Designer', 'Junior Designer', 'xgenious', '3', '8', '<ul><li>Able to Design Logos, Banners, Brochure, PSD, Layout, Booklet relevant editing/retouching and digital marketing/media related works.\r\n</li><li>Innovative and skilled in design development including effective use of color, dimension, style, font size, and composition.\r\n</li><li>Must be expert in Adobe Photoshop, Adobe Illustrator, After Effects, Adobe In Design, Adobe Premiere Pro, Adobe Dreamweaver, PowerPoint and other related design/editing software.\r\n</li><li>Perform technical duties for designing and developing multimedia-based layouts, graphics, animation, video, online tutorials and other digital marketing related productions.\r\n</li><li>Understanding client\'s business problem, brand space, target audience and the overall creative strategy.\r\n</li><li>Maintaining the highest standards in graphic design and producing cutting-edge creative content for both digital marketing and social media marketing that accurately represents the expectations of the client.\r\n</li><li>Any other task assigned by management.</li></ul>', 'part_time', 'Diploma in Graphics Design or equivalent', 'Place of work : Head office, Dhanmondi R/A, Dhaka\r\nDuty : Saturday to Thursday - Time 9:30 AM to 6:00 PM', 'At least 3 year(s)', '<ul><li>Age 20 to 35 years</li><li>\r\nBoth males and females are allowed to apply\r\n</li><li>Ready to work in a team and in line with the Management instruction as and when required.\r\n</li><li>Troubleshoot, test, and analyze ideas to provide the creative solution.\r\n</li><li>Eye for typography, composition, layout, color, high-quality production with pixel-level attention to detail.\r\n</li><li>Experience with content management platforms.\r\n</li><li>Strong interpersonal and professional skills.\r\n</li><li>A deep sense of developing a BRAND with international standard.</li></ul>', 'Bangkok, Thailand', 'Negotiable', '<ul><li>Mobile bill\r\nSalary </li><li>Review: Yearly\r\n</li><li>Festival Bonus: 2\r\n</li><li>Lunch Facilities</li></ul>', NULL, 'publish', '2022-11-24', NULL, 'graphic-designer', NULL, '150', 'on', '2020-07-20 19:22:11', '2022-02-09 06:35:53'),
(4, 'Sr. Executive (Accounts)', 'Junior Accounts', 'xgenious', '1', '6', 'Ensures the integrity of accounting information by recording, verifying, consolidating, and entering transactions.\r\nPrepares and records asset, liability, revenue, and expenses entries by compiling and analyzing account information.\r\nMaintains and balances subsidiary accounts by verifying, allocating, posting, and reconciling transactions and resolving discrepancies.\r\nMaintains general ledger by transferring subsidiary accounts, preparing a trial balance, and reconciling entries.Overall responsible for Accounts & Finance.\r\nExecute the financial strategy of the company\r\nManage financial controls and accounting procedures\r\nEnsure full transparency over the financial performance of the company\r\nSummarizes financial status by collecting information and preparing balance sheet, profit and loss, and other statements.\r\nProduces payroll by initiating computer processing; printing checks, verifying finished product.\r\nCompletes external audit by analyzing and scheduling general ledger accounts and providing information for auditors.\r\nAvoids legal challenges by complying with legal requirements.\r\nSecures financial information by completing database backups.\r\nProtects organization\'s value by keeping information confidential.To carry out any other assignment given by the company or immediate superior.\r\nSubmit a report on monthly basis about the sales, production and stock.\r\nMonitoring of all the necessary paperwork by all departments.\r\nResponsible for overall Accounts & Finance related mater in plant.\r\nOthers task assign by the departmental head / management.', 'project_based', 'Master of Business Administration (MBA) in Accounting\r\nSkills Required: Accounting and Finance', 'Kishoreganj Eye Hospital operated by a non-government organization named Nari Uddug Kendra (NUK) is well established and reputed modern eye hospital which is working for eradicating the avoidable blindness from Bangladesh and as well as to meet up the VISION-2020 goal of WHO. Kishoreganj Eye Hospital here noticed to recruit for the Post of Senior Accounts Officer as full-time basis.', 'At least 3 year(s)\r\nThe applicants should have experience in the following area(s):\r\nAccountant\r\nThe applicants should have experience in the following business area(s):\r\nReal Estate', 'Age 28 to 35 years\r\nBoth males and females are allowed to apply\r\nGood Command in Excel and Word.\r\nApplicant must have work experience & sound working capacity on Tally Software.\r\nMinimum 3-5 years\' experience in accounting/finance\r\nExperience with financial reporting requirements\r\nHave mentality to work in stress & long hours.\r\nGood computer knowledge must be required (with tally software).', 'Bangkok, Thailand', 'Negotiable', 'According to Company Policy', NULL, 'publish', '2023-04-22', NULL, 'sr-executive-accounts', NULL, NULL, 'on', '2020-07-20 19:22:14', '2022-07-04 03:31:00'),
(5, 'Mobile Application Developer', 'Junior Accounts', 'xgenious', '7', '6', 'İşlemleri kaydederek, doğrulayarak, birleştirerek ve girerek muhasebe bilgilerinin bütünlüğünü sağlar.\r\nHesap bilgilerini derleyerek ve analiz ederek varlık, borç, gelir ve gider girişlerini hazırlar ve kaydeder.\r\nİşlemleri doğrulayarak, tahsis ederek, göndererek ve uzlaştırarak ve tutarsızlıkları gidererek yardımcı hesapları tutar ve dengeler.\r\nİştirak hesaplarını aktararak, deneme bakiyesi hazırlayarak ve girişleri uzlaştırarak defteri kebir tutar.\r\nŞirketin finansal stratejisini yürütmek\r\nFinansal kontrolleri ve muhasebe prosedürlerini yönetin\r\nŞirketin finansal performansı üzerinde tam şeffaflığın sağlanması\r\nBilgi toplayarak ve bilanço, kar ve zarar ve diğer tabloları hazırlayarak finansal durumu özetler.\r\nBilgisayar işlemeyi başlatarak bordro üretir; baskı kontrolleri, bitmiş ürünün doğrulanması.\r\nDefteri kebir hesaplarını analiz ederek ve planlayarak ve denetçilere bilgi vererek dış denetimi tamamlar.\r\nYasal gerekliliklere uyarak yasal zorluklardan kaçınır.\r\nVeritabanı yedeklerini tamamlayarak finansal bilgileri korur.\r\nBilgileri gizli tutarak kuruluşun değerini korur. Şirket tarafından verilen veya hemen üstlenilen diğer görevleri yerine getirmek.\r\nSatış, üretim ve stok hakkında aylık bazda bir rapor gönderin.\r\nGerekli tüm evrakların tüm bölümler tarafından izlenmesi.\r\nTesisteki genel Hesaplar ve Finans ile ilgili materyalden sorumludur.\r\nDiğerleri bölüm başkanı / yönetimi tarafından görevlendirilir.', 'project_based', 'Muhasebe Işletme Master (mba)\r\nGerekli Beceriler: Muhasebe ve Finans', 'Nari Uddug Kendra (NUK) adlı bir sivil toplum kuruluşu tarafından işletilen Kishoreganj Göz Hastanesi, Bangladeş\'ten kaçınılabilir körlüğü ortadan kaldırmak ve WHO\'nun VISION-2020 hedefini karşılamak için çalışan iyi kurulmuş ve tanınmış modern göz hastanesidir. Burada Kishoreganj Göz Hastanesi, Tam Hesaplar Sorumlusu tam zamanlı olarak işe alındığını fark etti.', 'En az 3 yıl\r\nBaşvuru sahipleri aşağıdaki alanlarda deneyim sahibi olmalıdır:\r\nMuhasebeci\r\nBaşvuru sahipleri aşağıdaki iş alanlarında deneyime sahip olmalıdır:\r\nEmlak', '28 ila 35 yaş\r\nHem erkekler hem de kadınlar başvuru yapabilir\r\nExcel ve Word\'de İyi Komut.\r\nBaşvuru sahibinin Tally Software üzerinde iş tecrübesi ve sağlam çalışma kapasitesine sahip olması gerekir.\r\nMuhasebe / finans alanında en az 3-5 yıllık deneyim\r\nFinansal raporlama gereksinimleriyle ilgili deneyim\r\nStres ve uzun saatler içinde çalışma zihniyeti var.\r\nİyi bilgisayar bilgisi gerekir (taksitli yazılım ile).', 'Bangkok, Thailand', 'tartışılabilir', 'Şirket Politikasına Göre', NULL, 'publish', '2022-12-09', NULL, 'mobile-application-developer', NULL, '150', 'on', '2020-07-20 19:38:26', '2022-07-04 03:30:41');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs_categories`
--

CREATE TABLE `jobs_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `jobs_categories`
--

INSERT INTO `jobs_categories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Office Management', 'publish', '2020-07-20 18:41:57', '2020-07-20 18:41:57'),
(2, 'React Developer', 'publish', '2020-07-20 18:42:11', '2021-06-21 13:50:50'),
(3, 'UI/ UX  Designer', 'publish', '2020-07-20 18:42:18', '2020-07-20 18:42:18'),
(5, 'Software Engineering', 'publish', '2020-07-20 18:46:49', '2021-06-21 13:50:19'),
(6, 'Web Design', 'publish', '2020-07-20 18:47:10', '2021-06-21 13:35:51'),
(7, 'Web Application', 'publish', '2020-07-20 18:47:26', '2021-06-21 13:35:27'),
(8, 'Mobile App', 'publish', '2020-07-20 18:47:39', '2021-06-21 13:35:38'),
(9, 'IOS Development', 'publish', '2020-07-20 18:47:52', '2021-06-21 13:50:34');

-- --------------------------------------------------------

--
-- Структура таблицы `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` bigint UNSIGNED NOT NULL,
  `jobs_id` int UNSIGNED NOT NULL,
  `form_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `track` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_fee` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `key_features`
--

CREATE TABLE `key_features` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `key_features`
--

INSERT INTO `key_features` (`id`, `title`, `icon`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Provide all kind of it service', 'flaticon-network', 'en', '2020-05-31 18:20:07', '2020-05-31 18:20:07'),
(2, 'Solutions for all security', 'flaticon-safe', 'en', '2020-05-31 20:02:07', '2020-05-31 20:02:07'),
(3, 'Most expert peoples', 'flaticon-group', 'en', '2020-05-31 20:02:35', '2020-05-31 20:02:35'),
(4, 'Global support for all', 'flaticon-translate', 'en', '2020-05-31 20:12:16', '2020-05-31 20:12:16'),
(5, 'Apoyo global para todos', 'flaticon-translate', 'sp', '2020-05-31 20:13:20', '2020-05-31 20:13:20'),
(6, 'الدعم العالمي للجميع', 'flaticon-translate', 'ar', '2020-05-31 20:14:00', '2020-05-31 20:14:00'),
(7, 'Herkes için küresel destek', 'flaticon-translate', 'tur', '2020-05-31 20:14:18', '2020-05-31 20:14:18'),
(8, 'En uzman insanlar', 'flaticon-group', 'tur', '2020-05-31 20:19:02', '2020-05-31 20:19:02'),
(9, 'معظم الشعوب الخبيرة', 'flaticon-group', 'ar', '2020-05-31 20:19:32', '2020-05-31 20:19:32'),
(10, 'Pueblos más expertos', 'flaticon-group', 'sp', '2020-05-31 20:20:03', '2020-05-31 20:20:03'),
(11, 'Soluciones para toda seguridad', 'flaticon-safe', 'sp', '2020-05-31 20:23:29', '2020-05-31 20:23:29'),
(12, 'حلول لجميع الأمن', 'flaticon-safe', 'ar', '2020-05-31 20:23:45', '2020-05-31 20:23:45'),
(13, 'Tüm güvenlik için çözümler', 'flaticon-safe', 'tur', '2020-05-31 20:24:00', '2020-05-31 20:24:00'),
(14, 'Her türlü hizmeti sunun', 'flaticon-network', 'tur', '2020-05-31 20:24:28', '2020-05-31 20:24:28'),
(15, 'تقديم جميع أنواع الخدمات', 'flaticon-network', 'ar', '2020-05-31 20:24:41', '2020-05-31 20:24:41'),
(16, 'Proporcionar todo tipo de servicio', 'flaticon-network', 'sp', '2020-05-31 20:24:54', '2020-05-31 20:24:54');

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'English (UK)',
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `name`, `slug`, `direction`, `status`, `default`, `created_at`, `updated_at`) VALUES
(1, 'English (UK)', 'en_GB', 'ltr', 'publish', 0, '2021-06-26 20:31:44', '2024-05-01 08:15:00'),
(2, 'Українська', 'uk', 'ltr', 'publish', 1, '2024-05-01 08:14:44', '2024-05-01 08:15:00');

-- --------------------------------------------------------

--
-- Структура таблицы `media_uploads`
--

CREATE TABLE `media_uploads` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dimensions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `media_uploads`
--

INSERT INTO `media_uploads` (`id`, `title`, `path`, `alt`, `size`, `dimensions`, `user_id`, `created_at`, `updated_at`) VALUES
(125, 'favicon.ico', 'favicon1610606498.ico', NULL, '3.72 KB', '84 x 80 pixels', NULL, '2021-01-14 11:41:38', '2021-01-14 11:41:38'),
(126, 'logo-02.png', 'logo-021610606790.png', NULL, '2.38 KB', '165 x 36 pixels', NULL, '2021-01-14 11:46:30', '2021-01-14 11:46:30'),
(127, 'logo-03.png', 'logo-031610606791.png', NULL, '2.41 KB', '97 x 69 pixels', NULL, '2021-01-14 11:46:31', '2021-01-14 11:46:31'),
(128, 'logo.png', 'logo1610606792.png', NULL, '2.39 KB', '165 x 36 pixels', NULL, '2021-01-14 11:46:32', '2021-01-14 11:46:32'),
(129, '01.jpg', '011610606797.jpg', NULL, '627.63 KB', '1920 x 649 pixels', NULL, '2021-01-14 11:46:37', '2021-01-14 11:46:37'),
(130, '01-min.jpg', '01-min1610780469.jpg', NULL, '383.47 KB', '1920 x 980 pixels', NULL, '2021-01-16 12:01:12', '2021-01-16 12:01:12'),
(131, '02-min.jpg', '02-min1610780484.jpg', NULL, '201.46 KB', '1920 x 980 pixels', NULL, '2021-01-16 12:01:26', '2021-01-16 12:01:26'),
(132, '03-min.jpg', '03-min1610780485.jpg', NULL, '254.11 KB', '1920 x 980 pixels', NULL, '2021-01-16 12:01:26', '2021-01-16 12:01:26'),
(133, '01.jpg', '011613476739.jpg', 'fundorex- crowdfunding', '149.03 KB', '555 x 410 pixels', NULL, '2021-02-16 16:58:59', '2021-02-16 16:59:24'),
(134, 'help-1265227_1920-min.jpg', 'help-1265227-1920-min1613798558.jpg', NULL, '485.82 KB', '1920 x 1279 pixels', NULL, '2021-02-20 10:22:40', '2021-02-20 10:22:40'),
(135, 'pexels-marcus-aurelius-6787761-min.jpg', 'pexels-marcus-aurelius-6787761-min1613803296.jpg', NULL, '317.86 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:41:37', '2021-02-20 11:41:37'),
(136, 'pexels-roman-carey-734658-min.jpg', 'pexels-roman-carey-734658-min1613803322.jpg', NULL, '351.07 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:42:03', '2021-02-20 11:42:03'),
(137, 'pexels-suraphat-nueaon-933622-min.jpg', 'pexels-suraphat-nueaon-933622-min1613803347.jpg', NULL, '502.39 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:42:28', '2021-02-20 11:42:28'),
(138, 'pexels-puwadon-sangngern-5340266-min.jpg', 'pexels-puwadon-sangngern-5340266-min1613803382.jpg', NULL, '258.73 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:43:04', '2021-02-20 11:43:04'),
(139, 'pexels-rodnae-productions-6646875-min.jpg', 'pexels-rodnae-productions-6646875-min1613803411.jpg', NULL, '282.27 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:43:32', '2021-02-20 11:43:32'),
(140, 'pexels-dazzle-jam-1125850-min.jpg', 'pexels-dazzle-jam-1125850-min1613803995.jpg', NULL, '302.54 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:53:16', '2021-02-20 11:53:16'),
(141, 'pexels-hitesh-choudhary-1739842-min.jpg', 'pexels-hitesh-choudhary-1739842-min1613804035.jpg', NULL, '352.03 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:53:57', '2021-02-20 11:53:57'),
(142, 'pexels-sergio-omassi-1058068-min.jpg', 'pexels-sergio-omassi-1058068-min1613804051.jpg', NULL, '402.39 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:54:13', '2021-02-20 11:54:13'),
(143, 'pexels-jimmy-chan-2045648-min.jpg', 'pexels-jimmy-chan-2045648-min1613804081.jpg', NULL, '411.5 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:54:43', '2021-02-20 11:54:43'),
(144, 'pexels-yogendra-singh-2320004.jpg', 'pexels-yogendra-singh-23200041613804096.jpg', NULL, '429.34 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:54:57', '2021-02-20 11:54:57'),
(145, 'pexels-james-frid-901931-min.jpg', 'pexels-james-frid-901931-min1613804115.jpg', NULL, '311.23 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:55:17', '2021-02-20 11:55:17'),
(146, 'pexels-zhang-kaiyv-3603455-min.jpg', 'pexels-zhang-kaiyv-3603455-min1613804134.jpg', NULL, '399 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:55:36', '2021-02-20 11:55:36'),
(147, 'pexels-yogendra-singh-2324637-min.jpg', 'pexels-yogendra-singh-2324637-min1613804155.jpg', NULL, '431.94 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:55:56', '2021-02-20 11:55:56'),
(148, '01.png', '011613925443.png', NULL, '13.97 KB', '651 x 255 pixels', NULL, '2021-02-21 21:37:23', '2021-02-21 21:37:23'),
(149, '04-min.jpg', '04-min1613925523.jpg', NULL, '266.2 KB', '1920 x 709 pixels', NULL, '2021-02-21 21:38:44', '2021-02-21 21:38:44'),
(150, '01-min.jpg', '01-min1613986746.jpg', NULL, '21.33 KB', '263 x 340 pixels', NULL, '2021-02-22 14:39:06', '2021-02-22 14:39:06'),
(151, '02-min.jpg', '02-min1613986752.jpg', NULL, '17.61 KB', '263 x 340 pixels', NULL, '2021-02-22 14:39:13', '2021-02-22 14:39:13'),
(152, '03-min.jpg', '03-min1613986758.jpg', NULL, '12.33 KB', '263 x 340 pixels', NULL, '2021-02-22 14:39:18', '2021-02-22 14:39:18'),
(153, '04-min (1).jpg', '04-min-11613986762.jpg', NULL, '21.84 KB', '263 x 340 pixels', NULL, '2021-02-22 14:39:22', '2021-02-22 14:39:22'),
(154, '01.png', '011614000707.png', NULL, '13.39 KB', '70 x 70 pixels', NULL, '2021-02-22 18:31:48', '2021-02-22 18:31:48'),
(155, '02.png', '021614000707.png', NULL, '7.96 KB', '70 x 70 pixels', NULL, '2021-02-22 18:31:48', '2021-02-22 18:31:48'),
(156, '03.png', '031614000708.png', NULL, '12.39 KB', '70 x 70 pixels', NULL, '2021-02-22 18:31:48', '2021-02-22 18:31:48'),
(157, 'pexels-zen-chung-5528986-min.jpg', 'pexels-zen-chung-5528986-min1614100245.jpg', NULL, '379.88 KB', '1920 x 1280 pixels', NULL, '2021-02-23 22:10:51', '2021-02-23 22:10:51'),
(158, 'pexels-cottonbro-6157226-min.jpg', 'pexels-cottonbro-6157226-min1614100847.jpg', NULL, '301.67 KB', '1920 x 1280 pixels', NULL, '2021-02-23 22:20:48', '2021-02-23 22:20:48'),
(159, 'pexels-denniz-futalan-1344275-min.jpg', 'pexels-denniz-futalan-1344275-min1614101248.jpg', NULL, '690.86 KB', '1920 x 1279 pixels', NULL, '2021-02-23 22:27:29', '2021-02-23 22:27:29'),
(160, 'pexels-plato-terentev-5909876-min.jpg', 'pexels-plato-terentev-5909876-min1614101301.jpg', NULL, '787.49 KB', '1920 x 1280 pixels', NULL, '2021-02-23 22:28:22', '2021-02-23 22:28:22'),
(161, 'pexels-parij-borgohain-1667240-min.jpg', 'pexels-parij-borgohain-1667240-min1614101382.jpg', NULL, '616.87 KB', '1920 x 1242 pixels', NULL, '2021-02-23 22:29:44', '2021-02-23 22:29:44'),
(162, 'pexels-yogendra-singh-1438461-min.jpg', 'pexels-yogendra-singh-1438461-min1614101384.jpg', NULL, '523.19 KB', '1920 x 1280 pixels', NULL, '2021-02-23 22:29:46', '2021-02-23 22:29:46'),
(163, 'pexels-karolina-grabowska-4750270-min.jpg', 'pexels-karolina-grabowska-4750270-min1614257377.jpg', NULL, '403.92 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:49:39', '2021-02-25 17:49:39'),
(164, 'pexels-yogendra-singh-3930111-min.jpg', 'pexels-yogendra-singh-3930111-min1614257412.jpg', NULL, '259.95 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:50:13', '2021-02-25 17:50:13'),
(165, 'pexels-leonardo-cardozo-galves-1830433-min.jpg', 'pexels-leonardo-cardozo-galves-1830433-min1614257434.jpg', NULL, '349.3 KB', '1920 x 1279 pixels', NULL, '2021-02-25 17:50:37', '2021-02-25 17:50:37'),
(166, 'pexels-luis-quintero-2014775-min.jpg', 'pexels-luis-quintero-2014775-min1614257453.jpg', NULL, '239.5 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:50:54', '2021-02-25 17:50:54'),
(167, 'pexels-andrea-piacquadio-3791664-min.jpg', 'pexels-andrea-piacquadio-3791664-min1614257478.jpg', NULL, '282.62 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:51:19', '2021-02-25 17:51:19'),
(168, 'pexels-marius-venter-1659437-min.jpg', 'pexels-marius-venter-1659437-min1614257528.jpg', NULL, '565.07 KB', '1920 x 1281 pixels', NULL, '2021-02-25 17:52:10', '2021-02-25 17:52:10'),
(169, 'pexels-tú-nguyễn-1545590-min.jpg', 'pexels-tu-nguyen-1545590-min1614257567.jpg', NULL, '353.5 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:52:48', '2021-02-25 17:52:48'),
(170, 'pexels-andrea-piacquadio-3768131-min.jpg', 'pexels-andrea-piacquadio-3768131-min1614257583.jpg', NULL, '316.33 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:53:06', '2021-02-25 17:53:06'),
(171, 'pexels-cottonbro-6157226 (1)-min.jpg', 'pexels-cottonbro-6157226-1-min1614257602.jpg', NULL, '301.67 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:53:24', '2021-02-25 17:53:24'),
(172, 'pexels-keira-burton-6147207-min.jpg', 'pexels-keira-burton-6147207-min1614257627.jpg', NULL, '314.47 KB', '1920 x 1226 pixels', NULL, '2021-02-25 17:53:48', '2021-02-25 17:53:48'),
(173, 'x-genious-logo-fb-pro.png', 'x-genious-logo-fb-pro1614273913.png', NULL, '150.18 KB', '1000 x 1000 pixels', NULL, '2021-02-25 22:25:13', '2021-02-25 22:25:13'),
(174, '02.jpg', '021614446235.jpg', NULL, '112.64 KB', '357 x 536 pixels', NULL, '2021-02-27 22:17:15', '2021-02-27 22:17:15'),
(175, '03.jpg', '031614447426.jpg', NULL, '39.62 KB', '360 x 207 pixels', NULL, '2021-02-27 22:37:06', '2021-02-27 22:37:06'),
(176, 'bg-min.jpg', 'bg-min1614512964.jpg', NULL, '267.81 KB', '1138 x 1155 pixels', NULL, '2021-02-28 16:49:25', '2021-02-28 16:49:25'),
(179, '04-min.png', '04-min1614664748.png', NULL, '321.38 KB', '944 x 676 pixels', NULL, '2021-03-02 10:59:09', '2021-03-02 10:59:09'),
(180, 'bg.jpg', 'bg1614700521.jpg', NULL, '176.43 KB', '555 x 485 pixels', NULL, '2021-03-02 20:55:21', '2021-03-02 20:55:21'),
(181, 'download.jpeg', 'download1615321224.jpeg', NULL, '10.05 KB', '277 x 182 pixels', NULL, '2021-03-10 01:20:24', '2021-03-10 01:20:24'),
(182, 'paypal.png', 'paypal1615321225.png', NULL, '5.54 KB', '361 x 140 pixels', NULL, '2021-03-10 01:20:25', '2021-03-10 01:20:25'),
(183, 'paytm-logo-630x336.jpeg', 'paytm-logo-630x3361615321747.jpeg', NULL, '18.17 KB', '630 x 336 pixels', NULL, '2021-03-10 01:29:08', '2021-03-10 01:29:08'),
(184, 'stripe.png', 'stripe1615321788.png', NULL, '3.28 KB', '318 x 159 pixels', NULL, '2021-03-10 01:29:48', '2021-03-10 01:29:48'),
(185, '216-2164303_razorpay-logo-png.png', '216-2164303-razorpay-logo-png1615321852.png', NULL, '20.27 KB', '900 x 230 pixels', NULL, '2021-03-10 01:30:52', '2021-03-10 01:30:52'),
(186, 'paystack.png', 'paystack1615321887.png', NULL, '2.86 KB', '301 x 167 pixels', NULL, '2021-03-10 01:31:27', '2021-03-10 01:31:27'),
(187, 'mollie.png', 'mollie1615321921.png', NULL, '2.11 KB', '301 x 167 pixels', NULL, '2021-03-10 01:32:01', '2021-03-10 01:32:01'),
(188, 'flutterwave-logo-vector.png', 'flutterwave-logo-vector1615321957.png', NULL, '4.51 KB', '900 x 500 pixels', NULL, '2021-03-10 01:32:37', '2021-03-10 01:32:37'),
(189, '79412a34ea6a84ad988a7141aa7299be.jpeg', '79412a34ea6a84ad988a7141aa7299be1615322824.jpeg', NULL, '9.91 KB', '580 x 386 pixels', NULL, '2021-03-10 01:47:05', '2021-03-10 01:47:05'),
(190, '01-min1599286982.jpg', '01-min15992869821623736111.jpg', NULL, '201.4 KB', '1280 x 1000 pixels', NULL, '2021-06-15 09:48:31', '2021-06-15 09:48:31'),
(191, 'bg.png', 'bg1624256716.png', NULL, '39.6 KB', '556 x 276 pixels', NULL, '2021-06-21 10:25:16', '2021-06-21 10:25:16'),
(192, '01.png', '011626158728.png', NULL, '737.83 KB', '1920 x 1001 pixels', NULL, '2021-07-13 10:45:29', '2021-07-13 10:45:29'),
(193, 'Group 9381.png', 'group-93811626161188.png', NULL, '6.65 KB', '80 x 80 pixels', NULL, '2021-07-13 11:26:28', '2021-07-13 11:26:28'),
(194, 'desktop responds 1.jpeg', 'desktop-responds-11626161235.jpeg', NULL, '111.08 KB', '1586 x 620 pixels', NULL, '2021-07-13 11:27:16', '2021-07-13 11:27:16'),
(195, 'cta-bg-min.jpg', 'cta-bg-min1626161299.jpg', NULL, '168.99 KB', '1920 x 807 pixels', 1, '2021-07-13 11:28:20', '2021-07-13 11:28:20'),
(196, 'pexels-rodnae-productions-6646917.jpg', 'pexels-rodnae-productions-66469171626164055.jpg', NULL, '416.14 KB', '1920 x 1280 pixels', 1, '2021-07-13 12:14:16', '2021-07-13 12:14:16'),
(197, 'header-bg-min.jpg', 'header-bg-min1627064076.jpg', NULL, '225.12 KB', '1920 x 1243 pixels', 1, '2021-07-23 22:14:37', '2021-07-23 22:14:37'),
(198, 'pexels-mart-production-8106261.jpg', 'pexels-mart-production-81062611627279410.jpg', NULL, '409.25 KB', '1920 x 1280 pixels', 1, '2021-07-26 10:03:31', '2021-07-26 10:03:31'),
(199, 'pexels-spencer-selover-775358.jpg', 'pexels-spencer-selover-7753581627279748.jpg', NULL, '43.56 KB', '500 x 500 pixels', 1, '2021-07-26 10:09:08', '2021-07-26 10:09:08'),
(200, 'section-line-shape.png', 'section-line-shape1631522107.png', NULL, '1.69 KB', '182 x 107 pixels', NULL, '2021-09-13 02:35:07', '2021-09-13 02:35:07'),
(201, 'banner.jpg', 'banner1631522125.jpg', NULL, '1.15 MB', '1920 x 802 pixels', NULL, '2021-09-13 02:35:26', '2021-09-13 02:35:26'),
(202, '02.png', '021631615402.png', NULL, '2.76 KB', '151 x 29 pixels', NULL, '2021-09-14 04:30:02', '2021-09-14 04:30:02'),
(203, '01.png', '011631615402.png', NULL, '2.61 KB', '151 x 41 pixels', NULL, '2021-09-14 04:30:02', '2021-09-14 04:30:02'),
(204, '03.png', '031631615403.png', NULL, '2.14 KB', '151 x 35 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(205, '04.png', '041631615403.png', NULL, '2.21 KB', '151 x 17 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(206, 'client1.png', 'client11631615403.png', NULL, '2.72 KB', '179 x 31 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(207, 'client2.png', 'client21631615403.png', NULL, '4.97 KB', '179 x 72 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(208, 'client3.png', 'client31631615403.png', NULL, '4.57 KB', '177 x 71 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(209, 'client4.png', 'client41631615403.png', NULL, '4.16 KB', '179 x 60 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(210, 'client5.png', 'client51631615404.png', NULL, '3.89 KB', '116 x 60 pixels', NULL, '2021-09-14 04:30:04', '2021-09-14 04:30:04'),
(211, '01.jpg', '011631688911.jpg', NULL, '36.13 KB', '262 x 276 pixels', NULL, '2021-09-15 00:55:11', '2021-09-15 00:55:11'),
(212, 'events.jpg', 'events1631688921.jpg', NULL, '139.08 KB', '520 x 597 pixels', NULL, '2021-09-15 00:55:21', '2021-09-15 00:55:21'),
(213, '01.jpg', '011632045738.jpg', NULL, '34.59 KB', '295 x 204 pixels', 4, '2021-09-19 04:02:18', '2021-09-19 04:02:18'),
(214, '02.jpg', '021632045746.jpg', NULL, '30.65 KB', '295 x 204 pixels', 4, '2021-09-19 04:02:26', '2021-09-19 04:02:26'),
(215, '03.jpg', '031632045746.jpg', NULL, '39.29 KB', '295 x 204 pixels', 4, '2021-09-19 04:02:27', '2022-02-28 17:57:02'),
(216, '03.jpg', '031632045786.jpg', NULL, '29.8 KB', '262 x 276 pixels', 4, '2021-09-19 04:03:06', '2021-09-19 04:03:06'),
(217, 'events.jpg', 'events1632045786.jpg', NULL, '139.08 KB', '520 x 597 pixels', 4, '2021-09-19 04:03:06', '2021-09-19 04:03:06'),
(218, 'banner-bg-sh.jpg', 'banner-bg-sh1632222343.jpg', NULL, '220.53 KB', '1761 x 839 pixels', NULL, '2021-09-21 05:05:44', '2021-09-21 05:05:44'),
(219, 'banner-bg-sh2.jpg', 'banner-bg-sh21632222544.jpg', NULL, '699.83 KB', '1761 x 839 pixels', NULL, '2021-09-21 05:09:04', '2021-09-21 05:09:04'),
(220, 'PayFast-Press-Release-Image-01.jpg', 'payfast-press-release-image-011632313432.jpg', NULL, '102.44 KB', '2500 x 1250 pixels', NULL, '2021-09-22 06:23:53', '2021-09-22 06:23:53'),
(221, 'instamogo.jpg', 'instamogo1644059032.jpg', NULL, '26.18 KB', '1200 x 675 pixels', NULL, '2022-02-05 05:03:52', '2022-02-05 05:03:52'),
(222, 'cash free.png', 'cash-free1644059032.png', NULL, '152.51 KB', '1200 x 630 pixels', NULL, '2022-02-05 05:03:52', '2022-02-05 05:03:52'),
(223, 'Mercadopago-logo.png', 'mercadopago-logo1644059033.png', NULL, '17.66 KB', '1280 x 334 pixels', NULL, '2022-02-05 05:03:53', '2022-02-05 05:03:53'),
(224, 'mid.png', 'mid1644059033.png', NULL, '15.14 KB', '1514 x 250 pixels', NULL, '2022-02-05 05:03:53', '2022-02-05 05:03:53'),
(225, 'payfast-banner.jpg', 'payfast-banner1644059033.jpg', NULL, '26.74 KB', '960 x 450 pixels', NULL, '2022-02-05 05:03:53', '2022-02-05 05:03:53'),
(226, '02.jpg', '021644477529.jpg', NULL, '51.58 KB', '350 x 250 pixels', 1, '2022-02-10 01:18:49', '2022-02-10 01:18:49'),
(227, '01.jpg', '011644477529.jpg', NULL, '55.02 KB', '350 x 250 pixels', 1, '2022-02-10 01:18:49', '2022-02-10 01:18:49'),
(228, '03.jpg', '031644477530.jpg', NULL, '28.64 KB', '350 x 250 pixels', 1, '2022-02-10 01:18:50', '2022-02-10 01:18:50'),
(229, '563281ce79f36784620c206b58cad98b.jpg', '563281ce79f36784620c206b58cad98b1644751320.jpg', NULL, '26.7 KB', '580 x 399 pixels', 2, '2022-02-13 05:22:00', '2022-02-13 05:22:00'),
(230, 'reward2.png', 'reward21645014322.png', NULL, '2.27 KB', '79 x 80 pixels', NULL, '2022-02-16 06:25:22', '2022-02-16 06:25:22'),
(231, 'bank-logo.png', 'bank-logo1645016001.png', NULL, '11.66 KB', '900 x 834 pixels', NULL, '2022-02-16 06:53:21', '2022-02-16 06:53:21'),
(232, 'Capture.PNG', 'capture1646067360.PNG', NULL, '62.8 KB', '1127 x 702 pixels', NULL, '2022-02-28 21:56:00', '2022-02-28 21:56:00'),
(233, 'wallpapersden.com_programmer-eat-sleep-code-and-repeat_1360x768.jpg', 'wallpapersdencom-programmer-eat-sleep-code-and-repeat-1360x7681652961170.jpg', NULL, '54.13 KB', '1360 x 768 pixels', 5, '2022-05-19 05:52:51', '2022-05-19 05:52:51'),
(234, 'HcKx0K1.png', 'hckx0k11652963850.png', NULL, '19.99 KB', '1920 x 1080 pixels', 5, '2022-05-19 06:37:30', '2022-05-19 06:37:30'),
(235, 'mensgift-1643655939.jpeg', 'mensgift-16436559391656500107.jpg', NULL, '26.19 KB', '640 x 637 pixels', NULL, '2022-06-29 04:55:07', '2022-06-29 04:55:07'),
(236, '1637353388-il-1588xn-2930569201-ju77-1637358844.jpeg', '1637353388-il-1588xn-2930569201-ju77-16373588441656500107.jpg', NULL, '72.77 KB', '640 x 640 pixels', NULL, '2022-06-29 04:55:07', '2022-06-29 04:55:07'),
(237, 'gift.jpeg', 'gift1656500107.jpg', NULL, '619.6 KB', '1000 x 731 pixels', NULL, '2022-06-29 04:55:07', '2022-06-29 04:55:07'),
(238, '100_Homemade_Gifts_hero-4ae166376b9748098fe29d06f3ba3e22.jpeg', '100-homemade-gifts-hero-4ae166376b9748098fe29d06f3ba3e221656500427.jpg', NULL, '403.27 KB', '2667 x 2000 pixels', NULL, '2022-06-29 05:00:28', '2022-06-29 05:00:28'),
(239, 'getty_168325476_349217.jpeg', 'getty-168325476-3492171656504813.jpg', NULL, '142.14 KB', '1920 x 1080 pixels', NULL, '2022-06-29 06:13:33', '2022-06-29 06:13:33'),
(240, 'sqaure.png', 'sqaure1656825943.png', NULL, '4.66 KB', '960 x 420 pixels', NULL, '2022-07-02 23:25:43', '2022-07-02 23:25:43'),
(241, 'cinetpay.jpeg', 'cinetpay1656851559.jpg', NULL, '9.03 KB', '400 x 400 pixels', NULL, '2022-07-03 06:32:39', '2022-07-03 06:32:39'),
(242, '5-56308_paytabs-logo-hd-png-download.png', '5-56308-paytabs-logo-hd-png-download1656855752.png', NULL, '33.77 KB', '860 x 303 pixels', NULL, '2022-07-03 07:42:32', '2022-07-03 07:42:32'),
(246, 'Billplz_thumb-2-99836043ed965d1f3af4a57334081197930dee64358d485902ff067f041d837d.png', 'billplz-thumb-2-99836043ed965d1f3af4a57334081197930dee64358d485902ff067f041d837d1656931126.png', NULL, '2.19 KB', '637 x 397 pixels', NULL, '2022-07-04 04:38:46', '2022-07-04 04:38:46'),
(247, 'logo_facebook_dimension-912ae2521fe6b786a8c78a5cd1a7dfb31434c628a7d03f4377cbeb4707d6e305 (2).png', 'logo-facebook-dimension-912ae2521fe6b786a8c78a5cd1a7dfb31434c628a7d03f4377cbeb4707d6e305-21656931202.png', NULL, '15.13 KB', '1200 x 630 pixels', NULL, '2022-07-04 04:40:03', '2022-07-04 04:40:03'),
(248, 'zitopay_wallet.png', 'zitopay-wallet1658992526.png', NULL, '11.87 KB', '1024 x 512 pixels', NULL, '2022-07-28 01:15:26', '2022-07-28 01:15:26'),
(249, '76729750.jpg', '767297501660659499.jpg', NULL, '17.06 KB', '720 x 540 pixels', 42, '2022-08-16 08:18:19', '2022-08-16 08:18:19'),
(250, '2560px-Flag_of_Malaysia.svg.png', '2560px-flag-of-malaysiasvg1661256915.png', NULL, '52.63 KB', '2560 x 1280 pixels', 42, '2022-08-23 06:15:16', '2022-08-23 06:15:16'),
(251, '76729750.jpg', '767297501661257081.jpg', NULL, '17.06 KB', '720 x 540 pixels', NULL, '2022-08-23 06:18:01', '2022-08-23 06:18:01'),
(252, '76729750.jpg', '767297501661257147.jpg', NULL, '17.06 KB', '720 x 540 pixels', NULL, '2022-08-23 06:19:07', '2022-08-23 06:19:07'),
(253, '563281ce79f36784620c206b58cad98b.jpg', '563281ce79f36784620c206b58cad98b1661257166.jpg', NULL, '26.7 KB', '580 x 399 pixels', NULL, '2022-08-23 06:19:26', '2022-08-23 06:19:26'),
(254, 'unnamed.png', 'unnamed1661257264.png', NULL, '193.61 KB', '512 x 288 pixels', NULL, '2022-08-23 06:21:04', '2022-08-23 06:21:04'),
(255, 'logo_facebook_dimension-912ae2521fe6b786a8c78a5cd1a7dfb31434c628a7d03f4377cbeb4707d6e305.png', 'logo-facebook-dimension-912ae2521fe6b786a8c78a5cd1a7dfb31434c628a7d03f4377cbeb4707d6e3051661403234.png', NULL, '15.13 KB', '1200 x 630 pixels', 45, '2022-08-24 22:53:54', '2022-08-24 22:53:54'),
(256, 'large-stripe1615321788.png', 'large-stripe16153217881661404483.png', NULL, '148.64 KB', '740 x 370 pixels', 45, '2022-08-24 23:14:43', '2022-08-24 23:14:43'),
(257, 'windows-11-windows-10-minimalism-hd-wallpaper-preview.jpg', 'windows-11-windows-10-minimalism-hd-wallpaper-preview1661405565.jpg', NULL, '8.33 KB', '728 x 410 pixels', 45, '2022-08-24 23:32:45', '2022-08-24 23:32:45'),
(258, 'photo-1524169358666-79f22534bc6e.jpg', 'photo-1524169358666-79f22534bc6e1661405565.jpg', NULL, '78.3 KB', '1170 x 780 pixels', 45, '2022-08-24 23:32:45', '2022-08-24 23:32:45'),
(259, 'wp6878829.jpg', 'wp68788291661405565.jpg', NULL, '82.62 KB', '1920 x 1080 pixels', 45, '2022-08-24 23:32:46', '2022-08-24 23:32:46'),
(262, '2 10-min.png', '2-10-min1663063201.png', NULL, '240.18 KB', '1180 x 608 pixels', NULL, '2022-09-13 04:00:01', '2022-09-13 04:00:01'),
(263, 'Group 10161-min.png', 'group-10161-min1663063201.png', NULL, '91.92 KB', '1180 x 608 pixels', NULL, '2022-09-13 04:00:02', '2022-09-13 04:00:02'),
(264, 'image_picker4730549018919352406.jpg.jpg', 'image-picker4730549018919352406jpg1663068510.jpg', NULL, '28.7 KB', '1440 x 1920 pixels', NULL, '2022-09-13 05:28:31', '2022-09-13 05:28:31'),
(265, 'image_picker3024212594129501074.jpg.jpg', 'image-picker3024212594129501074jpg1663131008.jpg', NULL, '28.7 KB', '1440 x 1920 pixels', NULL, '2022-09-13 22:50:09', '2022-09-13 22:50:09'),
(266, 'image_picker3155203735134320326.jpg.jpg', 'image-picker3155203735134320326jpg1663224270.jpg', NULL, '331.4 KB', '997 x 998 pixels', NULL, '2022-09-15 00:44:30', '2022-09-15 00:44:30'),
(267, 'image_picker5413867539451101234.jpg.jpg', 'image-picker5413867539451101234jpg1663605868.jpg', NULL, '160.93 KB', '1177 x 1177 pixels', NULL, '2022-09-19 10:44:28', '2022-09-19 10:44:28'),
(268, 'image_picker4794841742065507700.gif.jpg', 'image-picker4794841742065507700gif1665210359.jpg', NULL, '139.71 KB', '500 x 500 pixels', NULL, '2022-10-08 00:25:59', '2022-10-08 00:25:59'),
(269, 'wp6878829.jpg', 'wp68788291665904486.jpg', NULL, '82.62 KB', '1920 x 1080 pixels', NULL, '2022-10-16 01:14:47', '2022-10-16 01:14:47'),
(270, 'logo1610606792.png', 'logo16106067921665922160.png', NULL, '2.39 KB', '165 x 36 pixels', NULL, '2022-10-16 06:09:20', '2022-10-16 06:09:20'),
(271, 'image_picker3567665590696691082.jpg.jpg', 'image-picker3567665590696691082jpg1666302990.jpg', NULL, '37.53 KB', '1080 x 1080 pixels', NULL, '2022-10-20 15:56:30', '2022-10-20 15:56:30'),
(272, 'b.jpg', 'b1666508452.jpg', NULL, '23.44 KB', '509 x 340 pixels', NULL, '2022-10-23 01:00:53', '2022-10-23 01:00:53'),
(273, 'image_picker192071863839178519.jpg.jpg', 'image-picker192071863839178519jpg1666519691.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-23 04:08:12', '2022-10-23 04:08:12'),
(274, 'image_picker5900898155856405956.jpg.jpg', 'image-picker5900898155856405956jpg1666519853.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-23 04:10:53', '2022-10-23 04:10:53'),
(275, 'image_picker3402839167066934435.jpg.jpg', 'image-picker3402839167066934435jpg1666520437.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-23 04:20:37', '2022-10-23 04:20:37'),
(276, 'image_picker5715877075314481903.jpg.jpg', 'image-picker5715877075314481903jpg1666521240.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-23 04:34:00', '2022-10-23 04:34:00'),
(277, 'image_picker4059868848891581711.jpg.jpg', 'image-picker4059868848891581711jpg1666591964.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-24 00:12:44', '2022-10-24 00:12:44'),
(278, 'image_picker413997008057914121.jpg.jpg', 'image-picker413997008057914121jpg1666612797.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-24 05:59:57', '2022-10-24 05:59:57'),
(279, 'image_picker7304813972262133812.png.jpg', 'image-picker7304813972262133812png1666617806.jpg', NULL, '41.74 KB', '724 x 418 pixels', NULL, '2022-10-24 07:23:26', '2022-10-24 07:23:26'),
(280, 'image_picker7304813972262133812.png.jpg', 'image-picker7304813972262133812png1666617832.jpg', NULL, '41.74 KB', '724 x 418 pixels', NULL, '2022-10-24 07:23:53', '2022-10-24 07:23:53'),
(281, 'image_picker7304813972262133812.png.jpg', 'image-picker7304813972262133812png1666617957.jpg', NULL, '41.74 KB', '724 x 418 pixels', NULL, '2022-10-24 07:25:57', '2022-10-24 07:25:57'),
(282, 'image_picker6567530994992437894.png.jpg', 'image-picker6567530994992437894png1666618334.jpg', NULL, '51.13 KB', '480 x 800 pixels', NULL, '2022-10-24 07:32:14', '2022-10-24 07:32:14'),
(283, 'image_picker35265922489442126.jpg.jpg', 'image-picker35265922489442126jpg1666677846.jpg', NULL, '221.69 KB', '1080 x 2340 pixels', NULL, '2022-10-25 00:04:07', '2022-10-25 00:04:07'),
(284, 'image_picker6507255276220334139.jpg.jpg', 'image-picker6507255276220334139jpg1666678137.jpg', NULL, '237.11 KB', '1080 x 2340 pixels', NULL, '2022-10-25 00:08:58', '2022-10-25 00:08:58'),
(285, 'image_picker7294766275265866200.jpg.jpg', 'image-picker7294766275265866200jpg1669046267.jpg', NULL, '139.12 KB', '1280 x 720 pixels', NULL, '2022-11-21 09:57:48', '2022-11-21 09:57:48'),
(286, 'image_picker6610365988631238102.jpg.jpg', 'image-picker6610365988631238102jpg1670782796.jpg', NULL, '147.58 KB', '1235 x 1600 pixels', NULL, '2022-12-11 12:19:56', '2022-12-11 12:19:56'),
(287, 'image_picker4666609393252482228.png.jpg', 'image-picker4666609393252482228png1670925207.jpg', NULL, '737.54 KB', '720 x 960 pixels', NULL, '2022-12-13 03:53:28', '2022-12-13 03:53:28'),
(288, 'image_picker5250093683353271756.jpg.jpg', 'image-picker5250093683353271756jpg1671218733.jpg', NULL, '4.35 MB', '3000 x 4000 pixels', NULL, '2022-12-16 13:25:36', '2022-12-16 13:25:36'),
(289, 'image_picker8248805854858008470.jpg.jpg', 'image-picker8248805854858008470jpg1671872603.jpg', NULL, '164.91 KB', '705 x 710 pixels', NULL, '2022-12-24 03:03:23', '2022-12-24 03:03:23'),
(290, 'image_picker6104769783063904298.jpg.jpg', 'image-picker6104769783063904298jpg1672292567.jpg', NULL, '66.46 KB', '497 x 816 pixels', NULL, '2022-12-28 23:42:47', '2022-12-28 23:42:47'),
(291, 'image_picker5287484499993697067.png.jpg', 'image-picker5287484499993697067png1673238180.jpg', NULL, '404.72 KB', '512 x 512 pixels', NULL, '2023-01-08 22:23:00', '2023-01-08 22:23:00'),
(292, 'image_picker4276084351288719891.jpg.jpg', 'image-picker4276084351288719891jpg1674907693.jpg', NULL, '368 KB', '2048 x 1496 pixels', NULL, '2023-01-28 06:08:13', '2023-01-28 06:08:13'),
(293, 'image_picker5965727540191624232.jpg.jpg', 'image-picker5965727540191624232jpg1675766194.jpg', NULL, '571.96 KB', '720 x 1560 pixels', NULL, '2023-02-07 04:36:34', '2023-02-07 04:36:34'),
(294, 'image_picker239339324902548436.jpg.jpg', 'image-picker239339324902548436jpg1676790023.jpg', NULL, '89.21 KB', '1200 x 1600 pixels', NULL, '2023-02-19 01:00:24', '2023-02-19 01:00:24'),
(295, 'image_picker1987169811769017900.png.jpg', 'image-picker1987169811769017900png1676886777.jpg', NULL, '93.53 KB', '453 x 640 pixels', NULL, '2023-02-20 03:52:58', '2023-02-20 03:52:58'),
(296, 'image_picker7845694267725791450.jpg.jpg', 'image-picker7845694267725791450jpg1677512417.jpg', NULL, '56.34 KB', '960 x 960 pixels', NULL, '2023-02-27 09:40:17', '2023-02-27 09:40:17'),
(297, 'image_picker826373823290419049.jpg.jpg', 'image-picker826373823290419049jpg1678200684.jpg', NULL, '338.98 KB', '4000 x 4000 pixels', NULL, '2023-03-07 08:51:27', '2023-03-07 08:51:27'),
(298, 'image_picker3498743790263297290.jpg.jpg', 'image-picker3498743790263297290jpg1678528719.jpg', NULL, '196.32 KB', '1000 x 1000 pixels', NULL, '2023-03-11 03:58:39', '2023-03-11 03:58:39'),
(299, 'image_picker703004764141444409.jpg.jpg', 'image-picker703004764141444409jpg1678535630.jpg', NULL, '290.39 KB', '1024 x 1280 pixels', NULL, '2023-03-11 05:53:50', '2023-03-11 05:53:50'),
(300, 'image_picker5378081106289042708.jpg.jpg', 'image-picker5378081106289042708jpg1678690554.jpg', NULL, '392.14 KB', '2084 x 2084 pixels', NULL, '2023-03-13 00:55:56', '2023-03-13 00:55:56'),
(301, 'image_picker3445529370155180350.jpg.jpg', 'image-picker3445529370155180350jpg1678716538.jpg', NULL, '103.21 KB', '768 x 1024 pixels', NULL, '2023-03-13 08:08:59', '2023-03-13 08:08:59'),
(302, 'image_picker6196177990869949706.jpg.jpg', 'image-picker6196177990869949706jpg1679497477.jpg', NULL, '98.72 KB', '1080 x 813 pixels', NULL, '2023-03-22 09:04:38', '2023-03-22 09:04:38'),
(303, 'image_picker5614209908246641424.jpg.jpg', 'image-picker5614209908246641424jpg1679497590.jpg', NULL, '98.72 KB', '1080 x 813 pixels', NULL, '2023-03-22 09:06:30', '2023-03-22 09:06:30'),
(304, 'image_picker2844313522881247331.jpg.jpg', 'image-picker2844313522881247331jpg1680099049.jpg', NULL, '765.45 KB', '720 x 1560 pixels', NULL, '2023-03-29 08:10:49', '2023-03-29 08:10:49'),
(305, 'image_picker8719904887086171621.png.jpg', 'image-picker8719904887086171621png1680859631.jpg', NULL, '6.66 KB', '512 x 512 pixels', NULL, '2023-04-07 03:27:11', '2023-04-07 03:27:11'),
(306, 'image_picker1038194914780128869.jpg.jpg', 'image-picker1038194914780128869jpg1681208568.jpg', NULL, '172.6 KB', '1440 x 1798 pixels', NULL, '2023-04-11 04:22:49', '2023-04-11 04:22:49'),
(307, 'image_picker5319875017884250711.jpg.jpg', 'image-picker5319875017884250711jpg1681569774.jpg', NULL, '38.49 KB', '768 x 512 pixels', NULL, '2023-04-15 08:42:55', '2023-04-15 08:42:55'),
(308, 'image_picker4874039878698857474.jpg.jpg', 'image-picker4874039878698857474jpg1682076946.jpg', NULL, '88.76 KB', '1169 x 594 pixels', NULL, '2023-04-21 05:35:46', '2023-04-21 05:35:46'),
(309, 'c373a410959afb305477728e94a51211__1___1___1_-removebg-preview.png', 'c373a410959afb305477728e94a51211-1-1-1-removebg-preview1714562741.png', NULL, '79.3 KB', '300 x 300 pixels', NULL, '2024-05-01 08:25:41', '2024-05-01 08:25:41'),
(310, 'flag_zcu.jpg', 'flag-zcu1714570374.jpg', NULL, '14.71 KB', '464 x 314 pixels', NULL, '2024-05-01 10:32:54', '2024-05-01 10:32:54'),
(311, 'icons8-crowdfunding-100.png', 'icons8-crowdfunding-1001714570500.png', NULL, '1.79 KB', '100 x 100 pixels', NULL, '2024-05-01 10:35:01', '2024-05-01 10:35:01'),
(312, 'photo_2024-05-01_19-29-19.jpg', 'photo-2024-05-01-19-29-191714581053.jpg', NULL, '70.37 KB', '788 x 514 pixels', NULL, '2024-05-01 13:30:53', '2024-05-01 13:30:53'),
(313, 'photo_2024-05-01_19-30-41.jpg', 'photo-2024-05-01-19-30-411714581217.jpg', NULL, '47.96 KB', '720 x 576 pixels', 2, '2024-05-01 13:33:38', '2024-05-01 13:33:38'),
(314, 'photo_2024-05-01_19-30-41.jpg', 'photo-2024-05-01-19-30-411714585192.jpg', NULL, '58.99 KB', '788 x 514 pixels', NULL, '2024-05-01 14:39:52', '2024-05-01 14:39:52'),
(315, '2.jpg', '21714676697.jpg', NULL, '55.82 KB', '600 x 400 pixels', NULL, '2024-05-02 16:04:58', '2024-05-02 16:04:58'),
(316, '2.jpg', '21714676855.jpg', NULL, '55.82 KB', '600 x 400 pixels', NULL, '2024-05-02 16:07:36', '2024-05-02 16:07:36'),
(317, '1.jpg', '11714676876.jpg', NULL, '62.33 KB', '640 x 411 pixels', NULL, '2024-05-02 16:07:56', '2024-05-02 16:07:56');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', '[{\"pname\":\"Головна\",\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"purl\":\"@url\"},{\"ptype\":\"static\",\"id\":3,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"about\",\"pname\":\"About\",\"children\":[{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]},{\"items_id\":\"2,3,4,5,6,19,20,21\",\"ptype\":\"App\\\\MenuBuilder\\\\MegaMenus\\\\DonationMegaMenu\",\"id\":19,\"antarget\":\"\",\"icon\":\"\"},{\"ptype\":\"static\",\"id\":20,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"contact\",\"pname\":\"Contact\"}]', 'default', '2020-05-28 05:53:38', '2024-05-01 11:32:51'),
(2, 'Menu with Icon', '[{\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Home\",\"purl\":\"@url\"}]', '', '2020-06-01 02:54:39', '2024-05-01 11:29:19'),
(3, 'Useful Links', '[{\"icon\":\"fas fa-angle-right\",\"pname\":\"Home\",\"purl\":\"@url\",\"ptype\":\"custom\",\"id\":1},{\"icon\":\"fas fa-angle-right\",\"pslug\":\"about_page_slug\",\"pname\":\"about_page_en_name\",\"ptype\":\"static\",\"id\":2},{\"icon\":\"fas fa-angle-right\",\"pslug\":\"service_page_slug\",\"pname\":\"service_page_en_name\",\"ptype\":\"static\",\"id\":3},{\"icon\":\"fas fa-angle-right\",\"pslug\":\"work_page_slug\",\"pname\":\"work_page_en_name\",\"ptype\":\"static\",\"id\":4}]', '', '2020-06-18 01:33:46', '2024-05-01 11:29:34');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_06_180949_create_admins_table', 1),
(5, '2019_12_07_071950_create_contact_info_items_table', 1),
(6, '2019_12_07_082524_create_static_options_table', 1),
(7, '2019_12_09_063224_create_testimonials_table', 1),
(8, '2019_12_10_125607_create_social_icons_table', 1),
(9, '2019_12_10_210247_create_blog_categories_table', 1),
(10, '2019_12_11_074345_create_blogs_table', 1),
(11, '2019_12_13_221931_create_languages_table', 1),
(12, '2019_12_29_113138_create_team_members_table', 1),
(13, '2020_01_25_155448_create_pages_table', 1),
(14, '2020_01_28_054211_create_faqs_table', 1),
(15, '2020_02_04_010636_create_newsletters_table', 1),
(16, '2020_03_29_075123_create_admin_roles_table', 1),
(17, '2020_04_14_082508_create_media_uploads_table', 1),
(18, '2020_04_22_065550_create_jobs_table', 1),
(19, '2020_04_22_065603_create_jobs_categories_table', 1),
(20, '2020_04_23_140942_create_events_table', 1),
(21, '2020_04_23_141011_create_events_categories_table', 1),
(22, '2020_06_14_081955_create_widgets_table', 1),
(23, '2020_07_02_125439_create_job_applicants_table', 1),
(24, '2020_07_04_143731_create_event_attendances_table', 1),
(25, '2020_07_04_173333_create_event_payment_logs_table', 1),
(26, '2020_07_06_154309_create_causes_table', 1),
(27, '2020_07_17_162008_create_image_galleries_table', 2),
(28, '2020_12_04_062950_create_image_gallery_categories_table', 2),
(29, '2021_02_19_092255_create_cause_updates_table', 3),
(30, '2020_07_07_150250_create_cause_logs_table', 4),
(31, '2021_02_20_08115319_create_cause_categories_table', 5),
(32, '2021_03_24_140243_create_menus_table', 5),
(33, '2021_03_27_113444_create_counterups_table', 5),
(34, '2021_04_08_122116_create_topbar_infos_table', 5),
(35, '2021_04_18_132805_create_header_sliders_table', 5),
(36, '2021_06_24_065557_create_comments_table', 5),
(37, '2021_07_04_052916_create_donation_withdraws_table', 5),
(38, '2021_07_23_160619_add_column_to_user_table', 6),
(39, '2021_07_23_183955_add_new_column_to_newsletters_table', 7),
(40, '2021_07_23_192801_create_permission_tables', 8),
(41, '2021_09_13_105614_create_success_stories_table', 9),
(42, '2021_09_13_110246_create_success_story_categories_table', 9),
(43, '2021_09_14_100349_create_client_areas_table', 10),
(44, '2021_09_19_044631_create_flag_reports_table', 11),
(45, '2021_09_19_044701_create_medical_documents_table', 11),
(46, '2021_09_19_090907_add_new_column_to_causes_table', 12),
(47, '2021_09_20_122226_create_support_tickets_table', 13),
(48, '2021_09_20_122306_create_support_ticket_messages_table', 13),
(49, '2021_09_20_124001_create_support_ticket_departments_table', 13),
(50, '2021_09_21_112550_add_badge_to_causes_table', 14),
(51, '2021_09_21_120538_add_emmergency_to_causes_table', 15),
(52, '2021_09_21_120623_add_emmergency_title_to_causes_table', 15),
(53, '2022_02_10_064944_add_column_tax_to_users_table', 16),
(71, '2022_02_10_111412_create_tax_logs_table', 17),
(72, '2022_02_13_044802_create_follow_campaigns_table', 17),
(73, '2022_02_15_073958_create_rewards_table', 17),
(74, '2022_02_16_072213_add_column_reward_to_causes_table', 18),
(75, '2022_02_16_130235_add_column_attachment_to_cause_logs_table', 19),
(76, '2022_02_17_054958_add_column_point_to_cause_logs_table', 20),
(78, '2022_02_19_050244_create_reward_redeems_table', 21),
(79, '2022_02_27_074610_add_column_subcribe_status_to_newsletters_table', 22),
(80, '2022_02_27_092346_add_column_custom_tip_status_to_causes_table', 23),
(81, '2022_05_07_045526_add_column_campaign_permission_to_users_table', 24),
(83, '2022_05_19_120053_create_notifications_table', 25),
(84, '2022_06_29_092352_create_gifts_table', 26),
(85, '2022_06_29_094024_create_cause_gift_table', 26),
(86, '2022_06_29_100938_add_column_image_to_gifts_table', 27),
(87, '2022_06_29_121946_add_column_gift_status_to_causes_table', 28),
(88, '2022_07_02_111611_add_column_gift_to_cause_logs_table', 29),
(89, '2022_07_02_120158_add_column_address_to_cause_logs_table', 30),
(90, '2022_05_15_100026_create_recurings_table', 31),
(91, '2022_05_17_140010_add_column_token_to_cause_logs_table', 31),
(92, '2022_07_07_102552_add_column_expire_to_recurings_table', 32),
(93, '2019_12_14_000001_create_personal_access_tokens_table', 33),
(94, '2022_08_13_115334_create_countries_table', 34),
(95, '2022_08_13_132444_create_mobile_sliders_table', 35),
(97, '2022_08_14_061548_add_column_custom_fields_to_cause_logs_table', 36),
(98, '2022_08_16_073632_add_column_monthly_donation_status_to_causes_table', 37),
(99, '2022_08_24_115705_add_column_user_gifts_to_gifts_table', 38),
(100, '2022_02_10_064944_add_column_country_id_to_users_table', 39),
(101, '2022_09_08_074705_add_column_manual_payment_attachment_to_event_payment_logs_table', 40),
(102, '2022_09_13_055752_add_column_extra_to_mobile_sliders_table', 41),
(103, '2022_10_26_09344544_add_column_user_verify_to_users_table', 42),
(104, '2023_03_15_071523_add_added_in_raised_amount_to_cause_logs_table', 43),
(105, '2023_04_10_234251_create_xg_ftp_infos_table', 43);

-- --------------------------------------------------------

--
-- Структура таблицы `mobile_sliders`
--

CREATE TABLE `mobile_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `donation_id` bigint DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Admin', 1),
(2, 'App\\Admin', 3),
(3, 'App\\Admin', 3),
(3, 'App\\Admin', 4),
(2, 'App\\Admin', 5),
(3, 'App\\Admin', 6),
(3, 'App\\Admin', 7),
(3, 'App\\Admin', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause_log_id` bigint DEFAULT NULL,
  `user_campaign_id` bigint DEFAULT NULL,
  `withdraw_id` bigint DEFAULT NULL,
  `seen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `title`, `cause_log_id`, `user_campaign_id`, `withdraw_id`, `seen`, `created_at`, `updated_at`) VALUES
(1, 'user_campaign', 'New user campaign created', NULL, 49, NULL, '1', '2024-05-01 10:56:16', '2024-05-01 10:57:12'),
(2, 'user_campaign', 'New user campaign created', NULL, 50, NULL, '0', '2024-05-01 13:34:10', '2024-05-01 13:34:10');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `page_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_meta_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `visibility` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 'user-list', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(6, 'user-create', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(7, 'user-edit', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(8, 'user-delete', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(9, 'newsletter-list', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(10, 'newsletter-create', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(11, 'newsletter-mail-send', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(12, 'newsletter-delete', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(13, 'blog-list', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(14, 'blog-create', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(15, 'blog-edit', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(16, 'blog-delete', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(17, 'blog-page-settings', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(18, 'blog-single-page-settings', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(19, 'blog-category-list', 'admin', '2021-07-24 21:46:18', '2021-07-24 21:46:18'),
(20, 'blog-category-create', 'admin', '2021-07-24 21:46:18', '2021-07-24 21:46:18'),
(21, 'blog-category-edit', 'admin', '2021-07-24 21:46:19', '2021-07-24 21:46:19'),
(22, 'blog-category-delete', 'admin', '2021-07-24 21:46:19', '2021-07-24 21:46:19'),
(23, 'image-gallery-list', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(24, 'image-gallery-create', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(25, 'image-gallery-edit', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(26, 'image-gallery-delete', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(27, 'image-gallery-category-list', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(28, 'image-gallery-category-create', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(29, 'image-gallery-category-edit', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(30, 'image-gallery-category-delete', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(31, 'image-gallery-page-settings', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(32, 'faq-list', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(33, 'faq-create', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(34, 'faq-edit', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(35, 'faq-delete', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(36, 'team-member-list', 'admin', '2021-07-24 22:44:27', '2021-07-24 22:44:27'),
(37, 'team-member-create', 'admin', '2021-07-24 22:44:28', '2021-07-24 22:44:28'),
(38, 'team-member-edit', 'admin', '2021-07-24 22:44:28', '2021-07-24 22:44:28'),
(39, 'team-member-delete', 'admin', '2021-07-24 22:44:28', '2021-07-24 22:44:28'),
(40, 'page-list', 'admin', '2021-07-25 10:10:51', '2021-07-25 10:10:51'),
(41, 'page-create', 'admin', '2021-07-25 10:10:51', '2021-07-25 10:10:51'),
(42, 'page-edit', 'admin', '2021-07-25 10:10:52', '2021-07-25 10:10:52'),
(43, 'page-delete', 'admin', '2021-07-25 10:10:52', '2021-07-25 10:10:52'),
(44, 'testimonial-list', 'admin', '2021-07-25 10:31:39', '2021-07-25 10:31:39'),
(45, 'testimonial-create', 'admin', '2021-07-25 10:31:39', '2021-07-25 10:31:39'),
(46, 'testimonial-edit', 'admin', '2021-07-25 10:31:39', '2021-07-25 10:31:39'),
(47, 'testimonial-delete', 'admin', '2021-07-25 10:31:39', '2021-07-25 10:31:39'),
(48, 'counterup-list', 'admin', '2021-07-25 10:54:13', '2021-07-25 10:54:13'),
(49, 'counterup-create', 'admin', '2021-07-25 10:54:13', '2021-07-25 10:54:13'),
(50, 'counterup-edit', 'admin', '2021-07-25 10:54:13', '2021-07-25 10:54:13'),
(51, 'counterup-delete', 'admin', '2021-07-25 10:54:13', '2021-07-25 10:54:13'),
(52, 'job-list', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(53, 'job-create', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(54, 'job-edit', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(55, 'job-delete', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(56, 'job-category-list', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(57, 'job-category-create', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(58, 'job-category-edit', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(59, 'job-category-delete', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(60, 'job-applicant-view', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(61, 'job-applicant-delete', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(62, 'job-applicant-mail', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(63, 'job-applicant-report', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(64, 'job-settings', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(65, 'job-applicant-list', 'admin', '2021-07-25 11:37:19', '2021-07-25 11:37:19'),
(66, 'event-list', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(67, 'event-create', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(68, 'event-edit', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(69, 'event-delete', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(70, 'event-category-list', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(71, 'event-category-create', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(72, 'event-category-edit', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(73, 'event-category-delete', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(74, 'event-attendance-list', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(75, 'event-attendance-delete', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(76, 'event-attendance-edit', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(77, 'event-attendance-mail', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(78, 'event-payment-log-list', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(79, 'event-payment-log-delete', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(80, 'event-payment-log-view', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(81, 'event-attendance-report', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(82, 'event-payment-log-report', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(83, 'event-single-settings', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(84, 'event-settings', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(85, 'event-payment-log-edit', 'admin', '2021-07-25 20:03:27', '2021-07-25 20:03:27'),
(86, 'donation-list', 'admin', '2021-07-25 20:35:38', '2021-07-25 20:35:38'),
(87, 'donation-create', 'admin', '2021-07-25 20:35:38', '2021-07-25 20:35:38'),
(88, 'donation-edit', 'admin', '2021-07-25 20:35:38', '2021-07-25 20:35:38'),
(89, 'donation-delete', 'admin', '2021-07-25 20:35:38', '2021-07-25 20:35:38'),
(90, 'donation-category-list', 'admin', '2021-07-25 20:35:38', '2021-07-25 20:35:38'),
(91, 'donation-category-create', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(92, 'donation-category-edit', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(93, 'donation-category-delete', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(94, 'donation-pending-cause', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(95, 'donation-withdraw-list', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(96, 'donation-withdraw-edit', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(97, 'donation-withdraw-delete', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(98, 'donation-withdraw-view', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(99, 'donation-payment-list', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(100, 'donation-payment-edit', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(101, 'donation-payment-delete', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(102, 'donation-cause-report', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(103, 'donation-settings', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(104, 'appearance-topbar-settings', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(105, 'appearance-navbar-settings', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(106, 'appearance-home-variant', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(107, 'appearance-menu-manage-list', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(108, 'appearance-menu-manage-edit', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(109, 'appearance-menu-manage-delete', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(110, 'appearance-widget-manage', 'admin', '2021-07-25 22:00:49', '2021-07-25 22:00:49'),
(111, 'appearance-form-builder', 'admin', '2021-07-25 22:00:49', '2021-07-25 22:00:49'),
(112, 'appearance-media-image', 'admin', '2021-07-25 22:00:49', '2021-07-25 22:00:49'),
(113, 'appearance-menu-manage-create', 'admin', '2021-07-25 22:21:13', '2021-07-25 22:21:13'),
(114, 'page-settings-home-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(115, 'page-settings-about-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(116, 'page-settings-event-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(117, 'page-settings-contact-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(118, 'page-settings-error-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(119, 'page-settings-maintain-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(120, 'general-settings-site-identity', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(121, 'general-settings-basic-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(122, 'general-settings-color-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(123, 'general-settings-typography', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(124, 'general-settings-seo-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(125, 'general-settings-third-party-script', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(126, 'general-settings-email-template', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(127, 'general-settings-smtp-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(128, 'general-settings-regenerate-media-image', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(129, 'general-settings-page-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(130, 'general-settings-payment-gateway', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(131, 'general-settings-custom-css', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(132, 'general-settings-custom-js', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(133, 'general-settings-cache-settings', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(134, 'general-settings-gdpr-settings', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(135, 'general-settings-sitemap', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(136, 'general-settings-rss-feed', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(137, 'general-settings-license', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(138, 'language-list', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(139, 'language-edit', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(140, 'language-create', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(141, 'language-delete', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(142, 'success-story-list', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(143, 'success-story-edit', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(144, 'success-story-create', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(145, 'success-story-delete', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(146, 'success-story-category-list', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(147, 'success-story-category-edit', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(148, 'success-story-category-create', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(149, 'success-story-category-delete', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(150, 'client-area-list', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(151, 'client-area-edit', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(152, 'client-area-create', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(153, 'client-area-delete', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(154, 'page-settings-success-story-page-manage', 'admin', '2021-09-16 04:43:50', '2021-09-16 04:43:50'),
(155, 'donations-flag-report-list', 'admin', '2021-09-18 23:16:18', '2021-09-18 23:16:18'),
(158, 'donations-flag-report-delete', 'admin', '2021-09-18 23:16:18', '2021-09-18 23:16:18'),
(163, 'donations-flag-report-view', 'admin', NULL, NULL),
(164, 'donations-flag-report-mail-send', 'admin', NULL, NULL),
(165, 'donations-flag-report-status-update', 'admin', '2021-09-19 10:29:29', NULL),
(166, 'general-settings-database-upgrade', 'admin', NULL, NULL),
(167, 'support-ticket-index', 'admin', '2021-09-21 01:32:50', '2021-09-21 01:32:50'),
(168, 'support-ticket-create', 'admin', '2021-09-21 01:32:50', '2021-09-21 01:32:50'),
(169, 'support-ticket-view', 'admin', '2021-09-21 01:32:50', '2021-09-21 01:32:50'),
(170, 'support-ticket-delete', 'admin', '2021-09-21 01:32:50', '2021-09-21 01:32:50'),
(171, 'support-ticket-page-settings', 'admin', '2021-09-21 01:32:50', '2021-09-21 01:32:50'),
(172, 'support-ticket-category-index', 'admin', '2021-09-21 01:32:51', '2021-09-21 01:32:51'),
(173, 'support-ticket-category-create', 'admin', '2021-09-21 01:32:51', '2021-09-21 01:32:51'),
(174, 'support-ticket-category-edit', 'admin', '2021-09-21 01:32:51', '2021-09-21 01:32:51'),
(175, 'support-ticket-category-delete', 'admin', '2021-09-21 01:32:51', '2021-09-21 01:32:51'),
(176, 'register-page-manage', 'admin', '2022-02-12 07:39:46', '2022-02-12 07:39:46'),
(177, 'user-tax-list', 'admin', '2022-02-12 07:39:46', '2022-02-12 07:39:46'),
(178, 'user-tax-delete', 'admin', '2022-02-12 07:39:46', '2022-02-12 07:39:46'),
(179, 'reward-list', 'admin', '2022-02-15 03:55:44', '2022-02-15 03:55:44'),
(180, 'reward-create', 'admin', '2022-02-15 03:55:44', '2022-02-15 03:55:44'),
(181, 'reward-edit', 'admin', '2022-02-15 03:55:44', '2022-02-15 03:55:44'),
(182, 'reward-delete', 'admin', '2022-02-15 03:55:44', '2022-02-15 03:55:44'),
(183, 'reward-redeem-list', 'admin', '2022-02-20 00:59:13', '2022-02-20 00:59:13'),
(184, 'reward-redeem-edit', 'admin', '2022-02-20 00:59:13', '2022-02-20 00:59:13'),
(185, 'reward-redeem-delete', 'admin', '2022-02-20 00:59:13', '2022-02-20 00:59:13'),
(186, 'reward-redeem-view', 'admin', '2022-02-20 00:59:13', '2022-02-20 00:59:13'),
(187, 'donation-gift-list', 'admin', '2022-06-29 03:57:06', '2022-06-29 03:57:06'),
(188, 'donation-gift-edit', 'admin', '2022-06-29 03:57:06', '2022-06-29 03:57:06'),
(189, 'donation-gift-create', 'admin', '2022-06-29 03:57:06', '2022-06-29 03:57:06'),
(190, 'donation-gift-delete', 'admin', '2022-06-29 03:57:06', '2022-06-29 03:57:06'),
(191, 'mobile-slider-list', 'admin', '2022-08-13 22:09:09', '2022-08-13 22:09:09'),
(192, 'mobile-slider-edit', 'admin', '2022-08-13 22:09:09', '2022-08-13 22:09:09'),
(193, 'mobile-slider-create', 'admin', '2022-08-13 22:09:09', '2022-08-13 22:09:09'),
(194, 'mobile-slider-delete', 'admin', '2022-08-13 22:09:09', '2022-08-13 22:09:09');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint UNSIGNED NOT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `recurings`
--

CREATE TABLE `recurings` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_log_id` bigint UNSIGNED NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expire_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint UNSIGNED NOT NULL,
  `reward_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward_goal_from` int NOT NULL,
  `reward_goal_to` int NOT NULL,
  `reward_point` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_amount` int DEFAULT NULL,
  `reward_expire_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reward_redeems`
--

CREATE TABLE `reward_redeems` (
  `id` bigint UNSIGNED NOT NULL,
  `donation_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `donation_log_id` bigint DEFAULT NULL,
  `payment_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_request_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_account_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `additional_comment_by_user` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_comment_by_admin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_receipt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin', '2021-07-24 18:04:30', '2021-07-24 21:01:22'),
(3, 'Super Admin', 'admin', '2021-07-24 18:04:30', '2021-07-24 18:04:30');

-- --------------------------------------------------------

--
-- Структура таблицы `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(9, 2),
(10, 2),
(11, 2),
(13, 2),
(14, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(36, 2),
(37, 2),
(38, 2),
(40, 2),
(41, 2),
(42, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(76, 2),
(78, 2),
(80, 2),
(81, 2),
(83, 2),
(84, 2),
(86, 2),
(90, 2),
(95, 2),
(96, 2),
(99, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(140, 3),
(141, 3),
(142, 3),
(143, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 3),
(148, 3),
(149, 3),
(150, 3),
(151, 3),
(152, 3),
(153, 3),
(154, 3),
(155, 3),
(158, 3),
(163, 3),
(164, 3),
(165, 3),
(166, 3),
(167, 3),
(168, 3),
(169, 3),
(170, 3),
(171, 3),
(172, 3),
(173, 3),
(174, 3),
(175, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `lang`, `status`, `created_at`, `updated_at`, `icon_type`, `icon`, `img_icon`) VALUES
(1, 'Web Design', 'en', 'publish', '2020-06-01 01:46:07', '2020-12-06 21:33:40', 'icon', 'flaticon-security', NULL),
(2, 'Web Developer', 'en', 'publish', '2020-06-01 01:46:14', '2020-12-06 21:33:29', 'icon', 'flaticon-electronics', NULL),
(3, 'UX/UI Design', 'en', 'publish', '2020-06-01 01:46:38', '2020-12-06 21:33:15', 'icon', 'flaticon-group', NULL),
(4, 'Mobile Apps', 'en', 'publish', '2020-06-01 01:46:44', '2020-12-06 21:33:02', 'icon', 'flaticon-security', NULL),
(5, 'تطبيقات الموبايل', 'ar', 'publish', '2020-06-01 01:47:32', '2020-06-01 01:47:32', NULL, NULL, NULL),
(6, 'Mobil uygulamalar', 'tur', 'publish', '2020-06-01 01:47:38', '2020-06-01 01:47:38', NULL, NULL, NULL),
(7, 'Mobil uygulamalar...', 'sp', 'publish', '2020-06-01 01:47:43', '2020-06-01 01:47:43', NULL, NULL, NULL),
(8, 'Diseño UX / UI', 'sp', 'publish', '2020-06-01 01:48:09', '2020-06-01 01:48:09', NULL, NULL, NULL),
(9, 'Diseño UX / UI', 'tur', 'publish', '2020-06-01 01:48:27', '2020-06-01 01:48:27', NULL, NULL, NULL),
(10, 'تصميم UX / UI', 'ar', 'publish', '2020-06-01 01:48:33', '2020-06-01 01:48:33', NULL, NULL, NULL),
(11, 'مطور ويب', 'ar', 'publish', '2020-06-01 01:48:47', '2020-06-01 01:48:47', NULL, NULL, NULL),
(12, 'Desarrollador web', 'sp', 'publish', '2020-06-01 01:48:55', '2020-06-01 01:48:55', NULL, NULL, NULL),
(13, 'Web Geliştiricisi', 'tur', 'publish', '2020-06-01 01:49:01', '2020-06-01 01:49:01', NULL, NULL, NULL),
(14, 'Web Tasarım', 'tur', 'publish', '2020-06-01 01:49:12', '2020-06-01 01:49:12', NULL, NULL, NULL),
(15, 'Diseño web', 'sp', 'publish', '2020-06-01 01:49:32', '2020-06-01 01:49:32', NULL, NULL, NULL),
(16, 'تم تصميم الموقع', 'ar', 'publish', '2020-06-01 01:49:38', '2020-06-01 01:49:38', NULL, NULL, NULL),
(17, 'asdfadsfsad', 'sp', 'publish', '2020-12-01 19:17:24', '2020-12-01 19:17:24', 'icon', 'fas fa-exclamation-triangle', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1757, 'nullable|string', NULL, '2021-02-21 10:53:41', '2021-02-21 10:53:52'),
(2035, 'testimonial_page_meta_description', NULL, '2021-06-17 08:41:43', '2024-05-02 04:48:36'),
(2036, 'image_gallery_page_name', 'Галерея зображень', '2021-06-17 08:41:44', '2024-05-02 04:48:36'),
(2037, 'image_gallery_page_meta_tags', NULL, '2021-06-17 08:41:44', '2024-05-02 04:48:36'),
(2038, 'image_gallery_page_meta_description', NULL, '2021-06-17 08:41:44', '2024-05-02 04:48:36'),
(2039, 'donor_page_name', 'Список донорів', '2021-06-17 08:41:44', '2024-05-02 04:48:36'),
(2040, 'donor_page_meta_tags', NULL, '2021-06-17 08:41:44', '2024-05-02 04:48:36'),
(2041, 'donor_page_meta_description', NULL, '2021-06-17 08:41:44', '2024-05-02 04:48:36'),
(2042, 'about_page_about_section_title', 'Ми - {color}благодійний фонд', '2021-06-17 09:20:28', '2024-05-01 13:26:54'),
(2043, 'about_page_about_section_subtitle', 'Про нас', '2021-06-17 09:20:28', '2024-05-01 13:26:54'),
(2044, 'about_page_about_section_description', '<p style=\"margin-bottom: 10px; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px; color: rgb(97, 97, 97); outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Текст</p>', '2021-06-17 09:20:28', '2024-05-01 13:26:54'),
(2045, 'about_page_our_mission_title', 'Наша місія', '2021-06-17 09:28:55', '2024-05-02 04:32:45'),
(2046, 'about_page_our_mission_description', '<font color=\"#616161\" face=\"Roboto, sans-serif\">Ми є неприбутковою організацією в США, яка працює над підтримкою дітей з малозабезпечених сімей у розкритті їхнього повного потенціалу - фізичного, розумового та емоційного.</font><br>', '2021-06-17 09:28:55', '2024-05-02 04:32:45'),
(2047, 'about_page_our_mission_list_section_title', 'a:1:{i:0;s:50:\"Якщо ви хочете змінити світ\";}', '2021-06-17 09:28:55', '2024-05-02 04:32:45'),
(2048, 'about_page_what_we_do_area_subtitle', 'Що ми робимо', '2021-06-17 09:38:40', '2024-05-02 04:33:01'),
(2049, 'about_page_what_we_do_area_title', 'Ми обрали наступні {color}проблеми{/color}', '2021-06-17 09:38:40', '2024-05-02 04:33:01'),
(2050, 'about_page_what_we_do_section_title', 'a:1:{i:0;s:12:\"Освіта\";}', '2021-06-17 09:38:40', '2024-05-02 04:33:01'),
(2051, 'about_page_what_we_do_section_description', 'a:1:{i:0;s:163:\"Ми є неприбутковою організацією в США, яка працює над підтримкою малозабезпечених дітей.\";}', '2021-06-17 09:38:40', '2024-05-02 04:33:01'),
(2052, 'about_page_testimonial_title', 'Що про нас говорять {color}народи{/color}', '2021-06-17 09:41:16', '2024-05-01 13:28:40'),
(2053, 'about_page_testimonial_subtitle', 'Відгуки клієнтів', '2021-06-17 09:41:17', '2024-05-01 13:28:40'),
(2054, 'about_page_team_member_section_title', '{color}Volunteers{/color} who always support us', '2021-06-17 09:43:15', '2021-06-27 10:21:23'),
(2055, 'about_page_team_member_section_subtitle', 'Our Volunteer', '2021-06-17 09:43:15', '2021-06-27 10:21:23'),
(2056, 'contact_page_form_section_title', 'Залишайтеся на зв\'язку', '2021-06-17 10:04:56', '2024-05-01 14:41:38'),
(2057, 'contact_page_form_submit_btn_text', 'Надіслати повідомлення', '2021-06-17 10:04:56', '2024-05-01 14:41:38'),
(2058, 'feedback_page_form_name_label', 'Name', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2059, 'feedback_page_form_email_label', 'Email', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2060, 'feedback_page_form_ratings_label', 'How Was Your Experience', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2061, 'feedback_page_form_description_label', 'Write Few Words', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2062, 'feedback_page_form_button_text', 'Submit Now', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2063, 'feedback_page_form_form_title', 'Leave Your Feedback', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2064, 'option_name', '191', '2021-06-21 10:25:22', '2021-06-21 10:25:22'),
(2065, 'event_page_bg_image', '191', '2021-06-21 10:27:02', '2021-06-27 10:23:16'),
(2066, 'home_page_variant', '04', '2021-06-26 13:48:43', '2024-05-02 16:13:56'),
(2067, 'site_logo', '311', '2021-06-26 14:46:58', '2024-05-01 10:35:19'),
(2068, 'site_favicon', '311', '2021-06-26 14:46:58', '2024-05-01 10:35:19'),
(2069, 'site_breadcrumb_bg', '129', '2021-06-26 14:46:58', '2024-05-01 10:35:19'),
(2070, 'site_white_logo', '311', '2021-06-26 14:46:58', '2024-05-01 10:35:19'),
(2071, 'site_title', 'crowdfunding platforms', '2021-06-26 14:50:21', '2024-05-01 11:00:24'),
(2072, 'site_tag_line', 'Crowdfunding Platform CMS', '2021-06-26 14:50:21', '2024-05-01 11:00:24'),
(2073, 'site_footer_copyright', '{copy}  {year}  All right reserved by  <a href=\"https://xgenious.com\">xgenious</a>', '2021-06-26 14:50:21', '2024-05-01 11:00:24'),
(2074, 'site_admin_panel_nav_sticky', 'on', '2021-06-26 14:50:21', '2021-07-05 18:09:13'),
(2075, 'site_frontend_nav_sticky', NULL, '2021-06-26 14:50:21', '2024-05-01 11:00:24'),
(2076, 'og_meta_image_for_site', '173', '2021-06-26 14:50:22', '2024-05-01 11:00:24'),
(2077, 'site_rtl_enabled', NULL, '2021-06-26 14:50:22', '2024-05-01 11:00:24'),
(2078, 'site_maintenance_mode', NULL, '2021-06-26 14:50:22', '2024-05-01 11:00:24'),
(2079, 'site_payment_gateway', 'on', '2021-06-26 14:50:22', '2024-05-01 11:00:24'),
(2080, 'site_sticky_navbar_enabled', 'on', '2021-06-26 14:50:22', '2024-05-01 11:00:24'),
(2081, 'disable_backend_preloader', 'on', '2021-06-26 14:50:22', '2024-05-01 11:00:24'),
(2082, 'disable_user_email_verify', 'on', '2021-06-26 14:50:22', '2024-05-01 11:00:24'),
(2083, 'site_force_ssl_redirection', NULL, '2021-06-26 14:50:22', '2024-05-01 11:00:24'),
(2084, 'site_color', '#2ba3ff', '2021-06-26 14:52:21', '2024-05-02 15:43:03'),
(2085, 'site_secondary_color', '#5b04d4', '2021-06-26 14:52:21', '2024-05-02 15:43:03'),
(2086, 'site_main_color_two', '#000000', '2021-06-26 14:52:21', '2024-05-02 15:43:03'),
(2087, 'site_heading_color', '#1e0530', '2021-06-26 14:52:21', '2024-05-02 15:43:03'),
(2088, 'site_paragraph_color', '#ff9c2b', '2021-06-26 14:52:21', '2024-05-02 15:43:03'),
(2089, 'portfolio_home_color', '#ff4756', '2021-06-26 14:52:21', '2024-05-02 15:43:03'),
(2090, 'logistics_home_color', '#ff4039', '2021-06-26 14:52:22', '2024-05-02 15:43:03'),
(2091, 'body_font_family', 'Roboto', '2021-06-26 14:55:07', '2021-07-26 11:20:30'),
(2092, 'heading_font_family', 'Open Sans', '2021-06-26 14:55:07', '2021-07-26 11:20:30'),
(2093, 'heading_font', 'on', '2021-06-26 14:55:07', '2021-07-26 11:20:30'),
(2094, 'body_font_variant', 'a:3:{i:0;s:5:\"0,400\";i:1;s:5:\"0,500\";i:2;s:5:\"0,700\";}', '2021-06-26 14:55:07', '2021-07-26 11:20:30'),
(2095, 'heading_font_variant', 'a:4:{i:0;s:5:\"0,300\";i:1;s:5:\"0,400\";i:2;s:5:\"0,600\";i:3;s:5:\"0,700\";}', '2021-06-26 14:55:07', '2021-07-26 11:20:30'),
(2096, 'site_meta_tags', 'hello,meta,tag', '2021-06-26 14:58:21', '2021-06-26 14:58:21'),
(2097, 'site_meta_description', 'this is multilingual example meta tag for english', '2021-06-26 14:58:21', '2021-06-26 14:58:21'),
(2098, 'site_disqus_key', 'fundorex', '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2099, 'site_google_analytics', 'UA-173946136-1', '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2100, 'tawk_api_key', '5e0b3e167e39ea1242a27b69', '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2101, 'site_third_party_tracking_code', NULL, '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2102, 'site_google_captcha_v3_site_key', '6LdvUeQUAAAAAHKM02AWBjtKAAL0-AqUk_qkqa0O', '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2103, 'site_google_captcha_v3_secret_key', '6LdvUeQUAAAAABaCkkQbMY-z2XaqYsLSWwYgB6Ru', '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2104, 'site_global_email', 'info@sohan.xgenious.com', '2021-06-26 14:59:51', '2022-02-06 23:39:15'),
(2105, 'site_global_email_template', '<p>Hello @username,</p><p><br></p><p>@message</p><p><br></p><p>Regards</p><p>@company</p>', '2021-06-26 14:59:51', '2022-02-06 23:39:15'),
(2106, 'service_query_success_message', NULL, '2021-06-26 15:04:03', '2024-05-01 18:30:09'),
(2107, 'case_study_query_success_message', NULL, '2021-06-26 15:04:03', '2024-05-01 18:30:09'),
(2108, 'quote_mail_success_message', NULL, '2021-06-26 15:04:03', '2024-05-01 18:30:09'),
(2109, 'contact_mail_success_message', 'Дякуємо за ваше звернення!!!', '2021-06-26 15:04:03', '2024-05-01 18:30:09'),
(2110, 'get_in_touch_mail_success_message', 'Дякуємо за ваше звернення!!!', '2021-06-26 15:04:03', '2024-05-01 18:30:09'),
(2111, 'apply_job_success_message', 'Ваша заявка успішно подана!!!', '2021-06-26 15:04:03', '2024-05-01 18:30:09'),
(2112, 'order_mail_success_message', NULL, '2021-06-26 15:04:03', '2024-05-01 18:30:09'),
(2113, 'event_attendance_mail_success_message', 'Дякуємо за бронювання, ми зв\'яжемося з вами найближчим часом.', '2021-06-26 15:04:04', '2024-05-01 18:30:09'),
(2114, 'feedback_form_mail_success_message', NULL, '2021-06-26 15:04:04', '2024-05-01 18:30:09'),
(2115, 'site_smtp_mail_mailer', 'smtp', '2021-06-26 15:05:21', '2022-07-02 04:53:15'),
(2116, 'site_smtp_mail_host', 'server.devrobin.com', '2021-06-26 15:05:21', '2022-07-02 04:53:15'),
(2117, 'site_smtp_mail_port', '465', '2021-06-26 15:05:21', '2022-07-02 04:53:15'),
(2118, 'site_smtp_mail_username', 'info@sohan.xgenious.com', '2021-06-26 15:05:21', '2022-07-02 04:53:15'),
(2119, 'site_smtp_mail_password', '_*+1Wrxu,38F', '2021-06-26 15:05:22', '2022-07-02 04:53:15'),
(2120, 'site_smtp_mail_encryption', 'ssl', '2021-06-26 15:05:22', '2022-07-02 04:53:15'),
(2121, 'site_gdpr_cookie_title', 'Cookies & Privacy', '2021-06-26 15:25:54', '2024-05-02 04:50:49'),
(2122, 'site_gdpr_cookie_message', 'Is education residence conveying so so. Suppose shyness say ten behaved morning had. Any unsatiable assistance compliment occasional too reasonably advantages.', '2021-06-26 15:25:54', '2024-05-02 04:50:49'),
(2123, 'site_gdpr_cookie_more_info_label', 'More information', '2021-06-26 15:25:54', '2024-05-02 04:50:49'),
(2124, 'site_gdpr_cookie_more_info_link', '{url}/p/privacy-policy/2', '2021-06-26 15:25:54', '2024-05-02 04:50:49'),
(2125, 'site_gdpr_cookie_accept_button_label', 'Accept Cookie', '2021-06-26 15:25:55', '2024-05-02 04:50:49'),
(2126, 'site_gdpr_cookie_decline_button_label', 'Decline Cookie', '2021-06-26 15:25:55', '2024-05-02 04:50:49'),
(2127, 'site_gdpr_cookie_delay', '5000', '2021-06-26 15:25:55', '2024-05-02 04:50:49'),
(2128, 'site_gdpr_cookie_enabled', NULL, '2021-06-26 15:25:55', '2024-05-02 04:50:49'),
(2129, 'site_gdpr_cookie_expire', '30', '2021-06-26 15:25:55', '2024-05-02 04:50:49'),
(2130, 'preloader_default', '6', '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2131, 'preloader_status', 'on', '2021-06-26 15:26:19', '2024-05-01 11:00:24'),
(2132, 'preloader_custom', NULL, '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2133, 'preloader_custom_image', NULL, '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2134, 'preloader_cacncel_button', 'on', '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2135, 'site_rss_feed_description', 'The description of the feed.', '2021-06-26 15:29:23', '2024-05-01 18:28:57'),
(2136, 'site_rss_feed_title', 'Мої канали', '2021-06-26 15:29:23', '2024-05-01 18:28:57'),
(2137, 'site_rss_feed_url', '/feeds', '2021-06-26 15:29:23', '2024-05-01 18:28:57'),
(2138, 'job_module_status', 'on', '2021-06-26 15:30:11', '2021-07-06 08:56:33'),
(2139, 'events_module_status', 'on', '2021-06-26 15:30:11', '2021-07-06 08:56:33'),
(2140, 'donations_module_status', 'on', '2021-06-26 15:30:11', '2021-07-06 08:56:33'),
(2141, 'item_purchase_key', 'ddd', '2021-06-26 15:30:27', '2021-06-26 15:30:27'),
(2142, 'item_license_status', 'not_verified', '2021-06-26 15:30:27', '2021-06-26 15:30:27'),
(2143, 'item_license_msg', 'Your Purchase Key Is Not Valid !!!', '2021-06-26 15:30:27', '2021-06-26 15:30:27'),
(2144, 'blog_page_read_more_btn_text', 'Read More', '2021-06-26 15:32:38', '2021-07-07 11:48:27'),
(2145, 'blog_page_item', '3', '2021-06-26 15:32:39', '2021-07-07 11:48:27'),
(2146, 'blog_page_recent_post_widget_items', '4', '2021-06-26 15:32:39', '2021-07-07 11:48:27'),
(2147, 'blog_single_page_related_post_title', 'Related Post', '2021-06-26 15:32:58', '2021-07-07 11:50:17'),
(2148, 'blog_single_page_share_title', 'Share', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2149, 'blog_single_page_category_title', 'Blog Categories', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2150, 'blog_single_page_recent_post_title', 'Related Posts', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2151, 'blog_single_page_tags_title', 'Tags', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2152, 'blog_single_page_recent_post_item', '3', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2153, 'site_image_gallery_post_items', '9', '2021-06-26 15:33:30', '2021-06-26 15:33:30'),
(2154, 'site_image_gallery_order', 'ASC', '2021-06-26 15:33:31', '2021-06-26 15:33:31'),
(2155, 'site_image_gallery_order_by', 'id', '2021-06-26 15:33:31', '2021-06-26 15:33:31'),
(2156, 'site_jobs_category_title', 'Job Category', '2021-06-26 15:35:37', '2021-07-07 11:55:14'),
(2157, 'site_job_post_items', '4', '2021-06-26 15:35:37', '2021-07-22 11:07:31'),
(2158, 'job_single_page_job_context_label', 'Job Context', '2021-06-26 15:36:18', '2021-07-22 11:07:31'),
(2159, 'job_single_page_job_responsibility_label', 'Job Responsibility', '2021-06-26 15:36:18', '2021-07-22 11:07:31'),
(2160, 'job_single_page_education_requirement_label', 'Educational Requirement', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2161, 'job_single_page_experience_requirement_label', 'Experience Requirement', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2162, 'job_single_page_additional_requirement_label', 'Additional Requirement', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2163, 'job_single_page_others_benefits_label', 'Others Benefits', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2164, 'job_single_page_apply_button_text', 'Apply To The Job', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2165, 'job_single_page_job_info_text', 'Jobs Information', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2166, 'job_single_page_company_name_text', 'Company Name', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2167, 'job_single_page_job_category_text', 'Job Category', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2168, 'job_single_page_job_position_text', 'Job Position', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2169, 'job_single_page_job_type_text', 'Job Type', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2170, 'job_single_page_salary_text', 'Salary', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2171, 'job_single_page_job_location_text', 'Job Location', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2172, 'job_single_page_job_deadline_text', 'Deadline', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2173, 'job_single_page_job_application_fee_text', 'Application Free', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2174, 'job_single_page_apply_form', 'on', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2175, 'job_single_page_applicant_mail', 'dvrobin4@gmail.com', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2176, 'job_success_page_title', 'Thank you', '2021-06-26 15:36:39', '2021-07-22 11:07:31'),
(2177, 'job_success_page_description', 'thanks, for choosing us.', '2021-06-26 15:36:39', '2021-07-22 11:07:31'),
(2178, 'job_cancel_page_title', 'Sorry!', '2021-06-26 15:37:10', '2021-07-22 11:07:31'),
(2179, 'job_cancel_page_description', 'your payment is not success', '2021-06-26 15:37:10', '2021-07-22 11:07:31'),
(2180, 'site_events_category_title', NULL, '2021-06-26 15:39:06', '2021-07-12 09:23:23'),
(2181, 'site_events_post_items', NULL, '2021-06-26 15:39:06', '2022-10-16 06:29:09'),
(2182, 'event_single_event_info_title', 'Event Info', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2183, 'event_single_date_title', 'Date', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2184, 'event_single_time_title', 'Time', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2185, 'event_single_cost_title', 'Cost', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2186, 'event_single_category_title', 'Category', '2021-06-26 15:39:39', '2021-06-26 15:39:40'),
(2187, 'event_single_organizer_title', 'Event Organizer', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2188, 'event_single_organizer_name_title', 'Name', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2189, 'event_single_organizer_email_title', 'gg@fgf', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2190, 'event_single_organizer_phone_title', '01875484888', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2191, 'event_single_organizer_website_title', 'Website', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2192, 'event_single_venue_title', 'Event Venue', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2193, 'event_single_venue_name_title', 'Name', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2194, 'event_single_venue_location_title', 'Locaiton', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2195, 'event_single_venue_phone_title', '+18274737136', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2196, 'event_single_available_ticket_text', 'Available Tickets', '2021-06-26 15:39:40', '2021-06-26 15:39:40'),
(2197, 'event_single_reserve_button_title', 'Reserve Your Seat', '2021-06-26 15:39:40', '2021-06-26 15:39:40'),
(2198, 'event_single_event_expire_text', 'Event Expired', '2021-06-26 15:39:41', '2021-06-26 15:39:41'),
(2199, 'donor_page_post_items', '6', '2021-06-26 15:41:18', '2022-10-16 06:29:09'),
(2200, 'donation_button_text', 'Donate Now', '2021-06-26 15:41:18', '2022-10-16 06:29:09'),
(2201, 'donation_goal_text', 'Goal', '2021-06-26 15:41:18', '2022-10-16 06:29:09'),
(2202, 'donation_raised_text', 'Raised', '2021-06-26 15:41:18', '2022-10-16 06:29:09'),
(2203, 'donation_notify_mail', 'info@sohan.xgenious.com', '2021-06-26 15:43:10', '2022-10-16 06:29:09'),
(2204, 'donation_custom_amount', NULL, '2021-06-26 15:43:10', '2022-10-16 06:29:09'),
(2205, 'donation_default_amount', '20', '2021-06-26 15:43:10', '2022-10-16 06:29:09'),
(2206, 'donation_single_form_title', 'Donate for help', '2021-06-26 15:43:10', '2021-07-16 21:35:44'),
(2207, 'donation_single_form_button_text', 'Donate Now', '2021-06-26 15:43:10', '2022-10-16 06:29:09'),
(2208, 'donation_single_recent_donation_text', 'people have made a donation', '2021-06-26 15:43:10', '2022-10-16 06:29:09'),
(2209, 'donation_success_page_title', 'Thank You', '2021-06-26 15:43:26', '2022-10-16 06:29:09'),
(2210, 'donation_success_page_subtitle', NULL, '2021-06-26 15:43:26', '2021-06-26 15:43:26'),
(2211, 'donation_success_page_description', 'Your payment has been completed', '2021-06-26 15:43:26', '2022-10-16 06:29:09'),
(2212, 'donation_cancel_page_title', 'Payment failed or canceled', '2021-06-26 15:43:35', '2022-10-16 06:29:09'),
(2213, 'donation_cancel_page_subtitle', NULL, '2021-06-26 15:43:35', '2021-07-03 09:40:01'),
(2214, 'donation_cancel_page_description', 'Your payment has been canceled or failed, please try again', '2021-06-26 15:43:35', '2022-10-16 06:29:09'),
(2215, 'event_success_page_title', 'Thank you', '2021-06-26 15:44:14', '2021-07-12 19:25:52'),
(2216, 'event_success_page_description', NULL, '2021-06-26 15:44:14', '2021-07-12 19:25:52'),
(2217, 'event_cancel_page_title', 'Sorry !!', '2021-06-26 15:44:21', '2021-07-12 19:25:52'),
(2218, 'event_cancel_page_subtitle', 'Payment Cancel For Event: {evname}', '2021-06-26 15:44:21', '2021-07-12 19:25:52'),
(2219, 'event_cancel_page_description', NULL, '2021-06-26 15:44:21', '2021-07-12 19:25:52'),
(2220, 'home_page_01_topbar_info_list_text', 'a:1:{i:0;s:11:\"mr. Dmitriy\";}', '2021-06-26 15:45:55', '2024-05-01 09:06:46'),
(2221, 'home_page_01_topbar_info_list_icon_icon', 'a:1:{i:0;s:10:\"fab fa-dev\";}', '2021-06-26 15:45:55', '2024-05-01 09:06:46'),
(2222, 'home_page_navbar_button_subtitle', 'Зробіть свій', '2021-06-26 15:48:01', '2024-05-02 04:28:18'),
(2223, 'home_page_navbar_button_title', 'збір', '2021-06-26 15:48:01', '2024-05-02 04:28:18'),
(2224, 'home_page_navbar_button_status', 'on', '2021-06-26 15:48:01', '2024-05-02 04:28:18'),
(2225, 'home_page_navbar_button_url', NULL, '2021-06-26 15:48:01', '2024-05-02 04:28:18'),
(2226, 'home_page_navbar_button_icon', 'far fa-heart', '2021-06-26 15:48:01', '2024-05-02 04:28:18'),
(2227, 'home_page_01_about_us_title', 'Your {color}support{/color} can help us a lot', '2021-06-26 15:54:02', '2021-06-26 17:07:37'),
(2228, 'home_page_01_about_us_subtitle', 'About Us', '2021-06-26 15:54:02', '2021-06-26 17:07:37'),
(2229, 'home_page_01_about_us_donation_text', 'Donated', '2021-06-26 15:54:02', '2021-06-26 17:01:58'),
(2230, 'home_page_01_about_us_description', '<div>We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional.</div><div><br></div>', '2021-06-26 15:54:02', '2021-06-26 17:07:37'),
(2231, 'home_page_01_about_us_lists', 'If you want to change the world\r\nKeep the same cleaner for every visit\r\nOne-off, weekly or fortnightly visits', '2021-06-26 15:54:03', '2021-06-26 17:07:37'),
(2232, 'home_page_01_about_us_total_donation', '8860', '2021-06-26 15:54:03', '2021-06-26 17:07:37'),
(2233, 'home_page_03_about_us_right_image', '180', '2021-06-26 15:54:03', '2021-06-26 15:54:03'),
(2234, 'homepage_01_feature_section_icon', 'a:3:{i:0;s:12:\"flaticon-man\";i:1;s:16:\"flaticon-charity\";i:2;s:17:\"flaticon-ribbon-2\";}', '2021-06-26 15:55:12', '2021-06-26 15:55:34'),
(2235, 'homepage_01_feature_section_url', 'a:3:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";}', '2021-06-26 15:55:12', '2021-06-26 15:55:34'),
(2236, 'homepage_01_feature_section_title', 'a:3:{i:0;s:14:\"Be a volunteer\";i:1;s:14:\"Start Donating\";i:2;s:18:\"Join our community\";}', '2021-06-26 15:55:12', '2021-06-26 15:55:34'),
(2237, 'homepage_01_feature_section_description', 'a:3:{i:0;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:1;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:2;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";}', '2021-06-26 15:55:12', '2021-06-26 15:55:35'),
(2238, 'home_page_01_donation_category_subtitle', 'Causes Category', '2021-06-26 15:55:44', '2021-06-26 15:55:44'),
(2239, 'home_page_01_donation_category_title', 'Causes By {color}Category{/color}', '2021-06-26 15:55:44', '2021-06-26 15:55:44'),
(2240, 'home_page_01_featured_cause_area_subtitle', 'Picked by our team', '2021-06-26 15:55:51', '2021-06-26 15:55:51'),
(2241, 'home_page_01_featured_cause_area_title', 'Featured {color}Causes{/color}', '2021-06-26 15:55:51', '2021-06-26 15:55:51'),
(2242, 'home_page_01_featured_cause_area_button_text', 'Donate Now', '2021-06-26 15:55:51', '2021-06-26 15:55:51'),
(2243, 'home_page_01_cta_area_title', 'Works towards supporting underprivileged people', '2021-06-26 15:57:06', '2021-06-26 17:09:27'),
(2244, 'home_page_01_cta_area_video_url', 'https://www.youtube.com/watch?v=bdBG5VO01e0', '2021-06-26 15:57:06', '2021-06-26 17:09:27'),
(2245, 'home_page_01_cta_area_background_image', '149', '2021-06-26 15:57:06', '2021-06-26 17:09:27'),
(2246, 'home_page_01_latest_cause_subtitle', 'Donation Cause', '2021-06-26 15:57:24', '2021-06-29 12:22:47'),
(2247, 'home_page_01_latest_cause_readmore', 'Read More', '2021-06-26 15:57:24', '2021-06-29 12:22:47'),
(2248, 'home_page_01_latest_cause_button_text', 'All Donation Cause', '2021-06-26 15:57:24', '2021-06-29 12:22:47'),
(2249, 'home_page_01_latest_cause_title', 'Recently added donation {color}causes{/color}', '2021-06-26 15:57:24', '2021-06-29 12:22:48'),
(2250, 'home_page_01_latest_cause_items', '3', '2021-06-26 15:57:24', '2021-06-29 12:22:48'),
(2251, 'home_page_01_team_member_section_title', '{color}Volunteers{/color} who always support us', '2021-06-26 15:57:45', '2021-06-26 15:57:45'),
(2252, 'home_page_01_team_member_section_subtitle', 'Our Volunteer', '2021-06-26 15:57:45', '2021-06-26 15:57:45'),
(2253, 'home_page_01_team_member_items', '6', '2021-06-26 15:57:45', '2021-06-26 15:57:45'),
(2254, 'home_page_02_what_we_do_area_subtitle', 'What we do', '2021-06-26 15:59:39', '2021-06-26 17:04:56'),
(2255, 'home_page_02_what_we_do_area_title', 'We have selected the following {color}problems{/color}', '2021-06-26 15:59:39', '2021-06-26 17:04:56'),
(2256, 'homepage_02_what_we_do_section_icon', 'a:4:{i:0;s:20:\"flaticon-transfusion\";i:1;s:17:\"flaticon-donate-1\";i:2;s:17:\"flaticon-location\";i:3;s:16:\"flaticon-balloon\";}', '2021-06-26 15:59:40', '2021-06-26 17:04:56'),
(2257, 'homepage_02_what_we_do_section_url', 'a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}', '2021-06-26 15:59:40', '2021-06-26 17:04:56'),
(2258, 'homepage_02_what_we_do_section_title', 'a:4:{i:0;s:9:\"Education\";i:1;s:6:\"Health\";i:2;s:11:\"Environment\";i:3;s:16:\"Food & Nutrition\";}', '2021-06-26 15:59:40', '2021-06-26 17:04:56'),
(2259, 'homepage_02_what_we_do_section_description', 'a:4:{i:0;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:1;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:2;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:3;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";}', '2021-06-26 15:59:40', '2021-06-26 17:04:56'),
(2260, 'home_page_02_what_we_do_left_image', '176', '2021-06-26 15:59:40', '2021-06-26 17:04:56'),
(2261, 'home_page_02_coutnerup_background_image', '131', '2021-06-26 16:00:05', '2021-06-26 16:00:05'),
(2262, 'home_page_01_testimonial_section_title', 'What {color}peoples{/color} say about us', '2021-06-26 16:00:24', '2021-06-26 16:00:24'),
(2263, 'home_page_01_testimonial_section_subtitle', 'Testimonial', '2021-06-26 16:00:24', '2021-06-26 16:00:24'),
(2264, 'home_01_testimonial_bg', '131', '2021-06-26 16:00:24', '2021-06-26 16:00:24'),
(2265, 'home_page_01_latest_event_subtitle', 'Latest Events', '2021-06-26 16:00:47', '2021-06-26 16:00:47'),
(2266, 'home_page_01_latest_event_button_text', 'Book Seat', '2021-06-26 16:00:47', '2021-06-26 16:00:47'),
(2267, 'home_page_01_latest_event_title', 'Attend {color}events{/color} those going around you', '2021-06-26 16:00:47', '2021-06-26 16:00:47'),
(2268, 'home_page_01_latest_event_items', '6', '2021-06-26 16:00:47', '2021-06-26 16:00:47'),
(2269, 'home_page_01_latest_news_title', 'Check latest {color}blog & news{/color}', '2021-06-26 16:01:00', '2021-06-26 16:01:00'),
(2270, 'home_page_01_latest_news_subtitle', 'Latest Blog', '2021-06-26 16:01:00', '2021-06-26 16:01:00'),
(2271, 'home_page_01_latest_news_items', '6', '2021-06-26 16:01:00', '2021-06-26 16:01:00'),
(2272, 'home_page_call_to_action_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2273, 'home_page_about_us_section_status', 'on', '2021-06-26 16:01:21', '2021-09-15 22:26:19'),
(2274, 'home_page_testimonial_section_status', 'on', '2021-06-26 16:01:21', '2021-09-15 22:26:19'),
(2275, 'home_page_latest_news_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2276, 'home_page_support_bar_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2277, 'home_page_team_member_section_status', 'on', '2021-06-26 16:01:21', '2021-09-15 22:26:19'),
(2278, 'home_page_contact_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2279, 'home_page_video_section_status', 'on', '2021-06-26 16:01:21', '2021-09-15 22:26:19'),
(2280, 'home_page_key_feature_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:18'),
(2281, 'home_page_what_we_do_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:18'),
(2282, 'home_page_cause_category_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:19'),
(2283, 'home_page_feature_cause_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:19'),
(2284, 'home_page_recent_cause_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:19'),
(2285, 'home_page_counterup_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:19'),
(2286, 'home_page_latest_events_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:19'),
(2287, 'home_page_latest_blog_section_status', 'on', '2021-06-26 16:31:22', '2021-09-15 22:26:19'),
(2288, 'home_page_header_slider_section_status', 'on', '2021-06-26 16:34:13', '2021-09-15 22:26:18'),
(2289, 'home_page_02_about_us_donation_text', 'Active Volunteers', '2021-06-26 17:01:58', '2021-06-26 17:01:58'),
(2290, 'home_page_02_about_us_short_description', '<span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional.</span>', '2021-06-26 17:01:58', '2021-06-26 17:01:58'),
(2291, 'home_page_02_about_us_left_image', '174', '2021-06-26 17:01:59', '2021-06-26 17:01:59'),
(2292, 'home_page_02_about_us_right_bottom_image', '175', '2021-06-26 17:01:59', '2021-06-26 17:01:59'),
(2293, 'home_page_02_about_us_icon', 'flaticon-woman', '2021-06-26 17:01:59', '2021-06-26 17:01:59'),
(2294, 'home_page_01_about_us_right_image', '179', '2021-06-26 17:07:37', '2021-06-26 17:07:37'),
(2295, 'home_page_01_cta_area_signature_image', '148', '2021-06-26 17:09:27', '2021-06-26 17:09:27'),
(2296, 'about_page_slug', 'pro-nas', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2297, 'team_page_slug', 'team', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2298, 'faq_page_slug', 'faq', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2299, 'blog_page_slug', 'blog', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2300, 'contact_page_slug', 'contact', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2301, 'career_with_us_page_slug', 'career', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2302, 'events_page_slug', 'events', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2303, 'donation_page_slug', 'donation', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2304, 'testimonial_page_slug', 'testimonial', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2305, 'image_gallery_page_slug', 'image-gallery', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2306, 'donor_page_slug', 'donor-list', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2307, 'about_page_name', 'Про нас', '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2308, 'about_page_meta_tags', NULL, '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2309, 'about_page_meta_description', NULL, '2021-06-27 09:33:47', '2024-05-02 04:48:36'),
(2310, 'team_page_name', 'Член команди', '2021-06-27 09:33:48', '2024-05-02 04:48:36'),
(2311, 'team_page_meta_tags', NULL, '2021-06-27 09:33:48', '2024-05-02 04:48:36'),
(2312, 'team_page_meta_description', NULL, '2021-06-27 09:33:48', '2024-05-02 04:48:36'),
(2313, 'faq_page_name', 'ПОШИРЕНІ ЗАПИТАННЯ', '2021-06-27 09:33:48', '2024-05-02 04:48:36'),
(2314, 'faq_page_meta_tags', NULL, '2021-06-27 09:33:48', '2024-05-02 04:48:36'),
(2315, 'faq_page_meta_description', NULL, '2021-06-27 09:33:48', '2024-05-02 04:48:36'),
(2316, 'blog_page_name', 'Блог', '2021-06-27 09:33:48', '2024-05-02 04:48:36'),
(2317, 'blog_page_meta_tags', NULL, '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2318, 'blog_page_meta_description', NULL, '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2319, 'contact_page_name', 'Контакти', '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2320, 'contact_page_meta_tags', NULL, '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2321, 'contact_page_meta_description', NULL, '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2322, 'career_with_us_page_name', 'Кар\'єра з нами', '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2323, 'career_with_us_page_meta_tags', NULL, '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2324, 'career_with_us_page_meta_description', NULL, '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2325, 'events_page_name', 'Події', '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2326, 'events_page_meta_tags', NULL, '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2327, 'events_page_meta_description', NULL, '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2328, 'donation_page_name', 'Пожертви', '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2329, 'donation_page_meta_tags', NULL, '2021-06-27 09:33:49', '2024-05-02 04:48:36'),
(2330, 'donation_page_meta_description', NULL, '2021-06-27 09:33:50', '2024-05-02 04:48:36'),
(2331, 'testimonial_page_name', 'Відгуки', '2021-06-27 09:33:50', '2024-05-02 04:48:36'),
(2332, 'testimonial_page_meta_tags', NULL, '2021-06-27 09:33:50', '2024-05-02 04:48:36'),
(2333, 'about_page_about_us_section_status', NULL, '2021-06-27 10:17:10', '2024-05-01 11:31:06'),
(2334, 'about_page_our_mission_section_status', NULL, '2021-06-27 10:17:11', '2024-05-01 11:31:06'),
(2335, 'about_page_counterup_section_status', NULL, '2021-06-27 10:17:11', '2024-05-01 11:31:06'),
(2336, 'about_page_what_we_do_section_status', NULL, '2021-06-27 10:17:11', '2024-05-01 11:31:06'),
(2337, 'about_page_testimonial_section_status', NULL, '2021-06-27 10:17:11', '2024-05-01 11:31:06'),
(2338, 'about_page_team_member_section_status', NULL, '2021-06-27 10:17:11', '2024-05-01 11:31:06'),
(2339, 'about_page_our_mission_list_section_icon', 'a:1:{i:0;s:12:\"fas fa-check\";}', '2021-06-27 10:19:08', '2024-05-02 04:32:45'),
(2340, 'about_page_our_mission_left_image_image', '180', '2021-06-27 10:19:08', '2024-05-02 04:32:45'),
(2341, 'about_page_counterup_background_image', '149', '2021-06-27 10:19:31', '2021-06-27 10:19:31'),
(2342, 'about_page_what_we_do_section_icon', 'a:1:{i:0;s:20:\"flaticon-transfusion\";}', '2021-06-27 10:20:43', '2024-05-02 04:33:01'),
(2343, 'about_page_what_we_do_section_url', 'a:1:{i:0;s:1:\"#\";}', '2021-06-27 10:20:43', '2024-05-02 04:33:01'),
(2344, 'about_page_testimonial_item', '4', '2021-06-27 10:21:07', '2024-05-01 13:28:40'),
(2345, 'about_page_team_member_item', '6', '2021-06-27 10:21:23', '2021-06-27 10:21:23'),
(2346, 'contact_page_form_receiving_mail', '@gmail.com', '2021-06-27 10:26:38', '2024-05-01 14:41:38'),
(2347, 'contact_page_map_section_location', '011', '2021-06-27 10:26:55', '2024-05-01 14:37:40'),
(2348, 'contact_page_map_section_zoom', '1', '2021-06-27 10:26:55', '2024-05-01 14:37:40'),
(2349, 'contact_page_contact_info_section_status', 'on', '2021-06-27 10:27:19', '2021-06-27 10:27:19'),
(2350, 'contact_page_contact_section_status', 'on', '2021-06-27 10:27:19', '2021-06-27 10:27:19'),
(2351, 'contact_page_contact_form_fields', '{\"field_type\":[\"text\",\"text\",\"email\",\"textarea\"],\"field_name\":[\"name\",\"subject\",\"email\",\"message\"],\"field_placeholder\":[\"Your Name\",\"Subject\",\"Your Email\",\"Message\"],\"field_required\":{\"1\":\"on\",\"2\":\"on\"}}', '2021-06-27 10:37:05', '2021-07-26 11:10:55'),
(2352, 'order_page_form_fields', '{\"field_type\":[\"textarea\",\"file\"],\"field_name\":[\"message\",\"file\"],\"field_placeholder\":[\"Your Message\",\"Document\"],\"mimes_type\":{\"2\":\"mimes:jpg,jpeg,png\"}}', '2021-06-27 10:41:23', '2021-06-27 10:41:23'),
(2353, 'apply_job_page_form_fields', '{\"field_type\":[\"text\",\"file\",\"textarea\"],\"field_name\":[\"expected-salary\",\"cv\",\"additional-info\"],\"field_placeholder\":[\"Your NameYour Expected Salary\",\"Your CV\",\"About Yourself\"],\"mimes_type\":{\"1\":\"mimes:txt,pdf\"}}', '2021-06-27 10:43:55', '2021-09-17 23:50:01'),
(2354, 'event_attendance_form_fields', '{\"field_type\":[\"text\",\"email\",\"textarea\"],\"field_name\":[\"name\",\"email\",\"message\"],\"field_placeholder\":[\"name\",\"Your Email\",\"Your Message\"],\"field_required\":{\"2\":\"on\"}}', '2021-06-27 10:45:49', '2021-07-06 09:23:25'),
(2355, 'error_404_page_title', '404', '2021-06-27 10:50:05', '2024-05-01 14:37:15'),
(2356, 'error_404_page_subtitle', 'Упс! Цю сторінку не вдалося знайти', '2021-06-27 10:50:05', '2024-05-01 14:37:15'),
(2357, 'error_404_page_paragraph', 'Вибачте, але сторінка, яку ви шукаєте, не існує, була видалена. назва змінена або тимчасово недоступна', '2021-06-27 10:50:05', '2024-05-01 14:37:15'),
(2358, 'error_404_page_button_text', 'Перейти на головну сторінку', '2021-06-27 10:50:06', '2024-05-01 14:37:15'),
(2359, 'maintain_page_title', 'Ми на плановому технічному обслуговуванні', '2021-06-27 11:01:56', '2024-05-01 18:31:28'),
(2360, 'maintain_page_description', 'Відійшовши, чому половина привела мають біля ліжка. При займатися простий батько періоду інші крім. Моєму дарувати літо, хоча вузькі позначені на. Весняний формальний ніякого округу ви чекали.', '2021-06-27 11:01:56', '2024-05-01 18:31:28'),
(2361, 'maintain_page_logo', '311', '2021-06-27 11:01:57', '2024-05-01 18:31:28'),
(2362, 'maintain_page_background_image', '131', '2021-06-27 11:01:57', '2021-06-27 11:01:57'),
(2363, 'cash_on_delivery_preview_logo', NULL, '2021-06-27 11:21:47', '2024-05-01 11:41:45'),
(2364, 'stripe_preview_logo', '184', '2021-06-27 11:21:47', '2024-05-01 11:41:46'),
(2365, 'paystack_preview_logo', '186', '2021-06-27 11:21:47', '2024-05-01 11:41:46'),
(2366, 'paystack_public_key', 'pk_test_0a2cea63c4a34691fae697fb8f6b72a856e96e12', '2021-06-27 11:21:48', '2024-05-01 11:41:46'),
(2367, 'paystack_secret_key', 'sk_test_bfb4d04c41f8bcfa9fb6dac84eeb6ea54e1a93b4', '2021-06-27 11:21:48', '2024-05-01 11:41:46'),
(2368, 'paystack_merchant_email', 'testxgenious@gmail.com', '2021-06-27 11:21:48', '2024-05-01 11:41:46'),
(2369, 'razorpay_preview_logo', '185', '2021-06-27 11:21:48', '2024-05-01 11:41:46'),
(2370, 'paypal_preview_logo', '182', '2021-06-27 11:21:48', '2024-05-01 11:41:46'),
(2371, 'paypal_app_client_id', 'ATx-SYQyPtXHw1bZaBDhJUZabxbutIqAqqZORgvgEoK_-9MrAkUzYkbt8pSnUyKNEdNN3aJt8tcpcY1I', '2021-06-27 11:21:48', '2021-09-22 06:28:37'),
(2372, 'paypal_app_secret', 'ELJCWPUabUnnMamfw5-ZxaUsvir3KAJrPnAcSeS11znsroi45HP0p7y7vGZcYsBsAAi7Ou6kelCpj69K', '2021-06-27 11:21:48', '2021-09-22 06:28:37'),
(2373, 'paytm_preview_logo', '183', '2021-06-27 11:21:48', '2024-05-01 11:41:46'),
(2374, 'paytm_merchant_key', 'dv0XtmsPYpewNag&', '2021-06-27 11:21:48', '2024-05-01 11:41:46'),
(2375, 'paytm_merchant_mid', 'Digita57697814558795', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2376, 'paytm_merchant_website', 'WEBSTAGING', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2377, 'site_global_currency', 'UAH', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2378, 'manual_payment_preview_logo', '231', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2379, 'site_manual_payment_name', 'Manual Payment', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2380, 'site_manual_payment_description', 'manual payment gateway description', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2381, 'razorpay_key', 'rzp_test_SXk7LZqsBPpAkj', '2021-06-27 11:21:49', '2021-09-22 06:28:38'),
(2382, 'razorpay_secret', 'Nenvq0aYArtYBDOGgmMH7JNv', '2021-06-27 11:21:49', '2021-09-22 06:28:38'),
(2383, 'stripe_publishable_key', 'pk_test_51GwS1SEmGOuJLTMsIeYKFtfAT3o3Fc6IOC7wyFmmxA2FIFQ3ZigJ2z1s4ZOweKQKlhaQr1blTH9y6HR2PMjtq1Rx00vqE8LO0x', '2021-06-27 11:21:49', '2021-09-22 06:28:38'),
(2384, 'stripe_secret_key', 'sk_test_51GwS1SEmGOuJLTMs2vhSliTwAGkOt4fKJMBrxzTXeCJoLrRu8HFf4I0C5QuyE3l3bQHBJm3c0qFmeVjd0V9nFb6Z00VrWDJ9Uw', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2385, 'site_global_payment_gateway', NULL, '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2386, 'site_usd_to_ngn_exchange_rate', '415.33', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2387, 'site_euro_to_ngn_exchange_rate', NULL, '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2388, 'mollie_public_key', 'test_fVk76gNbAp6ryrtRjfAVvzjxSHxC2v', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2389, 'mollie_preview_logo', '187', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2390, 'flutterwave_preview_logo', '188', '2021-06-27 11:21:49', '2024-05-01 11:41:46'),
(2391, 'flutterwave_secret_key', 'FLWSECK_TEST-d37a42d8917db84f1b2f47c125252d0a-X', '2021-06-27 11:21:49', '2021-09-22 06:28:39'),
(2392, 'flutterwave_public_key', 'FLWPUBK_TEST-86cce2ec43c63e09a517290a8347fcab-X', '2021-06-27 11:21:49', '2021-09-22 06:28:40'),
(2393, 'site_currency_symbol_position', 'left', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2394, 'site_default_payment_gateway', 'paypal', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2395, 'manual_payment_gateway', 'on', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2396, 'paypal_gateway', 'on', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2397, 'paytm_test_mode', 'on', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2398, 'paypal_test_mode', 'on', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2399, 'paytm_gateway', 'on', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2400, 'razorpay_gateway', 'on', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2401, 'stripe_gateway', 'on', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2402, 'paystack_gateway', 'on', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2403, 'mollie_gateway', 'on', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2404, 'cash_on_delivery_gateway', NULL, '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2405, 'flutterwave_gateway', 'on', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2406, 'site_usd_to_usd_exchange_rate', NULL, '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2407, 'site_usd_to_inr_exchange_rate', '74', '2021-06-27 11:21:50', '2024-05-01 11:41:46'),
(2408, 'event_attendance_page_title', 'Confirm Your Attendance', '2021-06-29 09:44:31', '2021-07-12 19:25:52'),
(2409, 'event_attendance_page_form_button_title', 'Confirm Attendance', '2021-06-29 09:44:31', '2021-07-12 19:25:52'),
(2410, 'event_attendance_receiver_mail', 'info@sohan.xgenious.com', '2021-06-29 09:44:31', '2021-07-12 19:25:52'),
(2411, 'cause_single_payment_in_seperate_page', 'on', '2021-06-29 17:36:05', '2021-07-15 21:20:29'),
(2412, 'cause_single_donate_button_text', 'Donate Now', '2021-06-29 17:36:05', '2022-10-16 06:29:09'),
(2413, 'site_admin_dark_mode', 'off', '2021-07-02 06:00:00', '2024-05-01 18:26:10'),
(2414, 'donation_admin_charge', '10', '2021-07-03 09:41:18', '2021-07-03 09:42:14'),
(2415, 'donation_admin_withdraw_charge', '20', '2021-07-03 09:41:18', '2021-07-03 09:42:14'),
(2416, 'donation_charge_active_deactive_button', 'on', '2021-07-03 14:05:03', '2022-10-16 06:29:09'),
(2417, 'charge_amount_type', 'fixed', '2021-07-03 14:05:03', '2022-10-16 06:29:09'),
(2418, 'charge_amount', '10', '2021-07-03 14:05:03', '2022-10-16 06:29:09'),
(2419, 'site_script_version', '1.2.9', '2021-07-03 14:05:03', '2023-05-16 01:17:11'),
(2420, 'disable_guest_mode_for_event_module', 'on', '2021-07-12 09:26:20', '2021-07-12 19:25:52'),
(2421, 'event_page_button_text', 'Book Seat', '2021-07-12 19:24:36', '2021-07-12 19:25:52'),
(2422, 'donation_single_faq_title', 'General Question', '2021-07-16 21:37:14', '2022-10-16 06:29:09'),
(2423, 'cause_single_donate_sidebar_text', 'Your Donation Details', '2021-07-16 21:48:00', '2022-10-16 06:29:09'),
(2424, 'enable_facebook_login', 'on', '2021-07-23 17:56:50', '2021-07-23 21:36:40'),
(2425, 'facebook_client_id', NULL, '2021-07-23 17:56:50', '2021-07-23 21:36:40'),
(2426, 'facebook_client_secret', NULL, '2021-07-23 17:56:50', '2021-07-23 21:36:40'),
(2427, 'enable_google_login', 'on', '2021-07-23 19:43:16', '2021-07-23 21:36:40'),
(2428, 'google_client_id', NULL, '2021-07-23 21:36:12', '2021-07-23 21:36:40'),
(2429, 'google_client_secret', NULL, '2021-07-23 21:36:12', '2021-07-23 21:36:40'),
(2430, 'home_page_04_header_area_title', 'Фонд допомоги безпритульним тваринам', '2021-09-13 02:32:56', '2024-05-02 15:40:35'),
(2431, 'home_page_04_header_area_subtitle', 'Допомога нашим меншим друзям', '2021-09-13 02:32:56', '2024-05-02 15:40:35'),
(2432, 'home_page_04_donate_button_text', 'Пожертвувати зараз', '2021-09-13 02:32:56', '2024-05-02 15:40:35'),
(2433, 'home_page_04_donate_button_text_url', NULL, '2021-09-13 02:32:56', '2024-05-02 15:40:35'),
(2434, 'home_page_04_right_side_heading', 'Пожертвуйте зараз', '2021-09-13 02:32:56', '2024-05-02 15:40:35'),
(2435, 'home_page_04_right_side_donate_button_text', 'Пожертвувати зараз', '2021-09-13 02:32:56', '2024-05-02 15:40:35'),
(2436, 'home_page_04_header_area_line_image', '200', '2021-09-13 02:32:56', '2024-05-02 15:40:35'),
(2437, 'home_page_04_header_area_bg_image', '201', '2021-09-13 02:32:56', '2024-05-02 15:40:35'),
(2438, 'home_page_04_feature_area_title', 'Наші причини', '2021-09-13 04:08:35', '2024-05-01 13:22:41'),
(2439, 'home_page_04_feature_area_subtitle', 'Вибрані збори', '2021-09-13 04:08:35', '2024-05-01 13:22:41'),
(2440, 'home_page_04_feature_area_donation_button_text', 'ЗАДОНАТИТИ ЗАРАЗ', '2021-09-13 04:29:56', '2024-05-01 13:22:41'),
(2441, 'home_page_04_success_story_area_title', 'Наш успіх', '2021-09-13 23:26:58', '2024-05-01 13:23:09'),
(2442, 'home_page_04_success_story_area_subtitle', 'Наші історії успіху', '2021-09-13 23:26:58', '2024-05-01 13:23:09'),
(2443, 'home_page_04_success_story_area_button_text', 'Читати далі', '2021-09-13 23:26:58', '2024-05-01 13:23:09'),
(2444, 'home_page_04_success_story_area_item_show', '3', '2021-09-13 23:26:58', '2024-05-01 13:23:09'),
(2445, 'home_page_04_about_us_area_title', 'Про нас', '2021-09-14 00:06:51', '2024-05-01 13:23:52'),
(2446, 'home_page_04_about_us_area_subtitle', 'Дізнайтеся про нас', '2021-09-14 00:06:52', '2024-05-01 13:23:52'),
(2447, 'home_page_04_about_us_area_description', 'Платформа збору', '2021-09-14 00:06:52', '2024-05-01 13:23:52'),
(2448, 'home_page_04_about_us_area_button_text', 'Читати далі', '2021-09-14 00:06:52', '2024-05-01 13:23:52'),
(2449, 'home_page_04_about_us_area_button_url', '#', '2021-09-14 00:15:16', '2024-05-01 13:23:52'),
(2450, 'home_page_04_events_area_title', 'Наші події', '2021-09-14 00:55:14', '2024-05-01 13:24:04'),
(2451, 'home_page_04_events_area_subtitle', 'Найближчі події', '2021-09-14 00:55:14', '2024-05-01 13:24:04'),
(2452, 'home_page_04_events_area_item_show', '4', '2021-09-14 00:55:14', '2024-05-01 13:24:04'),
(2453, 'home_page_04_recent_causes_area_title', 'Наші збори', '2021-09-14 01:28:44', '2024-05-01 13:24:42'),
(2454, 'home_page_04_recent_causes_area_subtitle', 'Нещодавно додані збори', '2021-09-14 01:28:44', '2024-05-01 13:24:42'),
(2455, 'home_page_04_recent_causes_area_button_text', 'Зробити пожертву', '2021-09-14 01:28:44', '2024-05-01 13:24:42'),
(2456, 'home_page_04_recent_causes_area_see_all_button_text', 'Переглянути всі збори', '2021-09-14 01:28:45', '2024-05-01 13:24:42'),
(2457, 'home_page_04_recent_causes_area_item_show', '3', '2021-09-14 01:41:04', '2024-05-01 13:24:42'),
(2458, 'home_page_04_recent_blog_area_title', 'Останній блог', '2021-09-14 03:10:08', '2024-05-01 13:26:30'),
(2459, 'home_page_04_recent_blog_area_subtitle', 'Останній блог та новини', '2021-09-14 03:10:08', '2024-05-01 13:26:30'),
(2460, 'home_page_04_recent_blog_area_item_show', '4', '2021-09-14 03:10:08', '2024-05-01 13:26:30'),
(2461, 'home_page_05_rise_area_heading_title', 'Rise Your Hand', '2021-09-14 22:26:18', '2021-09-14 22:26:18'),
(2462, 'home_page_05_rise_area_button_text', 'Donate Now', '2021-09-14 22:26:18', '2021-09-14 22:26:18'),
(2463, 'home_page_05_feature_area_title', 'Our Causes', '2021-09-14 22:32:01', '2021-09-14 22:32:01'),
(2464, 'home_page_05_feature_area_subtitle', 'Featurd Campaign', '2021-09-14 22:32:01', '2021-09-14 22:32:01'),
(2465, 'home_page_05_feature_area_donation_button_text', 'Donate', '2021-09-14 22:32:01', '2021-09-14 22:32:01'),
(2466, 'home_page_05_category_area_title', 'Category', '2021-09-14 22:48:19', '2021-09-14 22:48:19'),
(2467, 'home_page_05_category_area_subtitle', 'Causes by Category', '2021-09-14 22:48:19', '2021-09-14 22:48:19'),
(2468, 'home_page_05_success_story_area_title', 'Success', '2021-09-14 23:26:20', '2021-09-14 23:57:39'),
(2469, 'home_page_05_success_story_area_subtitle', 'Success Stories', '2021-09-14 23:26:20', '2021-09-14 23:57:39'),
(2470, 'home_page_05_success_story_area_button_text', 'Read Details', '2021-09-14 23:26:20', '2021-09-14 23:57:39'),
(2471, 'home_page_05_success_story_area_item_show', '2', '2021-09-14 23:26:20', '2021-09-14 23:57:39'),
(2472, 'home_page_05_recent_causes_area_title', 'Our Causes', '2021-09-15 00:18:24', '2021-09-15 00:18:24'),
(2473, 'home_page_05_recent_causes_area_subtitle', 'Recently Added Causes', '2021-09-15 00:18:24', '2021-09-15 00:18:24'),
(2474, 'home_page_05_recent_causes_area_see_all_button_text', 'See All Causes', '2021-09-15 00:18:24', '2021-09-15 00:18:24'),
(2475, 'home_page_05_events_area_title', 'Our Events', '2021-09-15 00:36:05', '2021-09-15 00:56:38'),
(2476, 'home_page_05_events_area_subtitle', 'Upcoming Events', '2021-09-15 00:36:06', '2021-09-15 00:56:38'),
(2477, 'home_page_05_events_area_item_show', '3', '2021-09-15 00:40:24', '2021-09-15 00:56:38'),
(2478, 'home_page_05_events_area_left_image', '212', '2021-09-15 00:56:38', '2021-09-15 00:56:38'),
(2479, 'home_page_05_recent_blog_area_title', 'Latest Blog', '2021-09-15 01:06:19', '2021-09-22 06:49:52'),
(2480, 'home_page_05_recent_blog_area_subtitle', 'Latest Blog & News', '2021-09-15 01:06:19', '2021-09-22 06:49:52'),
(2481, 'home_page_05_recent_blog_area_item_show', '3', '2021-09-15 01:06:19', '2021-09-22 06:49:53'),
(2482, 'home_page_06_rise_area_heading_title', 'Rise Your Hand', '2021-09-15 05:07:50', '2021-09-15 05:09:15'),
(2483, 'home_page_06_rise_area_button_text', 'Donate  Now', '2021-09-15 05:07:50', '2021-09-15 05:09:15'),
(2484, 'home_page_06_feature_area_title', 'Featurd Campaign', '2021-09-15 05:14:17', '2021-09-15 05:14:17'),
(2485, 'home_page_06_feature_area_donation_button_text', 'Make A Donation', '2021-09-15 05:14:17', '2021-09-15 05:14:17'),
(2486, 'home_page_06_category_area_title', 'Causes Category', '2021-09-15 05:41:07', '2021-09-15 05:41:07'),
(2487, 'home_page_06_recent_causes_area_title', 'Recently Added Causes', '2021-09-15 05:47:38', '2021-09-15 05:47:38'),
(2488, 'home_page_06_recent_causes_area_button_text', 'Make A Donate', '2021-09-15 05:47:39', '2021-09-15 05:47:39'),
(2489, 'home_page_06_success_story_area_button_text', 'Read Details', '2021-09-15 06:19:06', '2021-09-15 06:19:19'),
(2490, 'home_page_06_success_story_area_item_show', '3', '2021-09-15 06:19:06', '2021-09-15 06:19:19'),
(2491, 'home_page_06_about_us_area_title', 'About Us', '2021-09-15 06:42:34', '2021-09-15 06:48:49');
INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(2492, 'home_page_06_about_us_area_description', 'Nullam sed condimentum lorem. Donec id enim condimentum, posuere tortor ac, dignissim risus. Curabitur vel congue lectus. Aliquam enim libero, mollis nec sodales vel, efficitur vel sapien. Proin rhoncus mi et sem sodales, sodales fermentum ex molestie. Etiam laoreet eleifend dolor a auctor.Nullam sed condimentum lorem. Donec id enim condimentum, posuere tortor ac, dignissim risus. Curabitur vel congue lectus. Aliquam enim libero, mollis nec sodales vel, efficitur vel sapien. Proin rhoncus mi et sem sodales, sodales fermentum ex molestie. Etiam laoreet eleifend dolor a auctor.', '2021-09-15 06:42:34', '2021-09-15 06:48:49'),
(2493, 'home_page_06_about_us_area_button_text', 'Read Details', '2021-09-15 06:42:34', '2021-09-15 06:48:49'),
(2494, 'home_page_06_about_us_area_button_url', '#', '2021-09-15 06:42:34', '2021-09-15 06:48:49'),
(2495, 'home_page_06_events_area_title', 'Upcoming Events', '2021-09-15 06:56:47', '2021-09-15 07:15:18'),
(2496, 'home_page_06_events_area_item_show', '4', '2021-09-15 07:05:02', '2021-09-15 07:15:18'),
(2497, 'home_page_header_area_section_status', 'on', '2021-09-15 23:09:26', '2021-09-15 23:09:46'),
(2498, 'home_page_category_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2499, 'home_page_feature_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2500, 'home_page_success_story_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2501, 'home_page_aboutus_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2502, 'home_page_counterup_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2503, 'home_page_events_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2504, 'home_page_recent_cause_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2505, 'home_page_blog_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2506, 'home_page_client_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2507, 'home_page_04_header_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2508, 'home_page_04_category_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2509, 'home_page_04_feature_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2510, 'home_page_04_success_story_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2511, 'home_page_04_aboutus_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2512, 'home_page_04_counterup_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2513, 'home_page_04_events_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2514, 'home_page_04_recent_cause_area_section_status', NULL, '2021-09-15 23:19:10', '2021-09-15 23:30:42'),
(2515, 'home_page_04_blog_area_section_status', NULL, '2021-09-15 23:19:10', '2021-09-15 23:30:42'),
(2516, 'home_page_04_client_area_section_status', NULL, '2021-09-15 23:19:10', '2021-09-15 23:30:42'),
(2517, 'home_page_header_area_04_section_status', 'on', '2021-09-15 23:32:59', '2024-05-02 04:37:23'),
(2518, 'home_page_category_area_04_section_status', NULL, '2021-09-15 23:32:59', '2024-05-02 04:37:23'),
(2519, 'home_page_feature_area_04_section_status', NULL, '2021-09-15 23:32:59', '2024-05-02 04:37:23'),
(2520, 'home_page_success_story_area_04_section_status', NULL, '2021-09-15 23:32:59', '2024-05-02 04:37:23'),
(2521, 'home_page_aboutus_area_04_section_status', NULL, '2021-09-15 23:33:00', '2024-05-02 04:37:23'),
(2522, 'home_page_counterup_area_04_section_status', NULL, '2021-09-15 23:33:00', '2024-05-02 04:37:23'),
(2523, 'home_page_events_area_04_section_status', NULL, '2021-09-15 23:33:00', '2024-05-02 04:37:23'),
(2524, 'home_page_recent_cause_area_04_section_status', 'on', '2021-09-15 23:33:00', '2024-05-02 04:37:23'),
(2525, 'home_page_blog_area_04_section_status', NULL, '2021-09-15 23:33:00', '2024-05-02 04:37:23'),
(2526, 'home_page_client_area_04_section_status', 'on', '2021-09-15 23:33:00', '2024-05-02 04:37:23'),
(2527, 'home_page_header_slider_area_05_section_status', 'on', '2021-09-15 23:47:48', '2024-05-02 15:58:02'),
(2528, 'home_page_rise_area_05_section_status', NULL, '2021-09-15 23:47:48', '2024-05-02 15:58:02'),
(2529, 'home_page_feature_area_05_section_status', NULL, '2021-09-15 23:47:48', '2024-05-02 15:58:02'),
(2530, 'home_page_category_area_05_section_status', NULL, '2021-09-15 23:47:48', '2024-05-02 15:58:02'),
(2531, 'home_page_success_story_area_05_section_status', NULL, '2021-09-15 23:47:48', '2024-05-02 15:58:02'),
(2532, 'home_page_counterup_area_05_section_status', NULL, '2021-09-15 23:47:48', '2024-05-02 15:58:02'),
(2533, 'home_page_recent_cause_area_05_section_status', 'on', '2021-09-15 23:47:48', '2024-05-02 15:58:02'),
(2534, 'home_page_events_area_05_section_status', NULL, '2021-09-15 23:47:48', '2024-05-02 15:58:02'),
(2535, 'home_page_blog_area_05_section_status', NULL, '2021-09-15 23:47:48', '2024-05-02 15:58:02'),
(2536, 'home_page_client_area_05_section_status', 'on', '2021-09-15 23:47:48', '2024-05-02 15:58:02'),
(2537, 'home_page_header_slider_area_06_section_status', 'on', '2021-09-15 23:53:00', '2024-05-02 15:55:42'),
(2538, 'home_page_rise_area_06_section_status', NULL, '2021-09-15 23:53:00', '2024-05-02 15:55:42'),
(2539, 'home_page_feature_area_06_section_status', NULL, '2021-09-15 23:53:00', '2024-05-02 15:55:42'),
(2540, 'home_page_category_area_06_section_status', NULL, '2021-09-15 23:53:00', '2024-05-02 15:55:42'),
(2541, 'home_page_recent_cause_area_06_section_status', NULL, '2021-09-15 23:53:00', '2024-05-02 15:55:42'),
(2542, 'home_page_success_story_area_06_section_status', NULL, '2021-09-15 23:53:01', '2024-05-02 15:55:42'),
(2543, 'home_page_aboutus_area_06_section_status', NULL, '2021-09-15 23:53:01', '2024-05-02 15:55:42'),
(2544, 'home_page_events_area_06_section_status', NULL, '2021-09-15 23:53:01', '2024-05-02 15:55:42'),
(2545, 'home_page_client_area_06_section_status', 'on', '2021-09-15 23:53:01', '2024-05-02 15:55:42'),
(2546, 'home_page_counterup_area_06_section_status', 'on', '2021-09-15 23:54:38', '2024-05-02 15:55:42'),
(2547, 'success_story_page_slug', 'success-story', '2021-09-16 00:05:40', '2024-05-02 04:48:36'),
(2548, 'success_story_page_name', 'Історії успіху', '2021-09-16 00:05:44', '2024-05-02 04:48:36'),
(2549, 'success_story_page_meta_tags', NULL, '2021-09-16 00:05:44', '2024-05-02 04:48:36'),
(2550, 'success_story_page_meta_description', NULL, '2021-09-16 00:05:44', '2024-05-02 04:48:36'),
(2551, 'success_story_page_button_text', 'Переглянути деталі', '2021-09-16 01:59:44', '2024-05-01 09:23:49'),
(2552, 'success_story_page_item_show', '2', '2021-09-16 01:59:44', '2024-05-01 09:23:49'),
(2553, 'donation_single_page_countdown_status', 'on', '2021-09-16 05:40:57', '2022-10-16 06:29:09'),
(2554, 'donation_charge_form', 'donor', '2021-09-16 05:40:57', '2022-10-16 06:29:09'),
(2555, 'user_campaign_metadata_status', NULL, '2021-09-16 05:40:57', '2022-10-16 06:29:09'),
(2556, 'allow_user_to_add_custom_tip_in_donation', NULL, '2021-09-16 05:40:57', '2022-10-16 06:29:09'),
(2557, 'donation_deadline_text', 'Donation Expired', '2021-09-16 05:40:57', '2022-10-16 06:29:09'),
(2558, 'payfast_test_mode', 'on', '2021-09-18 01:46:01', '2024-05-01 11:41:46'),
(2559, 'payfast_preview_logo', '220', '2021-09-18 01:46:01', '2024-05-01 11:41:46'),
(2560, 'payfast_merchant_id', '10024000', '2021-09-18 01:46:01', '2024-05-01 11:41:46'),
(2561, 'payfast_merchant_key', '77jcu5v4ufdod', '2021-09-18 01:46:01', '2024-05-01 11:41:46'),
(2562, 'payfast_passphrase', 'testpayfastsohan', '2021-09-18 01:46:01', '2024-05-01 11:41:46'),
(2563, 'payfast_gateway', 'on', '2021-09-18 01:46:01', '2024-05-01 11:41:46'),
(2564, 'site_usd_to_zar_exchange_rate', '385', '2021-09-18 01:46:02', '2024-05-01 11:41:46'),
(2565, 'donation_medical_document_button_text', 'Medical Document', '2021-09-18 06:36:09', '2022-10-16 06:29:09'),
(2566, 'donation_medical_document_button_show_hide', 'on', '2021-09-18 06:36:09', '2022-10-16 06:29:09'),
(2567, 'donation_single_page_variant', '02', NULL, '2022-08-24 05:36:13'),
(2568, 'donation_flag_show_hide', 'on', '2021-09-19 07:01:14', '2022-10-16 06:29:09'),
(2569, 'donation_description_show_hide', 'on', '2021-09-19 07:01:14', '2021-09-19 07:07:34'),
(2570, 'donation_updates_show_hide', 'on', '2021-09-19 07:01:14', '2022-10-16 06:29:09'),
(2571, 'donation_comments_show_hide', 'on', '2021-09-19 07:01:14', '2022-10-16 06:29:09'),
(2572, 'donation_faq_show_hide', 'on', '2021-09-19 07:01:40', '2022-10-16 06:29:09'),
(2573, 'donation_descriptions_show_hide', 'on', '2021-09-19 07:10:20', '2022-10-16 06:29:09'),
(2574, 'home_page_06_header_area_title', 'a:2:{i:0;s:69:\"Фонд допомоги безпритульним тваринам\";i:1;s:69:\"Фонд допомоги безпритульним тваринам\";}', '2021-09-20 00:15:15', '2024-05-02 16:01:19'),
(2575, 'home_page_06_header_area_subtitle', 'a:2:{i:0;s:53:\"Допомога нашим меншим друзям\";i:1;s:69:\"Фонд допомоги безпритульним тваринам\";}', '2021-09-20 00:15:15', '2024-05-02 16:01:19'),
(2576, 'home_page_06_header_area_donate_button_title', 'a:2:{i:0;s:6:\"Donate\";i:1;s:10:\"Donate Now\";}', '2021-09-20 00:15:15', '2024-05-02 16:01:19'),
(2577, 'home_page_06_header_area_donate_button_url', 'a:2:{i:0;N;i:1;N;}', '2021-09-20 00:15:15', '2024-05-02 16:01:19'),
(2578, 'home_page_06_header_area_read_more_button_title', 'a:2:{i:0;s:9:\"Read More\";i:1;s:12:\"Read Details\";}', '2021-09-20 00:15:15', '2024-05-02 16:01:19'),
(2579, 'home_page_06_header_area_read_more_button_url', 'a:2:{i:0;N;i:1;N;}', '2021-09-20 00:15:16', '2024-05-02 16:01:19'),
(2580, 'home_page_06_header_area_image', 'a:2:{i:0;s:3:\"196\";i:1;s:3:\"134\";}', '2021-09-20 00:15:16', '2024-05-02 16:01:19'),
(2581, 'home_page_06_header_area_donation', 'a:2:{i:0;s:2:\"49\";i:1;s:2:\"49\";}', '2021-09-20 01:32:04', '2024-05-02 16:01:19'),
(2582, 'support_ticket_page_slug', 'support-ticket', '2021-09-20 22:54:03', '2024-05-02 04:48:36'),
(2583, 'support_ticket_page_name', 'Запити підтримки', '2021-09-20 22:54:06', '2024-05-02 04:48:36'),
(2584, 'support_ticket_page_meta_tags', NULL, '2021-09-20 22:54:06', '2024-05-02 04:48:36'),
(2585, 'support_ticket_page_meta_description', NULL, '2021-09-20 22:54:06', '2024-05-02 04:48:36'),
(2586, 'support_ticket_login_notice', 'Login to create support ticket', '2021-09-20 23:26:53', '2021-09-20 23:26:53'),
(2587, 'support_ticket_form_title', 'Create New Support Ticket', '2021-09-20 23:26:53', '2021-09-20 23:26:53'),
(2588, 'support_ticket_button_text', 'Submit Ticket', '2021-09-20 23:26:53', '2021-09-20 23:26:53'),
(2589, 'support_ticket_success_message', 'Thanks for contact us, we will reply soon', '2021-09-20 23:26:53', '2021-09-20 23:26:53'),
(2590, 'home_page_06_header_area_bg_image', '219', '2021-09-21 05:06:27', '2024-05-02 16:01:19'),
(2591, 'emmergency_donation_text', 'This fundraiser is in an urgent need of funds', '2021-09-21 06:59:33', '2022-10-16 06:29:09'),
(2592, 'releated_donation_text', 'Related Causes', '2021-09-21 23:18:31', '2022-10-16 06:29:09'),
(2593, 'donation_social_icons_show_hide', 'on', '2021-09-22 04:09:09', '2022-10-16 06:29:09'),
(2594, 'donation_recent_donors_show_hide', 'on', '2021-09-22 04:09:09', '2022-10-16 06:29:09'),
(2595, 'razorpay_api_key', 'rzp_test_SXk7LZqsBPpAkj', '2022-02-05 04:02:53', '2024-05-01 11:41:46'),
(2596, 'razorpay_api_secret', 'Nenvq0aYArtYBDOGgmMH7JNv', '2022-02-05 04:02:53', '2024-05-01 11:41:46'),
(2597, 'stripe_public_key', 'pk_test_51GwS1SEmGOuJLTMsIeYKFtfAT3o3Fc6IOC7wyFmmxA2FIFQ3ZigJ2z1s4ZOweKQKlhaQr1blTH9y6HR2PMjtq1Rx00vqE8LO0x', '2022-02-05 04:02:53', '2024-05-01 11:41:46'),
(2598, 'flw_public_key', 'FLWPUBK_TEST-86cce2ec43c63e09a517290a8347fcab-X', '2022-02-05 04:02:54', '2024-05-01 11:41:46'),
(2599, 'flw_secret_key', 'FLWSECK_TEST-d37a42d8917db84f1b2f47c125252d0a-X', '2022-02-05 04:02:54', '2024-05-01 11:41:46'),
(2600, 'flw_secret_hash', 'fundorex', '2022-02-05 04:02:54', '2024-05-01 11:41:46'),
(2601, 'paypal_mode', NULL, '2022-02-05 04:02:54', '2022-07-03 00:28:22'),
(2602, 'paypal_sandbox_client_id', 'AUP7AuZMwJbkee-2OmsSZrU-ID1XUJYE-YB-2JOrxeKV-q9ZJZYmsr-UoKuJn4kwyCv5ak26lrZyb-gb', '2022-02-05 04:02:54', '2024-05-01 11:41:46'),
(2603, 'paypal_sandbox_client_secret', 'EEIxCuVnbgING9EyzcF2q-gpacLneVbngQtJ1mbx-42Lbq-6Uf6PEjgzF7HEayNsI4IFmB9_CZkECc3y', '2022-02-05 04:02:54', '2024-05-01 11:41:46'),
(2604, 'paypal_sandbox_app_id', '641651651958', '2022-02-05 04:02:54', '2024-05-01 11:41:46'),
(2605, 'paypal_live_client_id', NULL, '2022-02-05 04:02:54', '2024-05-01 11:41:46'),
(2606, 'paypal_live_client_secret', NULL, '2022-02-05 04:02:54', '2024-05-01 11:41:46'),
(2607, 'paypal_live_app_id', NULL, '2022-02-05 04:02:54', '2024-05-01 11:41:46'),
(2608, 'paypal_payment_action', NULL, '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2609, 'paypal_currency', NULL, '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2610, 'paypal_notify_url', NULL, '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2611, 'paypal_locale', NULL, '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2612, 'paypal_validate_ssl', NULL, '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2613, 'site_usd_to_idr_exchange_rate', '14365.30', '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2614, 'site_usd_to_brl_exchange_rate', '5.53', '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2615, 'midtrans_preview_logo', '224', '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2616, 'midtrans_merchant_id', 'G770543580', '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2617, 'midtrans_server_key', 'SB-Mid-server-9z5jztsHyYxEdSs7DgkNg2on', '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2618, 'midtrans_client_key', 'SB-Mid-client-iDuy-jKdZHkLjL_I', '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2619, 'midtrans_environment', NULL, '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2620, 'payfast_merchant_env', NULL, '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2621, 'payfast_itn_url', NULL, '2022-02-05 04:02:55', '2024-05-01 11:41:46'),
(2622, 'cashfree_preview_logo', '222', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2623, 'cashfree_test_mode', 'on', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2624, 'cashfree_app_id', '94527832f47d6e74fa6ca5e3c72549', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2625, 'cashfree_secret_key', 'ec6a3222018c676e95436b2e26e89c1ec6be2830', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2626, 'instamojo_preview_logo', '221', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2627, 'instamojo_client_id', 'test_nhpJ3RvWObd3uryoIYF0gjKby5NB5xu6S9Z', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2628, 'instamojo_client_secret', 'test_iZusG4P35maQVPTfqutbCc6UEbba3iesbCbrYM7zOtDaJUdbPz76QOnBcDgblC53YBEgsymqn2sx3NVEPbl3b5coA3uLqV1ikxKquOeXSWr8Ruy7eaKUMX1yBbm', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2629, 'instamojo_username', NULL, '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2630, 'instamojo_password', NULL, '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2631, 'instamojo_test_mode', 'on', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2632, 'marcadopago_preview_logo', '223', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2633, 'marcado_pago_client_id', 'TEST-0a3cc78a-57bf-4556-9dbe-2afa06347769', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2634, 'marcado_pago_client_secret', 'TEST-4644184554273630-070813-7d817e2ca1576e75884001d0755f8a7a-786499991', '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2635, 'marcado_pago_test_mode', NULL, '2022-02-05 04:02:56', '2024-05-01 11:41:46'),
(2636, 'midtrans_gateway', 'on', '2022-02-05 04:02:57', '2024-05-01 11:41:46'),
(2637, 'midtrans_test_mode', 'on', '2022-02-05 04:02:57', '2024-05-01 11:41:46'),
(2638, 'cashfree_gateway', 'on', '2022-02-05 04:02:57', '2024-05-01 11:41:46'),
(2639, 'instamojo_gateway', 'on', '2022-02-05 04:02:57', '2024-05-01 11:41:46'),
(2640, 'marcadopago_gateway', 'on', '2022-02-05 04:02:57', '2024-05-01 11:41:46'),
(2641, 'marcadopago_test_mode', 'on', '2022-02-05 04:02:57', '2024-05-01 11:41:46'),
(2642, 'company_name', NULL, '2022-02-12 01:52:41', '2024-05-01 11:09:29'),
(2643, 'company_address', NULL, '2022-02-12 01:52:41', '2024-05-01 11:09:29'),
(2644, 'company_contact', '01874151514', '2022-02-12 01:52:41', '2022-02-26 04:56:48'),
(2645, 'register_page_terms_of_service_url', '#', '2022-02-12 07:00:55', '2022-02-12 07:00:55'),
(2646, 'register_page_condition_url', '#', '2022-02-12 07:00:55', '2022-02-12 07:00:55'),
(2647, 'register_page_privacy_policy_url', '#', '2022-02-12 07:00:55', '2022-02-12 07:00:55'),
(2648, 'donation_reward_amount', NULL, '2022-02-15 06:37:24', '2022-02-15 22:41:41'),
(2649, 'reward_amount_for_point', '10', '2022-02-15 22:42:56', '2022-02-15 22:44:34'),
(2650, 'donation_single_reward_heading', 'Reward for This Campaign', '2022-02-16 01:46:43', '2022-10-16 06:29:09'),
(2651, 'donation_single_reward_image', '230', '2022-02-16 06:25:28', '2022-10-16 06:29:09'),
(2652, 'donation_single_reward_title', 'Get Reward by donating above', '2022-02-16 06:35:56', '2022-10-16 06:29:09'),
(2653, 'donation_login_user_donate_show_hide', NULL, '2022-02-20 00:05:14', '2022-10-16 06:29:09'),
(2654, 'company_signature_image', '148', '2022-02-26 04:56:48', '2022-02-26 04:56:48'),
(2655, 'minimum_donation_amount', NULL, '2022-02-26 05:33:24', '2022-10-16 06:29:09'),
(2656, 'site_inr_to_usd_exchange_rate', '0.014', '2022-02-26 23:56:29', '2022-02-27 00:01:01'),
(2657, 'site_inr_to_idr_exchange_rate', NULL, '2022-02-26 23:56:56', '2022-02-27 00:39:04'),
(2658, 'site_inr_to_inr_exchange_rate', NULL, '2022-02-26 23:56:56', '2022-02-27 00:39:04'),
(2659, 'site_inr_to_ngn_exchange_rate', NULL, '2022-02-26 23:56:56', '2022-02-27 00:39:04'),
(2660, 'site_inr_to_zar_exchange_rate', NULL, '2022-02-26 23:56:56', '2022-02-27 00:39:04'),
(2661, 'site_inr_to_brl_exchange_rate', NULL, '2022-02-26 23:56:56', '2022-02-27 00:39:04'),
(2662, 'home_page_navbar_search_show_hide', 'on', '2022-02-27 04:10:54', '2024-05-02 04:28:18'),
(2663, 'squareup_gateway', 'on', '2022-07-02 23:26:03', '2024-05-01 11:41:46'),
(2664, 'squareup_test_mode', 'on', '2022-07-02 23:26:03', '2024-05-01 11:41:46'),
(2665, 'squareup_preview_logo', '240', '2022-07-02 23:26:03', '2024-05-01 11:41:46'),
(2666, 'squareup_access_token', 'EAAAEOuLQObrVwJvCvoio3H13b8Ssqz1ighmTBKZvIENW9qxirHGHkqsGcPBC1uN', '2022-07-02 23:26:03', '2024-05-01 11:41:46'),
(2667, 'squareup_location_id', 'LE9C12TNM5HAS', '2022-07-02 23:26:03', '2024-05-01 11:41:46'),
(2668, 'squareup_mode', NULL, '2022-07-03 00:48:37', '2022-07-03 00:48:37'),
(2669, 'stripe_test_mode', 'on', '2022-07-03 01:13:22', '2024-05-01 11:41:46'),
(2670, 'mollie_test_mode', 'on', '2022-07-03 01:45:45', '2024-05-01 11:41:46'),
(2671, 'razorpay_test_mode', 'on', '2022-07-03 03:09:11', '2024-05-01 11:41:46'),
(2672, 'flutterwave_test_mode', 'on', '2022-07-03 03:29:06', '2024-05-01 11:41:46'),
(2673, 'paystack_test_mode', 'on', '2022-07-03 03:46:18', '2024-05-01 11:41:46'),
(2674, 'cinetpay_gateway', 'on', '2022-07-03 06:33:45', '2024-05-01 11:41:46'),
(2675, 'cinetpay_test_mode', 'on', '2022-07-03 06:33:45', '2024-05-01 11:41:46'),
(2676, 'cinetpay_api_key', '12912847765bc0db748fdd44.40081707', '2022-07-03 06:33:45', '2024-05-01 11:41:46'),
(2677, 'cinetpay_site_id', '445160', '2022-07-03 06:33:45', '2024-05-01 11:41:46'),
(2678, 'cinetpay_preview_logo', '241', '2022-07-03 06:34:49', '2024-05-01 11:41:46'),
(2679, 'paytabs_preview_logo', '242', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2680, 'paytabs_gateway', 'on', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2681, 'paytabs_test_mode', 'on', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2682, 'pay_tabs_currency', 'USD', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2683, 'pay_tabs_profile_id', '96698', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2684, 'pay_tabs_region', 'GLOBAL', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2685, 'pay_tabs_server_key', 'SKJNDNRHM2-JDKTZDDH2N-H9HLMJNJ2L', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2686, 'billplz_preview_logo', '247', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2687, 'billplz_gateway', 'on', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2688, 'billplz_test_mode', 'on', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2689, 'billplz_key', 'b2ead199-e6f3-4420-ae5c-c94f1b1e8ed6', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2690, 'billplz_version', 'v4', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2691, 'billplz_x_signature', 'S-HDXHxRJB-J7rNtoktZkKJg', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2692, 'billplz_collection_name', 'kjj5ya006', '2022-07-03 07:43:31', '2024-05-01 11:41:46'),
(2693, 'pay_tabs_preview_logo', '229', '2022-07-03 07:46:55', '2022-07-03 07:53:04'),
(2694, 'donation_custom_amount_once', '10,20,40,50,75,100,120,150,200,250,300', '2022-07-04 04:23:15', '2022-10-16 06:29:09'),
(2695, 'donation_custom_amount_monthly', '30,50,80,100,150,200,250,300,350,400,450,500', '2022-07-04 04:23:15', '2022-10-16 06:29:09'),
(2696, 'how_many_days_ago_user_get_recuring_notification', '5', '2022-07-04 05:25:42', '2022-10-16 06:29:09'),
(2697, 'site_usd_to_myr_exchange_rate', '4.44', '2022-07-14 06:19:36', '2024-05-01 11:41:46'),
(2698, 'zitopay_preview_logo', '248', '2022-07-28 01:15:35', '2024-05-01 11:41:46'),
(2699, 'zitopay_gateway', 'on', '2022-07-28 01:15:35', '2024-05-01 11:41:46'),
(2700, 'zitopay_test_mode', 'on', '2022-07-28 01:15:35', '2024-05-01 11:41:46'),
(2701, 'zitopay_username', 'dvrobin4', '2022-07-28 01:15:35', '2024-05-01 11:41:46'),
(2702, 'donation_page_form_fields', '{\"field_type\":[\"text\",\"tel\"],\"field_name\":[\"address\",\"phone\"],\"field_placeholder\":[\"Address\",\"Phone\"],\"field_required\":[\"on\"]}', '2022-08-13 23:58:15', '2024-05-02 04:29:58'),
(2703, 'company_email', NULL, '2022-08-16 00:01:13', '2024-05-01 11:09:29'),
(2704, 'company_phone', NULL, '2022-08-16 00:01:13', '2024-05-01 11:09:29'),
(2705, 'enable_disable_decimal_point', 'no', '2022-10-26 11:10:55', '2024-05-01 11:41:46'),
(2706, 'toyyibpay_preview_logo', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2707, 'toyyibpay_gateway', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2708, 'toyyibpay_test_mode', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2709, 'toyyibpay_secret_key', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2710, 'toyyibpay_category_code', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2711, 'pagali_preview_logo', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2712, 'pagali_gateway', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2713, 'pagali_test_mode', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2714, 'pagali_page_id', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2715, 'pagali_entity_id', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2716, 'authorizenet_preview_logo', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2717, 'authorizenet_gateway', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2718, 'authorizenet_test_mode', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2719, 'authorizenet_merchant_login_id', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2720, 'authorizenet_merchant_transaction_id', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2721, 'sitesway_preview_logo', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2722, 'sitesway_gateway', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2723, 'sitesway_test_mode', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2724, 'sitesway_brand_id', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2725, 'sitesway_api_key', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46'),
(2726, 'site_uah_to_usd_exchange_rate', NULL, '2024-05-01 11:41:46', '2024-05-01 11:41:46');

-- --------------------------------------------------------

--
-- Структура таблицы `success_stories`
--

CREATE TABLE `success_stories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `story_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `success_story_category_id` int UNSIGNED NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_meta_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `success_story_categories`
--

CREATE TABLE `success_story_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `admin_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `via` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `operating_system` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `support_ticket_departments`
--

CREATE TABLE `support_ticket_departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `support_ticket_departments`
--

INSERT INTO `support_ticket_departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Submit Issue', 'publish', '2021-09-20 07:20:04', '2021-09-20 07:20:04'),
(2, 'Login Issue', 'publish', '2021-09-20 07:21:08', '2021-09-20 07:21:08'),
(3, 'Payment Gateway', 'publish', '2021-09-20 07:21:56', '2021-09-20 07:21:56'),
(4, 'Cause Issue', 'publish', '2021-09-20 07:22:17', '2021-09-20 07:22:17'),
(5, 'Captcha Issue', 'publish', '2021-09-20 07:22:28', '2021-09-20 07:22:28');

-- --------------------------------------------------------

--
-- Структура таблицы `support_ticket_messages`
--

CREATE TABLE `support_ticket_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `support_ticket_id` bigint UNSIGNED DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notify` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tax_logs`
--

CREATE TABLE `tax_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `designation`, `description`, `image`, `icon_one`, `icon_two`, `icon_three`, `icon_one_url`, `icon_two_url`, `icon_three_url`, `created_at`, `updated_at`) VALUES
(1, 'Siful Islam', '-Envato Cliente', NULL, '153', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 11:18:55', '2021-02-22 14:40:18'),
(2, 'sharifur', 'Founder', NULL, '151', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 11:19:23', '2021-02-22 14:39:58'),
(3, 'Olivia Hamel', '-Envato Cliente', NULL, '150', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 11:19:43', '2021-02-22 14:39:46'),
(4, 'Sharifur Rahman', 'CEO Ir-Tech', NULL, '152', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 11:20:02', '2021-02-22 14:39:30'),
(17, 'Barbara Linneman', 'Founder', NULL, '151', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2021-03-11 17:13:35', '2021-03-11 17:25:35'),
(18, 'Terrell Boderquist', 'Founder', NULL, '153', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2021-03-11 17:19:17', '2021-03-11 17:25:23'),
(19, 'Steven Tucker', 'Founder', NULL, '151', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2021-03-11 17:22:21', '2021-03-11 17:25:12'),
(20, 'Dominic Fanning', 'Founder', NULL, '150', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '##', '#', '#', '2021-03-11 17:24:11', '2021-06-10 17:06:33');

-- --------------------------------------------------------

--
-- Структура таблицы `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `topbar_infos`
--

CREATE TABLE `topbar_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `email_verify_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `monthly_income` int DEFAULT NULL,
  `annual_income` int DEFAULT NULL,
  `income_source` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driving_license_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_verify_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `user_verify_nid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_verify_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_verify_status` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified`, `email_verify_token`, `phone`, `address`, `state`, `city`, `zipcode`, `country_id`, `password`, `remember_token`, `image`, `created_at`, `updated_at`, `facebook_id`, `google_id`, `monthly_income`, `annual_income`, `income_source`, `nid_image`, `driving_license_image`, `passport_image`, `tax_verify_status`, `campaign_permission`, `user_verify_nid`, `user_verify_address`, `user_verify_status`) VALUES
(2, 'Dmitro', 'dustfip@gmail.com', 'Dmitro', '1', NULL, NULL, NULL, NULL, 'Kremenchuk', NULL, '230', '$2y$10$UQS5x.vhT/gAKFhR3pJHnuoWSsocE7wJrnCxudICQhVjfvg8qeIl2', 'GJqgsTT33OfbS7JZqX959RPScm8UKzMSAOhBnRt7kkhT48WmjfWg3zpZGhO8', NULL, '2024-05-01 10:47:31', '2024-05-01 10:51:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', '229', '229', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `user_follow`
--

CREATE TABLE `user_follow` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `campaign_owner_id` bigint UNSIGNED NOT NULL,
  `follow_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unfollow',
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint UNSIGNED NOT NULL,
  `widget_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `widget_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_order` int DEFAULT NULL,
  `widget_location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `widgets`
--

INSERT INTO `widgets` (`id`, `widget_name`, `widget_content`, `widget_order`, `widget_location`, `created_at`, `updated_at`) VALUES
(29, 'AboutUsWidget', 'a:7:{s:2:\"id\";s:2:\"29\";s:11:\"widget_name\";s:13:\"AboutUsWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"1\";s:9:\"site_logo\";s:3:\"311\";s:11:\"description\";s:43:\"Платформа збору для ЗСУ\";}', 1, 'footer', '2021-03-08 20:57:54', '2024-05-02 04:43:25'),
(30, 'ContactInfoWidget', 'a:9:{s:2:\"id\";s:2:\"30\";s:11:\"widget_name\";s:17:\"ContactInfoWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:16:\"Контакти\";s:8:\"location\";s:16:\"Власовка\";s:5:\"phone\";s:3:\"102\";s:5:\"email\";s:10:\"@gmail.com\";}', 2, 'footer', '2021-03-08 21:05:37', '2024-05-02 04:43:56'),
(35, 'RecentEventWidget', 'a:7:{s:2:\"id\";s:2:\"35\";s:11:\"widget_name\";s:17:\"RecentEventWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:5:\"event\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:13:\"Recent Events\";s:10:\"post_items\";s:1:\"5\";}', 2, 'event', '2021-03-09 16:00:03', '2024-05-02 04:45:37'),
(36, 'EventCategoryWidget', 'a:7:{s:2:\"id\";s:2:\"36\";s:11:\"widget_name\";s:19:\"EventCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:5:\"event\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:14:\"Event Category\";s:10:\"post_items\";s:1:\"5\";}', 3, 'event', '2021-03-09 16:56:54', '2024-05-02 04:45:37'),
(37, 'EventSearchWidget', 'a:6:{s:2:\"id\";s:2:\"37\";s:11:\"widget_name\";s:17:\"EventSearchWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:5:\"event\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";N;}', 1, 'event', '2021-03-09 17:52:02', '2024-05-02 04:45:37'),
(38, 'RecentBlogPostWidget', 'a:7:{s:2:\"id\";s:2:\"38\";s:11:\"widget_name\";s:20:\"RecentBlogPostWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:12:\"Recent Posts\";s:10:\"post_items\";s:1:\"5\";}', 2, 'blog', '2021-03-09 17:59:18', '2021-06-17 15:33:48'),
(39, 'BlogSearchWidget', 'a:6:{s:2:\"id\";s:2:\"39\";s:11:\"widget_name\";s:16:\"BlogSearchWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"1\";s:13:\"widget_title_\";s:6:\"Search\";}', 1, 'blog', '2021-03-09 18:00:22', '2021-06-17 15:34:19'),
(40, 'BlogCategoryWidget', 'a:7:{s:2:\"id\";s:2:\"40\";s:11:\"widget_name\";s:18:\"BlogCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:10:\"Categories\";s:10:\"post_items\";s:1:\"3\";}', 3, 'blog', '2021-03-09 18:00:37', '2021-06-17 15:34:04'),
(41, 'JobSearchWidget', 'a:6:{s:2:\"id\";s:2:\"41\";s:11:\"widget_name\";s:15:\"JobSearchWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:3:\"job\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";N;}', 2, 'job', '2021-03-09 18:49:52', '2021-07-27 20:36:39'),
(42, 'JobCategoryWidget', 'a:7:{s:2:\"id\";s:2:\"42\";s:11:\"widget_name\";s:17:\"JobCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:3:\"job\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:10:\"Categories\";s:10:\"post_items\";s:1:\"5\";}', 4, 'job', '2021-03-09 19:07:24', '2021-07-27 20:36:39'),
(43, 'RecentJobPostWidget', 'a:7:{s:2:\"id\";s:2:\"43\";s:11:\"widget_name\";s:19:\"RecentJobPostWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:3:\"job\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:11:\"Recent Jobs\";s:10:\"post_items\";s:1:\"4\";}', 3, 'job', '2021-03-09 19:18:52', '2021-07-27 20:36:39'),
(44, 'NewsletterWidget', 'a:7:{s:2:\"id\";s:2:\"44\";s:11:\"widget_name\";s:16:\"NewsletterWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:22:\"Підписатися\";s:11:\"description\";s:125:\"Підпишіться на нашу розсилку, щоб отримувати останні новини від нас.\";}', 3, 'footer', '2021-06-21 11:30:03', '2024-05-02 04:44:40'),
(45, 'RecentSuccessStoryWidget', 'a:7:{s:2:\"id\";s:2:\"45\";s:11:\"widget_name\";s:24:\"RecentSuccessStoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:13:\"success-story\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";s:22:\"Recent Success Stories\";s:10:\"post_items\";s:1:\"3\";}', 1, 'success-story', '2021-09-16 02:35:52', '2021-09-18 05:30:56'),
(46, 'SuccessStoryCategoryWidget', 'a:6:{s:11:\"widget_name\";s:26:\"SuccessStoryCategoryWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:13:\"success-story\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";s:24:\"Success Story Categories\";s:10:\"post_items\";s:1:\"4\";}', 2, 'success-story', '2021-09-16 02:39:19', '2021-09-16 02:55:01');

-- --------------------------------------------------------

--
-- Структура таблицы `xg_ftp_infos`
--

CREATE TABLE `xg_ftp_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `item_version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_license_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_license_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_license_msg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Индексы таблицы `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_name_unique` (`name`);

--
-- Индексы таблицы `causes`
--
ALTER TABLE `causes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cause_categories`
--
ALTER TABLE `cause_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cause_gift`
--
ALTER TABLE `cause_gift`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cause_logs`
--
ALTER TABLE `cause_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cause_updates`
--
ALTER TABLE `cause_updates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `client_areas`
--
ALTER TABLE `client_areas`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact_info_items`
--
ALTER TABLE `contact_info_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `counterups`
--
ALTER TABLE `counterups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `donation_withdraws`
--
ALTER TABLE `donation_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `events_categories`
--
ALTER TABLE `events_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event_attendances`
--
ALTER TABLE `event_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event_payment_logs`
--
ALTER TABLE `event_payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `flag_reports`
--
ALTER TABLE `flag_reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `header_sliders`
--
ALTER TABLE `header_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image_gallery_categories`
--
ALTER TABLE `image_gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs_categories`
--
ALTER TABLE `jobs_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `key_features`
--
ALTER TABLE `key_features`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `media_uploads`
--
ALTER TABLE `media_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mobile_sliders`
--
ALTER TABLE `mobile_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recurings`
--
ALTER TABLE `recurings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reward_redeems`
--
ALTER TABLE `reward_redeems`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `success_stories`
--
ALTER TABLE `success_stories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `success_story_categories`
--
ALTER TABLE `success_story_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `success_story_categories_name_unique` (`name`);

--
-- Индексы таблицы `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `support_ticket_departments`
--
ALTER TABLE `support_ticket_departments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tax_logs`
--
ALTER TABLE `tax_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `topbar_infos`
--
ALTER TABLE `topbar_infos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Индексы таблицы `user_follow`
--
ALTER TABLE `user_follow`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xg_ftp_infos`
--
ALTER TABLE `xg_ftp_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `causes`
--
ALTER TABLE `causes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `cause_categories`
--
ALTER TABLE `cause_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `cause_gift`
--
ALTER TABLE `cause_gift`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cause_logs`
--
ALTER TABLE `cause_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cause_updates`
--
ALTER TABLE `cause_updates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `client_areas`
--
ALTER TABLE `client_areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contact_info_items`
--
ALTER TABLE `contact_info_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `counterups`
--
ALTER TABLE `counterups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT для таблицы `donation_withdraws`
--
ALTER TABLE `donation_withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `events_categories`
--
ALTER TABLE `events_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `event_attendances`
--
ALTER TABLE `event_attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `event_payment_logs`
--
ALTER TABLE `event_payment_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `flag_reports`
--
ALTER TABLE `flag_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `header_sliders`
--
ALTER TABLE `header_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `image_galleries`
--
ALTER TABLE `image_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `image_gallery_categories`
--
ALTER TABLE `image_gallery_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `jobs_categories`
--
ALTER TABLE `jobs_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `key_features`
--
ALTER TABLE `key_features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `media_uploads`
--
ALTER TABLE `media_uploads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT для таблицы `mobile_sliders`
--
ALTER TABLE `mobile_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `recurings`
--
ALTER TABLE `recurings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `reward_redeems`
--
ALTER TABLE `reward_redeems`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2727;

--
-- AUTO_INCREMENT для таблицы `success_stories`
--
ALTER TABLE `success_stories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `success_story_categories`
--
ALTER TABLE `success_story_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `support_ticket_departments`
--
ALTER TABLE `support_ticket_departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tax_logs`
--
ALTER TABLE `tax_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `topbar_infos`
--
ALTER TABLE `topbar_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_follow`
--
ALTER TABLE `user_follow`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `xg_ftp_infos`
--
ALTER TABLE `xg_ftp_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
