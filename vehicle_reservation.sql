-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 18, 2024 at 11:41 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(41, 'default', 'Kevin Sanjaya telah logout', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 09:06:47', '2024-12-18 09:06:47'),
(42, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 09:07:26', '2024-12-18 09:07:26'),
(43, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 09:26:01', '2024-12-18 09:26:01'),
(44, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 09:54:00', '2024-12-18 09:54:00'),
(45, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 09:54:47', '2024-12-18 09:54:47'),
(46, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 10:02:44', '2024-12-18 10:02:44'),
(47, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 10:28:21', '2024-12-18 10:28:21'),
(48, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 16:06:10', '2024-12-18 16:06:10'),
(49, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 16:08:46', '2024-12-18 16:08:46'),
(50, 'default', 'Kevin Sanjaya telah logout', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 16:08:57', '2024-12-18 16:08:57'),
(51, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 16:24:07', '2024-12-18 16:24:07'),
(52, 'default', 'Kevin Sanjaya telah logout', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 16:27:41', '2024-12-18 16:27:41'),
(53, 'default', 'Don Pollo telah login', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-12-18 16:28:14', '2024-12-18 16:28:14'),
(54, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 16:29:04', '2024-12-18 16:29:04'),
(55, 'default', 'Kevin Sanjaya telah logout', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 16:29:09', '2024-12-18 16:29:09'),
(56, 'default', 'Don Pollo telah login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-12-18 16:29:15', '2024-12-18 16:29:15'),
(57, 'default', 'Don Pollo telah logout', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-12-18 16:32:32', '2024-12-18 16:32:32'),
(58, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 16:33:23', '2024-12-18 16:33:23'),
(59, 'default', 'Kevin Sanjaya telah logout', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 16:37:29', '2024-12-18 16:37:29'),
(60, 'default', 'Kevin Sanjaya telah login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-12-18 16:38:29', '2024-12-18 16:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_18_120209_create_permission_tables', 1),
(6, '2024_12_18_152413_create_vehicles_table', 1),
(7, '2024_12_18_150345_create_transactions_table', 1),
(8, '2024_12_18_141356_create_activity_log_table', 2),
(9, '2024_12_18_131310_add_event_column_to_activity_log_table', 2),
(10, '2024_12_18_123934_add_batch_uuid_column_to_activity_log_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'add kendaraan', 'web', '2024-12-18 16:15:53', '2024-12-18 16:15:53'),
(2, 'edit kendaraan', 'web', '2024-12-18 16:16:10', '2024-12-18 16:16:10'),
(3, 'approve', 'web', '2024-12-18 16:16:22', '2024-12-18 16:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-07-26 09:01:47', '2023-07-26 09:01:47'),
(2, 'Verifier', 'web', '2023-07-26 09:01:51', '2023-07-26 09:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `id_vehicles` bigint UNSIGNED DEFAULT NULL,
  `id_users` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `id_vehicles`, `id_users`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-12-18 23:37:54', '2024-12-18 23:37:54'),
(2, 3, 2, '2024-12-18 23:37:54', '2024-12-18 23:37:54'),
(3, 6, 1, '2024-12-18 23:37:54', '2024-12-18 23:37:54'),
(4, 7, 2, '2024-12-18 23:37:54', '2024-12-18 23:37:54'),
(5, 9, 1, '2024-12-18 23:37:54', '2024-12-18 23:37:54'),
(6, 4, 2, '2024-12-18 23:37:54', '2024-12-18 23:37:54'),
(7, 1, 1, '2024-12-18 23:37:54', '2024-12-18 23:37:54'),
(8, 10, 2, '2024-12-18 23:37:54', '2024-12-18 23:37:54'),
(9, 8, 1, '2024-12-18 23:37:54', '2024-12-18 23:37:54'),
(10, 5, 2, '2024-12-18 23:37:54', '2024-12-18 23:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kevin Sanjaya', 'kevin@gmail.com', '$2y$10$5LNvB7smG2ubxV3QutfAwugL955gYHSp4PBb6PeHzu7B8bf3qWTmS', NULL, '2024-12-15 00:42:00', '2024-12-15 00:42:00'),
(2, 'Don Pollo', 'donpollo@gmail.com', '$2y$10$FZ1XNEbv//ge5O0BOl3/b.OZcYN9Ho6zrT4HKN.sYjH..VgbUVMIG', NULL, '2024-12-18 16:28:05', '2024-12-18 16:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint UNSIGNED NOT NULL,
  `merek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nopol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bahan_bakar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` enum('barang','penumpang') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('tersedia','dipesan','dipakai','servis') COLLATE utf8mb4_unicode_ci DEFAULT 'tersedia',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `merek`, `nopol`, `bahan_bakar`, `nama_driver`, `jenis`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Toyota Avanza', 'B 1234 ABC', 'Bensin', 'Budi Santoso', 'penumpang', 'tersedia', '2024-12-18 23:37:44', '2024-12-18 23:37:44'),
(2, 'Honda Jazz', 'D 5678 DEF', 'Bensin', 'Dewi Lestari', 'penumpang', 'dipesan', '2024-12-18 23:37:44', '2024-12-18 23:37:44'),
(3, 'Mitsubishi L300', 'F 9101 GHI', 'Diesel', 'Eko Prasetyo', 'barang', 'dipakai', '2024-12-18 23:37:44', '2024-12-18 23:37:44'),
(4, 'Suzuki Carry', 'A 1122 JKL', 'Diesel', 'Siti Aminah', 'barang', 'servis', '2024-12-18 23:37:44', '2024-12-18 23:37:44'),
(5, 'Daihatsu Xenia', 'B 3344 MNO', 'Bensin', 'Wahyu Hidayat', 'penumpang', 'tersedia', '2024-12-18 23:37:44', '2024-12-18 23:37:44'),
(6, 'Isuzu Elf', 'E 5566 PQR', 'Diesel', 'Nurul Anisa', 'penumpang', 'dipakai', '2024-12-18 23:37:44', '2024-12-18 23:37:44'),
(7, 'Toyota Hilux', 'F 7788 STU', 'Diesel', 'Adi Wijaya', 'barang', 'dipesan', '2024-12-18 23:37:44', '2024-12-18 23:37:44'),
(8, 'Honda Mobilio', 'G 9900 VWX', 'Bensin', 'Rina Kusuma', 'penumpang', 'tersedia', '2024-12-18 23:37:44', '2024-12-18 23:37:44'),
(9, 'Suzuki APV', 'H 2233 YZA', 'Bensin', 'Fajar Setiawan', 'penumpang', 'dipakai', '2024-12-18 23:37:44', '2024-12-18 23:37:44'),
(10, 'Mitsubishi Colt Diesel', 'K 4455 BCD', 'Diesel', 'Lina Mahardika', 'barang', 'tersedia', '2024-12-18 23:37:44', '2024-12-18 23:37:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_id_vehicles_index` (`id_vehicles`),
  ADD KEY `transactions_id_users_index` (`id_users`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_id_vehicles_foreign` FOREIGN KEY (`id_vehicles`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
