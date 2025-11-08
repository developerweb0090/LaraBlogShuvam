-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2025 at 04:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larablogshuvam`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-posts', 'O:42:\"Illuminate\\Pagination\\LengthAwarePaginator\":12:{s:8:\"\0*\0items\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:2:{i:0;O:15:\"App\\Models\\Post\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:7:\"user_id\";i:4;s:5:\"title\";s:31:\"Technology is Changing the Game\";s:7:\"content\";s:490:\"From VAR in football to Hawk-Eye in tennis and wearable fitness trackers in athletics, technology has become an inseparable part of modern sports. These innovations not only make competitions fairer but also help athletes improve performance and reduce injury risks.\r\n\r\nData analytics now plays a key role in player scouting and strategy. Coaches can analyze real-time data to make better in-game decisions, while fans enjoy richer experiences through augmented reality and instant replays.\";s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-11-08 14:15:32\";s:10:\"updated_at\";s:19:\"2025-11-08 14:15:32\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:7:\"user_id\";i:4;s:5:\"title\";s:31:\"Technology is Changing the Game\";s:7:\"content\";s:490:\"From VAR in football to Hawk-Eye in tennis and wearable fitness trackers in athletics, technology has become an inseparable part of modern sports. These innovations not only make competitions fairer but also help athletes improve performance and reduce injury risks.\r\n\r\nData analytics now plays a key role in player scouting and strategy. Coaches can analyze real-time data to make better in-game decisions, while fans enjoy richer experiences through augmented reality and instant replays.\";s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-11-08 14:15:32\";s:10:\"updated_at\";s:19:\"2025-11-08 14:15:32\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":35:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:4;s:4:\"name\";s:40:\"শুভম চক্রবর্তী\";s:5:\"email\";s:20:\"shuvam0707@gmail.com\";s:17:\"email_verified_at\";N;s:8:\"password\";s:60:\"$2y$12$0g8wyF1Wyh/Sm4xg/joJsewGMFD9YrWDpdFu7lxYYjpOaLEkFouM2\";s:14:\"remember_token\";N;s:10:\"created_at\";s:19:\"2025-11-05 19:00:02\";s:10:\"updated_at\";s:19:\"2025-11-08 14:14:41\";s:4:\"role\";s:4:\"user\";s:9:\"google_id\";s:21:\"100743660596518548868\";s:11:\"facebook_id\";s:17:\"25534816062792070\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:4;s:4:\"name\";s:40:\"শুভম চক্রবর্তী\";s:5:\"email\";s:20:\"shuvam0707@gmail.com\";s:17:\"email_verified_at\";N;s:8:\"password\";s:60:\"$2y$12$0g8wyF1Wyh/Sm4xg/joJsewGMFD9YrWDpdFu7lxYYjpOaLEkFouM2\";s:14:\"remember_token\";N;s:10:\"created_at\";s:19:\"2025-11-05 19:00:02\";s:10:\"updated_at\";s:19:\"2025-11-08 14:14:41\";s:4:\"role\";s:4:\"user\";s:9:\"google_id\";s:21:\"100743660596518548868\";s:11:\"facebook_id\";s:17:\"25534816062792070\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:17:\"email_verified_at\";s:8:\"datetime\";s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"password\";i:3;s:4:\"role\";i:4;s:9:\"google_id\";i:5;s:11:\"facebook_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:19:\"\0*\0authPasswordName\";s:8:\"password\";s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:5:\"title\";i:1;s:7:\"content\";i:2;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}i:1;O:15:\"App\\Models\\Post\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:7:\"user_id\";i:1;s:5:\"title\";s:36:\"The Rise of Young Talent in Football\";s:7:\"content\";s:615:\"The football world is witnessing a new generation of stars taking center stage. Players like Jude Bellingham, Pedri, and Jamal Musiala are redefining how the game is played with their creativity, vision, and fearlessness.\r\n\r\nWhat’s remarkable is how these young athletes adapt so quickly to the demands of top-tier football. Their ability to balance technical skills with tactical intelligence is reshaping the modern game.\r\n\r\nAs clubs invest more in youth development and analytics, we can expect even more talented youngsters to emerge. The future of football looks faster, smarter, and more exciting than ever.\";s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-11-08 14:11:42\";s:10:\"updated_at\";s:19:\"2025-11-08 14:12:24\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:7:\"user_id\";i:1;s:5:\"title\";s:36:\"The Rise of Young Talent in Football\";s:7:\"content\";s:615:\"The football world is witnessing a new generation of stars taking center stage. Players like Jude Bellingham, Pedri, and Jamal Musiala are redefining how the game is played with their creativity, vision, and fearlessness.\r\n\r\nWhat’s remarkable is how these young athletes adapt so quickly to the demands of top-tier football. Their ability to balance technical skills with tactical intelligence is reshaping the modern game.\r\n\r\nAs clubs invest more in youth development and analytics, we can expect even more talented youngsters to emerge. The future of football looks faster, smarter, and more exciting than ever.\";s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2025-11-08 14:11:42\";s:10:\"updated_at\";s:19:\"2025-11-08 14:12:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":35:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:4:\"name\";s:8:\"testuser\";s:5:\"email\";s:18:\"testuser@gmail.com\";s:17:\"email_verified_at\";N;s:8:\"password\";s:60:\"$2y$12$QtCe.f5lhGYVpv1W6o6rfuSTMuKs7B866/oNDA8909z.m1Dt64ZVS\";s:14:\"remember_token\";N;s:10:\"created_at\";s:19:\"2025-11-05 13:22:12\";s:10:\"updated_at\";s:19:\"2025-11-05 13:22:12\";s:4:\"role\";s:4:\"user\";s:9:\"google_id\";N;s:11:\"facebook_id\";N;}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:4:\"name\";s:8:\"testuser\";s:5:\"email\";s:18:\"testuser@gmail.com\";s:17:\"email_verified_at\";N;s:8:\"password\";s:60:\"$2y$12$QtCe.f5lhGYVpv1W6o6rfuSTMuKs7B866/oNDA8909z.m1Dt64ZVS\";s:14:\"remember_token\";N;s:10:\"created_at\";s:19:\"2025-11-05 13:22:12\";s:10:\"updated_at\";s:19:\"2025-11-05 13:22:12\";s:4:\"role\";s:4:\"user\";s:9:\"google_id\";N;s:11:\"facebook_id\";N;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:17:\"email_verified_at\";s:8:\"datetime\";s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"password\";i:3;s:4:\"role\";i:4;s:9:\"google_id\";i:5;s:11:\"facebook_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:19:\"\0*\0authPasswordName\";s:8:\"password\";s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:5:\"title\";i:1;s:7:\"content\";i:2;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"\0*\0perPage\";i:5;s:14:\"\0*\0currentPage\";i:1;s:7:\"\0*\0path\";s:21:\"http://localhost:8000\";s:8:\"\0*\0query\";a:0:{}s:11:\"\0*\0fragment\";N;s:11:\"\0*\0pageName\";s:4:\"page\";s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:10:\"onEachSide\";i:3;s:10:\"\0*\0options\";a:2:{s:4:\"path\";s:21:\"http://localhost:8000\";s:8:\"pageName\";s:4:\"page\";}s:8:\"\0*\0total\";i:2;s:11:\"\0*\0lastPage\";i:1;}', 1762614617);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'very good', 1, 1, '2025-11-08 08:42:35', '2025-11-08 08:42:35'),
(2, 'its nice', 4, 1, '2025-11-08 08:44:55', '2025-11-08 08:44:55'),
(3, 'ooowww', 4, 1, '2025-11-08 08:45:57', '2025-11-08 08:45:57'),
(4, 'hiii', 4, 2, '2025-11-08 08:46:45', '2025-11-08 08:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_04_182154_add_role_to_users_table', 2),
(5, '2025_11_04_182535_create_posts_table', 3),
(6, '2025_11_04_183128_create_comments_table', 4),
(7, '2025_11_05_185330_add_google_id_to_users_table', 5),
(8, '2025_11_05_194552_add_facebook_id_to_users_table', 6),
(9, '2025_11_08_134134_create_user_activities_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'The Rise of Young Talent in Football', 'The football world is witnessing a new generation of stars taking center stage. Players like Jude Bellingham, Pedri, and Jamal Musiala are redefining how the game is played with their creativity, vision, and fearlessness.\r\n\r\nWhat’s remarkable is how these young athletes adapt so quickly to the demands of top-tier football. Their ability to balance technical skills with tactical intelligence is reshaping the modern game.\r\n\r\nAs clubs invest more in youth development and analytics, we can expect even more talented youngsters to emerge. The future of football looks faster, smarter, and more exciting than ever.', NULL, '2025-11-08 08:41:42', '2025-11-08 08:42:24'),
(2, 4, 'Technology is Changing the Game', 'From VAR in football to Hawk-Eye in tennis and wearable fitness trackers in athletics, technology has become an inseparable part of modern sports. These innovations not only make competitions fairer but also help athletes improve performance and reduce injury risks.\r\n\r\nData analytics now plays a key role in player scouting and strategy. Coaches can analyze real-time data to make better in-game decisions, while fans enjoy richer experiences through augmented reality and instant replays.', NULL, '2025-11-08 08:45:32', '2025-11-08 08:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zQpuLweRds6335d3JAgkUxa3kN3tRQt7TK7XNJaS', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2dXUFhDWFJRcDhoM0FxZVdaRzNUUmNyY0tqRlRjR1hnV21kVExENSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6MTU6ImFkbWluLmRhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1762614610);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `google_id`, `facebook_id`) VALUES
(1, 'testuser', 'testuser@gmail.com', NULL, '$2y$12$QtCe.f5lhGYVpv1W6o6rfuSTMuKs7B866/oNDA8909z.m1Dt64ZVS', NULL, '2025-11-05 07:52:12', '2025-11-05 07:52:12', 'user', NULL, NULL),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$12$QtCe.f5lhGYVpv1W6o6rfuSTMuKs7B866/oNDA8909z.m1Dt64ZVS', NULL, '2025-11-05 07:52:12', '2025-11-05 07:52:12', 'admin', NULL, NULL),
(4, 'শুভম চক্রবর্তী', 'shuvam0707@gmail.com', NULL, '$2y$12$0g8wyF1Wyh/Sm4xg/joJsewGMFD9YrWDpdFu7lxYYjpOaLEkFouM2', NULL, '2025-11-05 13:30:02', '2025-11-08 08:44:41', 'user', '100743660596518548868', '25534816062792070');

-- --------------------------------------------------------

--
-- Table structure for table `user_activities`
--

CREATE TABLE `user_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activities`
--

INSERT INTO `user_activities` (`id`, `email`, `path`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'testuser@gmail.com', 'posts', 1, NULL, '2025-11-08 08:41:24', '2025-11-08 08:41:24'),
(2, 'testuser@gmail.com', 'posts', 1, NULL, '2025-11-08 08:41:42', '2025-11-08 08:41:42'),
(3, 'testuser@gmail.com', 'posts/1', 1, NULL, '2025-11-08 08:42:00', '2025-11-08 08:42:00'),
(4, 'testuser@gmail.com', 'posts/1', 1, NULL, '2025-11-08 08:42:24', '2025-11-08 08:42:24'),
(5, 'testuser@gmail.com', 'posts/1/comments', 1, NULL, '2025-11-08 08:42:35', '2025-11-08 08:42:35'),
(6, 'testuser@gmail.com', 'posts/1', 1, NULL, '2025-11-08 08:42:36', '2025-11-08 08:42:36'),
(7, 'testuser@gmail.com', 'posts', 1, NULL, '2025-11-08 08:42:41', '2025-11-08 08:42:41'),
(8, 'shuvam0707@gmail.com', 'posts/1', 4, NULL, '2025-11-08 08:44:47', '2025-11-08 08:44:47'),
(9, 'shuvam0707@gmail.com', 'posts/1/comments', 4, NULL, '2025-11-08 08:44:55', '2025-11-08 08:44:55'),
(10, 'shuvam0707@gmail.com', 'posts/1', 4, NULL, '2025-11-08 08:44:55', '2025-11-08 08:44:55'),
(11, 'shuvam0707@gmail.com', 'posts', 4, NULL, '2025-11-08 08:44:59', '2025-11-08 08:44:59'),
(12, 'shuvam0707@gmail.com', 'posts', 4, NULL, '2025-11-08 08:45:32', '2025-11-08 08:45:32'),
(13, 'shuvam0707@gmail.com', 'posts/1', 4, NULL, '2025-11-08 08:45:40', '2025-11-08 08:45:40'),
(14, 'shuvam0707@gmail.com', 'posts/1/comments', 4, NULL, '2025-11-08 08:45:57', '2025-11-08 08:45:57'),
(15, 'shuvam0707@gmail.com', 'posts/1', 4, NULL, '2025-11-08 08:45:57', '2025-11-08 08:45:57'),
(16, 'shuvam0707@gmail.com', 'posts', 4, NULL, '2025-11-08 08:46:00', '2025-11-08 08:46:00'),
(17, 'shuvam0707@gmail.com', 'posts/1', 4, NULL, '2025-11-08 08:46:04', '2025-11-08 08:46:04'),
(18, 'shuvam0707@gmail.com', 'posts', 4, NULL, '2025-11-08 08:46:15', '2025-11-08 08:46:15'),
(19, 'shuvam0707@gmail.com', 'posts/1', 4, NULL, '2025-11-08 08:46:17', '2025-11-08 08:46:17'),
(20, 'shuvam0707@gmail.com', 'posts', 4, NULL, '2025-11-08 08:46:25', '2025-11-08 08:46:25'),
(21, 'shuvam0707@gmail.com', 'posts/2', 4, NULL, '2025-11-08 08:46:27', '2025-11-08 08:46:27'),
(22, 'shuvam0707@gmail.com', 'posts/2/comments', 4, NULL, '2025-11-08 08:46:45', '2025-11-08 08:46:45'),
(23, 'shuvam0707@gmail.com', 'posts/2', 4, NULL, '2025-11-08 08:46:46', '2025-11-08 08:46:46'),
(24, 'shuvam0707@gmail.com', 'posts', 4, NULL, '2025-11-08 08:46:49', '2025-11-08 08:46:49'),
(25, 'shuvam0707@gmail.com', 'posts/2', 4, NULL, '2025-11-08 08:46:53', '2025-11-08 08:46:53'),
(26, 'shuvam0707@gmail.com', 'posts', 4, NULL, '2025-11-08 08:46:59', '2025-11-08 08:46:59'),
(27, 'shuvam0707@gmail.com', 'posts/1', 4, NULL, '2025-11-08 08:47:07', '2025-11-08 08:47:07'),
(28, 'shuvam0707@gmail.com', 'posts', 4, NULL, '2025-11-08 08:51:59', '2025-11-08 08:51:59'),
(29, 'shuvam0707@gmail.com', 'posts/1', 4, NULL, '2025-11-08 08:52:10', '2025-11-08 08:52:10'),
(30, 'shuvam0707@gmail.com', 'posts/2', 4, NULL, '2025-11-08 08:52:26', '2025-11-08 08:52:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activities_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_activities`
--
ALTER TABLE `user_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD CONSTRAINT `user_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
