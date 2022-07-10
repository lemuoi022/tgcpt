-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 10:20 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `worldpc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_staff`
--

CREATE TABLE `admin_staff` (
  `id` int(11) NOT NULL,
  `name_staff` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user_staff` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `password_staff` varchar(16) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `lv` int(5) DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `img_avatar` varchar(25) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `admin_staff`
--

INSERT INTO `admin_staff` (`id`, `name_staff`, `user_staff`, `password_staff`, `lv`, `creat_at`, `img_avatar`) VALUES
(1, 'Đồng Huy Hoàng ', 'hoang21', 'hoang21', 1, '2021-08-06 13:51:36', 'assets/images/hoang.jpg'),
(2, 'Lê Xuân Mười', 'muoi22', 'muoi22', 1, '2021-08-06 13:54:25', 'assets/images/muoi.jpg'),
(3, 'Nguyễn Mạnh Tú', 'tu21', 'tu21', 1, '2021-08-06 13:54:25', 'assets/images/tu.jpg'),
(4, 'Lương Tuấn Minh', 'minh22', 'minh22', 1, '2021-08-06 13:54:58', 'assets/images/minh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `name` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `catalog_id` int(11) NOT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`name`, `catalog_id`, `creat_at`) VALUES
('laptop', 1, '0000-00-00 00:00:00'),
('pc', 2, '0000-00-00 00:00:00'),
('accessory', 3, '0000-00-00 00:00:00'),
('chair', 4, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `price` int(30) DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptop_detail`
--

CREATE TABLE `laptop_detail` (
  `laptop_name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `monitor` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `cpu` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ram` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `vga` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ssd` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hdd` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_brand` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id` int(11) NOT NULL,
  `price` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `laptop_detail`
--

INSERT INTO `laptop_detail` (`laptop_name`, `monitor`, `cpu`, `ram`, `vga`, `ssd`, `hdd`, `creat_at`, `product_brand`, `id`, `price`) VALUES
('Acer Aspire 7 ', '15.6', 'AMD Ryzen 5 – 5500U', '8GB DDR4 (2x SO-DIMM socket, u', 'NVIDIA GeForce GTX 1650 4GB GD', '256GB PCIe® NVMe™ M.2 SSD', '', '0000-00-00 00:00:00', 'acer', 1, 18900000),
('Acer Predator Helios 300 PH315', '15.6 inch FHD(1920 x 1080) IPS', 'Intel® Core™ i7-11800H', '8GB DDR4 3200MHz (2 khe rời, n', 'NVIDIA® GeForce RTX™ 3050Ti 4G', '512GB SSD M.2 PCIE (nâng cấp t', '', '0000-00-00 00:00:00', 'acer', 2, 34500000),
('Acer Nitro 5 AN515 56 51N4', '15.6\" FHD (1920 x 1080) IPS, 1', 'Intel Core i5-11300H up to 4.4', '8GB DDR4 3200MHz (2x SO-DIMM s', 'NVIDIA GeForce GTX 1650 4GB GD', '512GB SSD M.2 PCIE (nâng cấp ', '', '0000-00-00 00:00:00', 'acer', 3, 20500000),
('Acer Nitro 5 AN515 45 R0B6', '15.6\" FHD (1920 x 1080) IPS, 1', 'AMD Ryzen™ 7 5800H', '8GB DDR4 3200MHz (2x SO-DIMM s', 'NVIDIA GeForce RTX 3060 6GB GD', '512GB SSD M.2 PCIE (Còn trống ', '', '0000-00-00 00:00:00', 'acer', 4, 30500000),
('ASUS TUF Gaming F15 FX506HC HN', '15.6\" FHD (1920 x 1080) IPS, 1', 'Intel® Core™ i5-11400H Process', '8GB DDR4 2933MHz (2x SO-DIMM s', 'NVIDIA® GeForce RTX™ 3050 Lapt', '512GB SSD M.2 PCIE G3X2, 1x sl', '', '0000-00-00 00:00:00', 'asus', 5, 23800000),
('Asus ROG Strix G15 G513QC HN01', '15.6 inch FHD (1920 x 1080)IPS', 'AMD Ryzen R7-5800H (8 cores, u', '8GB DDR4 3200MHz (2x SO-DIMM s', 'NVIDIA GeForce RTX 3050 4GB GD', '	512GB M.2 NVMe™ PCIe® 3.0 SSD', '', '0000-00-00 00:00:00', 'asus', 6, 27990000),
('Asus ROG Zephyrus G14 GA401QH', '14.0 inch FHD (1920 x 1080) IP', 'AMD Ryzen™ 7-5800HS 2.8GHz up ', '8GB [On board] DDR4 3200MHz ', 'NVIDIA® GeForce® GTX 1650 4GB ', '512GB SSD M.2 NVMe PCIe 3.0', '', '0000-00-00 00:00:00', 'asus', 7, 28300000),
('Asus TUF Dash FX516PE HN005T', '15.6\" FHD (1920 x 1080) 16:9, ', 'Intel Core i7-11370H 3.0GHz up', '8GB Onboard DDR4 3200MHz (1x S', 'NVIDIA GeForce  RTX™ 3050Ti 4G', '512GB SSD M.2 NVMe™ PCIe® 3.0 ', '', '0000-00-00 00:00:00', 'asus', 8, 27600000),
('MSI Bravo 15 A4DCR 270VN', '15.6\" FHD (1920×1080), IPS, tầ', 'AMD Ryzen 5 – 4600H', 'DDR4 8GB (1 x 8GB) 3200MHz; 2 ', 'Radeon RX5300M 3GB', '256GB SSD NVMe M.2 PCIe Gen 3×', '', '0000-00-00 00:00:00', 'msi', 9, 17990000),
('MSI GF75 Thin 10SCXR 013VN', '17.3\" FHD (1920 x 1080) IPS, 1', 'Intel Core i7-10750H 2.6GHz up', 'NVIDIA GeForce GTX 1650 4GB GD', '8GB DDR4 3200MHz (2x SO-DIMM s', '512GB SSD M.2 PCIE, 1x 2.5\" SA', '', '0000-00-00 00:00:00', 'msi', 10, 21790000),
('MSI Gaming Katana GF76 ', '17.3 inch FHD 144Hz', ' Intel Core i7 11800H', '8GB DDR4 3200MHz (2x SO-DIMM s', 'NVIDIA RTX3050 4GB', '512GB SSD M.2 PCIE, x1 slot 2.', '', '0000-00-00 00:00:00', 'msi', 11, 29989000),
('MSI Pulse GL66 11UDK 255VN', '15.6inch FHD (1920x1080), 144H', 'Intel Core i7-11800H', '16GB (8GBx2) DDR4 3200MHz (2x ', 'NVIDIA GeForce RTX 3050 Ti', '	512GB SSD PCIE G3X4 (1 Slot)', '', '0000-00-00 00:00:00', 'msi', 12, 31490000),
('Dell Inspiron 5301 (7023601)', '13.3-inch FHD (1920 x 1080) An', 'Intel Core i7 1165G7 (2.8Ghz, ', '8GB LPDDR4x 4267Mhz', 'Nvidia Geforce MX350 2G', '512GB PCIe Gen3 x4 NVMe SSD (u', '', '0000-00-00 00:00:00', 'dell', 13, 24989000),
('Dell Latitude 3420 (42LT342001', '14 inch HD (1366 x 768) AG Non', 'Intel Core™ i3 1115G4 (3.0Ghz,', '4GB DDR4 3200Mhz (1*4GB) ', ' Intel® Iris® Xe Graphics', '256GB PCIe NVMe Class 35 M2 SS', '', '0000-00-00 00:00:00', 'dell', 14, 15389000),
('Dell Inspiron 5410 2 in 1 (N4I', '14.0-inch FHD (1920 x 1080) Tr', 'Intel Core i5 1135G7 (2.4Ghz /', '8GB DDR4 3200MHz (2* 4GB)', 'Nvidia Geforce MX350 2G DDR5', '512GB M.2 PCIe NVMe SSD', '', '0000-00-00 00:00:00', 'dell', 15, 25789000),
('Dell Inspiron 5505 (N5R74700U)', '15.6-inch FHD, 1920 x 1080, 60', 'AMD Ryzen 7 4700U', '8GB DDR4 3200Mhz (1* 8GB)', 'AMD® Radeon™ Graphics', '512GB M.2 PCIe NVMe SSD (M.2 2', '', '0000-00-00 00:00:00', 'dell', 16, 21989000),
('IDEAPAD 5 14ALC05 82LM00D5VN', 'LCD 14\" FHD IPS', 'R7-5700U', '8GB', 'AMD Radone', '512GB', NULL, '2021-08-23 07:56:58', 'Lenovo', 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `qty` int(30) DEFAULT NULL,
  `price` int(30) DEFAULT NULL,
  `amount` int(30) DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `product_name`, `qty`, `price`, `amount`, `creat_at`) VALUES
(1, 1, 3, '', 1, 34500000, 34500000, '2021-08-06 07:32:25'),
(2, 1, 4, '', 1, 20500000, 20500000, '2021-08-06 07:32:25'),
(3, 2, 6, '', 1, 23800000, 23800000, '2021-08-06 07:39:45'),
(4, 4, 3, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-06 07:43:32'),
(5, 4, 5, 'Acer Nitro 5 AN515 45 R0B6', 1, 30500000, 30500000, '2021-08-06 07:43:32'),
(6, 8, 3, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-08 03:34:55'),
(7, 8, 11, 'MSI GF75 Thin 10SCXR 013VN', 1, 21790000, 21790000, '2021-08-08 04:00:35'),
(8, 16, 3, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-10 16:38:03'),
(9, 16, 9, 'Asus TUF Dash FX516PE HN005T', 1, 27600000, 27600000, '2021-08-10 16:38:03'),
(10, 16, 6, 'ASUS TUF Gaming F15 FX506HC HN', 1, 23800000, 23800000, '2021-08-10 16:38:03'),
(11, 32, 3, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-10 16:46:00'),
(12, 32, 4, 'Acer Nitro 5 AN515 56 51N4', 1, 20500000, 20500000, '2021-08-10 16:46:00'),
(13, 32, 5, 'Acer Nitro 5 AN515 45 R0B6', 1, 30500000, 30500000, '2021-08-10 16:46:00'),
(14, 64, 6, 'ASUS TUF Gaming F15 FX506HC HN', 1, 23800000, 23800000, '2021-08-10 16:47:24'),
(15, 64, 5, 'Acer Nitro 5 AN515 45 R0B6', 1, 30500000, 30500000, '2021-08-10 16:47:24'),
(16, 128, 3, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-10 16:50:25'),
(17, 128, 10, 'MSI Bravo 15 A4DCR 270VN', 1, 17990000, 17990000, '2021-08-10 16:50:25'),
(18, 256, 4, 'Acer Nitro 5 AN515 56 51N4', 1, 20500000, 20500000, '2021-08-10 16:51:45'),
(19, 512, 4, 'Acer Nitro 5 AN515 56 51N4', 1, 20500000, 20500000, '2021-08-10 16:53:02'),
(20, 1024, 4, 'Acer Nitro 5 AN515 56 51N4', 1, 20500000, 20500000, '2021-08-10 16:54:23'),
(21, 2048, 3, 'Acer Nitro 5 AN515 56 51N4', 1, 20500000, 20500000, '2021-08-23 02:59:27'),
(22, 2048, 2, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-23 02:59:27'),
(23, 4096, 1, 'Acer Aspire 7 ', 1, 18900000, 18900000, '2021-08-23 02:59:44'),
(24, 4096, 4, 'Acer Nitro 5 AN515 45 R0B6', 1, 30500000, 30500000, '2021-08-23 02:59:44'),
(25, 6156, 1, 'Acer Aspire 7 ', 6, 18900000, 113400000, '2021-08-23 03:04:41'),
(26, 12312, 2, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-23 03:05:15'),
(27, 12312, 3, 'Acer Nitro 5 AN515 56 51N4', 1, 20500000, 20500000, '2021-08-23 03:05:15'),
(28, 24624, 1, 'Acer Aspire 7 ', 6, 18900000, 113400000, '2021-08-23 03:10:48'),
(29, 49248, 1, 'Acer Aspire 7 ', 5, 18900000, 94500000, '2021-08-23 03:13:00'),
(30, 98496, 1, 'Acer Aspire 7 ', 5, 18900000, 94500000, '2021-08-23 03:18:33'),
(31, 196992, 1, 'Acer Aspire 7 ', 5, 18900000, 94500000, '2021-08-23 03:20:51'),
(32, 393984, 2, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-23 03:23:46'),
(33, 393984, 1, 'Acer Aspire 7 ', 1, 18900000, 18900000, '2021-08-23 03:23:46'),
(34, 787968, 1, 'Acer Aspire 7 ', 4, 18900000, 75600000, '2021-08-23 03:27:36'),
(35, 1575936, 1, 'Acer Aspire 7 ', 4, 18900000, 75600000, '2021-08-23 03:31:12'),
(36, 1575936, 2, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-23 03:31:12'),
(37, 3151872, 1, 'Acer Aspire 7 ', 2, 18900000, 37800000, '2021-08-23 03:32:17'),
(38, 3151872, 2, 'Acer Predator Helios 300 PH315', 4, 34500000, 138000000, '2021-08-23 03:32:17'),
(39, 6303744, 1, 'Acer Aspire 7 ', 4, 18900000, 75600000, '2021-08-23 03:36:47'),
(40, 12607488, 1, 'Acer Aspire 7 ', 6, 18900000, 113400000, '2021-08-23 03:45:50'),
(41, 25214976, 1, 'Acer Aspire 7 ', 6, 18900000, 113400000, '2021-08-23 03:47:43'),
(42, 50429952, 1, 'Acer Aspire 7 ', 3, 18900000, 56700000, '2021-08-23 03:50:51'),
(43, 50429952, 2, 'Acer Predator Helios 300 PH315', 3, 34500000, 103500000, '2021-08-23 03:50:51'),
(44, 100859904, 1, 'Acer Aspire 7 ', 3, 18900000, 56700000, '2021-08-23 03:52:15'),
(45, 100859904, 2, 'Acer Predator Helios 300 PH315', 3, 34500000, 103500000, '2021-08-23 03:52:15'),
(46, 201719808, 1, 'Acer Aspire 7 ', 2, 18900000, 37800000, '2021-08-23 03:53:18'),
(47, 201719808, 2, 'Acer Predator Helios 300 PH315', 2, 34500000, 69000000, '2021-08-23 03:53:18'),
(48, 403439616, 1, 'Acer Aspire 7 ', 2, 18900000, 37800000, '2021-08-23 03:53:56'),
(49, 403439616, 2, 'Acer Predator Helios 300 PH315', 2, 34500000, 69000000, '2021-08-23 03:53:56'),
(50, 806879232, 1, 'Acer Aspire 7 ', 6, 18900000, 113400000, '2021-08-23 04:05:09'),
(51, 1613758464, 2, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-23 04:07:46'),
(52, 1613758464, 3, 'Acer Nitro 5 AN515 56 51N4', 1, 20500000, 20500000, '2021-08-23 04:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `product` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_main`
--

CREATE TABLE `order_main` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `address` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `amount` int(30) NOT NULL,
  `status` int(5) DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `order_main`
--

INSERT INTO `order_main` (`id`, `name`, `address`, `email`, `phone`, `amount`, `status`, `creat_at`) VALUES
(1, 'Hoàng Anh', '45 Yết kiêu', '', 321152025, 55000000, 1, '2021-08-06 07:32:25'),
(2, 'Hoàng Anh', '45 Yết kiêu', '', 321152025, 23800000, 1, '2021-08-06 07:39:45'),
(8, 'hoangak', '123abc', '', 373928155, 56290000, 1, '2021-08-08 04:00:35'),
(2048, 'Đồng Huy Hoàng', '123abc', '', 373928155, 55000000, 1, '2021-08-23 02:59:27'),
(4096, 'Hoàng Anh', '45 Yết kiêu', '', 321152025, 49400000, 1, '2021-08-23 02:59:44'),
(6156, 'Đồng Huy Hoàng', '123abc', '', 373928155, 113400000, 2, '2021-08-23 03:04:41'),
(12312, 'Lê Xuân Mười', 'Ames English', '', 397622246, 55000000, 1, '2021-08-23 03:05:15'),
(24624, 'Đồng Huy Hoàng', '123abc', '', 373928155, 113400000, 1, '2021-08-23 03:10:48'),
(49248, 'Đồng Huy Hoàng', '123abc', '', 373928155, 94500000, 1, '2021-08-23 03:13:00'),
(98496, 'Đồng Huy Hoàng', '123abc', '', 373928155, 94500000, 1, '2021-08-23 03:18:33'),
(196992, 'Đồng Huy Hoàng', '123abc', '', 373928155, 94500000, 1, '2021-08-23 03:20:51'),
(393984, 'Lê Xuân Mười', 'Ames English', '', 397622246, 53400000, 1, '2021-08-23 03:23:46'),
(787968, 'Lê Xuân Mười', '123abc', '', 373928155, 75600000, 1, '2021-08-23 03:27:36'),
(1575936, 'Lê Xuân Mười', 'Ames English', '', 397622246, 110100000, 1, '2021-08-23 03:31:12'),
(3151872, 'Đồng Huy Hoàng', '123abc', '', 373928155, 175800000, 1, '2021-08-23 03:32:17'),
(6303744, 'Đồng Huy Hoàng', '123abc', '', 373928155, 75600000, 1, '2021-08-23 03:36:47'),
(12607488, 'Đồng Huy Hoàng', '123abc', '', 373928155, 113400000, 1, '2021-08-23 03:45:50'),
(25214976, 'Đồng Huy Hoàng', '123abc', '', 373928155, 113400000, 2, '2021-08-23 03:47:43'),
(50429952, 'Lê Xuân Mười', 'Ames English', '', 397622246, 160200000, 1, '2021-08-23 03:50:51'),
(100859904, 'Đồng Huy Hoàng', '123abc', '', 373928155, 160200000, 1, '2021-08-23 03:52:15'),
(201719808, 'hoangak', '123abc', '', 373928155, 106800000, 1, '2021-08-23 03:53:18'),
(403439616, 'hoangak', '123abc', '', 373928155, 106800000, 1, '2021-08-23 03:53:56'),
(806879232, 'Đồng Huy Hoàng', '123abc', '', 373928155, 113400000, 2, '2021-08-23 04:05:09'),
(1613758464, 'Hoàng Anh', '45 Yết kiêu', '', 321152025, 55000000, 1, '2021-08-23 04:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `product_brand` varchar(30) DEFAULT NULL,
  `price` int(30) DEFAULT NULL,
  `qty` int(30) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `img_link` varchar(225) DEFAULT NULL,
  `img_link2` varchar(225) DEFAULT NULL,
  `img_link3` varchar(225) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_id`, `product_name`, `product_brand`, `price`, `qty`, `catalog_id`, `img_link`, `img_link2`, `img_link3`, `content`, `creat_at`) VALUES
(1, 1, 'Acer Aspire 7 ', 'acer', 18900000, 5, 1, 'assets/images/acer/acer.jpg', 'assets/images/acer/acer1_1.jpg', 'assets/images/acer/acer1_2.jpg', 'Nếu bạn yêu thích chơi game và muốn tìm một chiếc laptop đủ sức giúp bạn thỏa mãn đam mê thì chiếc laptop Acer Aspire 7 A715-41G-R150, ra mắt năm 2020 sẽ là sự lựa chọn không thể tuyệt vời hơn. Chiếc laptop trên sở hữu thiết kế mạnh mẽ cùng cấu hình nổi bật.\r\n\r\nThiết kế hiện đại, màn hình 15.6 inch FHD ấn tượng\r\nLaptop Acer Gaming Aspire 7 A715-41G-R150 gây ấn tượng với người dùng với thiết kế mạnh mẽ, rất thích hợp với các gamer. Mẫu laptop được hoàn thiện bằng chất liệu kim loại bền với các chi tiết mang sự hiện đại.', '2021-08-10 14:33:47'),
(2, 2, 'Acer Predator Helios 300 PH315', 'acer', 34500000, 11, 1, 'assets/images/acer/acer3.jpg', 'assets/images/acer/acer3_1.jpg', 'assets/images/acer/acer3_2.jpg', 'Laptop Acer Gaming Predator Helios 300 PH315-54-78W5 được trang bị bộ xử lý Intelthế hệ 11 với tốc độ xung nhịp cao giúp cho tốc độ xử lý nhanh chóng. Kèm theo đó laptop có RAM dung lượng lớn mang lại khả năng đa nhiệm mượt mà.', '0000-00-00 00:00:00'),
(3, 3, 'Acer Nitro 5 AN515 56 51N4', 'acer', 20500000, 19, 1, 'assets/images/acer/acer4.jpg', 'assets/images/acer/acer4_1.jpg', 'assets/images/acer/acer4_2.jpg', 'Acer Nitro 5 AN515 56 51N4 sở hữu thiết kế ấn tượng với hai màu đen-đỏ chủ đạo. Bề mặt được thiết kế hầm hố và góc cạnh hơn. Thể hiện phong cách hiếu chiến đặc trưng của dòng Nitro. Viền màn hình siêu mỏng 6.3mm cho cảm giác không gian thoáng đãng hơn trước.', '0000-00-00 00:00:00'),
(4, 4, 'Acer Nitro 5 AN515 45 R0B6', 'acer', 30500000, 19, 1, 'assets/images/acer/acer2.jpg', 'assets/images/acer/acer2_1.jpg', 'assets/images/acer/acer2_2.jpg', 'Nitro 5 2021 AN515 45 R0B6 sở hữu thiết kế ấn tượng với hai màu đen-đỏ chủ đạo. Bề mặt được thiết kế hầm hố và góc cạnh hơn. Thể hiện phong cách hiếu chiến đặc trưng của dòng Nitro. Viền màn hình siêu mỏng 6.3mm cho cảm giác không gian thoáng đãng hơn trước.', '0000-00-00 00:00:00'),
(5, 5, 'ASUS TUF Gaming F15 FX506HC HN', 'asus', 23800000, 20, 1, 'assets/images/asus/asus1.jpg', 'assets/images/asus/asus1_1.jpg', 'assets/images/asus/asus1_2.jpg', 'Laptop Asus Gaming F15 FX506HC-HN002T trang bị CPU Intel Core i5-11400H và thêm GPU GeForce GTX™ 3050 hỗ trợ xử lý hình ảnh cực chất. Bạn có thể trải nghiệm những khung hình tựa game vô cùng ấn tượng.', '0000-00-00 00:00:00'),
(6, 6, 'Asus ROG Strix G15 G513QC HN01', 'asus', 27990000, 20, 1, 'assets/images/asus/asus2.jpg', 'assets/images/asus/asus2_1.jpg', 'assets/images/asus/asus2_2.jpg', 'ROG Strix G15 G513QC HN015T là hiện thân của phong cách thiết kế tối giản, mang đến trải nghiệm cốt lõi mãnh liệt nhất. Dư sức để chiến những tựa game nặng kí và xử lý đa nhiệm cùng Windows 10. ', '0000-00-00 00:00:00'),
(7, 7, 'Asus TUF Dash FX516PE HN005T', 'asus', 27600000, 20, 1, 'assets/images/asus/asus4.jpg', 'assets/images/asus/asus4_1.jpg', 'assets/images/asus/asus4_2.jpg', 'ASUS TUF Gaming Dash F15 là một chiếc laptop gaming hạng nặng với bộ vi xử lý Intel i7 Gen 11 mới nhất kết hợp với GPU Nvidia RTX 3060 mới nhất và một thiết lập âm thanh tổng thể tuyệt vời. ', '0000-00-00 00:00:00'),
(8, 8, 'MSI Bravo 15 A4DCR 270VN', 'msi', 17990000, 20, 1, 'assets/images/msi/msi1.jpg', 'assets/images/msi/msi1_1.jpg', 'assets/images/msi/msi1_2.jpg', 'Laptop sử dụng công nghệ 7nm hiện đại, trang bị tối đa tới vi xử lí AMD Ryzen 5 4600H và card đồ họa Radeon™ RX5300M 3GB, đem tới cho chiếc laptop khi chơi game có hiệu năng ngang tầm máy desktop.', '0000-00-00 00:00:00'),
(9, 9, 'MSI GF75 Thin 10SCXR 013VN', 'msi', 21790000, 20, 1, 'assets/images/msi/msi2.jpg', 'assets/images/msi/msi2_1.jpg', 'assets/images/msi/msi2_2.jpg', 'MSI GF75 Thin 10SCXR 013VN lại sở hữu một vẻ ngoài giản dị đến mức khó tin, các bạn có thể nhầm lẫn chiếc sản phẩm với phân khúc laptop văn phòng.', '0000-00-00 00:00:00'),
(10, 10, 'MSI Gaming Katana GF76 ', 'msi', 29989000, 20, 1, 'assets/images/msi/msi3.jpg', 'assets/images/msi/msi3_1.jpg', 'assets/images/msi/msi3_2.jpg', 'ấy cảm hứng từ những thanh Katana, hình ảnh của dòng sản phẩm Katana GF mới được thiết kế bởi họa sĩ minh họa người Nhật Tsuyoshi Nagano, nổi tiếng với các tác phẩm được sử dụng trong dòng game “Tam quốc chí”. Katana GF76 và GF66 hứa hẹn sẽ đem tới nguồn cảm hứng chinh phục to lớn cho các game thủ. Với card đồ họa NVIDIA GeForce RTX 3050 cùng bàn phím có cụm phím số riêng biệt (kể cả trên phiên bản 15-inch), các mẫu laptop Katana GF không chỉ đơn giản là laptop gaming phổ thông; chúng còn là người bạn đồng hành đáng tin cậy trên các chiến trường ảo.', '0000-00-00 00:00:00'),
(11, 11, 'MSI Pulse GL66 11UDK 255VN', 'msi', 31490000, 20, 1, 'assets/images/msi/msi4.jpg', 'assets/images/msi/msi4_1.jpg', 'assets/images/msi/msi4_2.jpg', 'Với lớp vỏ kim loại màu xám titan cùng các đường viền góc cạnh, Pulse GL series cực kì phù hợp với những người ưa chuộng phong cách thiết kế viễn tưởng. Khu vực xung quanh bàn phím cũng được trang trí theo phong cách giống như giao diện hiển thị ngoại vi trên bảng điều khiển. Thiết kế hình lục giác ở mặt đáy lấy cảm hứng từ các bộ phim kinh điển, mô phỏng lại cảnh những chiến đấu cơ liên ngân hà đang xuất trận trên các tinh cầu xa xôi. Sở hữu ngay Pulse GL series và giải phóng sức mạnh tiềm ẩn bên trong.', '0000-00-00 00:00:00'),
(12, 12, 'Dell Inspiron 5301', 'dell', 24989000, 20, 1, 'assets/images/dell/dell1.jpg', 'assets/images/dell/dell1_1.jpg', 'assets/images/dell/dell1_2.jpg', 'Laptop Dell Inspiron 5301 tối đa hóa khả năng di động của bạn với ExpressCharge™, sạc pin của bạn trong nháy mắt (lên đến 80% trong 60 phút)', '0000-00-00 00:00:00'),
(13, 13, 'Dell Latitude 3420', 'dell', 15389000, 20, 1, 'assets/images/dell/dell2.jpg', 'assets/images/dell/dell2_1.jpg', 'assets/images/dell/dell2_2.jpg', 'Laptop Dell Latitude 3420 được thiết kế với kiểu dáng đơn giản, cứng cáp, sản phẩm có trọng lượng tương đối nhẹ để bạn dễ dàng mang theo bên mình.', '0000-00-00 00:00:00'),
(14, 14, 'Dell Inspiron 5410 2 in 1 ', 'dell', 25789000, 20, 1, 'assets/images/dell/dell3.jpg', 'assets/images/dell/dell3_1.jpg', 'assets/images/dell/dell3_2.jpg', 'Hiện đại và thời thượng hơn cùng laptop Dell Inspiron 14 5410 2 in 1, với hiệu năng vượt trội giúp bạn giải quyết mọi tác vụ, đem đến hiệu suất công việc cao.', '0000-00-00 00:00:00'),
(15, 15, 'Dell Inspiron 5505', 'dell', 21989000, 20, 1, 'assets/images/dell/dell4.jpg', 'assets/images/msi/dell4_1.jpg', 'assets/images/dell/dell4_2.jpg', 'Dell Inspiron 5505  toát lên sự cao cấp nhờ thiết kế đẹp, mạnh mẽ và độ mỏng ấn tượng. Chỉ với trọng lượng 1.72 kg và độ mỏng 17 mm. Máy được hoàn thiện từ bộ vỏ kim loại, laptop trở nên vừa sang trọng, vừa có độ bền cao.', '0000-00-00 00:00:00'),
(16, 16, 'Asus ROG Zephyrus G14 GA401QH', 'asus', 2830000, 5, 1, 'assets/images/asus/asus3.jpg', 'assets/images/asus/asus3_1.jpg', 'assets/images/asus/asus3_2.jpg', 'ROG Zephyrus G14 2021 sở hữu sức mạnh chưa từng có vào một thân máy 14 inch chỉ nặng 1,6kg. CPU AMD Ryzen ™ 7 5800HS được điều chỉnh với mức tiêu thụ điện năng thấp hơn và bộ tản nhiệt mang lại hiệu suất vượt trội. \r\n\r\nCông nghệ quy trình 7nm tiên tiến đặt tối đa 8 lõi và 16 luồng trên một con chip duy nhất, cho phép bạn vượt qua khối lượng công việc nặng nề. Card đồ họa GeForce GTX ™ 1650 có thể mở khóa hiệu suất cao hơn nữa với ROG Boost và chuyển từ chơi game nhịp độ nhanh sang tạo nội dung trong nháy mắt.', '2021-08-10 15:08:12'),
(25, 17, 'Acer Nitro 5 Eagle AN515 57 77', 'acer', 38990000, 20, 1, 'assets/images/acer/nitro5AN515_57.png', 'assets/images/acer/nitro5AN515_57.png', 'assets/images/acer/nitro5AN515_57.png', 'Laptop hiệu năng cao cấp đi kèm card đồ họa chất lượng cao RTX 3060 cùng màn hình với tần số quét lên đến 165Hz độ phân giải 2K chi tiết cao. Bá chủ mọi tựa game cần phản ứng nhanh như CS:Go, Valorant. Ngoài ra khả năng xử lý công việc cũng như xuất video chất lượng cao cũng là một điểm sáng của máy. Nitro 5 nổi tiếng với công nghệ làm mát tuyệt vời NitroSense đảm bảo bạn sử dụng máy với hiệu năng cao trong khoảng thời gian dài mà không lo ngại về nhiệt. Luôn mát mẻ chính là Nitro5.', '2021-08-22 02:08:36'),
(26, 18, 'Acer Nitro 5 Eagle AN515 57 74', 'acer', 25690000, 20, 1, 'assets/images/acer/nitro5AN515_57_74RD.png', 'assets/images/acer/nitro5AN515_57_74RD.png', 'assets/images/acer/nitro5AN515_57_74RD.png', 'Laptop hiệu năng cao cấp đi kèm card đồ họa chất lượng cao RTX 3050 cùng màn hình với tần số quét lên đến 144Hz. Bá chủ mọi tựa game cần phản ứng nhanh như CS:Go, Valorant. Ngoài ra khả năng xử lý công việc cũng như xuất video chất lượng cao cũng là một điểm sáng của máy. Nitro 5 nổi tiếng với công nghệ làm mát tuyệt vời NitroSense đảm bảo bạn sử dụng máy với hiệu năng cao trong khoảng thời gian dài mà không lo ngại về nhiệt. Luôn mát mẻ chính là Nitro5.', '2021-08-22 02:15:25'),
(28, 19, 'Acer Aspire 7 A715 42G R4ST', 'acer', 18490000, 20, 1, 'assets/images/acer/aspire715-75g.png', 'assets/images/acer/aspire715-75g1.png', 'assets/images/acer/aspire715-75g1.png', 'Acer Aspire 7 2020 A715 42G R4ST tích hợp card đồ họa NVIDIA GTX1650 4GB GDDR6 ra mắt năm 2020, là laptop chơi game tốt nhất phân khúc. Không chỉ vậy, phiên bản này còn mang thiết kế mới gọn gàng và sexy hơn. Aspire 7 2020 được trang bị hệ thống tản nhiệt mạnh mẽ bậc nhất trong phân khúc, thừa hưởng công nghệ từ các dòng máy cao cấp hơn của Acer, cùng cấu hình đỉnh cao, giúp cho người dùng có thể vừa chơi game vừa làm việc ở bất cứ lúc nào.', '2021-08-22 02:21:50'),
(29, 20, 'MSI GS66 Stealth 10UE 200VN', 'msi', 49990000, 20, 1, 'assets/images/msi/msi_GS66.png', 'assets/images/msi/msi_GS66.png', 'assets/images/msi/msi_GS66.png', '-Với lớp vỏ đen nhám và thiết kế chân phương, laptop MSI GS66 Stealth 10UE-200VN mới giúp bạn dễ dàng hòa mình vào mọi môi trường sử dụng. Khung máy làm từ kim loại cứng cáp, đáp ứng tốt nhu cầu sử dụng hàng ngày. GS66 Stealth 2021 không chỉ là mẫu laptop chơi game mạnh mẽ, mà còn là công cụ thiết yếu để làm việc với phong cách chuyên nghiệp.', '2021-08-22 02:26:47'),
(30, 21, 'MSI Pulse GL76 11UEK 048VN', 'msi', 42490000, 20, 1, 'assets/images/msi/pulse_gl76.png', 'assets/images/msi/pulse_gl76.png', 'assets/images/msi/pulse_gl76.png', 'MSI GL76 11UEK - 048VN sở hữu thiết kế đậm chất gaming, màn hình 17.3 inch cực lớn kết hợp cùng độ phân giải FHD đem đến cho bạn những khung hình sắc nét, tần số quét 144Hz hình ảnh chuyển động mượt mà. CPU gen 11th cùng VGA RTX 3060 6GB chiến cực đã bất kỳ tựa game nào.', '2021-08-22 02:35:15'),
(31, 22, 'MSI GF65 Thin 10UE 228VN', 'msi', 30490000, 20, 1, 'assets/images/msi/GF65_1.png', 'assets/images/msi/GF65_1.png', 'assets/images/msi/GF65_1.png', 'Laptop MSI GF65 Thin 10UE là dòng sẳn phẩm laptop gaming mới nhất của MSI hướng đến đôi tượng game thủ chuyên nghiệp. Với cấu hình cao cấp đi kèm card đồ họa mới nhất chắc chắn sẽ làm các game thủ hài lòng.Laptop MSI GF65 Thin 10UE là laptop gaming nhưng được trau chuốt rất nhiều về thiết kế. Nắp máy và phần bàn phím được làm bằng nhôm Aluminum phay xước tạo cảm giác cao cấp và chắc chắn cho máy. Mặt lưng thiết kế theo phong cách tối giản, chỉ có một logo rồng xương màu đỏ nổi bật nằm ở giữa. Tất cả các phần còn lại của máy đều được làm bằng nhựa để cho máy giữ được trọng lượng cực kì nhẹ nhàng là 1.86kg, giúp người dùng cảm thấy không quá nặng nề khi di chuyển nhiều nơi.', '2021-08-22 03:15:51'),
(32, 23, 'MSI Katana GF76 11UC 096VN', 'msi', 27290000, 20, 1, 'assets/images/msi/katana_gf76.png', 'assets/images/msi/katana_gf76.png', 'assets/images/msi/katana_gf76.png', 'Sức mạnh được đẩy mạnh hơn 40% so với thế hệ trước nhờ chip Intel Core i7 gen 11th dòng H hiệu năng mạnh mẽ, tiết kiệm năng lượng tối đa. Con chip này đạt xung nhịp tối đa là 4.6GHz với 8 nhân, 16 luồng kết hợp cùng Chipset Intel HM570 cung cấp hiệu năng mạnh mẽ, thoải mái chiến những trận game cực chất cùng bạn bè sau những giờ làm việc căng thẳng. ', '2021-08-22 03:25:03'),
(33, 24, 'ASUS ROG Zephyrus G15 GA503QM ', 'asus', 36990000, 20, 1, 'assets/images/asus/asus5_1.png', 'assets/images/asus/asus5_2.png', 'assets/images/asus/asus5_3.png', 'ROG Zephyrus G15 GA503QM HQ097T chiếc laptop gaming 15.6\" mỏng nhẹ, hiệu suất cao và màn hình tuyệt vời, được trang bị bộ vi xử lý từ CPU Ryzen™ 7 5800HS 8 nhân mới nhất và GPU GeForce RTX ™ 3060 siêu nhanh.Thể hiện phong cách đặc trưng với 2 tông màu Moonlight White hoặc Eclipse Grey. Nắp kim loại gia cố được cắt chính xác với thiết kế ma trận điểm, khi ánh sáng chiếu vào ở góc vừa phải sẽ tạo thêm hiệu ứng lung linh huyền ảo cực ngầu dành cho bạn. ASUS ROG Zephyrus G15 GA503QM HQ097T sở hữu màn hình 2K 165Hz/ 3ms với Adaptive-Sync cho chất lượng hình ảnh mượt mà, chi tiết, đạt chuẩn Pantone® validation về độ chính xác màu sắc và độ phủ màu 100% DCI-P3 đảm bảo màu sắc phong phú và chuẩn xác.', '2021-08-22 03:35:24'),
(34, 25, 'Dell Gaming G3 G3500B P89F002G', 'dell', 30990000, 20, 1, 'assets/images/dell/dell5_1.jpg', 'assets/images/dell/dell5_1.jpg', 'assets/images/dell/dell5_1.jpg', 'Nhắc tới hệ thống máy tính Laptop Dell Gaming thì người dùng luôn nghĩ tới một “Tượng Đài Bền Vững”. Bởi vì nó không chỉ là một chiếc máy tính Laptop sở hữu cấu hình mạnh mẽ, tiến tiến mà nó còn sở hữu một ngoại hình thời trang, hiện đại cùng rất nhiều phần mềm tiện ích lợi hại. Chính vì vậy mà hãng Dell đã tiếp tục phát triển tiến độ không ngừng để cho ra các dòng Laptop Dell Gaming đời mới. Và trong bài viết lần này, An Phát Computer sẽ giới thiệu đến cho các bạn một sản phẩm mới trong dòng Dell Gaming. Đó chính là chiếc Máy tính xách tay Laptop Dell Gaming G3 G3500B P89F002.', '2021-08-22 09:06:25'),
(37, 26, 'Dell XPS 13 9310 JGNH62 ', 'dell', 58890000, 20, 1, 'assets/images/dell/dell6_1.jpg', 'assets/images/dell/dell6_2.jpg', 'assets/images/dell/dell6_3.jpg', 'Nếu bạn đang tìm một chiếc laptop mang trong mình sự sang trọng, nét đẹp hiện đại cùng với đó là cấu hình mạnh mẽ, bền bỉ với thời gian phù hợp với một doanh nhân thì Dell XPS 13 9310 JGNH62 chính là sự lựa chọn hoàn hảo dành cho bạn. Cùng mình tìm hiểu về chiếc máy này nhé. Dell XPS 13 9310 JGNH62 mang trong mình một lớp vỏ nhôm với tông màu bạc làm chủ đạo,  đem lại cái nhìn sang trọng cho người sử dụng. Không chỉ dừng lại ở đó siêu phẩm này còn được tô điểm thêm bằng những đường cắt kim cương tinh tế, vuông vức, mà ít có laptop nào trong cùng phân khúc có được. Khung máy chắc chắn, bản lề vừa vặn cũng là một điểm cộng lớn cho chiếc máy.', '2021-08-22 10:23:52'),
(38, 27, 'Dell Mobile Precision Workstat', 'dell', 39990000, 20, 1, 'assets/images/dell/dell7_1.jpg', 'assets/images/dell/dell7_1.jpg', 'assets/images/dell/dell7_1.jpg', 'DELL là một thương hiệu laptop đình đám đến từ Mỹ, nổi tiếng với những sản phẩm máy tính xách tay chất lượng cao với độ bền đi cùng năm nên đã chiếm được rất nhiều tình cảm của các tín đồ công nghệ trên thế giới. Đặc biệt ở thị trường Việt Nam, Dell luôn là một trong những thương hiệu hàng đầu được người dùng tin yêu và lựa chọn.  Trong bài viết này, An Phát Computer sẽ mang đến cho các bạn một sản phẩm đến từ Dell đang cực hot ở khắp các showroom lớn nhỏ - Laptop Dell Mobile Precision Workstation 3551CTO. Hãy cùng khám phá ngay để xem em nó có gì thú vị và đặc biệt nhé!', '2021-08-22 10:31:34'),
(39, 28, 'Dell Latitude 7420 70251597', 'dell', 39590000, 20, 1, 'assets/images/dell/dell8_1.jpg', 'assets/images/dell/dell8_1.jpg', 'assets/images/dell/dell8_1.jpg', 'Đang cập nhật ....', '2021-08-22 10:36:40'),
(40, 29, 'Lenovo IdeaPad Gaming 3 15ARH0', 'lenovo', 17490000, 20, 1, 'assets/images/lenovo/lenovo1_1.png', 'assets/images/lenovo/lenovo1_1.png', 'assets/images/lenovo/lenovo1_1.png', 'Mang đến vẻ ngoài vô cùng cứng cáp và mạnh mẽ được tạo nên từ chất liệu nhựa cao cấp tạo nên độ bền bỉ, chắc chắn nhất định. Các đường nét trên Lenovo IdeaPad Gaming 3 15ARH05  tạo nên vẻ ngoài gaming cuốn hút.Trang bị bộ vi xử lý từ AMD, Ryzen 5 4600H mang lại khả năng xử lý mạnh mẽ trên mọi tác vụ.Kết hợp cùng 8GB RAM cho khả năng sử dụng tối ưu cho đa nhiệm. Là laptop gaming nên Lenovo IdeaPad Gaming 3 15ARH05 82EY00LMVN dễ dàng xử lý mọi tác vụ gaming esport cũng như các game AAA một cách mượt mà với sức mạnh từ card đồ họa GTX 1650 đi kèm mức giá cực kì tốt so với hiệu năng của một laptop gaming dưới 20 triệu.', '2021-08-22 10:40:43'),
(41, 30, 'Lenovo Legion 5 15ARH05 82B500', 'lenovo', 23690000, 20, 1, 'assets/images/lenovo/lenovo2_1.png', 'assets/images/lenovo/lenovo2_1.png', 'assets/images/lenovo/lenovo2_1.png', 'Chúng ta có một màn hình lớn 15.6\" chuẩn màu sRGB 100% , tấm nền IPS chất lượng cao cùng khả năng chống chói và tần số quét nhanh lên đến 144Hz. Bứt phá mọi giới hạn gaming cũng như làm việc.', '2021-08-22 10:42:51'),
(42, 31, 'Lenovo Legion 5 Pro 16ACH6H', 'lenovo', 42390000, 20, 1, 'assets/images/lenovo/lenovo3_1.png', 'assets/images/lenovo/lenovo3_1.png', 'assets/images/lenovo/lenovo3_1.png', 'Laptop Lenovo Legion 5 Pro là một trong những Laptop Gaming được cộng đồng game thủ mong đợi nhất trong năm 2021 với cải tiến độc đáo và ấn tượng hơn so với phiên bản tiền nhiệm.   Về hình thức máy không có nhiều thay đổi mà Lenovo đã tập trung đầu tư nâng cấp chất lượng hoàn thiện của máy, nâng cấp thêm về cấu hình, cũng như hệ thống tản nhiệt và đặc biệt là chiếc máy tính xách tay Laptop trang bị màn hình 16.0 inch đầu tiên trên thế giới, hứa hẹn đáp ứng tốt hơn các nhu cầu cao của người dùng.Laptop Lenovo Legion trong phiên bản mới 2021 này sở hữu một thiết kế cực kỳ ấn tượng, thân máy chắc chắn với bề dày chỉ chỉ 2.7cm và sở hữu trọng lượng ở mức không quá nặng nề vào khoảng 2.45 Kg. Tuy không phải là dòng Laptop nhỏ gọn nhưng em ý vẫn đảm bảo tính thẩm mĩ và tính cơ động.   Tuy Laptop Lenovo Legion 5 Pro 16ACH6H 82JQ001VVN sở hữu màn hình 16.0 inch, nhưng khung máy không to hơn Legion 5 15.6 inch nhiều, vẫn khá gọn gàng với các đường cắt vát ấn tượng.', '2021-08-22 10:45:07'),
(43, 32, 'Lenovo Legion 5 15ARH05 82B500', 'lenovo', 25290000, 20, 1, 'assets/images/lenovo/lenovo4_1.png', 'assets/images/lenovo/lenovo4_1.png', 'assets/images/lenovo/lenovo4_1.png', 'Được trang bị AMD Ryzen 4000 series, đây là thế mới nhất của AMD, thêm bộ nhớ Ram 8GB hoặc 16GB DDR 4giúp khả năng xử lý các tác vụ đa nhiệm mượt mà, nhẹ nhàng hỗ trợ trải nghiệm chơi game tốt nhất, nhanh nhất.   Card rời GTX 1600 Series hỗ trợ tăng tốc độ xử lý cho các game phổ biến nhất LOL, FO4, CS.GO ở mức FPS  70 max setting, các Game 3D cấu hình cao như PUBG, GTA 5, War Tank, God of War thì cũng chẳng phải nghĩ ngợi nhiều đâu chơi ổn định ở mức cấu hình trung bình ngon lành.', '2021-08-22 14:12:01'),
(44, 33, 'Lenovo Legion 5 15ACH6 82JW003', 'lenovo', 26790000, 20, 1, 'assets/images/lenovo/lenovo5_1.png', 'assets/images/lenovo/lenovo5_1.png', 'assets/images/lenovo/lenovo5_1.png', 'Được trang bị cpu AmD Ryzen 5000 thế hệ mới nhất, thêm bộ nhớ Ram 8GB hoặc 16GB DDR 4giúp khả năng xử lý các tác vụ đa nhiệm mượt mà, nhẹ nhàng hỗ trợ trải nghiệm chơi game tốt nhất, nhanh nhất.   Card rời RTX 3050  Series hỗ trợ tăng tốc độ xử lý cho các game phổ biến nhất LOL, FO4, CS.GO ở mức FPS  70 max setting, các Game 3D cấu hình cao như PUBG, GTA 5, War Tank, God of War thì cũng chẳng phải nghĩ ngợi nhiều đâu chơi ổn định ở mức cấu hình trung bình ngon lành.', '2021-08-22 14:17:28'),
(45, 34, ' Lenovo Legion 5 15IMH05 82AU0', 'lenovo', 24990000, 20, 1, 'assets/images/lenovo/lenovo6_1.png', 'assets/images/lenovo/lenovo6_1.png', 'assets/images/lenovo/lenovo6_1.png', 'Được trang bị cpu core i5 thế hệ 10, đây là thế mới nhất của Intel, thêm bộ nhớ Ram 8GB hoặc 16GB DDR 4giúp khả năng xử lý các tác vụ đa nhiệm mượt mà, nhẹ nhàng hỗ trợ trải nghiệm chơi game tốt nhất, nhanh nhất.   Card rời GTX 1600 Series hỗ trợ tăng tốc độ xử lý cho các game phổ biến nhất LOL, FO4, CS.GO ở mức FPS  70 max setting, các Game 3D cấu hình cao như PUBG, GTA 5, War Tank, God of War thì cũng chẳng phải nghĩ ngợi nhiều đâu chơi ổn định ở mức cấu hình trung bình ngon lành.', '2021-08-22 14:29:16'),
(46, 35, 'IdeaPad 5 14ALC05 82LM00D5VN', 'lenovo', 17490000, 20, 1, 'assets/images/lenovo/lenovo7_1.jpg', 'assets/images/lenovo/lenovo7_1.jpg', 'assets/images/lenovo/lenovo7_1.jpg', 'Laptop Lenovo IdeaPad 5 14ALC05 với thiết kế nhỏ gọn, phù hợp cho những ai thường xuyên di chuyển, các góc cạnh được bo tròn tinh tế, mang lại cảm giác sang trọng cho người sử dụng. Màn hình 15.6 inch Full HD (1920 x 1080) cho mọi khung hình sống động, văn bản và hình ảnh hiển thị sắc nét.Được tích hợp bộ vi xử lý AMD Ryzen 7 5700U (8C / 16T, 1.8 / 4.3GHz, 4MB L2 / 8MB L3) chạy mượt ứng dụng văn phòng hay lướt web, xem phim,... . RAM 8 GB có khả năng đa nhiệm nhanh, không giật lag cho dù bạn mở nhiều ứng dụng. Ổ cứng 512GB để bạn thoải mái lưu trữ các dữ liệu cần thiết, ổ cứng SSD giúp máy khởi động nhanh chóng', '2021-08-22 14:50:14'),
(47, 36, 'IdeaPad Slim 3 14ITL6 82H7003U', 'lenovo', 16890000, 20, 1, 'assets/images/lenovo/lenovo8_1.jpg', 'assets/images/lenovo/lenovo8_1.jpg', 'assets/images/lenovo/lenovo8_1.jpg', 'Lenovo IdeaPad 3 14ITL6 sở hữu lớp vỏ màu xám cùng họa tiết vân lịch lãm. Thiết kế mang phong cách tối giản, phù hợp với nhiều môi trường làm việc khác nhau. Chiếc laptop này khá mỏng nhẹ với màn 14 inch, khối lượng chỉ 1.5kg và độ dày chưa đến 2cm, cùng với đó là khung máy khá chắc chắn, cầm nắm khá chắc tay và ít bị bám bụi bám dấu vân tay.   Điều này cực tiện khi bạn phải mang máy đi làm, đi học vừa không sợ cồng kềnh lại hạn chế được máy bị sốc trong quá trình di chuyển.', '2021-08-22 14:51:19'),
(48, 37, 'PC Yuumii - PcWorld', 'pc', 20790000, 19, 2, 'assets/images/pc/yuumi.jpg', 'assets/images/yuumi.jpg', 'assets/images/yuumi.jpg', 'Đang cập nhật ....', '2021-08-22 15:08:12'),
(49, 38, 'PC Minions - PcWorld', 'pc', 19790000, 20, 2, 'assets/images/pc/minion.jpg', 'assets/images/pc/minion.jpg', 'assets/images/pc/minion.jpg', 'Đang cập nhật ....', '2021-08-22 15:39:45'),
(50, 39, 'PC Viper M - PcWorld', 'pc', 18890000, 20, 2, 'assets/images/pc/viper.jpg', 'assets/images/viper.jpg', 'assets/images/viper.jpg', 'Đang cập nhật ....', '2021-08-22 15:44:35'),
(52, 40, 'PC Ivy - PcWorld', 'pc', 13990000, 20, 2, 'assets/images/pc/ivy.jpg', 'assets/images/ivy.jpg', 'assets/images/ivy.jpg', 'Đang cập nhật ....', '2021-08-22 16:02:06'),
(53, 41, 'PC Garen - PcWorld', 'pc', 41390000, 20, 2, 'assets/images/pc/garen.jpg', 'assets/images/pc/garen.jpg', 'assets/images/pc/garen.jpg', 'Đang cập nhật ....', '2021-08-22 16:15:23'),
(54, 42, 'PC Volibear- PcWorld', 'pc', 39490000, 20, 2, 'assets/images/pc/volibear.jpg', 'assets/images/pc/volibear.jpg', 'assets/images/pc/volibear.jpg', 'Đang cập nhật ....', '2021-08-22 16:27:33'),
(55, 43, 'PC Tinker - PcWorld', 'pc', 32790000, 20, 2, 'assets/images/pc/tinker.jpg', 'assets/images/pc/tinker.jpg', 'assets/images/pc/tinker.jpg', 'Đang cập nhật ....', '2021-08-23 02:25:45'),
(56, 44, 'PC Phantom - PcWorld', 'pc', 29990000, 20, 2, 'assets/images/pc/phantom.jpg', 'assets/images/pc/phantom.jpg', 'assets/images/pc/phantom.jpg', 'Đang cập nhật ....', '2021-08-23 02:27:51'),
(57, 45, 'PC Aorus - PcWorld', 'pc', 82990000, 20, 2, 'assets/images/pc/aorus.jpg', 'assets/images/pc/aorus.jpg', 'assets/images/pc/aorus.jpg', 'Đang cập nhật ....', '2021-08-23 02:31:09'),
(58, 46, 'PC PhoeNix - PcWorld', 'pc', 60190000, 20, 2, 'assets/images/pc/phoenix.jpg', 'assets/images/pc/phoenix.jpg', 'assets/images/pc/phoenix.jpg', 'Đang cập nhật ....', '2021-08-23 02:32:36'),
(59, 47, 'PC Vision - PcWorld', 'pc', 75790000, 20, 2, 'assets/images/pc/vision.jpg', 'assets/images/pc/vision.jpg', 'assets/images/pc/vision.jpg', 'Đang cập nhật ....', '2021-08-23 02:34:08'),
(60, 48, 'PC Predator - PcWorld', 'pc', 64190000, 20, 2, 'assets/images/pc/predator.jpg', 'assets/images/pc/predator.jpg', 'assets/images/pc/predator.jpg', 'Đang cập nhật ....', '2021-08-23 02:35:37'),
(61, 49, 'PC Homework i3 - PcWorld', 'pc', 8290000, 20, 2, 'assets/images/pc/hw_i3.jpg', 'assets/images/pc/hw_i3.jpg', 'assets/images/pc/hw_i3.jpg', 'Đang cập nhật ....', '2021-08-23 02:40:38'),
(62, 50, 'PC Homework i5 - PcWorld', 'pc', 10590000, 20, 2, 'assets/images/pc/hw_i5.jpg', 'assets/images/pc/hw_i5.jpg', 'assets/images/pc/hw_i5.jpg', 'Đang cập nhật ....', '2021-08-23 02:41:55'),
(63, 51, 'PC Homework i7 - PcWorld', 'pc', 15790000, 20, 2, 'assets/images/pc/hw_i7.jpg', 'assets/images/pc/hw_i7.jpg', 'assets/images/pc/hw_i7.jpg', 'Đang cập nhật ....', '2021-08-23 02:43:57'),
(64, 52, 'PC Homework R5 - PcWorld', 'pc', 12390000, 20, 2, 'assets/images/pc/hw_r5.jpg', 'assets/images/pc/hw_r5.jpg', 'assets/images/pc/hw_r5.jpg', 'Đang cập nhật ....', '2021-08-23 02:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `product_name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cpu` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ram` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `mainboard` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `vga` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ssd` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `psu` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `case_pc` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`product_name`, `cpu`, `ram`, `mainboard`, `vga`, `ssd`, `psu`, `case_pc`, `creat_at`, `id`) VALUES
('PC YUUMII', 'I5 10400F', '8GB', 'B460M', '1660', '120GB', '500W', 'MSI', '2021-08-23 07:52:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `comment` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `rate` int(5) DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `name`, `comment`, `rate`, `creat_at`, `product_id`, `status`) VALUES
(9, NULL, 'tốt', 5, '2021-08-11 04:42:00', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `month` int(11) DEFAULT NULL,
  `qty` int(30) DEFAULT NULL,
  `amount` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `month`, `qty`, `amount`) VALUES
(4, 8, 5, 143800000);

-- --------------------------------------------------------

--
-- Table structure for table `user_guest`
--

CREATE TABLE `user_guest` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `password` varchar(16) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `gender` varchar(5) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `address` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password2` int(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `user_guest`
--

INSERT INTO `user_guest` (`id`, `name`, `user`, `password`, `gender`, `address`, `email`, `phone`, `creat_at`, `password2`) VALUES
(2, 'tesssdasdad', 'test', '2', '1', '1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', 'luongtuanminh02161@gmail.com', 215548524, '2021-08-05 09:54:20', 2),
(3, 'tesssdasdad', 'muoi123', '1', '1', 'long biên', 'muoi138065@nuce.edu.vn', 23144231, '2021-08-09 16:31:19', NULL),
(4, 'fđsdf', 'muoi123', '123456', '1', 'long biên', 'mueueue@gmail.com', 23144231, '2021-08-11 03:34:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_staff`
--
ALTER TABLE `admin_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`catalog_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptop_detail`
--
ALTER TABLE `laptop_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`product`);

--
-- Indexes for table `order_main`
--
ALTER TABLE `order_main`
  ADD PRIMARY KEY (`id`,`amount`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`,`product_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_guest`
--
ALTER TABLE `user_guest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_staff`
--
ALTER TABLE `admin_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptop_detail`
--
ALTER TABLE `laptop_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `order_main`
--
ALTER TABLE `order_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1613758465;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_guest`
--
ALTER TABLE `user_guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
