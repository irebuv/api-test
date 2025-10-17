-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.0
-- Время создания: Окт 17 2025 г., 18:21
-- Версия сервера: 8.0.41
-- Версия PHP: 8.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shiki`
--

-- --------------------------------------------------------

--
-- Структура таблицы `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `businesses`
--

INSERT INTO `businesses` (`id`, `user_id`, `name`, `description`, `type`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Barbershop', 'Everything to done your haircut!', 'service', 'images/businesses/2025/09/24/s5octB1p1qXRwjqxEqKjIGLTksrScw8xPGlgYCla.jpg', '2025-09-24 15:00:43', '2025-09-24 15:00:43'),
(4, 1, 'dfg1', 'dfg1', 'service', 'images/businesses/2025/09/25/qL8fa1xW8hxKfLo83OUlYtEurXOObEyoznsMYsxl.png', '2025-09-24 15:04:19', '2025-09-25 12:45:48'),
(5, 1, 'Hairstylist on first street', 'We are best in our neighborhood! We are best in our neighborhood! We are best in our neighborhood! We are best in our neighborhood! We are best in our neighborhood!', 'service', 'images/businesses/2025/09/25/oa6aKc8dotAluJ54y15x2cGioLeUjDA69doUTpwm.webp', '2025-09-25 10:56:52', '2025-09-25 10:56:52'),
(6, 1, 'Elmir', 'You can always find anything in out shop for best price! You can always find anything in out shop for best price!', 'shop', 'images/businesses/2025/09/25/mzVEbyRBR2IDnjWSH1vbWmgsP5AfX2W65mRaAg6U.avif', '2025-09-25 10:59:33', '2025-09-25 10:59:33'),
(7, 1, 'Rozetka', 'You can always find anything in out shop for best price! You can always find anything in out shop for best price!', 'shop', 'images/businesses/2025/09/25/bdD7FmShWt2XYfbEFVbsZzkfqUFszliprn58dKQb.jpg', '2025-09-25 10:59:55', '2025-09-25 10:59:55'),
(8, 1, 'Antarktica', 'Only Norway food for great customers! Only Norway food for great customers!', 'cafe', 'images/businesses/2025/09/25/zlDMU76CFakCL3MmTaS3gR3KEnQeGXySztzqvolu.jpg', '2025-09-25 11:01:20', '2025-09-25 11:01:20'),
(9, 1, 'Fast food', 'Only American food for great customers! Only American food for great customers!', 'cafe', 'images/businesses/2025/09/25/BM0hOqnmT1nDXvNZ0IEOo7N4aYQf9LIjLpnKLoD5.jpg', '2025-09-25 11:01:54', '2025-09-25 11:01:54'),
(10, 1, 'Handmade wallets', 'Only handmade, only best quality', 'other', 'images/businesses/2025/09/25/X0zZrwFNLWVYnatSBN1a2uG31Vfp0EFvHEQgSHQu.jpg', '2025-09-25 11:03:52', '2025-09-25 11:03:52'),
(12, 1, 'Some different services', 'Some different services for all people in the world! Some different services for all people in the world! Some different services for all people in the world!', 'other', NULL, '2025-09-25 11:07:31', '2025-09-25 11:07:31'),
(13, 5, 'This post created another customer!', 'This post created another customer!', 'other', 'images/businesses/2025/09/25/vp7XzBQQNscFrS8SIvsSoloVT2ZrqqzKR2rVmoAN.png', '2025-09-25 13:26:46', '2025-09-25 13:26:46'),
(14, 6, 'Cafe on Fifth streat', 'We opened now! Welcome and enjoy our meals!', 'cafe', 'images/businesses/2025/09/26/psiVrhE6YlvZHf3qDq5JBr9Ywb8TLjK1Wnbz8dI3.png', '2025-09-26 11:04:43', '2025-09-26 11:04:43'),
(16, 6, 'Phone Repair', 'Do you need to fix your broken phone? Youre welcome!', 'service', 'images/businesses/2025/09/29/75QWjm7kgXdXRis4hl8nOnJIYDamu7QHfcHLpNvJ.png', '2025-09-29 11:58:04', '2025-09-29 11:58:04'),
(17, 6, 'Ship Delivery', 'Fast and always with confidence!', 'service', 'images/businesses/2025/09/29/J5RGW64KfpFMENvxjdC65FKLe3frcfxcpCA6rGhq.png', '2025-09-29 11:59:10', '2025-09-29 11:59:10'),
(27, 1, 'тест ', 'тест', 'тест', 'images/businesses/2025/10/15/3sZBU4bVthPZRdKVODkqWEpF9fv3bA4q7SulYniV.jpg', '2025-10-15 13:38:13', '2025-10-15 13:38:37');

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-1IiduU6etF9K6WiB', 'a:1:{s:11:\"valid_until\";i:1760019653;}', 1761226913),
('laravel-cache-7ivxOTjoCbTuijl5', 'a:1:{s:11:\"valid_until\";i:1760711226;}', 1761918246),
('laravel-cache-business_types', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:5:{i:0;s:7:\"service\";i:1;s:4:\"shop\";i:2;s:4:\"cafe\";i:3;s:5:\"other\";i:4;s:8:\"тест\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1760717039),
('laravel-cache-kdlKEWPIawvpogLk', 'a:1:{s:11:\"valid_until\";i:1760102268;}', 1761311808),
('laravel-cache-LeQgFO8mixDYAY09', 'a:1:{s:11:\"valid_until\";i:1760102143;}', 1761311683),
('laravel-cache-ohdw2B9avJjxUTMU', 'a:1:{s:11:\"valid_until\";i:1760101992;}', 1761311592),
('laravel-cache-QYQnjdJ942AeO9mM', 'a:1:{s:11:\"valid_until\";i:1760017230;}', 1761226050),
('laravel-cache-WdF7GGJ7sl1dFluS', 'a:1:{s:11:\"valid_until\";i:1760101687;}', 1761311287),
('laravel-cache-YKmrXFn1ox48nag0', 'a:1:{s:11:\"valid_until\";i:1759938310;}', 1761147310),
('shiki_cache_business_types', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:13:{i:0;s:7:\"service\";i:1;s:4:\"shop\";i:2;s:4:\"cafe\";i:3;s:5:\"other\";i:4;s:6:\"other1\";i:5;s:8:\"тест\";i:6;s:6:\"ыва\";i:7;s:3:\"fgh\";i:8;s:3:\"dfg\";i:9;s:4:\"fgh1\";i:10;s:3:\"sdf\";i:11;s:7:\"вап1\";i:12;s:9:\"dfgdfgdfg\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1760713745),
('shiki_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:8:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:6:\"module\";s:1:\"c\";s:4:\"name\";s:1:\"d\";s:5:\"label\";s:1:\"e\";s:11:\"description\";s:1:\"f\";s:9:\"is_active\";s:1:\"g\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:15:{i:0;a:8:{s:1:\"a\";i:2;s:1:\"b\";s:8:\"products\";s:1:\"c\";s:14:\"create-product\";s:1:\"d\";s:14:\"Create Product\";s:1:\"e\";N;s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:8:{s:1:\"a\";i:3;s:1:\"b\";s:10:\"categories\";s:1:\"c\";s:13:\"edit-category\";s:1:\"d\";s:13:\"Edit Category\";s:1:\"e\";N;s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:8:{s:1:\"a\";i:4;s:1:\"b\";s:8:\"products\";s:1:\"c\";s:13:\"edit-products\";s:1:\"d\";s:13:\"Edit Products\";s:1:\"e\";s:27:\"Permission to edit products\";s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:8:{s:1:\"a\";i:5;s:1:\"b\";s:8:\"products\";s:1:\"c\";s:15:\"delete-category\";s:1:\"d\";s:15:\"Delete Category\";s:1:\"e\";s:29:\"Permission to delete category\";s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:8:{s:1:\"a\";i:6;s:1:\"b\";s:8:\"products\";s:1:\"c\";s:12:\"view-product\";s:1:\"d\";s:12:\"View Product\";s:1:\"e\";N;s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:5;a:8:{s:1:\"a\";i:8;s:1:\"b\";s:5:\"roles\";s:1:\"c\";s:19:\"access-roles-module\";s:1:\"d\";s:19:\"Access Roles Module\";s:1:\"e\";s:19:\"Access Roles Module\";s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:6;a:8:{s:1:\"a\";i:10;s:1:\"b\";s:5:\"users\";s:1:\"c\";s:19:\"access-users-module\";s:1:\"d\";s:20:\"Acccess Users Module\";s:1:\"e\";s:20:\"Acccess Users Module\";s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:7;a:8:{s:1:\"a\";i:11;s:1:\"b\";s:11:\"permissions\";s:1:\"c\";s:25:\"access-permissions-module\";s:1:\"d\";s:26:\"Acccess Permissions Module\";s:1:\"e\";s:26:\"Acccess Permissions Module\";s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:8:{s:1:\"a\";i:12;s:1:\"b\";s:10:\"categories\";s:1:\"c\";s:24:\"access-categories-module\";s:1:\"d\";s:24:\"Access Categories Module\";s:1:\"e\";s:24:\"Access Categories Module\";s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:9;a:8:{s:1:\"a\";i:13;s:1:\"b\";s:8:\"products\";s:1:\"c\";s:22:\"access-products-module\";s:1:\"d\";s:22:\"Access Products Module\";s:1:\"e\";s:22:\"Access Products Module\";s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:8:{s:1:\"a\";i:14;s:1:\"b\";s:5:\"users\";s:1:\"c\";s:9:\"view-user\";s:1:\"d\";s:9:\"View User\";s:1:\"e\";N;s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:11;a:8:{s:1:\"a\";i:15;s:1:\"b\";s:5:\"users\";s:1:\"c\";s:9:\"edit-user\";s:1:\"d\";s:9:\"Edit User\";s:1:\"e\";N;s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:12;a:8:{s:1:\"a\";i:16;s:1:\"b\";s:5:\"users\";s:1:\"c\";s:11:\"delete-user\";s:1:\"d\";s:11:\"Delete User\";s:1:\"e\";N;s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:13;a:8:{s:1:\"a\";i:17;s:1:\"b\";s:5:\"users\";s:1:\"c\";s:11:\"create-user\";s:1:\"d\";s:11:\"Create User\";s:1:\"e\";N;s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:14;a:8:{s:1:\"a\";i:18;s:1:\"b\";s:7:\"welcome\";s:1:\"c\";s:19:\"access-admin-module\";s:1:\"d\";s:19:\"Access Admin Module\";s:1:\"e\";N;s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}}s:5:\"roles\";a:3:{i:0;a:6:{s:1:\"a\";i:1;s:1:\"c\";s:11:\"super-admin\";s:1:\"d\";s:11:\"Super Admin\";s:1:\"e\";s:18:\"He can everything!\";s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";}i:1;a:6:{s:1:\"a\";i:2;s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:5:\"Admin\";s:1:\"e\";s:5:\"Admin\";s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";}i:2;a:6:{s:1:\"a\";i:3;s:1:\"c\";s:9:\"moderator\";s:1:\"d\";s:9:\"Moderator\";s:1:\"e\";s:13:\"Only can view\";s:1:\"f\";i:1;s:1:\"g\";s:3:\"web\";}}}', 1760538380);

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'CartHolders1', 'cartholders1', 'CartHolders1', 'categories/fV4WykaY5xYxDAqVP6xSyUKQCFtITGZdUmKxVIoA.jpg', '2025-08-07 11:11:12', '2025-08-08 16:12:15'),
(2, 'Portmone1', 'portmone1', 'Portmone1', 'categories/0GGcZhF53zRxr88J4JHKDVRrDabvyCyJ4saKJIor.jpg', '2025-08-07 11:11:33', '2025-08-07 13:28:38');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `filters`
--

CREATE TABLE `filters` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `filter_group_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `filters`
--

INSERT INTO `filters` (`id`, `title`, `visible`, `filter_group_id`, `created_at`, `updated_at`) VALUES
(1, 'Action', NULL, 1, NULL, NULL),
(2, 'Adventure', NULL, 1, NULL, NULL),
(3, 'Avant Garde', NULL, 1, NULL, NULL),
(4, 'Comedy', NULL, 1, NULL, NULL),
(5, 'G', NULL, 2, NULL, NULL),
(6, 'PG', NULL, 2, NULL, NULL),
(7, 'PG-13', NULL, 2, NULL, NULL),
(8, 'R-17', NULL, 2, NULL, NULL),
(9, 'R+', NULL, 2, NULL, NULL),
(10, 'Rx', NULL, 2, NULL, NULL),
(11, 'Urban Fantasy', NULL, 3, NULL, NULL),
(12, 'Villainess', NULL, 3, NULL, NULL),
(13, 'Adult Cast', NULL, 3, NULL, NULL),
(14, 'Anthropomorphic', NULL, 3, NULL, NULL),
(15, 'Award Winning', NULL, 3, NULL, NULL),
(16, 'CGDCT', NULL, 3, NULL, NULL),
(17, 'Childcare', NULL, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `filter_anime`
--

CREATE TABLE `filter_anime` (
  `filter_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `filter_group_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `filter_anime`
--

INSERT INTO `filter_anime` (`filter_id`, `product_id`, `filter_group_id`) VALUES
(1, 35, 1),
(1, 44, 1),
(1, 46, 1),
(2, 35, 1),
(2, 44, 1),
(5, 44, 2),
(5, 46, 2),
(7, 49, 2),
(5, 58, 3),
(11, 44, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `filter_groups`
--

CREATE TABLE `filter_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `filter_groups`
--

INSERT INTO `filter_groups` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Genres', NULL, NULL),
(2, 'Rating', NULL, NULL),
(3, 'Themes', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_28_185521_create_products_table', 1),
(5, '2025_08_01_161015_create_categories_table', 2),
(6, '2025_08_12_140858_create_permission_tables', 3),
(7, '2025_09_22_142144_create_filter_groups_table', 4),
(8, '2025_09_22_142253_create_filters_table', 4),
(9, '2025_09_22_142429_create_filter_anime_table', 4),
(10, '2025_09_24_145536_create_businesses_table', 5),
(11, '2025_09_24_145629_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `business_id`, `name`, `phone`, `date`, `is_read`, `description`, `created_at`, `updated_at`) VALUES
(1, 13, 'вап', 'вап', '2025-09-25', 0, 'вап', '2025-09-26 13:07:38', '2025-09-26 13:07:38'),
(2, 10, 'sdf', '345', '2025-09-30', 1, 'dfg', '2025-09-29 13:50:46', '2025-09-30 11:46:47'),
(3, 12, 'hgj', '67867', '2025-09-30', 1, 'ghj', '2025-09-29 13:55:13', '2025-09-30 11:46:47'),
(4, 6, 'Vitalii', '+3807487489', '2025-10-03', 1, 'I need a new phone from your store', '2025-09-29 14:05:49', '2025-09-30 11:46:47'),
(5, 10, 'dsf', 'dsf', '2025-09-30', 1, 'sdf', '2025-09-30 11:15:58', '2025-09-30 11:46:47'),
(6, 10, 'Vasil', '+380748455145', '2025-10-02', 1, 'I need your handmade wallet. Intresting one in blue color.', '2025-09-30 11:16:56', '2025-09-30 11:46:47'),
(8, 16, 'Vitalii', '+3809709997478', '2025-10-15', 0, 'I need to fix my phone', '2025-09-30 14:14:41', '2025-09-30 14:14:41'),
(9, 5, 'Vitaliy', '+38074874887', '2025-10-24', 1, 'Need some tools', '2025-10-16 14:24:32', '2025-10-17 11:36:11'),
(10, 6, 'Petya', '+3333', '2025-10-30', 1, 'I need a new phone', '2025-10-17 10:41:56', '2025-10-17 11:36:11'),
(11, 5, 'Vitalii', '+380748', '2025-10-30', 1, 'Here we go again', '2025-10-17 11:37:28', '2025-10-17 11:51:01'),
(12, 1, 'I hope this finall request', '+9877158877', '2025-10-31', 0, 'Let\'s go', '2025-10-17 11:53:41', '2025-10-17 11:53:41');

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `module`, `name`, `label`, `description`, `is_active`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'products', 'create-product', 'Create Product', NULL, 1, 'web', '2025-08-13 12:03:33', '2025-08-13 12:03:33'),
(3, 'categories', 'edit-category', 'Edit Category', NULL, 1, 'web', '2025-08-14 13:08:56', '2025-08-14 13:08:56'),
(4, 'products', 'edit-products', 'Edit Products', 'Permission to edit products', 1, 'web', '2025-08-14 13:09:33', '2025-08-14 13:09:33'),
(5, 'products', 'delete-category', 'Delete Category', 'Permission to delete category', 1, 'web', '2025-08-14 13:10:44', '2025-08-14 13:10:44'),
(6, 'products', 'view-product', 'View Product', NULL, 1, 'web', '2025-08-15 10:29:11', '2025-08-15 10:29:11'),
(8, 'roles', 'access-roles-module', 'Access Roles Module', 'Access Roles Module', 1, 'web', '2025-08-15 16:05:40', '2025-08-15 16:05:40'),
(10, 'users', 'access-users-module', 'Acccess Users Module', 'Acccess Users Module', 1, 'web', '2025-08-15 16:07:19', '2025-08-15 16:24:09'),
(11, 'permissions', 'access-permissions-module', 'Acccess Permissions Module', 'Acccess Permissions Module', 1, 'web', '2025-08-15 16:09:10', '2025-08-15 16:24:26'),
(12, 'categories', 'access-categories-module', 'Access Categories Module', 'Access Categories Module', 1, 'web', '2025-08-15 16:23:48', '2025-08-15 16:23:48'),
(13, 'products', 'access-products-module', 'Access Products Module', 'Access Products Module', 1, 'web', '2025-08-15 16:24:00', '2025-08-15 16:24:00'),
(14, 'users', 'view-user', 'View User', NULL, 1, 'web', '2025-08-19 11:04:09', '2025-08-19 11:04:09'),
(15, 'users', 'edit-user', 'Edit User', NULL, 1, 'web', '2025-08-19 11:04:21', '2025-08-19 11:04:21'),
(16, 'users', 'delete-user', 'Delete User', NULL, 1, 'web', '2025-08-19 11:04:35', '2025-08-19 11:04:35'),
(17, 'users', 'create-user', 'Create User', NULL, 1, 'web', '2025-08-19 11:04:55', '2025-08-19 11:04:55'),
(18, 'welcome', 'access-admin-module', 'Access Admin Module', NULL, 1, 'web', '2025-09-03 12:53:13', '2025-09-03 12:53:13');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `rating` decimal(10,2) DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` text COLLATE utf8mb4_unicode_ci,
  `featured_image_original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `rating`, `featured_image`, `files`, `featured_image_original_name`, `created_at`, `updated_at`) VALUES
(28, 'Класс убийц 2 / Ansatsu Kyoushitsu 2nd Season', 'klass-ubiic-2-ansats', 'Летние каникулы подходят к концу, и после головокружительных приключений на уединённом острове худший класс средней школы Кунугигаока готов начать своё второе учебное полугодие. И хотя изменилось многое, задание, данное ученикам, осталось прежним: до конца учебного года они обязаны убить своего учителя. Проще сказать, чем сделать, ведь Коро-сэнсэй ясно дал понять, что не собирается сдаваться без боя. Смогут ли ученики класса 3-E победить монстра-осьминога, способного двигаться со скоростью в 20 махов, или же они вновь потерпят неудачу? На кону стоит судьба всего мира!\r\nАвтор:ZephelesZepheles', 8.47, 'images/2025/09/12/9InGG5YeaVayIZffhQlDnF4qo4JXAXesSPaZkWBA.jpg', NULL, '67c0157ec2b244e540cfcc106a133a94.jpeg', '2025-09-05 12:50:56', '2025-09-12 13:52:25'),
(29, 'Город, в котором меня нет / Boku dake ga Inai Machi', 'gorod-v-kotorom-meni', 'Жизнь мангаки нелегка. Тяжёлый и кропотливый труд по достоинству вознаграждается в редких случаях. Авторские работы, в которые были вложены душа и нравоучительный посыл, не всегда достигают сердец читателей. Однажды понять, что ты пустой и скучный человек, не способный на большее — самый большой страх в жизни мангаки.\r\nСатору Фудзинума тоже автор. В свои двадцать восемь лет он трудится не покладая рук и стремится к намеченной цели. Однако не все авторы гении, и далеко не у каждого получается выразить себя в своих работах. «Каким должен быть главный герой?», «Должен ли он быть достаточно похож на меня?», «Чего ему не хватает?», «Чего не хватает мне?» Такими вопросами ежедневно задаётся Сатору и, как многие, боится однажды увидеть себя пустым и скучным.\r\nНо разве пустые и скучные люди могут так же ловко подмечать в своем окружении разные мелочи? Могут ли они, воспользовавшись этим, с безграничной самоотдачей помогать людям? Сатору может. Но признавать это в себе, то, что делает его далеко не посредственным, он не хочет. Впрочем, как и называть свой дар сверхъестественным. Ведь, в сущности, этот хмурый мангака имеет возможность не просто подмечать мелочи. Он может, хоть и непроизвольно, «перематывать» время обратно, что уж точно нельзя назвать обычным.\r\nНо для чего ему дана эта сила? Быть может, для того, чтобы исправить ошибки прошлого? Ведь когда-то давно, когда друзьям и знакомым Сатору грозила опасность, он, будучи ребёнком, не смог им помочь. Это до сих пор тяжким грузом лежит на его плечах. И вот теперь, когда затаившаяся угроза из прошлого вновь показала клыки, способность Сатору весьма изощрённо проявила себя, но тем самым и предоставила ему возможность не допустить однажды уже случившуюся трагедию.', 8.30, 'images/2025/09/12/UZR0fJ353vBLcgcHobKyYlRw594B9jHWojAZGmuy.jpg', NULL, '1eb85b2c736cace5dc94833f280ad2c2.jpeg', '2025-09-05 13:02:27', '2025-09-12 13:52:16'),
(30, 'Код Гиас: Восставший Лелуш / Code Geass: Hangyaku no Lelouch', 'kod-gias-vosstavsii-', 'История рассказывает о недалёком будущем, когда Британской Империей было захвачено полмира. Японии в этом варианте не существует — она завоёвана Британией годы назад и переименована в «11-й сектор», а сами японцы уничижительно зовутся «одиннадцатыми».\r\nГлавный герой истории, Лелуш Ламперуж, опальный отпрыск императорского рода, сослан с сестрой в 11-й сектор, где учится в академии для местных аристократов. Волею случая он оказывается втянут в атаку японских повстанцев на Британию. Империя же, не терпящая неповиновения, немедленно высылает карательные отряды солдат, уничтожающие всё на своём пути. Спасаясь от имперцев, Лелуш пересекается с таинственной зеленоволосой девушкой, называющей себя С.С. Оказавшись загнанной в угол и окружённой солдатами, С.С. передаёт Лелушу Великий дар, называемый гиасом...\r\nТеперь Империя заплатит за всё!', 8.70, 'images/2025/09/12/EtGunMSDQD03CJW9kujbD0NdZxD9fFMNRikZaRAF.jpg', NULL, 'c1576bdcddd81781d600266245906989.jpeg', '2025-09-05 13:03:15', '2025-09-12 13:52:07'),
(31, 'Код Гиас: Восставший Лелуш 2 / Code Geass: Hangyaku no Lelouch R2', 'kod-gias-vosstavsii-2', 'Прошёл год со дня разгрома «Чёрного восстания». Остатки «Ордена Чёрных рыцарей» скрываются от Империи, рассеявшись по стране, их лидер Зеро казнён Британией, а жители Сектора-11 угнетены ещё сильнее. Основные силы Империи теперь сконцентрированы на Европейском фронте.\r\nВпрочем, для самих британцев в Одиннадцатом Секторе жизнь наладилась. В один прекрасный день британский студент, прогуливая занятия, отправляется играть партию шахмат на деньги. Незримо для него за ним наблюдают... Вскоре ему предстоит вернуть утраченную память и продолжить подавленное Империей восстание Зеро.', 8.91, 'images/2025/09/12/Ndm3GlCefes2CaZdUTZsqZwAJP9gv5dTPT23VfFe.jpg', NULL, '0b5d2c31efae13e936a60b6a30bfc979.jpeg', '2025-09-05 13:03:32', '2025-09-12 13:52:01'),
(32, 'Эльфийская песнь / Elfen Lied', 'elfiiskaia-pesn-elfe', 'Диклониусы — побочная, мутировавшая ветвь людей, избранная, кажется, самим Богом, чтобы положить конец человечеству. От обычных людей их отличают небольшие рожки на голове и то, что они владеют как бы «шестым чувством», дающим им способность к телекинезу. Именно из-за этой опасной силы правительство отлавливает их и помещает в специальные лаборатории, где они подвергаются жестоким экспериментам.\r\nЛюси — юная и психически неуравновешенная девушка-диклониус, которой удаётся избавиться от сдерживающих её пут и предпринять попытку к бегству, по пути жестоко убивая охранников лаборатории: только выстрелив ей в голову из крупнокалиберного оружия, пулю которого она не успевает отклонить, охрана смогла нанести ей ущерб. Однако Люси удаётся выжить, упав с утёса в океан и дрейфуя некоторое время, пока двое молодых людей, Кота и Юка, не находят её на пляже. Выстрел в голову вызвал потерю памяти и речевую дисфункцию: единственное, что она в состоянии сказать — междометие «ню», в честь которого нашедшие и окрестили её. В конце концов Кота отводит Люси к себе домой и позволяет ей жить там... Однако похоже на то, что тёмная сторона Люси никуда не исчезла...', 7.46, 'images/2025/09/12/Ozul4bxvatmh7GghKN3myLDrHNa6CqHhHg9ivGLr.jpg', NULL, '9a35e8a2f9c7d62af1635d8a777c0da1.jpeg', '2025-09-05 13:04:38', '2025-09-12 13:50:46'),
(33, 'Судьба/Ночь схватки: Бесконечный мир клинков 2 / Fate/stay night: Unlimited Blade Works 2nd Season', 'sudbanoc-sxvatki-bes', 'Фуюки — город, окруженный океаном и горами, — становится местом для древнего ритуала: битвы за мифический Святой Грааль, который, согласно легендам, исполнит любое желание своего обладателя. В битве участвуют семь магов и семь героических душ: Сэйбер, Лансер, Арчер, Райдер, Кастер, Ассассин, Берсеркер.\r\nКаждый маг заключает договор с присвоенным ему духом и сражается с другими до тех пор, пока в живых не останется лишь один маг со своим слугой.\r\nЭто «Война за Святой Грааль».', 8.32, 'images/2025/09/12/sQs1seDMWowqznbtZORHdfO1QMh9TxrWCu7oGqi6.jpg', NULL, 'a5cef8532a776794e1a2b351b2d607fc.jpeg', '2025-09-05 13:04:57', '2025-09-12 13:51:07'),
(34, 'Тёмная сторона Брюнхильды / Gokukoku no Brynhildr', 'temnaia-storona-briu', 'В детстве Рёта Мураками был увлечён девочкой по имени Куронэко. Она утверждала, что видела пришельцев, однако ей никто не верил, и даже юный Рёта был настроен скептически. Однажды девочка решила отвести его на то самое место и показать пришельцев, но произошёл несчастный случай, в результате которого Куронэко погибла, а Рёта с серьёзными ранениями попал в больницу.\r\nИдут годы... Чувствуя вину за случившееся, Рёта пытается найти доказательство того, что рассказы Куронэко о пришельцах не были плодом её воображения.\r\nВ один прекрасный день в класс к Мураками переводится новая студентка, которая выглядит точь-в-точь как Куронэко, и зовут её Нэко Куроха! При этом сама новенькая говорит, что никогда раньше не встречала Мураками, но, кажется, у неё есть сверхчеловеческая сила, и она даже может предсказывать будущее!\r\nКак же изменится жизнь Мураками после встречи с этой загадочной девушкой, утверждающей, что она волшебница?', 6.85, 'images/2025/09/12/6sk9yWsmfUhwTjjyoWPt7NaCPhbaG0mjcHDkEK1k.jpg', NULL, '57140bdd98b69bcf0043c92ff1f4d80f.jpeg', '2025-09-05 13:05:19', '2025-09-12 13:51:16'),
(35, 'Семь смертных грехов / Nanatsu no Taizai', 'sem-smertnyx-gr', '«Семь Смертных Грехов». Давным-давно так называли семь могущественных рыцарей, обвинявшихся в сговоре, целью которого было свергнуть короля Британии. Воины были казнены благородным орденом Священных Рыцарей, однако ходят слухи, что «Семь Грехов» всё ещё живы.\r\nДесять лет спустя Священные Рыцари устроили государственный переворот и вероломно убили короля, установив собственную тиранию в стране. Элизабет, третья дочь короля, отправляется на поиски «Семи Смертных Грехов», дабы, заручившись их поддержкой, вернуть в страну закон и справедливость. Итак, путешествие начинается...', 7.61, 'images/2025/09/12/Pi3UGuz2ZgeziYvjkLNXASj1EPKDYwVoLfiVPvrA.jpg', NULL, '406492e2263f171a61d063c087512631.jpeg', '2025-09-05 13:06:07', '2025-09-12 13:51:23'),
(36, 'Нет игры — нет жизни / No Game No Life', 'net-igry-net-zizni-n', 'История фокусируется на Соре и Сиро, брате и сестре, репутация которых как безупречных NEET, хикикомори и игроманов породила легенды по всему интернету. Эти два геймера рассматривают реальную жизнь как очередную «отстойную игру».\r\nОднажды парень, именуемый «Богом», призвал их в альтернативный мир. Там он запретил войны и заявил, что это мир, в котором «всё решают игры», даже национальные границы. Человечество было вытеснено другими расами в единственный оставшийся город. Станут ли ни на что не годные Сора и Сиро «спасителями человечества» в этом альтернативном мире?\r\n«Пришло время вступить в игру!»\r\nАвтор:MinatoMinato', 8.04, 'images/2025/09/12/HgGJ9NAGfT4XBy3pgigcKeKgWmuHig672CHKMuIj.jpg', NULL, '4ad49091b03b16f27ee45f5fab14bd41.jpeg', '2025-09-05 13:08:06', '2025-09-12 13:51:37'),
(37, 'Нет игры — нет жизни: Начало / No Game No Life: Zero', 'net-igry-net-zizni-n2', 'Эта история происходит за шесть тысяч лет до того, как Сора и Сиро появились в истории Дисборда.\r\nВойна уничтожила землю, разрывая небеса, разрушая звёзды и даже угрожая уничтожить всё человечество. Среди хаоса и разрушения молодой человек по имени Рику ведёт человечество к завтрашнему дню по велению своего сердца. В один прекрасный день, в руинах города эльфов, он встречает Шуви, девушку-изгнанницу экс-машин, которая просит научить её, что значит иметь человеческое сердце.', 8.17, 'images/2025/09/12/7pU0BoR4xpBx9rMuIRtytSrvHNSlsLwMwgIqtUpG.jpg', NULL, '7104095855381a073cead8a4f1618d32.jpeg', '2025-09-05 13:08:26', '2025-09-12 13:51:43'),
(41, 'Поднятие уровня в одиночку / Ore dake Level Up na Ken', 'podnyatie-urovnya-v', 'Десять лет назад по всему миру стали открываться некие «врата», ведущие в подземелья с монстрами, противостоять которым оказалось не под силу даже военным. Однако если успеть вовремя победить босса подземелья, то врата пропадут, не открывшись, и мирные люди не пострадают. Сразиться с боссом способны только избранные — люди, получившие особые силы, чтобы бороться с чудовищами. Таких людей назвали «охотниками». Вот только способности, которые они получают, крайне различны как по функционалу, так и по мощи.\r\n\r\nНапример, охотник Сон Джину относится всего лишь к рангу Е: хоть и сильнее обычного человека, он в разы слабее любого самого слабого охотника. Он не в состоянии справиться с самым ничтожным монстром, поэтому вынужден ходить в подземелье в составе большой группы. Напарники убивают всю мелочь, так что у Сон Джину нет возможности хорошо заработать на охоте. Нет денег, а значит нет финансов на улучшение снаряжения. В общем, замкнутый круг. Однако он продолжает заниматься «охотой», чтобы оплатить больничные счета матери, которая находится в коме.\r\n\r\nВсё изменилось, когда, отправившись в очередное низкоранговое подземелье, они с командой наткнулись на очень странную вещь — ещё одно подземелье, которое оказалось внутри того, что они уже очистили. Решив рискнуть, они вошли внутрь.', 8.24, 'images/2025/09/08/KK26Rmw5g7a7QK9XlV1GVmbGTZppTnG3YHJ4eBsV.webp', '[\"images\\/2025\\/09\\/08\\/3IUmQ206byU0VXtiuxQ6HVd8MHlLsbMtuqN2YgzA.jpg\"]', 'main_2x-464c78cefbef27e2e592598a4b756761.webp', '2025-09-08 12:30:29', '2025-09-08 12:57:22'),
(42, 'Re:Zero. Жизнь с нуля в альтернативном мире / Re:Zero kara Hajimeru Isekai Seikatsu', 'test', 'На обратном пути из магазина Субару Нацуки неожиданно призывают в другой мир. Стоит чёрт знает где, самого призывающего ни следа, а на него ещё и нападают! Дело было бы совсем дрянь, если бы не прекрасная сереброволосая дева с пушистым котиком наперевес, которая спасает Субару, после чего тот в благодарность присоединяется к ней. Стоит им найти подсказку — и обоих тут же убивают.\r\nСубару приходит в себя в том же месте, что в первый раз, и обнаруживает у себя неплохую способность — «Возврат в прошлое после смерти». Сможет ли беспомощный парень, умеющий только отматывать время, спасти девушку от смертельной участи?', 8.24, 'images/2025/09/08/96bND1sdfsczq4rX0WQZxtko1qDx8Fq6rCSVlFHK.webp', '[\"images\\/2025\\/09\\/08\\/ZSZOdcijkYWIVFyvLvlD5J6Zo410PB3H7ozVbjQ1.webp\"]', 'main_2x-7a33f3b75eebb3f00630c4f76089a626.webp', '2025-09-08 12:39:44', '2025-09-08 13:03:07'),
(43, 'Врата Штейна / Steins Gate', 'vrata-shteyna-steins', 'Сняв в Акихабаре квартиру, самопровозглашённый сумасшедший учёный Окабэ Ринтаро устроил там «лабораторию» и в компании своей подруги детства Сины Маюри и хакера-отаку Хасиды Итару изобретает «гаджеты будущего». Троица отлично проводит время вместе, работая над совместным проектом — «мобиловолновкой», которой можно управлять с помощью текстовых сообщений.\r\nВскоре «сотрудники лаборатории» сталкиваются с чередой загадочных инцидентов, которые приводят к открытию, изменившему правила игры: «мобиловолновка» может отправлять электронные письма в прошлое и таким образом изменять историю.', 9.07, 'images/2025/09/08/VlcOj7JdpO9YGj8y8w5Auy1Cm4RzI9iKXygFPZ7q.webp', NULL, 'main_2x-45f26288ccbf2078d6df4f38e81e01a7.webp', '2025-09-08 13:04:03', '2025-09-08 13:04:03'),
(44, 'Мастера Меча Онлайн / Sword Art Online', 'mastera-mecha-onlayn', 'Вышла Sword Art Online – многопользовательская игра нового поколения. Игра, где смерть реальна и бегство невозможно, а единственный выход — это дойти до конца.\r\nНе зная этой правды, десять тысяч игроков, используя нейрошлемы компании «Агис», одновременно зарегистрировались и тем самым положили начало смертельной битве, длящейся уже два долгих года.\r\nГлавный герой Кирито принимает правила игры и не собирается сдаваться. В игровом мире, в гигантской парящей крепости под названием Айнкрад, он становится игроком-одиночкой. Чтобы выйти из игры живым, ему придётся пройти все 100 этажей этого огромного сооружения. Однако, не в силах противостоять настойчивости мастера рапиры Асуны, он начинает работать с ней в паре. Возможно, эта встреча предопределит судьбу всей игры...', 7.22, 'images/2025/09/08/gI8hMWLi6qfFETkFVQB7RQIfQX5xedvZvSzjQObi.webp', NULL, 'main_2x-fb19a1dedc2ab1a976439ae7dd4b5eae.webp', '2025-09-08 13:05:04', '2025-09-08 13:05:04'),
(45, 'Класс убийц / Ansatsu Kyoushitsu', 'klass-ubiyc-ansatsu', 'Однажды 70% Луны оказывается уничтожено неизвестным дотоле науке существом. При этом оно заявляет, что если в течение последующего года его никто не убьёт, то оно уничтожит и Землю. Мировой конгресс после ряда попыток потерял все надежды на его убийство. Теперь очередь японских школьников! У учеников особого класса 3-E поставлена единственная задача — убить своего учителя, коим и является то самое существо. Да только каким образом класс, с первого взгляда, обычных не преуспевающих учеников сможет убить неизвестного монстра, физические особенности и способности которого превосходят всё, что известно человечеству? И насколько изощрённые способы убийства самый уникальный класс сможет придумать и реализовать?', 8.07, 'images/2025/09/08/rYXfdFPIXw9PTj9OUzRhPVTc8mJ0x7TsRZiWyhH1.webp', NULL, 'main_2x-2aec004ef0dce3977414c8fe08bc0865.webp', '2025-09-08 13:05:29', '2025-09-08 13:05:29'),
(46, 'Синий экзорцист / Ao no Exorcist', 'siniy-ekzorcist-ao', 'Когда заходит солнце — наступает время демонов.\r\nМир людей Ассия и мир демонов Геена объединены в единое целое, словно зеркало, но ничто во плоти не может пересечь границу между мирами. Однако для демонов всё же есть путь: овладев слабым волей, можно пересечь границу, но даже так, для владыки Геены, Сатаны, путь в Ассию закрыт. Ведь нет такого человека, способного надолго вместить сущность верховного демона — тело несчастного рушится на глазах.\r\nИ всё же Сатана находит способ. Вселившись в мужчину, он становится отцом двойняшек, один из которых, Рин, рождается получеловеком-полудемоном, а второй, названный Юкио, — обычным человеком. Узнавшие обо всём иерархи церкви хотят уничтожить детей, но их останавливает сильнейший из ныне живущих экзорцистов, Сиро Фудзимото, и усыновляет двойняшек.\r\nПроходят годы, и дети взрослеют, вскоре Рину предстоит узнать правду о рождении и выбрать, кем же он хочет быть: обычным человеком, демоном, или, может быть, пойти по пути приёмного отца и стать экзорцистом?\r\nАвтор:morrmorr', 7.47, 'images/2025/09/08/7QvA0gMeRjIzw5hpaUYjX3XEved0VGq1nWT1fjmU.webp', NULL, 'main_2x-39d89b6429ef58c478a58e3bfffe7abd.webp', '2025-09-08 13:05:43', '2025-09-08 13:05:51'),
(47, 'Истории монстров / Bakemonogatari', 'istorii-monstrov', 'История о Коёми Арараги, ученике третьего класса старшей школы и бывшем вампире.\r\n\r\nОднажды он шёл по школьной лестнице, а сверху на него упала девушка. Впрочем, падала она медленно, да и вес её оказался странным, всего несколько килограмм. Приготовившийся было к сильному удару, Коёми с лёгкостью ловит её на руки. Девушка оказалась одноклассницей Арараги, Хитаги Сэндзёгахарой, красивой, но, на первый взгляд, застенчивой и абсолютно нелюдимой — за три года совместной учёбы они ни разу не разговаривали. И это касается не только Коёми — последние годы девушка не общалась ни с кем. Характер у неё, как оказалось, вовсе не застенчивый, и, на свою беду, Арараги об этом вскоре узнаёт, ведь Хитаги совсем не хочет, чтобы кто-то узнал о её секрете. А секрет заключается в её весе, который украло божество веса, предстающее в образе огромного краба. Коёми признаётся, что в прошлом сам пострадал от нападения сверхъестественного существа и по итогу превратился в вампира, однако его знакомый, Мэмэ Осино, помог ему снова стать человеком. Возможно, Мэмэ сможет помочь и ей...', 8.32, 'images/2025/09/08/duKNmSDnQXsBa1GWMYuy4r0AcgFWwODJWpc70J49.webp', NULL, 'main_2x-8aa62c7e7ac8ced020b8444e2f741c44.webp', '2025-09-08 13:06:10', '2025-09-08 13:06:10'),
(48, 'Тетрадь смерти / Death Note', 'tetrad-smerti-death', 'Нет такого человека, который не хотел бы иметь уникальные способности, или стать очередным супергероем. Любой бы захотел помочь этому миру от зла, уничтожать преступников, насильников и воров. А что может случиться, если такое сильное оружие попадет в руки того, кто не испытывает никаких чувств и отрицает все идеалы? Парень, по имени Ягами, однажды на школьном дворе находит странную тетрадь, которая называется Тетрадь Смерти. В ней написано, что она имеет большую силу. Стоит лишь в ней написать имя того, кого нужно убить, и он умрет в заданное время.\r\n\r\nЯгами, как и сделал бы любой здравомыслящий человек, в это не поверил, но тетрадь все же сохранил. Но через время любопытство все же пересилило, и он сделал свою первую запись. Какого же было удивление, когда тот, кого он внес в тетрадь, умер. С той поры он стал вписывать туда все новых и новых преступников, люди вокруг заговорили о странном человеке, который таким образом борется с бандитами, и узнать, кто стоит за всем этим решает детектив, называющий себя Эл.', 8.62, 'images/2025/09/08/ys4J7RgIdIue6RCvrmLEtaTMDlzYeWKxQcJhYHBX.webp', NULL, 'main_2x-17dc771f3c4f3cb63711d8ea080db8bc.webp', '2025-09-08 13:07:39', '2025-09-08 13:07:39'),
(49, 'Легенда о легендарных героях / Densetsu no Yuusha no Densetsu', 'legenda-o', 'Действие серии происходит в фентезийном мире, где много лет назад демоны свободно бродили по миру и несли людям смерть и разрушение. Со временем среди человечества появились герои, овладевшие могущественной магией и сумевшие победить демонов.\r\nС тех времен проходят многие века.\r\nКоролевство Роланд, раскинувшееся на юге материка, — крупнейшее и сильнейшее государство современности. Всю свою историю Роланд воевал с соседями, и нынешний период не исключение, страна воюет с соседним королевством Эстабулом. В войне уже пали король с сильнейшими рыцари страны, и даже студентов начинают посылать на войну.\r\nРайнер Лют, владелец альфа-стигмы, вместе со своими друзьями обучается в Королевской Магической Академии Роланда. Студент он ленивый, старается лишний раз не напрягаться и мечтает лишь об одном — чтобы его оставили в покое. Одним из сокурсников Райнера оказывается Сион Астал, королевский бастард, раздражающий многих дворян одним своим существованием. Используя войну как повод и договорившись с Эстабулом, группу студентов, куда входят Райнер и Сион, отправляют на удаленную заставу, где по дороге их перехватывает отряд рыцарей-магов Эстабула. Убивают всех, кроме Райнера и Сиона, когда в Райнере пробуждается альфа-стигма...\r\nНадо заметить, что владение альфа-стигмой является страшным проклятием: все владельцы оной непременно рано или поздно сходят с ума и начинают уничтожать все вокруг. Чтобы не компрометировать Райнера, победу над рыцарями Эстабула списывают на Сиона, и он в одночасье становится героем войны, а позже и королем.\r\nСпустя несколько лет, мы увидим, как Сион посылает Райнера, в компании очаровательной мечницы Феррис, на миссию по поискам магических артефактов древних героев. Миссия эта строго засекречена, соседи считают Райнера c Феррис шпионами, а свои — предателями и врагами.\r\nВот так парочка и начинает слоняться по миру, занимаясь чем угодно, только не поисками, и постоянно задаваясь вопросом, а оно им вообще надо?', 7.49, 'images/2025/09/08/89H7y2xZfpNehiRITyRplvW2zAZv7jnuq6GzXOLm.webp', NULL, 'main_2x-c795fdba3e6bf1a884c5f43cc34529ca.webp', '2025-09-08 13:08:08', '2025-09-08 13:08:08'),
(50, 'Может, я встречу тебя в подземелье? / Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka', 'mozhet-ya-vstrechu', 'Город Орарио неспроста называют городом лабиринтов. Жилые районы, парки и скверы, мощённые камнем улицы — всё это скрывает под собой, хранит где-то глубоко внизу огромных размеров лабиринт, прославленное на весь мир и чертовски опасное «Подземелье». Со всех сторон света это место притягивает в город безмерное количество авантюристов — людей умелых, азартных и честолюбивых. Людей, жаждущих приключений и славы, а ещё, быть может, мимолётных романтических отношений с прекрасной спутницей.\r\nБелл Кранел, новоиспечённый авантюрист, как и многие, воодушевлённый грандиозными планами, отправляется в этот загадочный город снов и желаний, где встречает богиню Гестию, нуждающуюся в последователях. На этом судьбоносные встречи не заканчиваются. И вот будущего героя, улепётывающего от разъярённого Минотавра, спасает другая девушка — известная авантюристка, талантливая мечница и просто красавица Айз Валленштайн. Восхищённый её боевыми навыками, Белл решает во что бы то ни стало достичь такого же уровня и стать первоклассным фехтовальщиком, не уступающим по силе и мастерству новообретённому кумиру.', 7.53, 'images/2025/09/08/dvMc1TbjlaeCewSA1YpfC1lQ6lzgCDYZMPrNV3TQ.webp', NULL, 'main_2x-eee86db1924e411d2b65b82a4d65b571.webp', '2025-09-08 13:08:28', '2025-09-08 13:08:28'),
(51, 'Судьба/Ночь схватки / Fate/stay night', 'sudba-noch-shvatki', 'Ещё будучи ребёнком, Сиро Эмия теряет своих родителей в огромном и необъяснимом пожаре. Его спасает, а затем и принимает в свою семью, человек по имени Кирицугу Эмия, утверждающий, что он — маг. Из разговоров семьи, Сиро узнаёт о неудачном стремлении своего отца стать «Героем справедливости», защитником человеческого рода, оберегающим слабых и невиновных. Проникшийся идеями Кирицугу, Сиро намеревается посвятить свою жизнь помощи людям и умоляет приёмного отца научить его магическому искусству, но оказывается бездарным практически во всех фундаментальных магических дисциплинах.\r\nВ один прекрасный день Сиро становится свидетелем сражения между двумя невероятно могущественными людьми и непреднамеренно вызывает девушку в сияющих латах ради защиты своей жизни. Позже он узнаёт, что этот конфликт, известный как «Война за Святой Грааль», включает в себя цепочку сражений между семью могущественными магами. Маги могут вызвать «Слуг», героических духов древности, чтобы те сражались за них в битве за обладание реликвией, исполняющей желания, Святым Граалем.\r\nИстория вращается вокруг Сиро, его затруднительного положения в войне за Святой Грааль и его личной битвы за отстаивание своих идеалов.', 7.27, 'images/2025/09/09/xDzK7yvo4sa0bwTXzIHUuAZOqxFCHyG0U8fBRtd7.webp', NULL, 'main_2x-28a49809223de4b59c4c8d3822d8656a.webp', '2025-09-09 11:24:06', '2025-09-09 11:24:06'),
(52, 'Судьба/Ночь схватки: Бесконечный мир клинков / Fate/stay night: Unlimited Blade Works', 'sudba-noch-shvatki-2', 'Данный аниме-сериал, в отличие от своего предшественника 2006 года, основан на альтернативном руте одноимённой визуальной новеллы.\r\n\r\nУченик старшей школы Сиро Эмия невольно становится участником войны за Святой Грааль, которая проходит в японском городе Фуюки каждые 60 лет. Это борьба семерых магов за обладание легендарным артефактом — Святым Граалем, который исполнит любое желание победителя и таким образом изменит его судьбу. Каждый маг с момента своего начала участия в войне призывает слугу — одну из великих героических душ прошлого или будущего, сражающегося на стороне своего хозяина. Битва ведётся до тех пор, пока не останется лишь один мастер со своим слугой. Сиро Эмия случайно призывает Сэйбер — слугу, поставившую себе цель добраться до Грааля любым путём. Однако он не желает участвовать в битве, так как в прошлой войне потерял всю свою семью. Эмии начинает помогать Рин Тосака — сильный маг, которая учится в той же школе, что и Сиро. Но правила войны Святого Грааля указывают на то, что рано или поздно им предстоит сразиться между собой...', 8.18, 'images/2025/09/09/eUvgEMvHCSxf4zI3ji8PnBANKHHTNb516NnUX3rM.webp', NULL, 'main_2x-4e47324fa50f5c243a4b4ce32dd32fa4.webp', '2025-09-09 11:26:25', '2025-09-09 11:26:25'),
(53, 'Стальной алхимик: Братство / Fullmetal Alchemist: Brotherhood', 'stalnoy-alhimik', 'Ремейк одноимённого аниме-сериала «Стальной алхимик» 2003 года, более строго следующий событиям, описанным в манге.\r\n\r\nВ этом мире существуют алхимики — люди, владеющие искусством алхимии, способностью манипулировать материей и преобразовывать вещество. Все они ограничены основным Законом алхимии: нельзя алхимическим путём получить что-то, не пожертвовав чем-то равноценным полученному. Лишь с помощью легендарного философского камня, способ создания которого утерян, можно обойти этот Закон.\r\nГлавные герои, братья Эдвард и Альфонс Элрики, пострадали в детстве при попытке вернуть к жизни свою мать, умершую от болезни. Они забыли основной Закон алхимии и жестоко поплатились за это: Альфонс потерял всё своё тело, а Эдвард — руку и ногу. Эдвард сумел спасти лишь душу Альфонса, запечатав её в старинных доспехах.\r\nСпустя много лет Эдвард сдаёт государственный экзамен на звание алхимика и получает прозвище «Стальной Алхимик». Братья начинают путешествие с целью найти философский камень и вернуть с его помощью утраченное много лет назад.', 9.10, 'images/2025/09/09/PU8vxU5mIN01q2jWzLkqU6Lt8auTXwIM5zKSpURB.webp', NULL, 'main_2x-5ef77095e4fe55a706913575d3f3a920.webp', '2025-09-09 11:27:04', '2025-09-09 11:27:04'),
(54, 'Врата: Там бьются наши воины / Gate: Jieitai Kanochi nite, Kaku Tatakaeri', 'vrata-tam-byutsya', 'Август 20XX-го. В Гинзе — самом фешенебельном районе Токио — появляется загадочный портал, ведущий в параллельный мир. В ту же минуту самобытные «Врата» начинают изрыгать орды монстров и прочих отвратительных созданий, превращая торговый район города в бродячий цирк уродов, жаждущих разрушений. Японские Силы Самообороны не заставляют себя долго ждать. Оперативно приняв решительные меры, бравые солдаты грубой силой заталкивают сказочных существ обратно в дверь между мирами и через какое-то время сами решают перейти в наступление. Однако, как известно, чем больше знаешь о враге, тем легче даётся победа.\r\nИ вот через портал отправляется специальная разведывательная группа, созданная с целью сбора информации о противнике. Йоджи Итами, 33-летнего офицера Сил Самообороны, а также заядлого отаку, назначают командиром операции. Перебравшись на ту сторону, храбрая разведка посещает множество мест этого необычного мира и узнаёт немало нового о здешней культуре и географии. Оказывается, загадочный мир не такой уж загадочный, а большинство населяющих его жителей вовсе не агрессивны. Йоджи и его подчиненные даже обретают здесь новых друзей: очаровательную эльфийку, талантливую волшебницу и удивительную полубогиню.\r\nВ это же время могущественные державы, такие как США, Китай и Россия, все больше интересуются землями за «Вратами», изобилующими ценными ресурсами. Для них мир по другую сторону портала — не более чем выгодное приобретение. Что, в свою очередь, совсем не так для наших героев, которым иное пространство смогло предложить нечто гораздо более ценное: возможность расширить знания, завести новых друзей и изменить отношение не только к другим, но и к себе самим.', 7.68, 'images/2025/09/09/SmJ5kCQXzf9giEpLd25lDucTyoB7S4rL9niXxO4m.webp', NULL, 'main_2x-df819d7b34340c07f4d5f4dffec8889a.webp', '2025-09-09 11:27:29', '2025-09-09 11:27:29'),
(55, 'Врата: Там бьются наши воины — Огнедышащие драконы / Gate: Jieitai Kanochi nite, Kaku Tatakaeri Part 2', 'vrata-tam-byutsya-2', 'Прямое продолжение аниме-сериала «Врата: Там бьются наши воины».\r\nЯо Хаа Дюши, дав клятву своему клану о том, что она сможет найти и привести «людей в зеленом», чтобы те помогли справиться с Красным драконом, отправляется на их поиски. Найдя их базу, она просит их о помощи, но никто ее не понимает. От владелицы трактира она узнает, что единственный, кто сможет ей как-то помочь — это Итами. Но, так и не дождавшись помощи от Итами, Яо Хаа подставляет его, напомнив Туке о смерти её отца. Из-за этого рассудок Туки помутнел, и она стала видеть в Итами своего отца. Чтобы вернуть Туку в нормальное состояние, Итами решается убить Красного дракона.', 7.71, 'images/2025/09/09/mZrr6n2yJsgqI5XcWxhNYc3W77qAi2KVPdXRAMk2.webp', NULL, 'main_2x-917bb1b79f7fa3c8a9f84f2225111c99.webp', '2025-09-09 11:27:53', '2025-09-09 11:27:53'),
(56, 'Корона грешника / Guilty Crown', 'korona-greshnika', 'В Токио 2039 года, через десятилетие после охватившего страну вируса, прозванного позже «Апокалипсис», всё находится под контролем мультинациональной организации GHQ, проводящей опыты в области генной инженерии. Сю Ома — обычный школьник в переходном возрасте, с людьми не особо ладит, хотя мечтает завести друзей и перестать быть таким неудачником.\r\nОднажды он встречает Инори, участвующую в группе сопротивления «Гробовщики», члены которой пилотируют меха-оружие для борьбы с правительственным беспределом. По стечению обстоятельств в него вливается один из трёх «геномов пустоты», позволяющий использовать «силу короля» — возможность извлекать оружие и предметы из людей, силу, которая поможет изменить мир и жизнь вокруг.', 7.40, 'images/2025/09/09/QePTIcNKXJ6CtvqUtLgz8UpuCqbIgqBxm1qABQlv.webp', NULL, 'main_2x-753473fc6c9b5333e4bdb776196e9ea8.webp', '2025-09-09 11:28:30', '2025-09-09 11:28:30'),
(57, 'Волейбол!! / Haikyuu!!', 'voleybol-haikyuu', 'Один случайный матч зажёг в Сёё Хинате безумную любовь к волейболу. Хоть в его волейбольном клубе изначально не было даже участников, упорством и стараниями Сёё собравшаяся команда всё-таки прорвалась в свой первый и последний финальный матч средней школы, так как там она была начисто разгромлена Тобио Кагэямой, известным как «Король площадки». Поклявшийся отомстить, Хината вступает в клуб волейбола уже в старшей школе Карасуно, где неожиданно для обоих лицом к лицу сталкивается со своим ненавистным противником Кагэямой!', 8.43, 'images/2025/09/09/49CpnyxszaNFzApWn9cRUSBwfD4ER8O7m3srvnoA.webp', NULL, 'main_2x-e4625e081c3053e5869197a004224d12.webp', '2025-09-09 11:28:53', '2025-09-09 11:28:53'),
(58, 'Волейбол!! 3 / Haikyuu!! Karasuno Koukou vs. Shiratorizawa Gakuen Koukou', 'voleybol-3-haikyuu', 'Продолжение событий второго сезона аниме «Волейбол!!».\r\nС трудом взятый реванш Карасуно над Аоба Дзёсай даёт команде последний шанс в нынешнем составе попасть на весенний турнир. Теперь перед героями стоит не менее сложная задача: им придётся завоевать победу в решающем матче. Играть Карасуно предстоит с сильнейшей командой — Академией Сираторидзава.\r\nСмогут ли Сёё Хината и Тобио Кагэяма одолеть самого сильного игрока префектуры Мияги — Вакатоси Усидзиму, показав присущие Карасуно настрой и сплочённость? Пройдет ли команда старшей школы Карасуно на турнир? Об этом зрители и узнают в новом сезоне.', 8.77, 'images/2025/09/09/3jgfgTPlGUdgcH0cKaaEFbcKUqXIru6xQDuvymCW.webp', NULL, 'main_2x-dad2be12919446ad49dda45530b67b8b.webp', '2025-09-09 11:29:16', '2025-09-09 11:29:16'),
(59, 'Волейбол!! 2 / Haikyuu!! Second Season', 'voleybol-2-haikyuu', 'Высоко подлетевший мяч с оглушительным грохотом коснулся пола волейбольной площадки. Этот звук ознаменовал горькое поражение. Где-то там, далеко за высокой сеткой, старшая школа Аоба Дзёсай ликовала. Кому теперь интересно, что всего два очка отделяли команду Карасуно от желанной победы?\r\nПосле проигрыша Хината и Кагэяма совсем расклеились. Однако вместе с тем полностью посвятили себя упорным тренировкам. Но как бы ни старались ребята стать сильнее, драгоценный опыт, в первую очередь необходимый для этого, можно приобрести лишь одним способом — играя против других команд.\r\nИ вот, как внезапно в дверях спортивного зала старшей школы Карасуно появляется неуклюжий куратор волейбольного клуба, так же внезапно у его участников появляется шанс сыграть на площадке большой столицы. Ведь знаменитая академия Фукуродани приглашает принять участие в своих тренировочных матчах! Но что еще лучше — в перспективе предвидятся новые грозные соперники, которые ни за какие коврижки не позволят расслабиться.\r\nКарасуно просто не может упустить такой шанс!', 8.62, 'images/2025/09/09/JIQXr926mRS9l6tWlBqHxTu3C4rCYn8kT2o5FLz4.webp', NULL, 'main_2x-7c7f17fa905460318113c6537e18863a.webp', '2025-09-09 11:29:51', '2025-09-09 11:29:51'),
(60, 'Дневник будущего / Mirai Nikki (TV)', 'dnevnik-budushchego', 'Второй класс средней школы: у Юкитэру Амано вечные проблемы в общении со сверстниками, а потому, считая себя сторонним наблюдателем, он записывает всё, что видит, в дневник на мобильный.\r\nТерзаемый одиночеством, Амано начинает выдумывать разные вещи, как, например, воображаемого друга по имени Деус Экс Машина, который несомненно является повелителем времени и пространства. Глядя на плачевное состояние Юкитэру, Деус даёт ему новые способности — в его дневнике теперь появляются события, которые только должны произойти в ближайшем будущем, а записаны они с поразительной точностью.\r\nПравда заключается в том, что такой мобильный «дневник будущего» есть не только у него одного, и теперь он вынужден участвовать в смертоносной игре, победитель которой станет преемником Деуса.', 7.38, 'images/2025/09/09/9RuieQkMywqVeln7BzwAp0Vu9J3z1wOCtm6xybC3.webp', NULL, 'main_2x-c1d701858e35f3707f14db685af5d359.webp', '2025-09-09 11:30:14', '2025-09-09 11:30:14');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `description`, `is_active`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Super Admin', 'He can everything!', 1, 'web', '2025-08-14 16:22:25', '2025-08-14 16:22:25'),
(2, 'admin', 'Admin', 'Admin', 1, 'web', '2025-08-15 10:24:45', '2025-08-15 10:24:45'),
(3, 'moderator', 'Moderator', 'Only can view', 1, 'web', '2025-08-15 10:29:34', '2025-08-15 10:29:34');

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
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(8, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(2, 2),
(3, 2),
(8, 2),
(12, 2),
(13, 2),
(18, 2),
(6, 3),
(8, 3),
(10, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1FJbDzu7gLwPOJ19Zh9s0PF4p6mEp6dQXyhGcDRN', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOXFkZ2JSQnQwTklBQjRnNFhleklaeVpwbE9FbFVnMnhFUlBMUmpNeiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2J1c2luZXNzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1760703665),
('CMBzvC4DQM06TowiCJz0u3Z2lN2V7zFBJBna75rj', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaWd4ekIzNGl6OXI2UDhESlJCREtkWVIzS1BLSFg1Q2VoZ09xcWxzQyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2J1c2luZXNzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1760541625),
('XuN0UNCpCiykxG32GLJBI8OEM5sdVJkNVWH3MtcW', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUTc4TzhDc21mNGJsaFVUTkt2WjhDdkJ4ZjI2RGNWcHpHYjI0YzZKdyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2J1c2luZXNzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1760625117);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'irebuv', 'irebuv671@gmail.com', '+380970999748', 'admin', NULL, '$2y$12$G8JETQhsKaGG34JEMVX8fO6zXdsfy0glW73VRfsb1pZiqiztyUXcS', 'fW1UOmSqpJBWfyu0R6jQuehgl10scjvw96jxDcLFhgVvGednzVPJ2BfVoYAx', '2025-07-29 11:52:47', '2025-07-29 11:52:47'),
(3, 'Admin', 'admin@gmail.com', '+380637372703', 'user', NULL, '$2y$12$2DdGRvkqEyr.aC6xBfpCX.y9oY0UjpnQaPbb4slHxN9BXwLcKL8g6', NULL, '2025-08-15 12:19:18', '2025-08-15 12:19:18'),
(4, 'Moderator', 'moderator@gmail.com', '+380984515478', 'user', NULL, '$2y$12$ptal8vazcoIA1bC6ffk68e007jKmvZ7CcT3Pzbo1ils8aCqN9hz.m', NULL, '2025-08-15 13:30:16', '2025-08-15 13:30:16'),
(5, 'admin22', 'admin22@gmail.comm', '+380975687888', 'user', NULL, '$2y$12$4ovAKRAEgR2NivhLJhH4K.EhaEMXkMC262vkBtHvymnZiKg/BazUe', NULL, '2025-08-19 10:55:57', '2025-08-19 10:55:57'),
(6, 'user', 'user@gmail.com', '+380999999999', 'user', NULL, '$2y$12$KgMxI/QXv8UpbgSavephBOcwhcOB5fzDo5ee19Yn0rKpwNW7V1EIq', 'dabbfwSta1RXLiosIIuBfovWEAgLhiPuTZItukqEkrrWhvIBZY0X56w11W4O', '2025-09-26 10:37:59', '2025-09-26 10:37:59'),
(7, 'Test User', 'test@test.ru', NULL, 'user', NULL, '$2y$12$CrFQekidR.mQaZ8ndjMBF.Vb37rKVavqXowD17j9sktIFtlU.Xj32', NULL, '2025-10-02 13:35:01', '2025-10-02 13:35:01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `businesses_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filters_filter_group_id_foreign` (`filter_group_id`);

--
-- Индексы таблицы `filter_anime`
--
ALTER TABLE `filter_anime`
  ADD PRIMARY KEY (`filter_id`,`product_id`),
  ADD KEY `filter_anime_product_id_foreign` (`product_id`),
  ADD KEY `filter_anime_filter_group_id_foreign` (`filter_group_id`),
  ADD KEY `filter_id` (`filter_id`);

--
-- Индексы таблицы `filter_groups`
--
ALTER TABLE `filter_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
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
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_business_id_foreign` (`business_id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

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
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `filters`
--
ALTER TABLE `filters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `filter_groups`
--
ALTER TABLE `filter_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `businesses`
--
ALTER TABLE `businesses`
  ADD CONSTRAINT `businesses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `filters`
--
ALTER TABLE `filters`
  ADD CONSTRAINT `filters_filter_group_id_foreign` FOREIGN KEY (`filter_group_id`) REFERENCES `filter_groups` (`id`);

--
-- Ограничения внешнего ключа таблицы `filter_anime`
--
ALTER TABLE `filter_anime`
  ADD CONSTRAINT `filter_anime_filter_group_id_foreign` FOREIGN KEY (`filter_group_id`) REFERENCES `filter_groups` (`id`),
  ADD CONSTRAINT `filter_anime_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`),
  ADD CONSTRAINT `filter_anime_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

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
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE;

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
