-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 06:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mainul_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_m_c_details`
--

CREATE TABLE `c_m_c_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_m_c_details`
--

INSERT INTO `c_m_c_details` (`id`, `name`, `url`, `image_url`, `user`, `pass`, `details`, `file`, `status`, `created_at`, `updated_at`) VALUES
(6, 'HUMAN RESOURCE & PAYROLL MANAGEMENT SYSTEM (HRM)', NULL, 'https://bn1304files.storage.live.com/y4mQmW0r6nOTtQ5KjF9oZ7vYLh2X0YGjyDId2Ap-2i_-i-tSEMMLBNdMnK-hLnbHYfHhy1D4N-33vKHAz7EWjcK3WjlDMHzTWC9GYwTW2AsyFO4y2Fw5_YkFiEbexmMbDf84G92oBRgI3pQKkXR3oQDxJVqO4jva8MMlYxVt6ZkJpGzQd5k4hluBfXoXQX5raeW?width=740&height=740&cropmode=none', 'admin@domain.com', '12345678', 'Keep Employees Engaged & Empowered with HCM Cloud. Request a Live Report! Collaborate & Boost Engagement Through Social, Mobile & Work-Life Capabilities. Payroll Integrations. Mobile-centric Experience. Attract New Employees. Make HR More Human.', NULL, 1, '2021-03-05 13:41:33', '2021-03-05 13:41:33'),
(7, 'PHARMACY MANAGEMENT SYSTEM (PMS)', NULL, 'https://bn1304files.storage.live.com/y4ml8MidmFo7Gov_mEKeIrQG2oBCRoI4iwGl7eSR9TQgT6jdoe0z66swjBVWxC9wIV9L41EAOlfqS1zgIWyU4n1sKvGzCYggJuG2EKndMzWSF56DuE9WgIMcYVKCeLIABgnjNZ0LHtscr-D1HV5tdB_WZ15BbHbuL19aiEZEn0NCCTUHv3Ra6uPnRHnuHMP95Y6?width=940&height=719&cropmode=none', 'admin@domain.com', '12345678', 'Pharmacy Management System allows your pharmacy to process, track, and dispense all prescriptions with the highest level of security.', NULL, 1, '2021-03-05 13:44:13', '2021-03-05 13:44:13'),
(8, 'MULTI VENDOR E-COMMERCE WEBSITE', NULL, 'https://bn1304files.storage.live.com/y4mS5ECrN88GIHxwQxvPj5y7BpwJ3WuvOQ8M6GzONiw5PoTsej_8fGhrUD_ZR25AdyGljHsE4aYfcGU1pCpxi8ToVjMKMASfzPObh8_NN4RNdp0yfkSQuOkBoMMXjl7wgN9oAZ5ARaq30MwbECOzOr0RrCJlo2f4-4TFq83-63QxPTIt9DEL8nNp7L6oWiQdIre?width=940&height=707&cropmode=none', 'admin@domain.com', '12345678', 'Multi vendor marketplaces are large scale ecommerce stores where multiple vendors can sell their products and services. Vendors take care of day-to-day sales. In this 21st century, eCommerce has been becoming a booming industry all over the world.', NULL, 1, '2021-03-05 13:46:41', '2021-03-05 13:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(18, '2017_08_05_000000_add_group_to_settings_table', 1),
(19, '2017_11_26_013050_add_user_role_relationship', 1),
(20, '2017_11_26_015000_create_user_roles_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2021_02_27_051137_create_contacts_table', 1),
(27, '2021_02_27_130943_create_sessions_table', 1),
(28, '2021_02_28_040122_create_profile_images_table', 2),
(29, '2021_02_28_055221_create_projects_table', 3),
(30, '2021_02_28_063404_create_c_m_c_details_table', 4),
(31, '2021_02_28_064457_create_stacks_table', 4);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
-- Table structure for table `profile_images`
--

CREATE TABLE `profile_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_images`
--

INSERT INTO `profile_images` (`id`, `url`, `file`, `target`, `created_at`, `updated_at`) VALUES
(9, 'https://drive.google.com/uc?export=view&id=1ULJtafhDi4jIlZePod4FryKXrr5obsj-', NULL, 'mini', '2021-02-28 08:21:37', '2021-02-28 08:21:37'),
(10, 'https://drive.google.com/uc?export=view&id=1m8447ZKyViFqN31-Ztv5P7-nlfSFqMNX', NULL, 'big', '2021-02-28 08:23:53', '2021-02-28 08:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `url`, `file`, `image_url`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Govt. AH College', NULL, NULL, 'https://bn1304files.storage.live.com/y4miexJJhgNiLehSe_KwOo5XlRK1b5eOI4psPa8eGCun0H6bMahQx8krrjp0ISWb70BdDkAcX5a5g-k5ojQ0YVQSeYKZeEfDKI_u9Gk8d4UKlUYeNRYyvPqUkaLWOxvJd0UJOFXZSjMXxCMMgZ0O2KSPNTR4LRvb53JZ0JUZx4BIevJZ4hocXhopT7YMZhYsgWB?width=1024&height=501&cropmode=none', 1, '2021-03-04 08:19:59', '2021-03-04 08:35:18'),
(8, 'Food Friends', NULL, NULL, 'https://bn1304files.storage.live.com/y4mGb_xwz_EolCB2OSrlWKRbuHxKbncGfZtiS2VRTfGpNJ4STrxS3zEJczPhy64u9_-1NpROkk6FRL9KUtVmKsoyxQUgPZAO5giieCUddiHXA5I_MRgN8GnERXcQwuH3VbhNrEhrR2duA12rgAx89HtRnEaUG8_h2lEpqkKdtSy1ogLMiyFxjFVf9nIGUIIj6aj?width=1024&height=503&cropmode=none', 1, '2021-03-04 08:36:58', '2021-03-04 08:36:58'),
(9, 'Somvabona', NULL, NULL, 'https://bn1304files.storage.live.com/y4mbbPnAAw3Aa480qZDYNGRwCgxK_ZS5qcXp1qePJI74voXKuVH6vxm-_wh6oJguzmvqk3ezZpd_mlGewlCmCnFcMh81ry1HFobYPBY4gB4vXJc-lSxLBlz1hhj6gX0T4bud_TdCAlZimPjjn7_lO_H78mjn7yVt_egrw77Db9-dvQ2OCMt11oUSfED9pqRssAU?width=1024&height=500&cropmode=none', 1, '2021-03-04 08:39:37', '2021-03-04 08:39:37'),
(10, 'BF Shahin college', NULL, NULL, 'https://bn1304files.storage.live.com/y4mo4LxnnXkQqWZSUdMnkhJA5vVRwgvZ1GGtC97pmbe36yNVPTuKmiT3gIUUQgGXyXLxB79xGyD6rLbwIsjuG4l0bbLcvOwzQEEJGOT4hZV3mIlhgR3nDIWmaGr_WRrWdXA2b8blmxG059KaZP_YaeIXkRUaFfoQk0axTJkl1B4LyYF7hIQBO_QrdyumEs4hwWW?width=1919&height=937&cropmode=none', 1, '2021-03-04 08:40:15', '2021-03-04 08:40:15'),
(11, 'US News', 'http://usnews.co', NULL, 'https://bn1304files.storage.live.com/y4mUBtRD-Ggcunazk0E-yFNOBzxn8-1sn1ooodDx95OhfCCv9bvCixicV3Z60Y-6PNcoq_zk9CFN6RH7uj1F1vHLEWU3n5VAXoKGcwMoLF4kWpGpzg5MFz0wInHmW7p_REJrfzOP7IUa9aToJwC30S6CpPT0NuvgTIpNkNwXpA2uApqaozLusZOMQZzNduQuS_C?width=1918&height=938&cropmode=none', 1, '2021-03-04 08:41:54', '2021-03-04 08:41:54'),
(12, 'MIMA', 'http://portfoliothree.tk', NULL, 'https://bn1304files.storage.live.com/y4mZ-xQyXAreAMT02IoLrVPK0qjVf4afo9lxNa2lRJiILfgZZ4Evldbq_eKXCauXhzKj25AE27ARTmPjVNxAdA8L_zduLUP82K_yORUKimY9EaBG2AAqFzIerEiTGdPlR-U_SKb4lRtepa97bF3OeKio9JPn4Et9om8jv6K1QXvvr1PYMfmomn2bFFIuwAmmmoF?width=1919&height=936&cropmode=none', 1, '2021-03-04 08:43:14', '2021-03-04 08:43:14'),
(13, 'Compatink', 'http://www.adrianhope.co.uk/', NULL, 'https://bn1304files.storage.live.com/y4mtiKPuFJacOp-d4nSI_K2tiVm6YzkJw6uwbu8XJL1KCrtkoHtY0ya4BRzsU82PQ5X8UgMPeukWE8eNXpgai0nY2dTzrVZ5Z3gUC6MGOE63XwtfeViY1jfBS8XPNebcgY4ZsxNNIqq6mVI1hXn970ny_RAT4D819-BslAm4K9uJWltws0vTKHGyHUkkFAnlO1M?width=1024&height=501&cropmode=none', 1, '2021-03-04 08:46:02', '2021-03-04 08:46:02'),
(14, 'Dj Best Price', 'http://djbestprice.com', NULL, 'https://bn1304files.storage.live.com/y4mx-UcyVHUpDa04i0xzjs2v3b1UrVxIqoyk3CULOFL1eCxqnFiUQ9PzK_veNnly10omtlpZrCOlLt1e3kbXVabThKEa1hHArYEYjfoPKssSzFegfaQgM-2Czj2p9HoVVVjShl90dZwLa-ySf_ZQMRb801Za_bF79CuaKzO2M573bpqsi4i_BJBHaS2Ie0yTufD?width=1024&height=494&cropmode=none', 1, '2021-03-04 08:47:41', '2021-03-04 08:47:41'),
(15, 'Skip The Data', 'https://skipthedata.com/', NULL, 'https://bn1304files.storage.live.com/y4mfTUaLZEd_MPfBks0q1Ac-JAZHi90Hnw5s8kdHZv1OMLAYOEmCyWuyXtQHytEuSTxgD9oTZ7rneR_t4eDLcDpw4p3D75Q2DempP5zzy9DXEOluYuzgoV5QEhbuxm55o8pY9SBfquIiwsnBo-bOKjAsUqE7r1U2ubZ1L2jUzF_kW6PsvBds0HBxoNDJRy20Hkg?width=1024&height=502&cropmode=none', 1, '2021-03-04 08:49:22', '2021-03-04 08:49:22'),
(16, 'AffordableColumBus.com', 'http://affordablecolumbus.com/', NULL, 'https://bn1304files.storage.live.com/y4mOw83o7AElQsRPpWKo74poDNSgcMx90tmMOIl-g-zRrzRoJut14cDP6qIrvgYauCLo6oiM7qeTJpwouHhTWUsS_VhjjAiou20TFP1NS8tGV_LZDcYQ07P_F9alIwvNzuOJ9RxgDK-4y9FdQHBpHOJk1TnRMjF1dn01iGbNJ-LKDXb_xd6HspV-827EXAkmF0s?width=1024&height=502&cropmode=none', 1, '2021-03-04 08:50:57', '2021-03-04 08:50:57'),
(17, 'Barton Management', 'https://bartonmanagement.com/', NULL, 'https://bn1304files.storage.live.com/y4mXOl49uHyd-PNk913K6tz3lQ_IbVOpba_pmZqKRnN8lRCzxQuEx1moxKoXoPgPTVLWyBWD2oSyi6wAVvMwDdWTHRyomXrYDAqvoTBum_0Lbmf6jSxTiOZCvKqMhtylrXwqq_KKs9EheDz652R16SeIUr_7DX8R25nHDvVVW4IYVDPYG6Y4jLZmNs-DYFYs84G?width=1024&height=484&cropmode=none', 1, '2021-03-04 08:52:29', '2021-03-04 08:52:29'),
(18, 'Dallas Best Pest Control', 'http://dallasbestpestcontrol.com/', NULL, 'https://bn1304files.storage.live.com/y4mjHR4iUgzPb4iedMTP3hraEMGJ-05LXBtfV19_RGyrWoVb48zKqMxwYACshxMBCwC0ttyREIDXtee66yZ7WbkrFqOAMNQ6S3LtbGLZCJT6--VmXTS06DUWNmjSKA4W00dgZ5LlvkwCZoFd7-aC-k2V2FdWJRg6ymZTjniFdls6dahovZjGycnPZUxHTJfWiCG?width=1024&height=503&cropmode=none', 1, '2021-03-04 08:53:51', '2021-03-04 08:53:51'),
(19, 'Telefoon Store', 'https://telefoonstore.com/', NULL, 'https://bn1304files.storage.live.com/y4mDubL1dGiWAPDWIt1Wbi6PEt7lXa5wkFN0ngleExL6uros9l9Kcg1QSNgrIO5Ijs7gGyat3SghCCgds7eVViod0yEr_PZwA5d4JoNaSuiEqlPtt4XAs8OoceTu5llP6MDb_-asOB_PenCUsGIpvh21WvTSct74gWPa0rH8AJppAmkYAe7VHq0VXoebicwqZXI?width=1024&height=499&cropmode=none', 1, '2021-03-04 08:55:21', '2021-03-04 08:55:21'),
(20, 'Best Dallas Pest Control', 'https://bestdallaspestcontrol.com/', NULL, 'https://bn1304files.storage.live.com/y4mas6vVJwpYAlgswIEq6CboFPkOTr35iEwePiX9gmC2yd2B4MAEI_K5YGWv6k6Y3_w9ORqD-vVtuKIrHTc-MsNAki6Efo_o49Lbv7bouWym2X2443ZLlmvkQYBsGWJt_rhENkEp3bdTl8xpTO_FqbjNWGrXQXpt84kq34ZWlY2wnoMVXpQPo3uQN2Hs8-4VNC6?width=1024&height=501&cropmode=none', 1, '2021-03-04 08:57:04', '2021-03-04 08:57:04'),
(21, 'RAR Assets', 'http://www.rarassets.com/', NULL, 'https://bn1304files.storage.live.com/y4m7HtSC3QCztESkSqZiSUnCVPALL9UVJY05fu6XyDEvfzw9nKMCyFH2hiuCHYAeBJTeIHTY4YMwTQnusuEQZfljS53ZKa5RdcjH9ZA1mlC28OtUScvNlpk3dKLaT_FOqoeh2OneEuT02suARrEud2jmnIrRFMt1PaRNm3HAO-4YFh6EY7Av-rV6jOH89TUfDjQ?width=1024&height=497&cropmode=none', 1, '2021-03-04 08:58:32', '2021-03-04 08:58:32'),
(22, 'The Visa Lawyers', 'https://thevisalawyers.com/', NULL, 'https://bn1304files.storage.live.com/y4m74jmRyw0eXWgWF9UehmB7eAJZT24xQc5US02Oo-bE2jOE3AjFuz_vOIYlDsLK-5mzAphHll8VrRN8PtGuYfy4CwUPygalvzWFy5o-8Bl8sm2eNbyGu7fRRv0rTdIpFaD0pmUpOkDw3vV3mMJnBv_FPBvEr8V4uaFhSnWrI5Yd1FPLk-1ZcorXs_IqHzWR4xk?width=1024&height=500&cropmode=none', 1, '2021-03-04 08:59:46', '2021-03-04 08:59:46'),
(23, 'True North Wears', 'http://truenorthwears.com/', NULL, 'https://bn1304files.storage.live.com/y4mQF6pqqrWA4AMIiYt8vu3sbxX3V-nlW3CSwUVCXiiyBAP3EOGljZAxVVyZAtmvFWccWHJSumIiGxuOac0q1pipquHdEdbrBBEvZsBFm81kkYNdUfVmi_da6Iekqdna8vNyd-bnN4Wo39CKIj-0zM-z4i4Z4TnhpnQ6X8dCKP1ZGPh2AR2DEhaiNipoXqMqEBq?width=1024&height=505&cropmode=none', 1, '2021-03-04 09:00:35', '2021-03-04 09:00:35'),
(24, 'Smoshe', 'https://www.smoshe.com/', NULL, 'https://bn1304files.storage.live.com/y4msj62U4pc2Wvsh_8ccRwtJwZGQrMQTMAU6QlTjslZIGMpvK18753NQ3jvTc4wO1iXY9LMjm1Ud837f9h9vzbq70Th6Tq0thzw-QD043JA3xDuOOSWp9oaQze-A_8BmBrQYRDBR74MNHlMYzz53I5GMlntb-SIPenAp4HpgxcaMtmri6Afzl8oFp3yL3upXwgl?width=1024&height=504&cropmode=none', 1, '2021-03-04 09:01:30', '2021-03-04 09:01:30'),
(25, 'Zero Plus', 'http://zeroplus.world/', NULL, 'https://bn1304files.storage.live.com/y4m-nIt_Owrba_NA7JLsq0bYJWe4Q_OVmb0KqGmYrVsTv7NMHL_q4XHTNjxvv15TyggiUg3j11HiYNGN7RbTxhyGAhHYtuQMsA23geg0Kz5slFa0eEdFgC33N8wKMFBGV-LZe8ZYQDhn0dRyurIA4AyCQKfV34h_8wC4-hJSOUACZgDh6xu9h5A8ewO-eW_UQBH?width=1024&height=505&cropmode=none', 1, '2021-03-04 09:02:51', '2021-03-04 09:02:51'),
(26, 'sorejomin Barta', 'http://sorejominbarta.com/', NULL, 'https://bn1304files.storage.live.com/y4mBIGFlGcrsbbDXMSNiF9_wZ9XkxZlijBjmFgm6nWcuVRuQnYNgRZ8IywI8jy0_DhBNy_GHRXFiYpdxvRyDQpym5VHa8aU3NpzFrtjRbSHAHKbmWLiyP8eEdVpuZcrOqcgenKdRt3DMVnWqooV2hISiHbTasBo-AKkpfAJ-b_84m0aKbDa52RsHy26W7oXyp5X?width=1024&height=503&cropmode=none', 1, '2021-03-04 09:04:25', '2021-03-04 09:04:25'),
(27, 'The Conqueror.events', 'https://www.theconqueror.events/', NULL, 'https://bn1304files.storage.live.com/y4mAJa_iVH3TUMkRn3pRlp-8G8htJRRaF1SabwZCuHOPaOh2cuvme4uq8XHQdFRkGjU67jm2JPyiHvzLSFOfUQQ69FSj9z9DTehlAAufQp504WD1hmk00nBZQ9N5zIYYQC-SJZ2gjeEwggRFIUd5J8Cd2B5jtyln3iIHofHZ15eEtE8Y46L7wgPK6W8LqygKbHW?width=1024&height=503&cropmode=none', 1, '2021-03-04 09:06:38', '2021-03-04 09:06:38'),
(28, 'Beshi Buy', 'https://beshibuy.com/', NULL, 'https://bn1304files.storage.live.com/y4mm_U_qwtpVAb8L3H42CtRFDyw83N6tlv5Al15IbtAXLPP2BTzIUftozvr0b9cJEm0leOrXeM10UFapaO08CzBpxj457QNY57SqEpG2WnbemYvW6Hm8fN9F8blprriXc7FE0sPQJEVaqTaArkDulFMrdsB8Qx3TK3rV3dFFk2G8X7RF9_zHxp0uUENwQNLBidy?width=1024&height=504&cropmode=none', 1, '2021-03-04 10:01:12', '2021-03-04 10:01:12'),
(29, 'Hustle Sports', 'http://hustlesports.gg/', NULL, 'https://bn1304files.storage.live.com/y4my5gtLBGluPaEQiEXiFqASyT8VqfjgQu2UfGMbxNwcXy_nPKXA2mXEjPg8YJwAEta7aq2pi8RGwyvkCPv6zTniCKX80d_nESk0sNL74NOpuhyG2SzQvfWwS-c9uS4whpm84QdO61CuOiDGTxb_AhH37WKOuwP4cGdU5iHu1P8RC2LddKh5kZJ5KDb-RdNKnhq?width=1024&height=504&cropmode=none', 1, '2021-03-05 13:28:35', '2021-03-05 13:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fmU5hAaheSBIcY4aCKcxyTBbniUiQLCC15eUnvVO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3VzUWROUTRjZDBiSnMxaDRiWnlKUjRCZE00cmVTOEo4ckZXQ1hmNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1629383966),
('ftBB8Ggvs48VMMGOMbUkX0iCFdTfiPqH8ICUzm2a', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidEdVQ2JrZzdESkoxYk5vdmxJTnRpTGg3Wjk0Z2N1S1FrV0VPZVBYZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1620138609),
('kVzLDgXZzL7J3QXgLfFIoReq27wtZsscItc7ewjr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.2.0.1713 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXdtMkpCTEI2dXRPM3V3UEUxZjBQcmpFQWp0S0xpV0NKMG1PcnFxMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1629383992),
('mRD9IthvzlFfh5XCWbFhYBQzlA2ykZ0a9esT36TD', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidTdvZzV5NGdqbUdnRjNxQWQzcHhMSkYxNjFjSTNCcmM5blpmV0RnTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Q6NzAvbWFpbnVsLXBvcnRmb2xpby9wdWJsaWMvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDk1ZDl4T3MwN0Z4c1BBRGRsWmw2ei4vT2hNcHBpWWpvYXpWSC5ZR25sRHBYeS5lUE9rS0JLIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ5NWQ5eE9zMDdGeHNQQURkbFpsNnouL09oTXBwaVlqb2F6VkguWUdubERwWHkuZVBPa0tCSyI7fQ==', 1629385377),
('xiTtLTXwx2MO527DsZmS6qvTXuk5ir4qdYA6SbrA', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0g0aE9pRWRiZDZzS21mM09ZMUNWWUVsNWNKV1d1dGhDVXlmNlZkViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly9sb2NhbGhvc3Q6NzAvbmotc3R1ZGVudC1saWZlLVNQQS9uai1zdHVkZW50LWxpZmUtU1BBL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1633450311),
('XzoOph3CtiOMSVJarqPAK2hPQhxv3DTCFoORnP9E', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGY1ejFzZWdtR3l3UGlqMUZGaG43ZHIybHQwQ3dsbDM0OGJqNHhyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6NzAvbWFpbnVsLXBvcnRmb2xpby9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633450305),
('YBDhinwXUCm57MH48vxvuvSnS7bCr1jitmND260p', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUzY0cWVIb1NuZ2JGRDdya0l6TnZydXBEVFFrTzA1dWx0MjFiUzROWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly9sb2NhbGhvc3Q6NzAvbWFpbnVsLXBvcnRmb2xpby9wdWJsaWMvbWFuYWdlLXJlY2VudC1wcm9qZWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ5NWQ5eE9zMDdGeHNQQURkbFpsNnouL09oTXBwaVlqb2F6VkguWUdubERwWHkuZVBPa0tCSyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkOTVkOXhPczA3RnhzUEFEZGxabDZ6Li9PaE1wcGlZam9helZILllHbmxEcFh5LmVQT2tLQksiO30=', 1639414132),
('YcdGdVc2qLcdbnzry2uuHygVWaGlU2Zj9MQdoXFw', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.115 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWVE2R3hMSmlQNXMwMW9OaGhwakdYSmZsank4YWp6dDFPSzR5MjNGMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkOTVkOXhPczA3RnhzUEFEZGxabDZ6Li9PaE1wcGlZam9helZILllHbmxEcFh5LmVQT2tLQksiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDk1ZDl4T3MwN0Z4c1BBRGRsWmw2ei4vT2hNcHBpWWpvYXpWSC5ZR25sRHBYeS5lUE9rS0JLIjt9', 1627581069);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stacks`
--

CREATE TABLE `stacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cms_id` int(11) DEFAULT NULL,
  `stack` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stacks`
--

INSERT INTO `stacks` (`id`, `cms_id`, `stack`, `created_at`, `updated_at`) VALUES
(9, 6, 'PHP', '2021-03-05 13:41:33', '2021-03-05 13:41:33'),
(10, 6, 'Laravel', '2021-03-05 13:41:33', '2021-03-05 13:41:33'),
(11, 6, 'MySQL', '2021-03-05 13:41:33', '2021-03-05 13:41:33'),
(12, 6, 'Bootstrap', '2021-03-05 13:41:33', '2021-03-05 13:41:33'),
(13, 6, 'JavaScript', '2021-03-05 13:41:33', '2021-03-05 13:41:33'),
(14, 6, 'Jquery', '2021-03-05 13:41:33', '2021-03-05 13:41:33'),
(15, 7, 'PHP', '2021-03-05 13:44:13', '2021-03-05 13:44:13'),
(16, 7, 'Laravel', '2021-03-05 13:44:13', '2021-03-05 13:44:13'),
(17, 7, 'MySQL', '2021-03-05 13:44:13', '2021-03-05 13:44:13'),
(18, 7, 'Bootstrap', '2021-03-05 13:44:14', '2021-03-05 13:44:14'),
(19, 7, 'Javascript', '2021-03-05 13:44:14', '2021-03-05 13:44:14'),
(20, 7, 'Jquery', '2021-03-05 13:44:14', '2021-03-05 13:44:14'),
(21, 8, 'PHP', '2021-03-05 13:46:41', '2021-03-05 13:46:41'),
(22, 8, ' Laravel', '2021-03-05 13:46:41', '2021-03-05 13:46:41'),
(23, 8, ' MySQL', '2021-03-05 13:46:41', '2021-03-05 13:46:41'),
(24, 8, ' Bootstrap', '2021-03-05 13:46:41', '2021-03-05 13:46:41'),
(25, 8, ' JavaScript', '2021-03-05 13:46:41', '2021-03-05 13:46:41'),
(26, 8, ' Jquery', '2021-03-05 13:46:41', '2021-03-05 13:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `settings`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Mainul', 'mainul125011@gmail.com', 'users/default.png', NULL, '$2y$10$95d9xOs07FxsPADdlZl6z./OhMppiYjoazVH.YGnlDpXy.ePOkKBK', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-27 07:38:10', '2021-02-27 07:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_m_c_details`
--
ALTER TABLE `c_m_c_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profile_images`
--
ALTER TABLE `profile_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `stacks`
--
ALTER TABLE `stacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `c_m_c_details`
--
ALTER TABLE `c_m_c_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_images`
--
ALTER TABLE `profile_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stacks`
--
ALTER TABLE `stacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
