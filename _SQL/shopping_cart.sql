-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2020 at 08:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_06_21_102727_create_products_table', 1),
(9, '2020_07_11_180944_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `cart`, `address`, `name`, `payment_id`) VALUES
(1, '2020-07-11 13:27:26', '2020-07-11 13:27:26', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:1;a:3:{s:3:\"qty\";i:3;s:5:\"price\";i:30;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:98:\"https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png\";s:5:\"title\";s:15:\"Witch Halloween\";s:11:\"description\";s:27:\"The best book ever written.\";s:5:\"price\";i:10;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:98:\"https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png\";s:5:\"title\";s:15:\"Witch Halloween\";s:11:\"description\";s:27:\"The best book ever written.\";s:5:\"price\";i:10;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:30;}', 'ktm', 'John doe', 'ch_1H3o7ZDYBmZwAY9uoorGbzgC'),
(2, '2020-07-13 12:01:02', '2020-07-13 12:01:02', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:1;a:3:{s:3:\"qty\";i:2;s:5:\"price\";i:20;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:98:\"https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png\";s:5:\"title\";s:15:\"Witch Halloween\";s:11:\"description\";s:27:\"The best book ever written.\";s:5:\"price\";i:10;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:98:\"https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png\";s:5:\"title\";s:15:\"Witch Halloween\";s:11:\"description\";s:27:\"The best book ever written.\";s:5:\"price\";i:10;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:20;}', 'ktm', 'admin', 'ch_1H4Vj3DYBmZwAY9uFq1cuA1v'),
(3, '2020-07-14 13:07:04', '2020-07-14 13:07:04', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:4:{i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:98:\"https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png\";s:5:\"title\";s:15:\"Witch Halloween\";s:11:\"description\";s:27:\"The best book ever written.\";s:5:\"price\";i:10;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:98:\"https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png\";s:5:\"title\";s:15:\"Witch Halloween\";s:11:\"description\";s:27:\"The best book ever written.\";s:5:\"price\";i:10;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:20;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:9:\"imagePath\";s:88:\"https://images-na.ssl-images-amazon.com/images/I/51TNIcVTzPL._SX327_BO1,204,203,200_.jpg\";s:5:\"title\";s:12:\"Stephen King\";s:11:\"description\";s:15:\"Love this book.\";s:5:\"price\";i:20;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:9:\"imagePath\";s:88:\"https://images-na.ssl-images-amazon.com/images/I/51TNIcVTzPL._SX327_BO1,204,203,200_.jpg\";s:5:\"title\";s:12:\"Stephen King\";s:11:\"description\";s:15:\"Love this book.\";s:5:\"price\";i:20;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:3;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:50;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:9:\"imagePath\";s:88:\"https://images-na.ssl-images-amazon.com/images/I/41tSu0tEvNL._SX324_BO1,204,203,200_.jpg\";s:5:\"title\";s:19:\"The turn of the key\";s:11:\"description\";s:19:\"Just love this book\";s:5:\"price\";i:50;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:9:\"imagePath\";s:88:\"https://images-na.ssl-images-amazon.com/images/I/41tSu0tEvNL._SX324_BO1,204,203,200_.jpg\";s:5:\"title\";s:19:\"The turn of the key\";s:11:\"description\";s:19:\"Just love this book\";s:5:\"price\";i:50;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:4;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:20;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:4;s:9:\"imagePath\";s:88:\"https://images-na.ssl-images-amazon.com/images/I/51C8Tg0TCaL._SX322_BO1,204,203,200_.jpg\";s:5:\"title\";s:14:\"The book thief\";s:11:\"description\";s:23:\"The best book ever wow.\";s:5:\"price\";i:20;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:4;s:9:\"imagePath\";s:88:\"https://images-na.ssl-images-amazon.com/images/I/51C8Tg0TCaL._SX322_BO1,204,203,200_.jpg\";s:5:\"title\";s:14:\"The book thief\";s:11:\"description\";s:23:\"The best book ever wow.\";s:5:\"price\";i:20;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:4;s:10:\"totalPrice\";i:100;}', 'ktm', 'user', 'ch_1H4tEUDYBmZwAY9uCNwcomho'),
(4, '2020-07-14 13:08:30', '2020-07-14 13:08:30', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:1;a:3:{s:3:\"qty\";i:3;s:5:\"price\";i:30;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:98:\"https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png\";s:5:\"title\";s:15:\"Witch Halloween\";s:11:\"description\";s:27:\"The best book ever written.\";s:5:\"price\";i:10;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:98:\"https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png\";s:5:\"title\";s:15:\"Witch Halloween\";s:11:\"description\";s:27:\"The best book ever written.\";s:5:\"price\";i:10;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:20;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:9:\"imagePath\";s:88:\"https://images-na.ssl-images-amazon.com/images/I/51TNIcVTzPL._SX327_BO1,204,203,200_.jpg\";s:5:\"title\";s:12:\"Stephen King\";s:11:\"description\";s:15:\"Love this book.\";s:5:\"price\";i:20;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:9:\"imagePath\";s:88:\"https://images-na.ssl-images-amazon.com/images/I/51TNIcVTzPL._SX327_BO1,204,203,200_.jpg\";s:5:\"title\";s:12:\"Stephen King\";s:11:\"description\";s:15:\"Love this book.\";s:5:\"price\";i:20;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:4;s:10:\"totalPrice\";i:50;}', 'ktm', 'asdf', 'ch_1H4tFsDYBmZwAY9ug5S5fOYh'),
(5, '2020-07-19 13:17:33', '2020-07-19 13:17:33', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:1;a:3:{s:3:\"qty\";i:3;s:5:\"price\";i:30;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:98:\"https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png\";s:5:\"title\";s:15:\"Witch Halloween\";s:11:\"description\";s:27:\"The best book ever written.\";s:5:\"price\";i:10;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:98:\"https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png\";s:5:\"title\";s:15:\"Witch Halloween\";s:11:\"description\";s:27:\"The best book ever written.\";s:5:\"price\";i:10;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:20;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:9:\"imagePath\";s:88:\"https://images-na.ssl-images-amazon.com/images/I/51TNIcVTzPL._SX327_BO1,204,203,200_.jpg\";s:5:\"title\";s:12:\"Stephen King\";s:11:\"description\";s:15:\"Love this book.\";s:5:\"price\";i:20;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:9:\"imagePath\";s:88:\"https://images-na.ssl-images-amazon.com/images/I/51TNIcVTzPL._SX327_BO1,204,203,200_.jpg\";s:5:\"title\";s:12:\"Stephen King\";s:11:\"description\";s:15:\"Love this book.\";s:5:\"price\";i:20;s:10:\"created_at\";s:19:\"2020-06-23 09:30:37\";s:10:\"updated_at\";s:19:\"2020-06-23 09:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:0;s:10:\"totalPrice\";i:10;}', 'ktm', 'admin', 'ch_1H6hmODYBmZwAY9u6cpM0zYh');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `imagePath`, `title`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png', 'Witch Halloween', 'The best book ever written.', 10, '2020-06-23 03:45:37', '2020-06-23 03:45:37'),
(2, 'https://images-na.ssl-images-amazon.com/images/I/51TNIcVTzPL._SX327_BO1,204,203,200_.jpg', 'Stephen King', 'Love this book.', 20, '2020-06-23 03:45:37', '2020-06-23 03:45:37'),
(3, 'https://images-na.ssl-images-amazon.com/images/I/41tSu0tEvNL._SX324_BO1,204,203,200_.jpg', 'The turn of the key', 'Just love this book', 50, '2020-06-23 03:45:37', '2020-06-23 03:45:37'),
(4, 'https://images-na.ssl-images-amazon.com/images/I/51C8Tg0TCaL._SX322_BO1,204,203,200_.jpg', 'The book thief', 'The best book ever wow.', 20, '2020-06-23 03:45:37', '2020-06-23 03:45:37'),
(5, 'https://images-na.ssl-images-amazon.com/images/I/51V9kCEJ8oL._SX319_BO1,204,203,200_.jpg', 'Witch Halloween', 'Everyone should read this book.', 30, '2020-06-23 03:45:37', '2020-06-23 03:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin@gmail.com', NULL, '$2y$10$OkONdpmPMsUs7mHIV1ChN.UsPqi38wHNNYA0qwZ1C4idPg4hRpeZu', NULL, '2020-06-23 03:46:06', '2020-06-23 03:46:06'),
(2, NULL, 'superadmin@gmail.com', NULL, '$2y$10$WRaO4vW7pUPBftOOOTiUkey4w./6ZRNCFckxRYnAk17LCJdchnNHu', NULL, '2020-06-23 06:01:43', '2020-06-23 06:01:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
