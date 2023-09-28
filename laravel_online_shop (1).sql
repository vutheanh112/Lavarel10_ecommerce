-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 28, 2023 lúc 11:53 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_online_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catagories`
--

INSERT INTO `catagories` (`id`, `name`, `slug`, `images`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', NULL, '1', '2023-09-13 20:11:33', '2023-09-13 20:11:33'),
(2, 'Men\'s cothes', 'mens-cothes', NULL, '1', '2023-09-13 20:13:31', '2023-09-13 20:13:31'),
(3, 'áo nữ', 'ao-nu', NULL, '0', '2023-09-13 20:52:21', '2023-09-13 20:52:21'),
(4, 'Amani Watsica', 'Kenton Roberts', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(5, 'Wanda Dicki DVM', 'Dr. Telly Schaden', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(6, 'Tod Nicolas', 'Dr. Danial Boyer I', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(7, 'Forest Schultz', 'Mertie Toy', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(8, 'Prof. Matilde Smitham', 'Scottie Schinner V', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(9, 'Kacey Anderson', 'Orlo Smitham', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(10, 'Chadd Dach', 'Eileen Kautzer', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(11, 'Darion Stehr III', 'Lorenz Frami III', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(12, 'Stacey Satterfield', 'Rahul Parker', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(13, 'Mrs. Alycia Adams II', 'Wilhelm Stokes V', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(14, 'Prof. Kenneth Bailey II', 'General Bechtelar III', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(15, 'Rodrigo Barrows Sr.', 'Cyrus Maggio', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(16, 'Isidro DuBuque', 'Prof. Sidney Stamm IV', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(17, 'Mrs. Madisyn Von Sr.', 'Bret Huels', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(18, 'Giovanny Bradtke Jr.', 'Prof. Valentin Halvorson', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(19, 'Haylie Cummerata', 'Isac Swift', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(20, 'Murphy Kessler', 'Prof. Elroy Stroman III', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(21, 'Mrs. Rosalind Smitham IV', 'Terry Schaden', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(22, 'Walton Hackett', 'Oswald Kautzer', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(23, 'Shemar Schroeder', 'Alvis Yundt', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(24, 'Carlie Rodriguez', 'Margaret Gulgowski', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(25, 'Vincent Torphy I', 'Mercedes Abbott', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(26, 'Cassandra Cremin', 'Miss Faye Waelchi', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(27, 'Benedict Gorczany I', 'Prof. Isabell Bernhard', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(28, 'Odessa Boyle', 'Dr. Walton Wisozk Sr.', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(29, 'Elyssa Kassulke', 'Albina Johns', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(30, 'Hannah Bradtke', 'Maybelle Gleichner', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(31, 'Ms. Alene Bradtke MD', 'Prof. Benton Koelpin', NULL, '0', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(32, 'Hattie Fritsch', 'Emelia Hermann', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(33, 'Marcellus Volkman', 'Heath Crist', NULL, '1', '2023-09-13 21:37:10', '2023-09-13 21:37:10'),
(34, 'shoe men', 'shoe-men', NULL, '1', '2023-09-13 23:40:29', '2023-09-13 23:40:29'),
(35, 'shoe woman', 'shoe-woman', NULL, '1', '2023-09-13 23:44:31', '2023-09-13 23:44:31'),
(41, 'test5', 'test5', NULL, '1', '2023-09-14 01:42:29', '2023-09-14 01:42:29'),
(42, 'dấd', 'dad', NULL, '1', '2023-09-14 01:42:56', '2023-09-14 01:42:56'),
(53, 'có hình đẹp nhất', 'co-hinh-dep-nhat', '53.png', '1', '2023-09-14 20:05:12', '2023-09-14 20:05:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_13_043124_alter_users_table', 2),
(7, '2023_09_14_031003_create_catagories_table', 4),
(8, '2023_09_14_075358_create_temp_images_table', 5),
(9, '2023_09_14_081103_create_tempimages_table', 6),
(13, '2023_09_15_033639_create_sub_categories_table', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `catagory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `catagory_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 1, 1, '2023-09-28 01:26:01', '2023-09-28 01:26:01'),
(2, 'db2', 'db2', 1, 1, '2023-09-28 02:04:01', '2023-09-28 02:04:01'),
(3, 'db2sfdsf', 'db2sfdsf', 1, 1, '2023-09-28 02:04:36', '2023-09-28 02:04:36'),
(4, 'test5', 'test5', 1, 4, '2023-09-28 02:17:54', '2023-09-28 02:17:54'),
(5, 'áo nam', 'ao-nam', 1, 29, '2023-09-28 02:20:57', '2023-09-28 02:20:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tempimages`
--

CREATE TABLE `tempimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tempimages`
--

INSERT INTO `tempimages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1694679144.png', '2023-09-14 01:12:24', '2023-09-14 01:12:24'),
(2, '1694679384.png', '2023-09-14 01:16:24', '2023-09-14 01:16:24'),
(3, '1694680797.png', '2023-09-14 01:39:57', '2023-09-14 01:39:57'),
(4, '1694680947.png', '2023-09-14 01:42:27', '2023-09-14 01:42:27'),
(5, '1694680973.png', '2023-09-14 01:42:53', '2023-09-14 01:42:53'),
(6, '1694681047.png', '2023-09-14 01:44:07', '2023-09-14 01:44:07'),
(7, '1694681205.png', '2023-09-14 01:46:45', '2023-09-14 01:46:45'),
(8, '1694681492.png', '2023-09-14 01:51:32', '2023-09-14 01:51:32'),
(9, '1694681613.png', '2023-09-14 01:53:33', '2023-09-14 01:53:33'),
(10, '1694682533.png', '2023-09-14 02:08:53', '2023-09-14 02:08:53'),
(11, '1694682716.png', '2023-09-14 02:11:56', '2023-09-14 02:11:56'),
(12, '1694682752.png', '2023-09-14 02:12:32', '2023-09-14 02:12:32'),
(13, '1694682899.png', '2023-09-14 02:14:59', '2023-09-14 02:14:59'),
(14, '1694683040.png', '2023-09-14 02:17:20', '2023-09-14 02:17:20'),
(15, '1694743038.png', '2023-09-14 18:57:18', '2023-09-14 18:57:18'),
(16, '1694744331.png', '2023-09-14 19:18:51', '2023-09-14 19:18:51'),
(17, '1694744604.png', '2023-09-14 19:23:24', '2023-09-14 19:23:24'),
(18, '1694744958.png', '2023-09-14 19:29:18', '2023-09-14 19:29:18'),
(19, '1694747111.png', '2023-09-14 20:05:11', '2023-09-14 20:05:11'),
(20, '1694747126.png', '2023-09-14 20:05:26', '2023-09-14 20:05:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'vtheanh106@gmaol.com', 2, NULL, '$2y$10$.PQk9S/L6/pd0sS6.fEqSO7eQiGVCrXC4dWqd4bcV2JnIP4LkanLu', NULL, '2023-09-12 21:40:34', '2023-09-12 21:40:34'),
(3, 'admin1', 'vtheanh116@gmaol.com', 1, NULL, '$2y$10$Kr3h8m1f8Axi4szJe3vOoOr5xTCcUyUR/7UJ7mb8gbguqXOhSEtMG', NULL, '2023-09-13 01:45:16', '2023-09-13 01:45:16');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_catagory_id_foreign` (`catagory_id`);

--
-- Chỉ mục cho bảng `tempimages`
--
ALTER TABLE `tempimages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tempimages`
--
ALTER TABLE `tempimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_catagory_id_foreign` FOREIGN KEY (`catagory_id`) REFERENCES `catagories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
