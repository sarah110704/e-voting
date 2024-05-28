-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 01:04 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `password`, `is_super`, `created_at`, `updated_at`) VALUES
(6, 'Admin', 'admin', '$2a$12$iovk3qdYUSWlceUu55VVs.Hw6TvWDGIoSZU2m7HP2ftSFfoUoAI3G', 1, '2024-05-16 07:43:32', '2024-05-16 07:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_calon` bigint(20) NOT NULL,
  `nama_calon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_wakil_calon` bigint(20) NOT NULL,
  `nama_wakil_calon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `id_calon`, `nama_calon`, `id_wakil_calon`, `nama_wakil_calon`, `visi`, `misi`, `foto`, `created_at`, `updated_at`) VALUES
(1, 6571486408995383, 'Kenari Ramadan', 3320254505191623, 'Ana Yulianti', '<div>Vero eum maiores rerum eveniet cupiditate molestias ipsum.<br><br></div><div>Ut enim libero ut ratione.<br><br></div><div>Est porro exercitationem quia sit blanditiis rem.<br><br></div>', '<div>Tempora iure modi nemo alias illum.<br><br></div><div>Saepe voluptatem tempora earum corporis aspernatur culpa harum.<br><br></div><div>Dolore nemo et est atque.<br><br></div><div>Et consectetur eaque voluptatum est repudiandae.<br><br></div><div>Quidem iusto aut non delectus sit voluptatem.<br><br></div>', '6571486408995383_3320254505191623.jpg', '2024-05-16 07:41:49', '2024-05-16 07:58:11'),
(3, 2105050704166140, 'Gaman Maulana S.E.', 8107956803212275, 'Vanesa Zahra Mulyani S.Farm', '<div>Maxime voluptatibus aut eos eligendi id.<br><br></div>', '<div>Dolorem quam deleniti ut quo minus rem.<br><br></div><div>Fuga nobis mollitia qui voluptatem ipsam.<br><br></div><div>Earum sed illum sed eligendi officiis culpa fugiat.<br><br></div><div>Voluptatum voluptatem vero molestiae sunt ad perspiciatis quis deserunt.<br><br></div><div>Sed sit ut aut voluptatem delectus soluta et dolorem.<br><br></div><div>Eum laborum consequuntur consequatur illo sit.<br><br></div><div>Explicabo a vero nisi.<br><br></div>', '2105050704166140_8107956803212275.webp', '2024-05-16 07:41:49', '2024-05-16 08:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `announcement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `start`, `end`, `announcement`, `event_name`, `location`, `created_at`, `updated_at`) VALUES
(1, '2024-05-16 08:00:00', '2024-05-24 17:00:00', '<div>Pengumuman: Kami dengan bangga mengumumkan bahwa Pemilihan Ketua akan dilaksanakan pada tanggal 16 - 24 Mei 2024. Semua orang yang memenuhi syarat diundang untuk menggunakan hak pilih mereka dan berpartisipasi dalam proses ini. Pemilihan ini adalah kesempatan penting bagi kita semua. Pastikan Anda terdaftar sebagai pemilih dan datang ke tempat yang telah ditentukan pada hari pemilihan. Mari kita bersama-sama berkontribusi untuk masa depan yang lebih baik!</div>', 'Pemilihan Ketua', 'Jl Jauh No 70', '2024-05-16 07:41:49', '2024-05-16 10:09:37');

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2021_09_08_044306_create_admins_table', 1),
(14, '2021_09_10_204103_create_candidates_table', 1),
(15, '2021_09_10_210704_create_configs_table', 1),
(16, '2021_09_10_212125_create_votes_table', 1);

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
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `active`, `password`, `birth_date`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '12345678909876', 'Pemilih-1', 1, '$2y$10$9zWABGRItsQ.CYqRb2ZKJuHxoEnpXpy2ZI/gDa59isAbxIqD/U7Qm', '2003-12-29', NULL, '2024-05-16 07:49:01', '2024-05-16 07:54:07'),
(2, '09876543212345', 'Pemiih-2', 1, '$2y$10$Al/3fUMaQrBIuyT8GHYVtOseu82PdcIlhCcu3nPjsUbeb648kvA6q', '2003-12-28', NULL, '2024-05-16 07:53:45', '2024-05-16 07:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`user_id`, `candidate_id`, `ip`, `os`, `browser`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'unknown', 'Default Browser 0', '2024-05-16 10:13:13', '2024-05-16 10:13:13'),
(2, 1, '127.0.0.1', 'unknown', 'Default Browser 0', '2024-05-16 07:55:32', '2024-05-16 07:55:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `votes_candidate_id_foreign` (`candidate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
