-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 11:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fp-pbkk`
--

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `province`, `type`, `name`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat', '23681', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(2, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat Daya', '23764', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(3, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Besar', '23951', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(4, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Jaya', '23654', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(5, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Selatan', '23719', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(6, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Singkil', '24785', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(7, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tamiang', '24476', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(8, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tengah', '24511', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(9, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tenggara', '24611', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(10, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Timur', '24454', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(11, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Utara', '24382', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(12, 32, 'Sumatera Barat', 'Kabupaten', 'Agam', '26411', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(13, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Alor', '85811', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(14, 19, 'Maluku', 'Kota', 'Ambon', '97222', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(15, 34, 'Sumatera Utara', 'Kabupaten', 'Asahan', '21214', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(16, 24, 'Papua', 'Kabupaten', 'Asmat', '99777', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(17, 1, 'Bali', 'Kabupaten', 'Badung', '80351', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(18, 13, 'Kalimantan Selatan', 'Kabupaten', 'Balangan', '71611', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(19, 15, 'Kalimantan Timur', 'Kota', 'Balikpapan', '76111', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(20, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Banda Aceh', '23238', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(21, 18, 'Lampung', 'Kota', 'Bandar Lampung', '35139', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(22, 9, 'Jawa Barat', 'Kabupaten', 'Bandung', '40311', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(23, 9, 'Jawa Barat', 'Kota', 'Bandung', '40111', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(24, 9, 'Jawa Barat', 'Kabupaten', 'Bandung Barat', '40721', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(25, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai', '94711', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(26, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai Kepulauan', '94881', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(27, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka', '33212', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(28, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Barat', '33315', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(29, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Selatan', '33719', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(30, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Tengah', '33613', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(31, 11, 'Jawa Timur', 'Kabupaten', 'Bangkalan', '69118', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(32, 1, 'Bali', 'Kabupaten', 'Bangli', '80619', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(33, 13, 'Kalimantan Selatan', 'Kabupaten', 'Banjar', '70619', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(34, 9, 'Jawa Barat', 'Kota', 'Banjar', '46311', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(35, 13, 'Kalimantan Selatan', 'Kota', 'Banjarbaru', '70712', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(36, 13, 'Kalimantan Selatan', 'Kota', 'Banjarmasin', '70117', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(37, 10, 'Jawa Tengah', 'Kabupaten', 'Banjarnegara', '53419', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(38, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bantaeng', '92411', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(39, 5, 'DI Yogyakarta', 'Kabupaten', 'Bantul', '55715', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(40, 33, 'Sumatera Selatan', 'Kabupaten', 'Banyuasin', '30911', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(41, 10, 'Jawa Tengah', 'Kabupaten', 'Banyumas', '53114', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(42, 11, 'Jawa Timur', 'Kabupaten', 'Banyuwangi', '68416', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(43, 13, 'Kalimantan Selatan', 'Kabupaten', 'Barito Kuala', '70511', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(44, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Selatan', '73711', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(45, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Timur', '73671', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(46, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Utara', '73881', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(47, 28, 'Sulawesi Selatan', 'Kabupaten', 'Barru', '90719', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(48, 17, 'Kepulauan Riau', 'Kota', 'Batam', '29413', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(49, 10, 'Jawa Tengah', 'Kabupaten', 'Batang', '51211', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(50, 8, 'Jambi', 'Kabupaten', 'Batang Hari', '36613', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(51, 11, 'Jawa Timur', 'Kota', 'Batu', '65311', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(52, 34, 'Sumatera Utara', 'Kabupaten', 'Batu Bara', '21655', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(53, 30, 'Sulawesi Tenggara', 'Kota', 'Bau-Bau', '93719', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(54, 9, 'Jawa Barat', 'Kabupaten', 'Bekasi', '17837', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(55, 9, 'Jawa Barat', 'Kota', 'Bekasi', '17121', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(56, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung', '33419', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(57, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung Timur', '33519', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(58, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Belu', '85711', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(59, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bener Meriah', '24581', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(60, 26, 'Riau', 'Kabupaten', 'Bengkalis', '28719', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(61, 12, 'Kalimantan Barat', 'Kabupaten', 'Bengkayang', '79213', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(62, 4, 'Bengkulu', 'Kota', 'Bengkulu', '38229', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(63, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Selatan', '38519', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(64, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Tengah', '38319', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(65, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Utara', '38619', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(66, 15, 'Kalimantan Timur', 'Kabupaten', 'Berau', '77311', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(67, 24, 'Papua', 'Kabupaten', 'Biak Numfor', '98119', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(68, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Bima', '84171', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(69, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Bima', '84139', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(70, 34, 'Sumatera Utara', 'Kota', 'Binjai', '20712', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(71, 17, 'Kepulauan Riau', 'Kabupaten', 'Bintan', '29135', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(72, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bireuen', '24219', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(73, 31, 'Sulawesi Utara', 'Kota', 'Bitung', '95512', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(74, 11, 'Jawa Timur', 'Kabupaten', 'Blitar', '66171', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(75, 11, 'Jawa Timur', 'Kota', 'Blitar', '66124', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(76, 10, 'Jawa Tengah', 'Kabupaten', 'Blora', '58219', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(77, 7, 'Gorontalo', 'Kabupaten', 'Boalemo', '96319', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(78, 9, 'Jawa Barat', 'Kabupaten', 'Bogor', '16911', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(79, 9, 'Jawa Barat', 'Kota', 'Bogor', '16119', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(80, 11, 'Jawa Timur', 'Kabupaten', 'Bojonegoro', '62119', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(81, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow (Bolmong)', '95755', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(82, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Selatan', '95774', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(83, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Timur', '95783', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(84, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Utara', '95765', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(85, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Bombana', '93771', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(86, 11, 'Jawa Timur', 'Kabupaten', 'Bondowoso', '68219', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(87, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bone', '92713', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(88, 7, 'Gorontalo', 'Kabupaten', 'Bone Bolango', '96511', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(89, 15, 'Kalimantan Timur', 'Kota', 'Bontang', '75313', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(90, 24, 'Papua', 'Kabupaten', 'Boven Digoel', '99662', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(91, 10, 'Jawa Tengah', 'Kabupaten', 'Boyolali', '57312', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(92, 10, 'Jawa Tengah', 'Kabupaten', 'Brebes', '52212', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(93, 32, 'Sumatera Barat', 'Kota', 'Bukittinggi', '26115', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(94, 1, 'Bali', 'Kabupaten', 'Buleleng', '81111', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(95, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bulukumba', '92511', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(96, 16, 'Kalimantan Utara', 'Kabupaten', 'Bulungan (Bulongan)', '77211', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(97, 8, 'Jambi', 'Kabupaten', 'Bungo', '37216', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(98, 29, 'Sulawesi Tengah', 'Kabupaten', 'Buol', '94564', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(99, 19, 'Maluku', 'Kabupaten', 'Buru', '97371', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(100, 19, 'Maluku', 'Kabupaten', 'Buru Selatan', '97351', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(101, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton', '93754', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(102, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton Utara', '93745', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(103, 9, 'Jawa Barat', 'Kabupaten', 'Ciamis', '46211', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(104, 9, 'Jawa Barat', 'Kabupaten', 'Cianjur', '43217', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(105, 10, 'Jawa Tengah', 'Kabupaten', 'Cilacap', '53211', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(106, 3, 'Banten', 'Kota', 'Cilegon', '42417', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(107, 9, 'Jawa Barat', 'Kota', 'Cimahi', '40512', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(108, 9, 'Jawa Barat', 'Kabupaten', 'Cirebon', '45611', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(109, 9, 'Jawa Barat', 'Kota', 'Cirebon', '45116', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(110, 34, 'Sumatera Utara', 'Kabupaten', 'Dairi', '22211', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(111, 24, 'Papua', 'Kabupaten', 'Deiyai (Deliyai)', '98784', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(112, 34, 'Sumatera Utara', 'Kabupaten', 'Deli Serdang', '20511', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(113, 10, 'Jawa Tengah', 'Kabupaten', 'Demak', '59519', '2022-06-09 09:08:03', '2022-06-09 09:08:03'),
(114, 1, 'Bali', 'Kota', 'Denpasar', '80227', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(115, 9, 'Jawa Barat', 'Kota', 'Depok', '16416', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(116, 32, 'Sumatera Barat', 'Kabupaten', 'Dharmasraya', '27612', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(117, 24, 'Papua', 'Kabupaten', 'Dogiyai', '98866', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(118, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Dompu', '84217', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(119, 29, 'Sulawesi Tengah', 'Kabupaten', 'Donggala', '94341', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(120, 26, 'Riau', 'Kota', 'Dumai', '28811', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(121, 33, 'Sumatera Selatan', 'Kabupaten', 'Empat Lawang', '31811', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(122, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ende', '86351', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(123, 28, 'Sulawesi Selatan', 'Kabupaten', 'Enrekang', '91719', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(124, 25, 'Papua Barat', 'Kabupaten', 'Fakfak', '98651', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(125, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Flores Timur', '86213', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(126, 9, 'Jawa Barat', 'Kabupaten', 'Garut', '44126', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(127, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Gayo Lues', '24653', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(128, 1, 'Bali', 'Kabupaten', 'Gianyar', '80519', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(129, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo', '96218', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(130, 7, 'Gorontalo', 'Kota', 'Gorontalo', '96115', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(131, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo Utara', '96611', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(132, 28, 'Sulawesi Selatan', 'Kabupaten', 'Gowa', '92111', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(133, 11, 'Jawa Timur', 'Kabupaten', 'Gresik', '61115', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(134, 10, 'Jawa Tengah', 'Kabupaten', 'Grobogan', '58111', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(135, 5, 'DI Yogyakarta', 'Kabupaten', 'Gunung Kidul', '55812', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(136, 14, 'Kalimantan Tengah', 'Kabupaten', 'Gunung Mas', '74511', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(137, 34, 'Sumatera Utara', 'Kota', 'Gunungsitoli', '22813', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(138, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Barat', '97757', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(139, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Selatan', '97911', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(140, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Tengah', '97853', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(141, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Timur', '97862', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(142, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Utara', '97762', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(143, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Selatan', '71212', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(144, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Tengah', '71313', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(145, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Utara', '71419', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(146, 34, 'Sumatera Utara', 'Kabupaten', 'Humbang Hasundutan', '22457', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(147, 26, 'Riau', 'Kabupaten', 'Indragiri Hilir', '29212', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(148, 26, 'Riau', 'Kabupaten', 'Indragiri Hulu', '29319', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(149, 9, 'Jawa Barat', 'Kabupaten', 'Indramayu', '45214', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(150, 24, 'Papua', 'Kabupaten', 'Intan Jaya', '98771', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(151, 6, 'DKI Jakarta', 'Kota', 'Jakarta Barat', '11220', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(152, 6, 'DKI Jakarta', 'Kota', 'Jakarta Pusat', '10540', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(153, 6, 'DKI Jakarta', 'Kota', 'Jakarta Selatan', '12230', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(154, 6, 'DKI Jakarta', 'Kota', 'Jakarta Timur', '13330', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(155, 6, 'DKI Jakarta', 'Kota', 'Jakarta Utara', '14140', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(156, 8, 'Jambi', 'Kota', 'Jambi', '36111', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(157, 24, 'Papua', 'Kabupaten', 'Jayapura', '99352', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(158, 24, 'Papua', 'Kota', 'Jayapura', '99114', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(159, 24, 'Papua', 'Kabupaten', 'Jayawijaya', '99511', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(160, 11, 'Jawa Timur', 'Kabupaten', 'Jember', '68113', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(161, 1, 'Bali', 'Kabupaten', 'Jembrana', '82251', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(162, 28, 'Sulawesi Selatan', 'Kabupaten', 'Jeneponto', '92319', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(163, 10, 'Jawa Tengah', 'Kabupaten', 'Jepara', '59419', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(164, 11, 'Jawa Timur', 'Kabupaten', 'Jombang', '61415', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(165, 25, 'Papua Barat', 'Kabupaten', 'Kaimana', '98671', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(166, 26, 'Riau', 'Kabupaten', 'Kampar', '28411', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(167, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kapuas', '73583', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(168, 12, 'Kalimantan Barat', 'Kabupaten', 'Kapuas Hulu', '78719', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(169, 10, 'Jawa Tengah', 'Kabupaten', 'Karanganyar', '57718', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(170, 1, 'Bali', 'Kabupaten', 'Karangasem', '80819', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(171, 9, 'Jawa Barat', 'Kabupaten', 'Karawang', '41311', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(172, 17, 'Kepulauan Riau', 'Kabupaten', 'Karimun', '29611', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(173, 34, 'Sumatera Utara', 'Kabupaten', 'Karo', '22119', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(174, 14, 'Kalimantan Tengah', 'Kabupaten', 'Katingan', '74411', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(175, 4, 'Bengkulu', 'Kabupaten', 'Kaur', '38911', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(176, 12, 'Kalimantan Barat', 'Kabupaten', 'Kayong Utara', '78852', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(177, 10, 'Jawa Tengah', 'Kabupaten', 'Kebumen', '54319', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(178, 11, 'Jawa Timur', 'Kabupaten', 'Kediri', '64184', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(179, 11, 'Jawa Timur', 'Kota', 'Kediri', '64125', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(180, 24, 'Papua', 'Kabupaten', 'Keerom', '99461', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(181, 10, 'Jawa Tengah', 'Kabupaten', 'Kendal', '51314', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(182, 30, 'Sulawesi Tenggara', 'Kota', 'Kendari', '93126', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(183, 4, 'Bengkulu', 'Kabupaten', 'Kepahiang', '39319', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(184, 17, 'Kepulauan Riau', 'Kabupaten', 'Kepulauan Anambas', '29991', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(185, 19, 'Maluku', 'Kabupaten', 'Kepulauan Aru', '97681', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(186, 32, 'Sumatera Barat', 'Kabupaten', 'Kepulauan Mentawai', '25771', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(187, 26, 'Riau', 'Kabupaten', 'Kepulauan Meranti', '28791', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(188, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Sangihe', '95819', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(189, 6, 'DKI Jakarta', 'Kabupaten', 'Kepulauan Seribu', '14550', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(190, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '95862', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(191, 20, 'Maluku Utara', 'Kabupaten', 'Kepulauan Sula', '97995', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(192, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Talaud', '95885', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(193, 24, 'Papua', 'Kabupaten', 'Kepulauan Yapen (Yapen Waropen)', '98211', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(194, 8, 'Jambi', 'Kabupaten', 'Kerinci', '37167', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(195, 12, 'Kalimantan Barat', 'Kabupaten', 'Ketapang', '78874', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(196, 10, 'Jawa Tengah', 'Kabupaten', 'Klaten', '57411', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(197, 1, 'Bali', 'Kabupaten', 'Klungkung', '80719', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(198, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka', '93511', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(199, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka Utara', '93911', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(200, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe', '93411', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(201, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Selatan', '93811', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(202, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Utara', '93311', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(203, 13, 'Kalimantan Selatan', 'Kabupaten', 'Kotabaru', '72119', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(204, 31, 'Sulawesi Utara', 'Kota', 'Kotamobagu', '95711', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(205, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Barat', '74119', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(206, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Timur', '74364', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(207, 26, 'Riau', 'Kabupaten', 'Kuantan Singingi', '29519', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(208, 12, 'Kalimantan Barat', 'Kabupaten', 'Kubu Raya', '78311', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(209, 10, 'Jawa Tengah', 'Kabupaten', 'Kudus', '59311', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(210, 5, 'DI Yogyakarta', 'Kabupaten', 'Kulon Progo', '55611', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(211, 9, 'Jawa Barat', 'Kabupaten', 'Kuningan', '45511', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(212, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Kupang', '85362', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(213, 23, 'Nusa Tenggara Timur (NTT)', 'Kota', 'Kupang', '85119', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(214, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Barat', '75711', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(215, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Kartanegara', '75511', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(216, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Timur', '75611', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(217, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu', '21412', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(218, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Selatan', '21511', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(219, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Utara', '21711', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(220, 33, 'Sumatera Selatan', 'Kabupaten', 'Lahat', '31419', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(221, 14, 'Kalimantan Tengah', 'Kabupaten', 'Lamandau', '74611', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(222, 11, 'Jawa Timur', 'Kabupaten', 'Lamongan', '64125', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(223, 18, 'Lampung', 'Kabupaten', 'Lampung Barat', '34814', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(224, 18, 'Lampung', 'Kabupaten', 'Lampung Selatan', '35511', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(225, 18, 'Lampung', 'Kabupaten', 'Lampung Tengah', '34212', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(226, 18, 'Lampung', 'Kabupaten', 'Lampung Timur', '34319', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(227, 18, 'Lampung', 'Kabupaten', 'Lampung Utara', '34516', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(228, 12, 'Kalimantan Barat', 'Kabupaten', 'Landak', '78319', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(229, 34, 'Sumatera Utara', 'Kabupaten', 'Langkat', '20811', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(230, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Langsa', '24412', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(231, 24, 'Papua', 'Kabupaten', 'Lanny Jaya', '99531', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(232, 3, 'Banten', 'Kabupaten', 'Lebak', '42319', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(233, 4, 'Bengkulu', 'Kabupaten', 'Lebong', '39264', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(234, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Lembata', '86611', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(235, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Lhokseumawe', '24352', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(236, 32, 'Sumatera Barat', 'Kabupaten', 'Lima Puluh Koto/Kota', '26671', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(237, 17, 'Kepulauan Riau', 'Kabupaten', 'Lingga', '29811', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(238, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Barat', '83311', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(239, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Tengah', '83511', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(240, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Timur', '83612', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(241, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Utara', '83711', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(242, 33, 'Sumatera Selatan', 'Kota', 'Lubuk Linggau', '31614', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(243, 11, 'Jawa Timur', 'Kabupaten', 'Lumajang', '67319', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(244, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu', '91994', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(245, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Timur', '92981', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(246, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Utara', '92911', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(247, 11, 'Jawa Timur', 'Kabupaten', 'Madiun', '63153', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(248, 11, 'Jawa Timur', 'Kota', 'Madiun', '63122', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(249, 10, 'Jawa Tengah', 'Kabupaten', 'Magelang', '56519', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(250, 10, 'Jawa Tengah', 'Kota', 'Magelang', '56133', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(251, 11, 'Jawa Timur', 'Kabupaten', 'Magetan', '63314', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(252, 9, 'Jawa Barat', 'Kabupaten', 'Majalengka', '45412', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(253, 27, 'Sulawesi Barat', 'Kabupaten', 'Majene', '91411', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(254, 28, 'Sulawesi Selatan', 'Kota', 'Makassar', '90111', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(255, 11, 'Jawa Timur', 'Kabupaten', 'Malang', '65163', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(256, 11, 'Jawa Timur', 'Kota', 'Malang', '65112', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(257, 16, 'Kalimantan Utara', 'Kabupaten', 'Malinau', '77511', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(258, 19, 'Maluku', 'Kabupaten', 'Maluku Barat Daya', '97451', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(259, 19, 'Maluku', 'Kabupaten', 'Maluku Tengah', '97513', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(260, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara', '97651', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(261, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara Barat', '97465', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(262, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamasa', '91362', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(263, 24, 'Papua', 'Kabupaten', 'Mamberamo Raya', '99381', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(264, 24, 'Papua', 'Kabupaten', 'Mamberamo Tengah', '99553', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(265, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju', '91519', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(266, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju Utara', '91571', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(267, 31, 'Sulawesi Utara', 'Kota', 'Manado', '95247', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(268, 34, 'Sumatera Utara', 'Kabupaten', 'Mandailing Natal', '22916', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(269, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai', '86551', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(270, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Barat', '86711', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(271, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Timur', '86811', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(272, 25, 'Papua Barat', 'Kabupaten', 'Manokwari', '98311', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(273, 25, 'Papua Barat', 'Kabupaten', 'Manokwari Selatan', '98355', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(274, 24, 'Papua', 'Kabupaten', 'Mappi', '99853', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(275, 28, 'Sulawesi Selatan', 'Kabupaten', 'Maros', '90511', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(276, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Mataram', '83131', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(277, 25, 'Papua Barat', 'Kabupaten', 'Maybrat', '98051', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(278, 34, 'Sumatera Utara', 'Kota', 'Medan', '20228', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(279, 12, 'Kalimantan Barat', 'Kabupaten', 'Melawi', '78619', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(280, 8, 'Jambi', 'Kabupaten', 'Merangin', '37319', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(281, 24, 'Papua', 'Kabupaten', 'Merauke', '99613', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(282, 18, 'Lampung', 'Kabupaten', 'Mesuji', '34911', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(283, 18, 'Lampung', 'Kota', 'Metro', '34111', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(284, 24, 'Papua', 'Kabupaten', 'Mimika', '99962', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(285, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa', '95614', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(286, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Selatan', '95914', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(287, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Tenggara', '95995', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(288, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Utara', '95316', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(289, 11, 'Jawa Timur', 'Kabupaten', 'Mojokerto', '61382', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(290, 11, 'Jawa Timur', 'Kota', 'Mojokerto', '61316', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(291, 29, 'Sulawesi Tengah', 'Kabupaten', 'Morowali', '94911', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(292, 33, 'Sumatera Selatan', 'Kabupaten', 'Muara Enim', '31315', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(293, 8, 'Jambi', 'Kabupaten', 'Muaro Jambi', '36311', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(294, 4, 'Bengkulu', 'Kabupaten', 'Muko Muko', '38715', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(295, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Muna', '93611', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(296, 14, 'Kalimantan Tengah', 'Kabupaten', 'Murung Raya', '73911', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(297, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Banyuasin', '30719', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(298, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Rawas', '31661', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(299, 24, 'Papua', 'Kabupaten', 'Nabire', '98816', '2022-06-09 09:08:04', '2022-06-09 09:08:04'),
(300, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Nagan Raya', '23674', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(301, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Nagekeo', '86911', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(302, 17, 'Kepulauan Riau', 'Kabupaten', 'Natuna', '29711', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(303, 24, 'Papua', 'Kabupaten', 'Nduga', '99541', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(304, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ngada', '86413', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(305, 11, 'Jawa Timur', 'Kabupaten', 'Nganjuk', '64414', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(306, 11, 'Jawa Timur', 'Kabupaten', 'Ngawi', '63219', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(307, 34, 'Sumatera Utara', 'Kabupaten', 'Nias', '22876', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(308, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Barat', '22895', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(309, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Selatan', '22865', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(310, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Utara', '22856', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(311, 16, 'Kalimantan Utara', 'Kabupaten', 'Nunukan', '77421', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(312, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Ilir', '30811', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(313, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ilir', '30618', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(314, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu', '32112', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(315, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Selatan', '32211', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(316, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Timur', '32312', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(317, 11, 'Jawa Timur', 'Kabupaten', 'Pacitan', '63512', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(318, 32, 'Sumatera Barat', 'Kota', 'Padang', '25112', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(319, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas', '22763', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(320, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas Utara', '22753', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(321, 32, 'Sumatera Barat', 'Kota', 'Padang Panjang', '27122', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(322, 32, 'Sumatera Barat', 'Kabupaten', 'Padang Pariaman', '25583', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(323, 34, 'Sumatera Utara', 'Kota', 'Padang Sidempuan', '22727', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(324, 33, 'Sumatera Selatan', 'Kota', 'Pagar Alam', '31512', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(325, 34, 'Sumatera Utara', 'Kabupaten', 'Pakpak Bharat', '22272', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(326, 14, 'Kalimantan Tengah', 'Kota', 'Palangka Raya', '73112', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(327, 33, 'Sumatera Selatan', 'Kota', 'Palembang', '30111', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(328, 28, 'Sulawesi Selatan', 'Kota', 'Palopo', '91911', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(329, 29, 'Sulawesi Tengah', 'Kota', 'Palu', '94111', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(330, 11, 'Jawa Timur', 'Kabupaten', 'Pamekasan', '69319', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(331, 3, 'Banten', 'Kabupaten', 'Pandeglang', '42212', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(332, 9, 'Jawa Barat', 'Kabupaten', 'Pangandaran', '46511', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(333, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pangkajene Kepulauan', '90611', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(334, 2, 'Bangka Belitung', 'Kota', 'Pangkal Pinang', '33115', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(335, 24, 'Papua', 'Kabupaten', 'Paniai', '98765', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(336, 28, 'Sulawesi Selatan', 'Kota', 'Parepare', '91123', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(337, 32, 'Sumatera Barat', 'Kota', 'Pariaman', '25511', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(338, 29, 'Sulawesi Tengah', 'Kabupaten', 'Parigi Moutong', '94411', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(339, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman', '26318', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(340, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman Barat', '26511', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(341, 15, 'Kalimantan Timur', 'Kabupaten', 'Paser', '76211', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(342, 11, 'Jawa Timur', 'Kabupaten', 'Pasuruan', '67153', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(343, 11, 'Jawa Timur', 'Kota', 'Pasuruan', '67118', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(344, 10, 'Jawa Tengah', 'Kabupaten', 'Pati', '59114', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(345, 32, 'Sumatera Barat', 'Kota', 'Payakumbuh', '26213', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(346, 25, 'Papua Barat', 'Kabupaten', 'Pegunungan Arfak', '98354', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(347, 24, 'Papua', 'Kabupaten', 'Pegunungan Bintang', '99573', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(348, 10, 'Jawa Tengah', 'Kabupaten', 'Pekalongan', '51161', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(349, 10, 'Jawa Tengah', 'Kota', 'Pekalongan', '51122', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(350, 26, 'Riau', 'Kota', 'Pekanbaru', '28112', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(351, 26, 'Riau', 'Kabupaten', 'Pelalawan', '28311', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(352, 10, 'Jawa Tengah', 'Kabupaten', 'Pemalang', '52319', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(353, 34, 'Sumatera Utara', 'Kota', 'Pematang Siantar', '21126', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(354, 15, 'Kalimantan Timur', 'Kabupaten', 'Penajam Paser Utara', '76311', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(355, 18, 'Lampung', 'Kabupaten', 'Pesawaran', '35312', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(356, 18, 'Lampung', 'Kabupaten', 'Pesisir Barat', '35974', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(357, 32, 'Sumatera Barat', 'Kabupaten', 'Pesisir Selatan', '25611', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(358, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie', '24116', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(359, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie Jaya', '24186', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(360, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pinrang', '91251', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(361, 7, 'Gorontalo', 'Kabupaten', 'Pohuwato', '96419', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(362, 27, 'Sulawesi Barat', 'Kabupaten', 'Polewali Mandar', '91311', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(363, 11, 'Jawa Timur', 'Kabupaten', 'Ponorogo', '63411', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(364, 12, 'Kalimantan Barat', 'Kabupaten', 'Pontianak', '78971', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(365, 12, 'Kalimantan Barat', 'Kota', 'Pontianak', '78112', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(366, 29, 'Sulawesi Tengah', 'Kabupaten', 'Poso', '94615', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(367, 33, 'Sumatera Selatan', 'Kota', 'Prabumulih', '31121', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(368, 18, 'Lampung', 'Kabupaten', 'Pringsewu', '35719', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(369, 11, 'Jawa Timur', 'Kabupaten', 'Probolinggo', '67282', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(370, 11, 'Jawa Timur', 'Kota', 'Probolinggo', '67215', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(371, 14, 'Kalimantan Tengah', 'Kabupaten', 'Pulang Pisau', '74811', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(372, 20, 'Maluku Utara', 'Kabupaten', 'Pulau Morotai', '97771', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(373, 24, 'Papua', 'Kabupaten', 'Puncak', '98981', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(374, 24, 'Papua', 'Kabupaten', 'Puncak Jaya', '98979', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(375, 10, 'Jawa Tengah', 'Kabupaten', 'Purbalingga', '53312', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(376, 9, 'Jawa Barat', 'Kabupaten', 'Purwakarta', '41119', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(377, 10, 'Jawa Tengah', 'Kabupaten', 'Purworejo', '54111', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(378, 25, 'Papua Barat', 'Kabupaten', 'Raja Ampat', '98489', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(379, 4, 'Bengkulu', 'Kabupaten', 'Rejang Lebong', '39112', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(380, 10, 'Jawa Tengah', 'Kabupaten', 'Rembang', '59219', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(381, 26, 'Riau', 'Kabupaten', 'Rokan Hilir', '28992', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(382, 26, 'Riau', 'Kabupaten', 'Rokan Hulu', '28511', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(383, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Rote Ndao', '85982', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(384, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Sabang', '23512', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(385, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sabu Raijua', '85391', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(386, 10, 'Jawa Tengah', 'Kota', 'Salatiga', '50711', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(387, 15, 'Kalimantan Timur', 'Kota', 'Samarinda', '75133', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(388, 12, 'Kalimantan Barat', 'Kabupaten', 'Sambas', '79453', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(389, 34, 'Sumatera Utara', 'Kabupaten', 'Samosir', '22392', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(390, 11, 'Jawa Timur', 'Kabupaten', 'Sampang', '69219', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(391, 12, 'Kalimantan Barat', 'Kabupaten', 'Sanggau', '78557', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(392, 24, 'Papua', 'Kabupaten', 'Sarmi', '99373', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(393, 8, 'Jambi', 'Kabupaten', 'Sarolangun', '37419', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(394, 32, 'Sumatera Barat', 'Kota', 'Sawah Lunto', '27416', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(395, 12, 'Kalimantan Barat', 'Kabupaten', 'Sekadau', '79583', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(396, 28, 'Sulawesi Selatan', 'Kabupaten', 'Selayar (Kepulauan Selayar)', '92812', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(397, 4, 'Bengkulu', 'Kabupaten', 'Seluma', '38811', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(398, 10, 'Jawa Tengah', 'Kabupaten', 'Semarang', '50511', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(399, 10, 'Jawa Tengah', 'Kota', 'Semarang', '50135', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(400, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Barat', '97561', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(401, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Timur', '97581', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(402, 3, 'Banten', 'Kabupaten', 'Serang', '42182', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(403, 3, 'Banten', 'Kota', 'Serang', '42111', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(404, 34, 'Sumatera Utara', 'Kabupaten', 'Serdang Bedagai', '20915', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(405, 14, 'Kalimantan Tengah', 'Kabupaten', 'Seruyan', '74211', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(406, 26, 'Riau', 'Kabupaten', 'Siak', '28623', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(407, 34, 'Sumatera Utara', 'Kota', 'Sibolga', '22522', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(408, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sidenreng Rappang/Rapang', '91613', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(409, 11, 'Jawa Timur', 'Kabupaten', 'Sidoarjo', '61219', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(410, 29, 'Sulawesi Tengah', 'Kabupaten', 'Sigi', '94364', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(411, 32, 'Sumatera Barat', 'Kabupaten', 'Sijunjung (Sawah Lunto Sijunjung)', '27511', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(412, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sikka', '86121', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(413, 34, 'Sumatera Utara', 'Kabupaten', 'Simalungun', '21162', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(414, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Simeulue', '23891', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(415, 12, 'Kalimantan Barat', 'Kota', 'Singkawang', '79117', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(416, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sinjai', '92615', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(417, 12, 'Kalimantan Barat', 'Kabupaten', 'Sintang', '78619', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(418, 11, 'Jawa Timur', 'Kabupaten', 'Situbondo', '68316', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(419, 5, 'DI Yogyakarta', 'Kabupaten', 'Sleman', '55513', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(420, 32, 'Sumatera Barat', 'Kabupaten', 'Solok', '27365', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(421, 32, 'Sumatera Barat', 'Kota', 'Solok', '27315', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(422, 32, 'Sumatera Barat', 'Kabupaten', 'Solok Selatan', '27779', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(423, 28, 'Sulawesi Selatan', 'Kabupaten', 'Soppeng', '90812', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(424, 25, 'Papua Barat', 'Kabupaten', 'Sorong', '98431', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(425, 25, 'Papua Barat', 'Kota', 'Sorong', '98411', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(426, 25, 'Papua Barat', 'Kabupaten', 'Sorong Selatan', '98454', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(427, 10, 'Jawa Tengah', 'Kabupaten', 'Sragen', '57211', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(428, 9, 'Jawa Barat', 'Kabupaten', 'Subang', '41215', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(429, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Subulussalam', '24882', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(430, 9, 'Jawa Barat', 'Kabupaten', 'Sukabumi', '43311', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(431, 9, 'Jawa Barat', 'Kota', 'Sukabumi', '43114', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(432, 14, 'Kalimantan Tengah', 'Kabupaten', 'Sukamara', '74712', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(433, 10, 'Jawa Tengah', 'Kabupaten', 'Sukoharjo', '57514', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(434, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat', '87219', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(435, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat Daya', '87453', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(436, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Tengah', '87358', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(437, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Timur', '87112', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(438, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa', '84315', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(439, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa Barat', '84419', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(440, 9, 'Jawa Barat', 'Kabupaten', 'Sumedang', '45326', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(441, 11, 'Jawa Timur', 'Kabupaten', 'Sumenep', '69413', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(442, 8, 'Jambi', 'Kota', 'Sungaipenuh', '37113', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(443, 24, 'Papua', 'Kabupaten', 'Supiori', '98164', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(444, 11, 'Jawa Timur', 'Kota', 'Surabaya', '60119', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(445, 10, 'Jawa Tengah', 'Kota', 'Surakarta (Solo)', '57113', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(446, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tabalong', '71513', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(447, 1, 'Bali', 'Kabupaten', 'Tabanan', '82119', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(448, 28, 'Sulawesi Selatan', 'Kabupaten', 'Takalar', '92212', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(449, 25, 'Papua Barat', 'Kabupaten', 'Tambrauw', '98475', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(450, 16, 'Kalimantan Utara', 'Kabupaten', 'Tana Tidung', '77611', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(451, 28, 'Sulawesi Selatan', 'Kabupaten', 'Tana Toraja', '91819', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(452, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Bumbu', '72211', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(453, 32, 'Sumatera Barat', 'Kabupaten', 'Tanah Datar', '27211', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(454, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Laut', '70811', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(455, 3, 'Banten', 'Kabupaten', 'Tangerang', '15914', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(456, 3, 'Banten', 'Kota', 'Tangerang', '15111', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(457, 3, 'Banten', 'Kota', 'Tangerang Selatan', '15435', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(458, 18, 'Lampung', 'Kabupaten', 'Tanggamus', '35619', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(459, 34, 'Sumatera Utara', 'Kota', 'Tanjung Balai', '21321', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(460, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Barat', '36513', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(461, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Timur', '36719', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(462, 17, 'Kepulauan Riau', 'Kota', 'Tanjung Pinang', '29111', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(463, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Selatan', '22742', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(464, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Tengah', '22611', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(465, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Utara', '22414', '2022-06-09 09:08:05', '2022-06-09 09:08:05');
INSERT INTO `cities` (`id`, `province_id`, `province`, `type`, `name`, `postal_code`, `created_at`, `updated_at`) VALUES
(466, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tapin', '71119', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(467, 16, 'Kalimantan Utara', 'Kota', 'Tarakan', '77114', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(468, 9, 'Jawa Barat', 'Kabupaten', 'Tasikmalaya', '46411', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(469, 9, 'Jawa Barat', 'Kota', 'Tasikmalaya', '46116', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(470, 34, 'Sumatera Utara', 'Kota', 'Tebing Tinggi', '20632', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(471, 8, 'Jambi', 'Kabupaten', 'Tebo', '37519', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(472, 10, 'Jawa Tengah', 'Kabupaten', 'Tegal', '52419', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(473, 10, 'Jawa Tengah', 'Kota', 'Tegal', '52114', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(474, 25, 'Papua Barat', 'Kabupaten', 'Teluk Bintuni', '98551', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(475, 25, 'Papua Barat', 'Kabupaten', 'Teluk Wondama', '98591', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(476, 10, 'Jawa Tengah', 'Kabupaten', 'Temanggung', '56212', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(477, 20, 'Maluku Utara', 'Kota', 'Ternate', '97714', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(478, 20, 'Maluku Utara', 'Kota', 'Tidore Kepulauan', '97815', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(479, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Selatan', '85562', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(480, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Utara', '85612', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(481, 34, 'Sumatera Utara', 'Kabupaten', 'Toba Samosir', '22316', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(482, 29, 'Sulawesi Tengah', 'Kabupaten', 'Tojo Una-Una', '94683', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(483, 29, 'Sulawesi Tengah', 'Kabupaten', 'Toli-Toli', '94542', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(484, 24, 'Papua', 'Kabupaten', 'Tolikara', '99411', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(485, 31, 'Sulawesi Utara', 'Kota', 'Tomohon', '95416', '2022-06-09 09:08:05', '2022-06-09 09:08:05'),
(486, 28, 'Sulawesi Selatan', 'Kabupaten', 'Toraja Utara', '91831', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(487, 11, 'Jawa Timur', 'Kabupaten', 'Trenggalek', '66312', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(488, 19, 'Maluku', 'Kota', 'Tual', '97612', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(489, 11, 'Jawa Timur', 'Kabupaten', 'Tuban', '62319', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(490, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang', '34613', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(491, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang Barat', '34419', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(492, 11, 'Jawa Timur', 'Kabupaten', 'Tulungagung', '66212', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(493, 28, 'Sulawesi Selatan', 'Kabupaten', 'Wajo', '90911', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(494, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Wakatobi', '93791', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(495, 24, 'Papua', 'Kabupaten', 'Waropen', '98269', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(496, 18, 'Lampung', 'Kabupaten', 'Way Kanan', '34711', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(497, 10, 'Jawa Tengah', 'Kabupaten', 'Wonogiri', '57619', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(498, 10, 'Jawa Tengah', 'Kabupaten', 'Wonosobo', '56311', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(499, 24, 'Papua', 'Kabupaten', 'Yahukimo', '99041', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(500, 24, 'Papua', 'Kabupaten', 'Yalimo', '99481', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(501, 5, 'DI Yogyakarta', 'Kota', 'Yogyakarta', '55111', '2022-06-09 09:08:06', '2022-06-09 09:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_09_22_192348_create_messages_table', 1),
(6, '2019_10_16_211433_create_favorites_table', 1),
(7, '2019_10_18_223259_add_avatar_to_users', 1),
(8, '2019_10_20_211056_add_messenger_color_to_users', 1),
(9, '2019_10_22_000539_add_dark_mode_to_users', 1),
(10, '2019_10_25_214038_add_active_status_to_users', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2021_11_10_040238_create_transactions_table', 1),
(13, '2021_11_10_040429_create_transaction_details_table', 1),
(14, '2021_11_10_040455_create_products_table', 1),
(15, '2021_11_10_040456_create_product_details_table', 1),
(16, '2021_11_10_040533_create_reviews_table', 1),
(17, '2021_11_23_115358_create_cities_table', 1),
(18, '2021_11_23_115529_create_provinces_table', 1),
(19, '2021_12_04_133559_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_pakaian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_gender` enum('Women','Men','Universal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_best_seller` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `detail`, `kategori_pakaian`, `kategori_gender`, `is_best_seller`, `created_at`, `updated_at`) VALUES
(1, 'Zerena Instan', 'Material<br>\r\n            - Bahan HYGET POLOS<br>\r\n            - Kualitas jahitan terbaik<br>\r\n            -------------------------------------------<br>\r\n            Pengiriman<br>\r\n            Senin - Sabtu : 15.00 WIB<br>\r\n            Minggu : Tidak ada pengiriman<br>\r\n            -------------------------------------------<br>\r\n            Mengenai  stock, semua yang ada di etalase ready.<br>\r\n            -------------------------------------------<br>\r\n            Notes :<br>\r\n            - Tidak dapat ganti size atau artikel ketika pesanan sudah kami diproses (kecuali ada konfirmasi dari Admin langsung)<br>\r\n            - Mohon untuk mengisi Nama Jelas, Alamat lengkap No rumah, RT, RW, Kec. Kab/Kota, patokan rumah dan No HP yang dapat dihubungi. Apabila pesanan sudah kami proses Alamat dan No HP tidak dapat di rubah.<br>\r\n            - Tidak menerima penukaran barang/pengembalian dana  (kecuali kesalahan dari kami)<br>\r\n            - Untuk pengajuan komplain pesanan max 3 hari setelah paket diterima disertakan unboxing paket.<br>\r\n            <br>\r\n            Kerudung Zerena<br>\r\n            <br>\r\n            Kerudung dengan style casual dan cutting-an bawah berbentuk lingkaran, dengan detail selip hidup kebagian bawan 3 baris dan dilengkapi scoder dibagian belakang yang multifungsi dapat dijadikan ear saver.<br>\r\n            -------------------------------------------', 'Hijab', 'Women', 0, '2015-01-01 16:59:59', NULL),
(2, 'Ginka Set', 'Outfit oneset multifungsi yang bisa digunakan untuk hangout, kegiatan formal, ataupun untuk outfit rumahan. Terdapat dua item yaitu pants dan tops. Dilengkapi empat saku masing-masing dua dibagian depan tops dan disamping pantsnya. Bagian bawah pants dan topsnya terdapat tali serut dan Wudhu Friendly.', 'Clothing', 'Women', 0, '2022-06-09 09:08:00', NULL),
(3, 'Jumpsuit', 'Jumpsuit rekomendasi untuk tampilan casualmu. Dengan model yang simple dan bisa dikombinasikan dengan berbagai outfit seperti kemeja, blouse, atau outer. Dengan bahan yang adem, lentur dan ringan.', 'Clothing', 'Women', 1, '2022-06-09 09:08:00', NULL),
(4, 'Lica Set', 'One set rok yang terdiri dari outer dan rok. Terdapat 3 saku yaitu 2 saku dibagian depan tops dan 1 saku tersembunyi disebelah kanan rok.\r\n            Outer : Atasan cantik dengan model rimpel dibagian pinggang (peplum), dipermanis dengan 2 saku dibagian kiri dan kanan serta 1 kancing dibagian lengan\r\n            Rok : rok bawahan polos model umbrella dengan 1 saku sembunyi dibagian kanan', 'Clothing', 'Women', 0, '2022-06-09 09:08:00', NULL),
(5, 'Rumi Set', 'Outfit oneset multifungsi yang bisa digunakan untuk hangout, kegiatan formal, ataupun untuk outfit rumahan. Terdapat dua item yaitu pants dan tops. Dilengkapi empat saku masing-masing dua dibagian depan tops dan disamping pantsnya. Bagian bawah pants dan topsnya terdapat tali serut. Wudhu Friendly', 'Clothing', 'Women', 0, '2022-06-09 09:08:01', NULL),
(6, 'Soren Outer', 'Outer linen timeless dengan cutting oversized dan drop shoulder. Dilengkapi kerah, hidden pocket di bagian sisinya, dan juga aksen kerut di bagian lengan. Pada bagian depan terdapat satu button yang membuatnya semakin simple but chic.', 'Clothing', 'Women', 1, '2022-06-09 09:08:01', NULL),
(7, 'Aiza Instan', 'Hijab instan dengan bahan bubble bertekstur jeruk yang timbul, dilengkapi pet anti tembem, bahan adem menyerap keringat, cocok dipakai sebagai hijab rumah dan kegiatan sehari-hari.', 'Hijab', 'Women', 0, '2022-06-09 09:08:01', NULL),
(8, 'Haraa Voal', 'Hijab segiempat dengan aksen lasercut di setiap sisinya, dengan berbagai pilihan warna lengkap. Memiliki ketebalan yang pas, bisa penggunaan biasa dan syari. Tidak licin dan menyerap keringat. Cocok digunakan untuk sehari-hari dan formal.', 'Hijab', 'Women', 0, '2022-06-09 09:08:01', NULL),
(9, 'Hawa Instan', 'Hijab instan yang dilengkapi tali, dengan bahan yang adem, ringan, dan tidak menerawang. Cocok digunakan sebagai khimar harianmu karena anti ribet, dan nyaman walau dipakai seharian.', 'Hijab', 'Women', 0, '2022-06-09 09:08:01', NULL),
(10, 'Mima', 'Hijab pashmina yang lembut dengan bahan yang mudah diatur, adem, dan tegak di dahi. Bisa digunakan daily maupun formal. Dilengkapi dengan berbagai varian warna bold, netral dan pastel.', 'Pashmina', 'Women', 1, '2022-06-09 09:08:01', NULL),
(11, 'Plisket', 'Pashmina bertesktur half plisket yang bergelombang dan timbul. Pada kedua ujung tidak bertekstur plisket. Cocok dipakai untuk semua kegiatan, daily maupun formal', 'Pashmina', 'Women', 1, '2022-06-09 09:08:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warna` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ukuran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ketersediaan` int(11) NOT NULL DEFAULT 0,
  `harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `nama`, `image`, `warna`, `ukuran`, `ketersediaan`, `harga`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_1.jpg', 'Hazelnut', 'S', 16, '83840', '2015-01-01 16:59:59', NULL),
(2, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_1.jpg', 'Hazelnut', 'L', 6, '83840', '2015-01-01 16:59:59', NULL),
(3, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_1.jpg', 'Hazelnut', 'XL', 8, '83840', '2015-01-01 16:59:59', NULL),
(4, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_2.jpg', 'Blue Black', 'S', 42, '83840', '2015-01-01 16:59:59', NULL),
(5, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_2.jpg', 'Blue Black', 'L', 14, '83840', '2015-01-01 16:59:59', NULL),
(6, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_2.jpg', 'Blue Black', 'XL', 33, '83840', '2015-01-01 16:59:59', NULL),
(7, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_3.jpg', 'Hitam', 'S', 15, '83840', '2015-01-01 16:59:59', NULL),
(8, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_3.jpg', 'Hitam', 'L', 15, '83840', '2015-01-01 16:59:59', NULL),
(9, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_3.jpg', 'Hitam', 'XL', 2, '83840', '2015-01-01 16:59:59', NULL),
(10, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_4.jpg', 'Putih', 'S', 8, '83840', '2015-01-01 16:59:59', NULL),
(11, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_4.jpg', 'Putih', 'L', 14, '83840', '2015-01-01 16:59:59', NULL),
(12, 1, 'Kerudung Instan Zerena', 'products/kerudung_instan_zerena_4.jpg', 'Putih', 'XL', 32, '83840', '2015-01-01 16:59:59', NULL),
(13, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_1.jpg', 'Beige', 'L', 9, '369000', '2022-06-09 09:08:00', NULL),
(14, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_1.jpg', 'Beige', 'S', 44, '369000', '2022-06-09 09:08:00', NULL),
(15, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_1.jpg', 'Beige', 'M', 3, '369000', '2022-06-09 09:08:00', NULL),
(16, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_2.jpg', 'Terracota', 'L', 13, '369000', '2022-06-09 09:08:00', NULL),
(17, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_2.jpg', 'Terracota', 'S', 5, '369000', '2022-06-09 09:08:00', NULL),
(18, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_2.jpg', 'Terracota', 'M', 29, '369000', '2022-06-09 09:08:00', NULL),
(19, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_3.jpg', 'Dusty Pink', 'L', 26, '369000', '2022-06-09 09:08:00', NULL),
(20, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_3.jpg', 'Dusty Pink', 'S', 11, '369000', '2022-06-09 09:08:00', NULL),
(21, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_3.jpg', 'Dusty Pink', 'M', 8, '369000', '2022-06-09 09:08:00', NULL),
(22, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_4.jpg', 'Dark Grey', 'L', 39, '369000', '2022-06-09 09:08:00', NULL),
(23, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_4.jpg', 'Dark Grey', 'S', 18, '369000', '2022-06-09 09:08:00', NULL),
(24, 2, 'Ginka Set', 'products/CLOTHING/GINKA_SET_4.jpg', 'Dark Grey', 'M', 38, '369000', '2022-06-09 09:08:00', NULL),
(25, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_1.jpg', 'Black', 'S', 32, '179000', '2022-06-09 09:08:00', NULL),
(26, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_1.jpg', 'Black', 'M', 20, '179000', '2022-06-09 09:08:00', NULL),
(27, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_1.jpg', 'Black', 'L', 3, '179000', '2022-06-09 09:08:00', NULL),
(28, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_2.jpg', 'Broken White', 'S', 33, '179000', '2022-06-09 09:08:00', NULL),
(29, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_2.jpg', 'Broken White', 'M', 2, '179000', '2022-06-09 09:08:00', NULL),
(30, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_2.jpg', 'Broken White', 'L', 38, '179000', '2022-06-09 09:08:00', NULL),
(31, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_3.jpg', 'Grey', 'S', 49, '179000', '2022-06-09 09:08:00', NULL),
(32, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_3.jpg', 'Grey', 'M', 13, '179000', '2022-06-09 09:08:00', NULL),
(33, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_3.jpg', 'Grey', 'L', 18, '179000', '2022-06-09 09:08:00', NULL),
(34, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_4.jpg', 'Light Grey', 'S', 49, '179000', '2022-06-09 09:08:00', NULL),
(35, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_4.jpg', 'Light Grey', 'M', 28, '179000', '2022-06-09 09:08:00', NULL),
(36, 3, 'Jumpsuit', 'products/CLOTHING/JUMPSUIT_4.jpg', 'Light Grey', 'L', 45, '179000', '2022-06-09 09:08:00', NULL),
(37, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_1.jpg', 'Army', 'S', 17, '379000', '2022-06-09 09:08:00', NULL),
(38, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_1.jpg', 'Army', 'M', 9, '379000', '2022-06-09 09:08:00', NULL),
(39, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_1.jpg', 'Army', 'L', 24, '379000', '2022-06-09 09:08:00', NULL),
(40, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_2.jpg', 'Cream', 'S', 33, '379000', '2022-06-09 09:08:00', NULL),
(41, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_2.jpg', 'Cream', 'M', 6, '379000', '2022-06-09 09:08:00', NULL),
(42, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_2.jpg', 'Cream', 'L', 35, '379000', '2022-06-09 09:08:00', NULL),
(43, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_3.jpg', 'Navy', 'S', 3, '379000', '2022-06-09 09:08:00', NULL),
(44, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_3.jpg', 'Navy', 'M', 49, '379000', '2022-06-09 09:08:00', NULL),
(45, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_3.jpg', 'Navy', 'L', 20, '379000', '2022-06-09 09:08:01', NULL),
(46, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_4.jpg', 'Soft Brown', 'S', 47, '379000', '2022-06-09 09:08:01', NULL),
(47, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_4.jpg', 'Soft Brown', 'M', 41, '379000', '2022-06-09 09:08:01', NULL),
(48, 4, 'Lica Set', 'products/CLOTHING/LICA_SET_4.jpg', 'Soft Brown', 'L', 4, '379000', '2022-06-09 09:08:01', NULL),
(49, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_1.jpg', 'Army', 'S', 43, '379000', '2022-06-09 09:08:01', NULL),
(50, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_1.jpg', 'Army', 'M', 47, '379000', '2022-06-09 09:08:01', NULL),
(51, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_1.jpg', 'Army', 'L', 32, '379000', '2022-06-09 09:08:01', NULL),
(52, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_2.jpg', 'Blue Pastel', 'S', 33, '379000', '2022-06-09 09:08:01', NULL),
(53, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_2.jpg', 'Blue Pastel', 'M', 43, '379000', '2022-06-09 09:08:01', NULL),
(54, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_2.jpg', 'Blue Pastel', 'L', 25, '379000', '2022-06-09 09:08:01', NULL),
(55, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_3.jpg', 'Terracota', 'S', 17, '379000', '2022-06-09 09:08:01', NULL),
(56, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_3.jpg', 'Terracota', 'M', 10, '379000', '2022-06-09 09:08:01', NULL),
(57, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_3.jpg', 'Terracota', 'L', 30, '379000', '2022-06-09 09:08:01', NULL),
(58, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_4.jpg', 'Broken White', 'S', 15, '379000', '2022-06-09 09:08:01', NULL),
(59, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_4.jpg', 'Broken White', 'M', 49, '379000', '2022-06-09 09:08:01', NULL),
(60, 5, 'Rumi Set', 'products/CLOTHING/RUMI_SET_4.jpg', 'Broken White', 'L', 24, '379000', '2022-06-09 09:08:01', NULL),
(61, 6, 'Soren Outer', 'products/CLOTHING/SOREN_OUTER_1.jpg', 'Creamy', 'S', 23, '249000', '2022-06-09 09:08:01', NULL),
(62, 6, 'Soren Outer', 'products/CLOTHING/SOREN_OUTER_1.jpg', 'Creamy', 'M', 22, '249000', '2022-06-09 09:08:01', NULL),
(63, 6, 'Soren Outer', 'products/CLOTHING/SOREN_OUTER_1.jpg', 'Creamy', 'L', 44, '249000', '2022-06-09 09:08:01', NULL),
(64, 6, 'Soren Outer', 'products/CLOTHING/SOREN_OUTER_2.jpg', 'Dusty', 'S', 21, '249000', '2022-06-09 09:08:01', NULL),
(65, 6, 'Soren Outer', 'products/CLOTHING/SOREN_OUTER_2.jpg', 'Dusty', 'M', 20, '249000', '2022-06-09 09:08:01', NULL),
(66, 6, 'Soren Outer', 'products/CLOTHING/SOREN_OUTER_2.jpg', 'Dusty', 'L', 27, '249000', '2022-06-09 09:08:01', NULL),
(67, 6, 'Soren Outer', 'products/CLOTHING/SOREN_OUTER_3.jpg', 'Matcha', 'S', 42, '249000', '2022-06-09 09:08:01', NULL),
(68, 6, 'Soren Outer', 'products/CLOTHING/SOREN_OUTER_3.jpg', 'Matcha', 'M', 23, '249000', '2022-06-09 09:08:01', NULL),
(69, 6, 'Soren Outer', 'products/CLOTHING/SOREN_OUTER_3.jpg', 'Matcha', 'L', 13, '249000', '2022-06-09 09:08:01', NULL),
(70, 7, 'Aiza Instan', 'products/HIJAB/AIZA_INSTAN_1.jpg', 'Maroon', 'All Size', 36, '49000', '2022-06-09 09:08:01', NULL),
(71, 7, 'Aiza Instan', 'products/HIJAB/AIZA_INSTAN_2.jpg', 'Light Grey', 'All Size', 9, '49000', '2022-06-09 09:08:01', NULL),
(72, 7, 'Aiza Instan', 'products/HIJAB/AIZA_INSTAN_3.jpg', 'Pink Pastel', 'All Size', 34, '49000', '2022-06-09 09:08:01', NULL),
(73, 7, 'Aiza Instan', 'products/HIJAB/AIZA_INSTAN_4.jpg', 'Lavender', 'All Size', 48, '49000', '2022-06-09 09:08:01', NULL),
(74, 8, 'Haraa Voal', 'products/HIJAB/HARAA_VOAL_1.jpg', 'Brown Sugar', 'All Size', 2, '99000', '2022-06-09 09:08:01', NULL),
(75, 8, 'Haraa Voal', 'products/HIJAB/HARAA_VOAL_2.jpg', 'Creamy', 'All Size', 47, '99000', '2022-06-09 09:08:01', NULL),
(76, 8, 'Haraa Voal', 'products/HIJAB/HARAA_VOAL_3.jpg', 'Navy', 'All Size', 39, '99000', '2022-06-09 09:08:01', NULL),
(77, 8, 'Haraa Voal', 'products/HIJAB/HARAA_VOAL_4.jpg', 'Pink Pastel', 'All Size', 38, '99000', '2022-06-09 09:08:01', NULL),
(78, 9, 'Hawa Instan', 'products/HIJAB/HAWA_INSTAN_1.jpg', 'Black', 'All Size', 35, '69000', '2022-06-09 09:08:01', NULL),
(79, 9, 'Hawa Instan', 'products/HIJAB/HAWA_INSTAN_2.jpg', 'Lavender', 'All Size', 32, '69000', '2022-06-09 09:08:01', NULL),
(80, 9, 'Hawa Instan', 'products/HIJAB/HAWA_INSTAN_3.jpg', 'Peony', 'All Size', 11, '69000', '2022-06-09 09:08:01', NULL),
(81, 9, 'Hawa Instan', 'products/HIJAB/HAWA_INSTAN_4.jpg', 'Sparrow', 'All Size', 10, '69000', '2022-06-09 09:08:01', NULL),
(82, 10, 'Mima', 'products/PASHMINA/MIMA_1.jpg', 'Brown Sugar', 'All Size', 0, '79000', '2022-06-09 09:08:01', NULL),
(83, 10, 'Mima', 'products/PASHMINA/MIMA_2.jpg', 'Grey', 'All Size', 0, '79000', '2022-06-09 09:08:01', NULL),
(84, 10, 'Mima', 'products/PASHMINA/MIMA_3.jpg', 'Wheat', 'All Size', 21, '79000', '2022-06-09 09:08:01', NULL),
(85, 10, 'Mima', 'products/PASHMINA/MIMA_4.jpg', 'Sage', 'All Size', 42, '79000', '2022-06-09 09:08:01', NULL),
(86, 11, 'Plisket', 'products/PASHMINA/PLISKET_1.jpg', 'Soft Pink', 'All Size', 44, '89000', '2022-06-09 09:08:01', NULL),
(87, 11, 'Plisket', 'products/PASHMINA/PLISKET_2.jpg', 'Steel Blue', 'All Size', 45, '89000', '2022-06-09 09:08:01', NULL),
(88, 11, 'Plisket', 'products/PASHMINA/PLISKET_3.jpg', 'Tumeric', 'All Size', 14, '89000', '2022-06-09 09:08:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bali', '2022-06-09 09:08:01', '2022-06-09 09:08:01'),
(2, 'Bangka Belitung', '2022-06-09 09:08:01', '2022-06-09 09:08:01'),
(3, 'Banten', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(4, 'Bengkulu', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(5, 'DI Yogyakarta', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(6, 'DKI Jakarta', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(7, 'Gorontalo', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(8, 'Jambi', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(9, 'Jawa Barat', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(10, 'Jawa Tengah', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(11, 'Jawa Timur', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(12, 'Kalimantan Barat', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(13, 'Kalimantan Selatan', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(14, 'Kalimantan Tengah', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(15, 'Kalimantan Timur', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(16, 'Kalimantan Utara', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(17, 'Kepulauan Riau', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(18, 'Lampung', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(19, 'Maluku', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(20, 'Maluku Utara', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(21, 'Nanggroe Aceh Darussalam (NAD)', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(22, 'Nusa Tenggara Barat (NTB)', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(23, 'Nusa Tenggara Timur (NTT)', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(24, 'Papua', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(25, 'Papua Barat', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(26, 'Riau', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(27, 'Sulawesi Barat', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(28, 'Sulawesi Selatan', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(29, 'Sulawesi Tengah', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(30, 'Sulawesi Tenggara', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(31, 'Sulawesi Utara', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(32, 'Sumatera Barat', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(33, 'Sumatera Selatan', '2022-06-09 09:08:02', '2022-06-09 09:08:02'),
(34, 'Sumatera Utara', '2022-06-09 09:08:02', '2022-06-09 09:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double(8,2) NOT NULL,
  `ulasan` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `rating`, `ulasan`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 5.00, 'Bahannya adem.', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(2, 5, 2, 4.00, 'Sukaaa banget deh!', '2022-06-09 09:08:06', '2022-06-09 09:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_harga` decimal(8,2) DEFAULT NULL,
  `ongkir` decimal(8,2) DEFAULT NULL,
  `total_bersama_ongkir` decimal(8,2) DEFAULT NULL,
  `status_transaksi` enum('To Pay','To Payment Confirm','To Ship','To Receive','Completed','Cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'To Pay',
  `bukti_pembayaran` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_voucher` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kurir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_pengiriman` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_pembayaran` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `total_harga`, `ongkir`, `total_bersama_ongkir`, `status_transaksi`, `bukti_pembayaran`, `kode_voucher`, `kurir`, `jenis_pengiriman`, `jenis_pembayaran`, `created_at`, `updated_at`) VALUES
(1, 2, '503040.00', '17000.00', '520040.00', 'To Pay', NULL, NULL, 'jne', NULL, NULL, '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(2, 2, '503040.00', '17000.00', '520040.00', 'To Pay', NULL, NULL, 'jne', NULL, NULL, '2022-06-09 09:08:06', '2022-06-09 09:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_detail_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `harga_per_produk` decimal(8,2) NOT NULL,
  `ukuran_produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variasi_warna` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_detail_id`, `jumlah_produk`, `harga_per_produk`, `ukuran_produk`, `variasi_warna`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '83840.00', 'S', 'Hazelnut', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(2, 1, 5, 5, '83840.00', 'L', 'Blue Black', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(3, 2, 1, 5, '83840.00', 'S', 'Hazelnut', '2022-06-09 09:08:06', '2022-06-09 09:08:06'),
(4, 2, 5, 5, '83840.00', 'L', 'Blue Black', '2022-06-09 09:08:06', '2022-06-09 09:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `resipient_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resipient_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resipient_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resipient_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resipient_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resipient_province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resipient_city_id` int(10) UNSIGNED DEFAULT NULL,
  `resipient_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resipient_postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `messenger_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `active_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `phone_number`, `avatar`, `role`, `resipient_name`, `resipient_phone_number`, `resipient_email`, `resipient_address`, `resipient_country`, `resipient_province`, `resipient_city_id`, `resipient_city`, `resipient_postal_code`, `remember_token`, `created_at`, `updated_at`, `messenger_color`, `dark_mode`, `active_status`) VALUES
(1, 'Admin Rabbani', 'adminrabbani', 'admin@rabbani.co.id', '2022-06-09 09:08:00', '$2y$10$hI/ZqAz94ip/Ims0Ripcr.3jp1ekbw4JtlwmVgiA62KNUUJ6YcUhu', NULL, NULL, '081256567878', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 09:08:00', NULL, '#2180f3', 0, 0),
(2, 'Fika Nur Aini', 'fikana19', 'fikana19@gmail.com', '2022-06-09 09:08:00', '$2y$10$EbpFLf7DdOqEKdti6/EMCuXjhFri2lUupMTdMGSFZsumdLHOE6IRq', NULL, NULL, '081234345656', 'avatars/2.jpg', 'user', 'Fika Nur Aini', NULL, NULL, 'Jl. Kembang Sepatu No. 1', 'Indonesia', 'Jawa Barat', 115, 'Depok', '16418', NULL, '2022-06-09 09:08:00', NULL, '#2180f3', 0, 0),
(3, 'Muthia Qurrota Akyun', 'ayu.muth', 'ayu.muth@gmail.com', '2022-06-09 09:08:00', '$2y$10$xfOLanwdutrkn9EyKXFCduajMpX27g.0dR.ETW.lSRGCXGz764Vje', NULL, NULL, '081234345656', 'avatars/3.jpg', 'user', 'Muthia Qurrota Akyun', NULL, NULL, 'Jl. Kembang Sepatu No. 1', 'Indonesia', 'Jawa Timur', 409, 'Sidoarjo', '61219', NULL, '2022-06-09 09:08:00', NULL, '#2180f3', 0, 0),
(4, 'Nisrina Salma Rabbani', 'salma', 'salma@gmail.com', '2022-06-09 09:08:00', '$2y$10$E8zoTAT.8HgViibw2iYUe.zfXhnmmyvynZu9BtK1qs7OVKMHd8NJu', NULL, NULL, '081234345656', 'avatars/2.jpg', 'user', 'Nisrina Salma Rabbani', NULL, NULL, 'Jl. Kembang Sepatu No. 1', 'Indonesia', 'Jawa Timur', 409, 'Sidoarjo', '61219', NULL, '2022-06-09 09:08:00', NULL, '#2180f3', 0, 0),
(5, 'Atika Salsabila', 'atika', 'atika@gmail.com', '2022-06-09 09:08:00', '$2y$10$RkXFR2hRpJDTiv/Y2rLEbOxg125SrtH.ixcPjZYndljiff39FP.2u', NULL, NULL, '081234345656', 'avatars/3.jpg', 'user', 'Atika Salsabila', NULL, NULL, 'Jl. Kembang Sepatu No. 1', 'Indonesia', 'Jawa Timur', 409, 'Sidoarjo', '61219', NULL, '2022-06-09 09:08:00', NULL, '#2180f3', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
