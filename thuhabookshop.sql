-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2016 at 01:54 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuhabookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `info` text NOT NULL,
  `price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `publish_date` date NOT NULL,
  `link_download` varchar(255) NOT NULL,
  `comment_count` int(11) DEFAULT '0',
  `published` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `title`, `slug`, `image`, `info`, `price`, `sale_price`, `pages`, `publisher`, `publish_date`, `link_download`, `comment_count`, `published`, `created`, `modified`) VALUES
(1, 1, 'Design web ', 'design-web', '/files/chuyen-nganh/design.jpg', 'no', 200000, 100000, 100, 'Kim Äá»“ng', '2016-10-28', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 1, 1, '2016-10-28 09:54:41', '2016-10-29 04:34:42'),
(2, 2, 'Harry Potter', 'harry-potter', '/files/van-hoc/another.jpg', 'SÃ¡ch vÄƒn há»c', 110000, 90000, 222, 'Kim Äá»“ng', '2016-01-28', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 1, 1, '2016-10-28 10:21:57', '2016-10-28 14:13:33'),
(3, 2, 'Harry Potter1', 'harry-potter-1', '/files/van-hoc/hary1.jpg', 'Kiá»‡t tÃ¡c má»›i', 20000, 195000, 300, 'Kim Äá»“ng', '2016-10-28', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-28 14:10:09', '2016-10-28 14:14:02'),
(4, 1, 'Amazing Vehicles', 'amazing-vehicles', '/files/chuyen-nganh/amazing.jpg', 'Nhá»¯ng phÆ°Æ¡ng tiá»‡n tuyá»‡t vá»i nháº¥t', 100000, 98000, 98, 'Thanh NiÃªn', '2016-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 03:04:46', '2016-10-29 03:05:46'),
(5, 4, 'CÃ¡c tÃ´n giÃ¡o trÃªn tháº¿ giá»›i', 'cac-ton-giao-tren-the-gioi', '/files/ton-giao-tam-linh/cac-ton-giao.jpg', 'Tá»•ng há»£p táº¥t cáº£ tÃ´n giÃ¡o trÃªn tháº¿ giá»›i', 250000, 250000, 115, 'Äá»“ng Nai', '2016-02-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 03:08:04', '2016-10-29 03:08:04'),
(6, 3, 'Kinh táº¿ vi mÃ´', 'kinh-te-vi-mo', '/files/kinh-te/kinh-te-vi-mo.jpg', 'Ná»n kinh táº¿ vi mÃ´ Ä‘ang phÃ¡t triá»ƒn nhÆ° tháº¿ nÃ o?', 220000, 200000, 368, 'Äá»“ng Nai', '2016-01-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 1, 1, '2016-10-29 03:09:53', '2016-10-29 03:12:45'),
(7, 2, 'Giáº£ng Ä‘Æ°á»ng 4', 'giang-duong-4', '/files/van-hoc/lecture4.jpg', 'Sach vá» giáº£ng Ä‘Æ°á»ng', 55000, 50000, 100, 'Äá»“ng Nai', '2016-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 04:26:19', '2016-10-29 04:26:19'),
(8, 2, 'Throwing', 'throwing', '/files/van-hoc/throwing.jpg', 'Throwing book ', 100000, 100000, 50, 'VÄƒn hÃ³a', '2016-03-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 04:30:24', '2016-10-29 04:30:24'),
(9, 5, 'PhÃ¹ sa Ä‘á»', 'phu-sa-do', '/files/ki-nang-song-dep/phu-sa-do.jpg', 'PhÃ¹ sa Ä‘á» cá»§a nhÃ  xuáº¥t báº£n Tráº»', 45000, 42000, 110, 'Tráº»', '2016-10-04', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 04:32:27', '2016-10-29 04:33:00'),
(10, 5, 'HÃ nh trang cuá»™c sá»‘ng', 'hanh-trang-cuoc-song', '/files/ki-nang-song-dep/hanh-trang-cuoc-song.jpg', 'Chuáº©n bá»‹ hÃ nh trang vÃ o cuá»™c sá»‘ng', 65000, 55500, 231, 'Äá»“ng Nai', '2016-03-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 04:34:12', '2016-10-29 04:34:12'),
(11, 5, 'Comic', 'comic', '/files/ki-nang-song-dep/comics.jpg', 'Truyá»‡n tranh giáº£i trÃ­', 120000, 99000, 112, 'Kim Äá»“ng', '2013-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 04:41:17', '2016-10-29 04:41:17'),
(12, 2, 'The girl on the rain', 'the-girl-on-the-rain', '/files/van-hoc/thegirlontherain.jpg', 'CÃ´ gÃ¡i dÆ°á»›i mÆ°a', 205000, 200000, 200, 'Kim Äá»“ng', '2016-03-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 1, 1, '2016-10-29 04:50:57', '2016-10-29 04:50:57'),
(13, 2, 'Máº¯t biáº¿c', 'mat-biec', '/files/van-hoc/mat-biec.jpg', 'SÃ¡ch hay nháº¥t cá»§a Nguyá»…n Nháº­t Ãnh', 90000, 90000, 115, 'Kim Äá»“ng', '2010-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 04:57:17', '2016-10-29 04:57:17'),
(14, 2, 'Hoa há»“ng xá»© khÃ¡c', 'hoa-hong-xu-khac', '/files/van-hoc/hoa-hong-xu-khac.jpg', 'Hoa há»“ng xá»© khÃ¡c cá»§a Nguyá»…n Nháº­t Ãnh', 110000, 90000, 115, 'Kim Äá»“ng', '2012-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 04:58:21', '2016-10-29 04:58:21'),
(15, 2, 'QuÃ¡n GÃ² Ä‘i lÃªn', 'quan-go-di-len', '/files/van-hoc/quan-go-di-len.gif', 'QuÃ¡n GÃ² Ä‘i lÃªn cá»§a Nguyá»…n Nháº­t Ãnh', 110000, 90000, 117, 'Kim Äá»“ng', '2012-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 04:59:58', '2016-10-29 04:59:58'),
(16, 2, 'Chuyá»‡n cá»• tÃ­ch dÃ nh cho ngÆ°á»i lá»›n', 'chuyen-co-tich-danh-cho-nguoi-lon', '/files/van-hoc/truyen-co-tich-danh-cho-nguoi-lon.jpg', 'Chuyá»‡n cá»• tÃ­ch', 122000, 111000, 155, 'Kim Äá»“ng', '2016-01-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 2, 1, '2016-10-29 06:53:27', '2016-10-29 06:54:01'),
(17, 2, 'Nháº­t kÃ­ mÃ¨o má»‘c', 'nhat-ki-meo-moc', '/files/van-hoc/nhat-ki-meo-moc.jpg', 'MÃ¨o má»‘c', 45400, 40000, 89, 'Äá»“ng Nai', '2005-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 2, 1, '2016-10-29 06:55:11', '2016-10-29 06:55:11'),
(18, 2, 'Bong bÃ³ng lÃªn trá»i', 'bong-bong-len-troi', '/files/van-hoc/bong-bong.jpg', 'CÃ¢u chuyá»‡n cÃ³ hÃ¬nh áº£nh bong bÃ³ng', 45400, 40000, 89, 'Äá»“ng Nai', '2005-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 06:56:21', '2016-10-29 06:56:21'),
(19, 2, 'Con chÃ³ nhá» mang giá» hoa há»“ng', 'con-cho-nho-mang-gio-hoa-hong', '/files/van-hoc/con-cho-nho.jpg', 'CÃ¢u chuyá»‡n cÃ³ hÃ¬nh áº£nh nhá»¯ng chÃº chÃ³', 75400, 40000, 89, 'VÄƒn hÃ³a', '2005-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 1, 1, '2016-10-29 06:57:23', '2016-10-29 06:57:23'),
(20, 2, 'Buá»•i chiá»u Windows ', 'buoi-chieu-windows', '/files/van-hoc/buoi-chieu.jpg', 'Má»™t buá»•i chiá»u bÃªn cá»­a sá»•', 75400, 40000, 89, 'VÄƒn hÃ³a', '2005-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 06:59:40', '2016-10-29 06:59:40'),
(21, 2, 'Ná»¯ sinh', 'nu-sinh', '/files/van-hoc/nu-sinh.jpg', 'Ná»¯ sinh', 75400, 40000, 89, 'VÄƒn hÃ³a', '2005-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 07:00:15', '2016-10-29 07:00:15'),
(22, 2, 'Stay and play', 'stay-and-play', '/files/van-hoc/stayandplay.jpg', 'Stay and play', 75400, 40000, 89, 'VÄƒn hÃ³a', '2005-10-29', 'https://downloadsach.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fuc%3Fexport%3Ddownload%26amp%3Bid%3D0B4sC7uhWfl4NV2lib2hBQndocUk', 0, 1, '2016-10-29 07:00:57', '2016-10-29 07:00:57'),
(23, 1, 'King IT', 'king-it', '/files/chuyen-nganh/kingIT.jpg', 'LÃ m chá»§ cÃ´ng nghá»‡ thÃ´ng tin', 100000, 80000, 198, 'VÄƒn há»c', '2011-10-29', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-10-29 13:40:25', '2016-10-29 13:42:16'),
(24, 1, 'Ká»¹ thuáº­t láº­p trÃ¬nh C', 'ky-thuat-lap-trinh-c', '/files/chuyen-nganh/c.jpg', 'Ká»¹ thuáº­t láº­p trÃ¬nh C cÄƒn báº£n', 200000, 200000, 205, 'Kim Äá»“ng', '2001-10-29', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-10-29 13:43:38', '2016-10-29 13:43:38'),
(25, 1, 'C# .NET', 'c-net', '/files/chuyen-nganh/.net.jpg', 'Ká»¹ thuáº­t láº­p trÃ¬nh C vÃ  .NET cÄƒn báº£n', 200000, 200000, 205, 'Kim Äá»“ng', '2001-10-29', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-10-29 13:44:17', '2016-10-29 13:44:17'),
(26, 1, 'Thiáº¿t káº¿ web ', 'thiet-ke-web ', '/files/chuyen-nganh/design.jpg', 'Thiáº¿t káº¿ trang web ', 200000, 200000, 205, 'Kim Äá»“ng', '2001-10-29', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-10-29 13:45:02', '2016-10-29 13:45:02'),
(27, 2, 'Vá»¡ Ä‘Ãª', 'vo-de', '/files/van-hoc/vo-de.jpg', 'Truyá»‡n vá»¡ Ä‘Ãª', 200000, 200000, 205, 'Kim Äá»“ng', '2001-10-29', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-10-29 13:45:40', '2016-10-29 13:45:40'),
(28, 2, 'Harry Potter 2', 'harry-potter-2', '/files/van-hoc/hary1.jpg', 'SÃ¡ch hay', 100000, 100000, 125, 'Kim Äá»“ng', '2016-11-01', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-11-01 13:21:14', '2016-11-01 13:21:14'),
(29, 2, 'Harry Potter 3', 'harry-potter-3', '/files/van-hoc/hary1.jpg', 'SÃ¡ch hay', 100000, 100000, 125, 'Kim Äá»“ng', '2016-11-01', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-11-01 13:21:29', '2016-11-01 13:21:29'),
(30, 2, 'Harry Potter 4', 'harry-potter-4', '/files/van-hoc/hary1.jpg', 'SÃ¡ch hay', 100000, 100000, 125, 'Kim Äá»“ng', '2016-11-01', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-11-01 13:21:40', '2016-11-01 13:21:40'),
(31, 2, 'Harry Potter 5', 'harry-potter-5', '/files/van-hoc/hary1.jpg', 'SÃ¡ch hay', 100000, 100000, 125, 'Kim Äá»“ng', '2016-11-01', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-11-01 13:21:51', '2016-11-01 13:21:51'),
(32, 2, 'Harry Potter 6', 'harry-potter-6', '/files/van-hoc/hary1.jpg', 'SÃ¡ch hay', 100000, 100000, 125, 'Kim Äá»“ng', '2016-11-01', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-11-01 13:24:04', '2016-11-01 13:24:04'),
(35, 5, 'HÃ nh trang cuá»™c sá»‘ng', 'hanh-trang-cuoc-song', '/files/ki-nang-song-dep/hanh-trang-cuoc-song.jpg', 'SÃ¡ch hay', 131000, 131000, 253, 'Kim Äá»“ng', '2016-11-02', '', 0, 1, '2016-11-02 13:22:20', '2016-11-02 13:22:20'),
(38, 5, 'Dáº¡y con', 'day-con', '/files/ki-nang-song-dep/day-con.jpg', 'SÃ¡ch dáº¡y con', 125, 121000, 121000, 'Kim Äá»“ng', '2016-11-02', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-11-02 13:25:20', '2016-11-02 13:25:20'),
(40, 5, 'Sá»‘ng Ä‘áº¹p', 'song-dep', '/files/ki-nang-song-dep/song-dep.png', 'SÃ¡ch sá»‘ng Ä‘áº¹p', 125, 121000, 121000, 'Kim Äá»“ng', '2016-11-02', 'http://www.hongkiat.com/blog/20-best-websites-to-download-free-e-books/', 0, 1, '2016-11-02 13:26:55', '2016-11-02 13:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `books_writers`
--

CREATE TABLE IF NOT EXISTS `books_writers` (
  `book_id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books_writers`
--

INSERT INTO `books_writers` (`book_id`, `writer_id`) VALUES
(1, 3),
(2, 1),
(3, 2),
(4, 3),
(5, 2),
(6, 2),
(7, 1),
(8, 3),
(9, 2),
(10, 1),
(11, 1),
(12, 1),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(17, 4),
(18, 5),
(19, 5),
(20, 5),
(21, 5),
(22, 4),
(23, 3),
(24, 2),
(25, 3),
(26, 2),
(27, 8),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 4),
(34, 4),
(35, 3),
(37, 2),
(38, 2),
(39, 2),
(40, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created`) VALUES
(1, 'ChuyÃªn ngÃ nh', 'chuyen-nganh', 'SÃ¡ch IT', '2016-10-28 09:55:23'),
(2, 'VÄƒn há»c', 'van-hoc', 'SÃ¡ch vÄƒn há»c tá»•ng há»£p', '2016-10-28 10:06:02'),
(3, 'Kinh táº¿', 'kinh-te', 'Táº­p há»£p sÃ¡ch vá» kinh táº¿ trong vÃ  ngoÃ i nÆ°á»›c', '2016-10-28 10:06:50'),
(4, 'TÃ´n giÃ¡o tÃ¢m linh', 'ton-giao-tam-linh', 'Báº¡n muá»‘n xem bÃ³i thÃ¬ hÃ£y mua sÃ¡ch nÃ y :)', '2016-10-28 10:07:24'),
(5, 'KÄ© nÄƒng sá»‘ng Ä‘áº¹p', 'ki-nang-song-dep', 'Sá»‘ng Ä‘áº¹p cho Ä‘á»i', '2016-10-28 10:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `book_id`, `content`, `created`) VALUES
(1, 3, 1, 'SÃ¡ch hay', '2016-10-28 10:11:44'),
(2, 4, 2, 'SÃ¡ch nÃ y hay qtqÄ‘ :)', '2016-10-29 13:50:07'),
(3, 4, 6, 'ná»n kinh táº¿ tháº­t kinh hoÃ ng :(((', '2016-10-29 13:50:52'),
(4, 5, 19, 'ChÃº Ãnh viáº¿t truyá»‡n nÃ o cÅ©ng hay .............', '2016-10-29 13:51:15'),
(5, 5, 16, 'NgÆ°á»i lá»›n nÃªn Ä‘á»c', '2016-10-29 13:51:34'),
(6, 6, 17, 'MÃ¨o má»‘c ngu ngá»‘c', '2016-10-29 13:52:16'),
(9, 1, 16, 'CÃ¢u chuyá»‡n ráº¥t hay!', '2016-11-01 07:39:16'),
(10, 1, 17, 'hahahahahahahahaha', '2016-11-01 11:07:53'),
(11, 1, 12, 'Má»™t cuá»‘n sÃ¡ch ráº¥t hay, hÃ£y Ä‘á»c vÃ o trá»i mÆ°a nhÃ© cÃ¡c cÃ´ gÃ¡i!', '2016-11-02 12:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `percent` float NOT NULL,
  `description` text,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created`) VALUES
(1, 'Administrator', 'Quáº£n trá»‹ há»‡ thá»‘ng', '2016-10-28 10:09:30'),
(2, 'User', 'NgÆ°á»i dÃ¹ng', '2016-10-28 10:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_info` text NOT NULL,
  `order_info` text NOT NULL,
  `payment_info` text NOT NULL,
  `status` int(11) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_info`, `order_info`, `payment_info`, `status`, `created`, `modified`) VALUES
(1, 3, 'ÄÃ  Náºµng', 'mua sÃ¡ch kinh doanh', 'paypall', 1, '2016-10-29 02:56:25', '2016-10-29 02:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` char(13) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `group_id`, `username`, `password`, `email`, `firstname`, `lastname`, `address`, `phone_number`, `created`, `modified`) VALUES
(1, 1, 'administrator', '123456', 'phanthithuha.it@gmail.com', 'HÃ ', 'Phan', 'ÄÃ  Náºµng', '01647303115', '2016-10-28 10:10:07', '2016-10-28 10:10:07'),
(3, 2, 'HaPhan', '123456', 'conheokimoanh@gmail.com', 'HÃ ', 'Phan', 'ÄÃ  Náºµng', '01647303116', '2016-10-28 10:11:27', '2016-10-29 13:48:59'),
(4, 2, 'Trang', '1234560', 'trang.le@student.passerellesnumeriques.org', 'Trang', 'LÃª', 'ÄÃ  Náºµng', '0123456987', '2016-10-29 13:48:02', '2016-10-29 13:48:02'),
(5, 2, 'laitruong', '000000', 'lai.truong@student.passerellesnumeriques.org', 'LÃ i', 'TrÆ°Æ¡ng', 'ÄÃ  Náºµng', '098742156', '2016-10-29 13:48:46', '2016-10-29 13:48:46'),
(6, 1, 'MaiTran', '88888', 'mai.nguyen@student.passerellesnumeriques.org', 'Mai', 'Nguyen', 'ÄÃ  Náºµng', '01647303116', '2016-10-29 13:49:35', '2016-10-29 13:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE IF NOT EXISTS `writers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `biography` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `slug`, `biography`, `created`) VALUES
(1, 'Thu Thanh', 'thu-thanh', 'NhÃ  vÄƒn tráº»', '2016-10-28 10:14:00'),
(2, 'Thu Háº±ng', 'thu-hang', 'á»ž Huáº¿', '2016-10-28 14:10:33'),
(3, 'Thu HÃ ', 'thu-ha', 'Thu HÃ  lÃ  nhÃ  vÄƒn phÃª phÃ¡n hiá»‡n thá»±c', '2016-10-29 02:55:09'),
(4, 'Tráº§n Kháº£i', 'tran-khai', 'Quáº£ng Nam', '2016-10-29 04:51:51'),
(5, 'Nguyá»…n Nháº­t Ãnh', 'nguyen-nhat-anh', 'NhÃ  vÄƒn cá»§a thiáº¿u nhi', '2016-10-29 04:52:28'),
(6, 'NguyÃªn Há»“ng', 'nguyen-hong', 'Thá»i thÆ¡ áº¥u Ã´ng lÃ  tráº» má»“ cÃ´i', '2016-10-29 09:24:09'),
(7, 'Nam Cao', 'nam-cao', 'TÃªn tháº­t lÃ  Nguyá»…n Há»¯u Tri', '2016-10-29 09:24:45'),
(8, 'VÅ© Trá»ng Phá»¥ng', 'vu-trong-phung', 'NhÃ  vÄƒn phÃª phÃ¡n hiá»‡n thá»±c', '2016-10-29 09:25:11'),
(9, 'Steven Jobs', 'steven-jobs', 'NgÆ°á»i sÃ¡ng láº­p ra táº­p Ä‘oÃ n Apple', '2016-10-29 09:25:44'),
(10, 'Há»“ ChÃ­ Minh', 'ho-chi-minh', 'Vá»‹ lÃ£nh tá»¥ vÄ© Ä‘áº¡i cá»§a dÃ¢n tá»™c Viá»‡t Nam', '2016-10-29 09:26:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_writers`
--
ALTER TABLE `books_writers`
  ADD PRIMARY KEY (`book_id`,`writer_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
