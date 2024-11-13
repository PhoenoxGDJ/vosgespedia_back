-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 13, 2024 at 08:27 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sc3zeep6040_vosgespedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
CREATE TABLE IF NOT EXISTS `animals` (
  `anim_id` int NOT NULL,
  `anim_name` char(50) NOT NULL,
  `anim_poids` int NOT NULL,
  `anim_taille` int NOT NULL,
  `anim_habitat` char(50) NOT NULL,
  `anim_alim` char(50) NOT NULL,
  `anim_rarity` char(50) NOT NULL,
  PRIMARY KEY (`anim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`anim_id`, `anim_name`, `anim_poids`, `anim_taille`, `anim_habitat`, `anim_alim`, `anim_rarity`) VALUES
(1, 'buse', 1300, 120, 'pré / champ / forêt', 'carnivore / insectivore', 'commun'),
(2, 'campagnol', 25, 12, 'pré / champ / forêt', 'herbivore / granivore', 'commun'),
(3, 'Castor', 30000, 120, 'rivière', 'Herbivore', 'peu commun'),
(4, 'Cerf', 200000, 200, 'forêt', 'Herbivore', 'rare'),
(5, 'Cigogne Blanche', 4500, 175, 'Zones humides, lacs, étangs', 'Piscivore', 'commun'),
(6, 'Couleuvre a collier', 94, 100, 'fermes, fumier', 'Carnivore', 'peu commun'),
(7, 'Daim', 60000, 150, 'forêt', 'Herbivore', 'rare'),
(8, 'Escargot', 5, 2, 'forêt / jardin / pré', 'Herbivore', 'commun'),
(9, 'Grenouille rousse', 25, 8, 'étang / mare', 'Insectivore', 'commun'),
(10, 'héron cendré', 2, 180, 'étang / mare / rivière', 'Piscivore', 'commun'),
(11, 'hibou moyen duc', 250, 90, 'Forêt', 'Carnivore / Insectivore', 'rare'),
(12, 'Ips typographe', 1, 1, 'forêt', 'Herbivore', 'commun'),
(13, 'milan noir', 730, 180, 'forêt / pré/ lacs', 'Carnivore', 'rare'),
(14, 'orvet', 45, 40, 'jardins / forêts', 'Insectivore', 'commun'),
(15, 'pic epeiche', 75, 22, 'forêt', 'Insectivore', 'peu commun'),
(16, 'renard roux', 10, 80, 'forêt', 'Carnivore', 'peu commun'),
(17, 'sanglier', 90, 150, 'forêt', 'Omnivore', 'commun');

-- --------------------------------------------------------

--
-- Table structure for table `anim_genres`
--

DROP TABLE IF EXISTS `anim_genres`;
CREATE TABLE IF NOT EXISTS `anim_genres` (
  `ag_aid` int NOT NULL,
  `ag_gid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `anim_traces`
--

DROP TABLE IF EXISTS `anim_traces`;
CREATE TABLE IF NOT EXISTS `anim_traces` (
  `atr_aid` int NOT NULL,
  `atr_trid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anim_traces`
--

INSERT INTO `anim_traces` (`atr_aid`, `atr_trid`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 11),
(6, 12),
(6, 13),
(7, 14),
(8, 15),
(9, 16),
(10, 17),
(11, 18),
(11, 19),
(12, 20),
(13, 21),
(14, 22),
(15, 23),
(15, 24),
(16, 25),
(16, 26),
(16, 27),
(17, 28);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `caid` int NOT NULL,
  `categorie_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`caid`, `categorie_name`) VALUES
(2, 'Arbres'),
(1, 'Déjections'),
(1, 'Nourriture'),
(1, 'Habitat');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `clid` int NOT NULL,
  `classe_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`clid`, `classe_name`) VALUES
(1, 'rongeurs'),
(2, 'mustelidés'),
(3, 'félidés'),
(4, 'cervidés'),
(5, 'canidés'),
(6, 'rapaces'),
(7, 'picidés'),
(8, 'ciconiiformes');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `gid` int NOT NULL,
  `genre_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`gid`, `genre_name`) VALUES
(1, 'Mammifère'),
(2, 'Oiseaux'),
(3, 'Amphibiens'),
(4, 'Reptiles'),
(5, 'Insectes&Arachnides');

-- --------------------------------------------------------

--
-- Table structure for table `genre_classes`
--

DROP TABLE IF EXISTS `genre_classes`;
CREATE TABLE IF NOT EXISTS `genre_classes` (
  `gcl_gid` int NOT NULL,
  `gcl_clid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre_classes`
--

INSERT INTO `genre_classes` (`gcl_gid`, `gcl_clid`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 3),
(8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gCxbr9pyTwDjchCcOzAuv3luXlpt6I8dYItTPoLt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmlVUUZqb09xQ1ZrbFYweGtiN1JZVTBYQld3Wk12cER3ZElRZ0VvTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731484279);

-- --------------------------------------------------------

--
-- Table structure for table `traces`
--

DROP TABLE IF EXISTS `traces`;
CREATE TABLE IF NOT EXISTS `traces` (
  `trid` int NOT NULL,
  `trace_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traces`
--

INSERT INTO `traces` (`trid`, `trace_name`) VALUES
(1, 'plumes buse'),
(2, 'trou campagnol'),
(3, 'empreintes castor'),
(4, 'arbre rongé castor'),
(5, 'barrage castor'),
(6, 'empreinte cerf'),
(7, 'bois cerf'),
(8, 'empreintes cerf'),
(9, 'crottes cerf'),
(10, 'empreintes cigogne'),
(11, 'mue couleuvre'),
(12, 'trou couleuvre'),
(13, 'empreintes daim'),
(14, 'coquille escargot'),
(15, 'oeufs grenouille'),
(16, 'empreintes héron'),
(17, 'plumes hibou'),
(18, 'pelottes hibou'),
(19, 'ecriture ips'),
(20, 'plumes milan'),
(21, 'déjections cerf'),
(22, 'trou orvet'),
(23, 'plumes pic epeiche'),
(24, 'nid pic epeiche'),
(25, 'empreintes renard'),
(26, 'déjections renard'),
(27, 'terrier renard'),
(28, 'terre retournée sangliler');

-- --------------------------------------------------------

--
-- Table structure for table `trace_categories`
--

DROP TABLE IF EXISTS `trace_categories`;
CREATE TABLE IF NOT EXISTS `trace_categories` (
  `trca_trid` int NOT NULL,
  `trca_caid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `uid` int NOT NULL,
  `user_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_anims`
--

DROP TABLE IF EXISTS `user_anims`;
CREATE TABLE IF NOT EXISTS `user_anims` (
  `ua_uid` int NOT NULL,
  `ua_aid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_traces`
--

DROP TABLE IF EXISTS `user_traces`;
CREATE TABLE IF NOT EXISTS `user_traces` (
  `ut_uid` int NOT NULL,
  `ut_trid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
